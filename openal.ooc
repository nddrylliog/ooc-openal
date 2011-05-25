use openal

//
// functions
//

alGetError: extern func -> UInt

alEnable:    extern func (Int)
alDisable:   extern func (Int)
alIsEnabled: extern func (Int) -> Bool

alGenBuffers:    extern func (SizeT, UInt*)
alGenSources:    extern func (SizeT, UInt*)
alDeleteBuffers: extern func (SizeT, UInt*)
alDeleteSources: extern func (SizeT, UInt*)
alIsBuffer:      extern func (UInt) -> Bool
alIsSource:      extern func (UInt) -> Bool

alGetBoolean: extern func (UInt) -> Bool
alGetInteger: extern func (UInt) -> Int
alGetFloat:   extern func (UInt) -> Float
alGetDouble:  extern func (UInt) -> Double
alGetBooleanv: extern func (UInt, Bool*)
alGetIntegerv: extern func (UInt, Int*)
alGetFloatv:   extern func (UInt, Float*)
alGetDoublev:  extern func (UInt, Double*)

alDistanceModel: extern func (UInt)

// listener attributes
alListenerfv: extern func (UInt, Float*)
alListeneriv: extern func (UInt, Int*)
alListener3f: extern func (UInt, Float, Float, Float)
alListener3i: extern func (UInt, Int, Int, Int)
alGetListenerf: extern func (UInt, Float*)
alGetListeneri: extern func (UInt, Int*)

// source attributes
alSourcefv: extern func (UInt, UInt, Float*)
alSourceiv: extern func (UInt, UInt, Int*)
alSourcef:  extern func (UInt, UInt, Float)
alSourcei:  extern func (UInt, UInt, Int)
alSource3f: extern func (UInt, UInt, Float, Float, Float)
alSource3i: extern func (UInt, UInt, Int, Int, Int)
alGetSourcef: extern func (UInt, UInt, Float*)
alGetSourcei: extern func (UInt, UInt, Int*)

// source operations
alSourceQueueBuffers:   extern func (UInt, SizeT, UInt*)
alSourceUnqueueBuffers: extern func (UInt, SizeT, UInt*)
alSourcePlay:    extern func (UInt)
alSourcePause:   extern func (UInt)
alSourceStop:    extern func (UInt)
alSourceRewind:  extern func (UInt)
alSourcePlayv:   extern func (SizeT, UInt*)
alSourcePausev:  extern func (SizeT, UInt*)
alSourceStopv:   extern func (SizeT, UInt*)
alSourceRewindv: extern func (SizeT, UInt*)

// buffer attributes
alBufferiv: extern func (UInt, UInt, Int*)
alBufferi:  extern func (UInt, UInt, Int)
alGetBufferi: extern func (UInt, UInt, Int*)

// buffer operations
alBufferData: extern func (UInt, UInt, Pointer, SizeT, SizeT)


//
// constants
//

AL_TRUE:  extern Bool
AL_FALSE: extern Bool
AL_NONE:  extern UInt

// errors
AL_NO_ERROR:          extern UInt
AL_INVALID_NAME:      extern UInt
AL_INVALID_ENUM:      extern UInt
AL_INVALID_VALUE:     extern UInt
AL_INVALID_OPERATION: extern UInt
AL_OUT_OF_MEMORY:     extern UInt

// simple queries
AL_DOPPLER_FACTOR: extern UInt
AL_SPEED_OF_SOUND: extern UInt
AL_DISTANCE_MODEL: extern UInt
	AL_INVERSE_DISTANCE:          extern UInt
	AL_INVERSE_DISTANCE_CLAMPED:  extern UInt
	AL_LINEAR_DISTANCE:           extern UInt
	AL_LINEAR_DISTANCE_CLAMPED:   extern UInt
	AL_EXPONENT_DISTANCE:         extern UInt
	AL_EXPONENT_DISTANCE_CLAMPED: extern UInt

// string queries
AL_VERSION:    extern UInt
AL_RENDERER:   extern UInt
AL_VENDOR:     extern UInt
AL_EXTENSIONS: extern UInt

// listener and source attributes
AL_POSITION: extern UInt
AL_VELOCITY: extern UInt
AL_GAIN:     extern UInt

// listener attributes
AL_ORIENTATION:        extern UInt

// source attributes
AL_SOURCE_RELATIVE:    extern UInt
AL_SOURCE_TYPE:        extern UInt
	AL_UNDETERMINED: extern UInt
	AL_STATIC:       extern UInt
	AL_STREAMING:    extern UInt
AL_LOOPING:            extern UInt
AL_BUFFER:             extern UInt
AL_BUFFERS_QUEUED:     extern UInt
AL_BUFFERS_PROCESSED:  extern UInt
AL_MIN_GAIN:           extern UInt
AL_MAX_GAIN:           extern UInt
AL_REFERENCE_DISTANCE: extern UInt
AL_ROLLOFF_FACTOR:     extern UInt
AL_MAX_DISTANCE:       extern UInt
AL_PITCH:              extern UInt
AL_DIRECTION:          extern UInt
AL_CONE_INNER_ANGLE:   extern UInt
AL_CONE_OUTER_ANGLE:   extern UInt
AL_CONE_OUTER_GAIN:    extern UInt
AL_SEC_OFFSET:         extern UInt
AL_SAMPLE_OFFSET:      extern UInt
AL_BYTE_OFFSET:        extern UInt
AL_SOURCE_STATE:       extern UInt
	AL_INITIAL: extern UInt
	AL_PLAYING: extern UInt
	AL_PAUSED:  extern UInt
	AL_STOPPED: extern UInt

// buffer attributes
AL_FREQUENCY: extern UInt
AL_SIZE:      extern UInt
AL_BITS:      extern UInt
AL_CHANNELS:  extern UInt

// buffer format
AL_FORMAT_MONO8:    extern UInt
AL_FORMAT_MONO16:   extern UInt
AL_FORMAT_STEREO8:  extern UInt
AL_FORMAT_STEREO16: extern UInt
