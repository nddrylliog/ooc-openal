
use openal
import openal/openal

import os/Time
import math

main: func {

    dev := alcOpenDevice(null)
    if (!dev) {
        raise("Could not open OpenAL device")
    }

    ctx := alcCreateContext(dev, null)
    if (!ctx) {
        raise("Could not create OpenAL context")
    }
    alcMakeContextCurrent(ctx)

    alListener3f(AL_POSITION, 0.0, 0.0, 0.0)
    "Sound system initialized" println()

    sourceID: ALuint
    alGenSources(1, sourceID&)
    alSource3f(sourceID, AL_POSITION, 0.0, 0.0, 0.0)
    alSourcef(sourceID, AL_REFERENCE_DISTANCE, 1.0)
    alSourcef(sourceID, AL_MAX_DISTANCE, 1000.0) 

    bufferID: ALuint
    alGenBuffers(1, bufferID&)

    samples := 30 * 1000
    freq := 22050 as ALsizei
    chans := 1
    bits := 8
    bytes := samples * chans * (bits / 8)
    bufferData := gc_malloc(bytes) as UInt8*

    x := 0.0
    y := 0.0
    yDiff := 0.0005
    for (i in 0..samples) {
        x += 0.2
        y += yDiff
        if (y >= 1 || y <= 0) {
           yDiff = -yDiff 
        }
        a := sin(x) * y
        b := sin(1 + x * 8) * (1 - y)
        bufferData[i] = ((a + b + 1) * 128) as UInt8
    }

    alBufferData(bufferID, ALformat mono8,
        bufferData as Pointer, bytes, freq)
    alSourceQueueBuffers(sourceID, 1, bufferID&)
    alSourcePlay(sourceID)

    processed, queued, state: Int
    playing := true
    while (playing) {
        alGetSourcei(sourceID, AL_BUFFERS_PROCESSED, processed&)
        alGetSourcei(sourceID, AL_BUFFERS_QUEUED, queued&)
        alGetSourcei(sourceID, AL_SOURCE_STATE, state&)
        if (processed > 0) {
            playing = false
        }
        Time sleepMilli(16)
    }
    "Finished playing" println()

    alcMakeContextCurrent(null)
    alcDestroyContext(ctx)
    alcCloseDevice(dev)
}

