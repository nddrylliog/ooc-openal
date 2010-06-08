use openal

// types

ALformat: enum {
    mono16   : extern(AL_FORMAT_MONO16)
    stereo16 : extern(AL_FORMAT_STEREO16)
}

ALint: extern cover extends Int
ALuint: extern cover extends UInt
ALsizei: extern cover extends Int

// functions

alGenBuffers: extern func (Int, ALuint*)
alGenSources: extern func (Int, ALuint*)
alListener3f: extern func (Int, Float, Float, Float)
alSource3f: extern func (ALuint, ALint, Float, Float, Float)
alBufferData: extern func (ALuint, ALformat, Pointer, ALsizei, ALsizei)
alSourcei: extern func (ALuint, Int, ALuint)
alSourcePlay: extern func (ALuint)
alDeleteBuffers: extern func (Int, ALuint*)
alDeleteSources: extern func (Int, ALuint*)
alGetSourcei: extern func (ALuint, ALint, ALint*)

// constants

AL_POSITION: extern ALint
AL_BUFFER  : extern ALint
AL_STOPPED : extern ALint
AL_SOURCE_STATE : extern ALint
