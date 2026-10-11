package jdk.internal.misc;

import java.lang.reflect.Field;
import java.nio.ByteBuffer;
import java.security.ProtectionDomain;
import okhttp3.internal.ws.WebSocketProtocol;

/* loaded from: classes5.dex */
public final class NeoUnsafe {
    public static final int ADDRESS_SIZE = 0;
    public static final int ARRAY_BOOLEAN_BASE_OFFSET;
    public static final int ARRAY_BOOLEAN_INDEX_SCALE;
    public static final int ARRAY_BYTE_BASE_OFFSET;
    public static final int ARRAY_BYTE_INDEX_SCALE;
    public static final int ARRAY_CHAR_BASE_OFFSET;
    public static final int ARRAY_CHAR_INDEX_SCALE;
    public static final int ARRAY_DOUBLE_BASE_OFFSET;
    public static final int ARRAY_DOUBLE_INDEX_SCALE;
    public static final int ARRAY_FLOAT_BASE_OFFSET;
    public static final int ARRAY_FLOAT_INDEX_SCALE;
    public static final int ARRAY_INT_BASE_OFFSET;
    public static final int ARRAY_INT_INDEX_SCALE;
    public static final int ARRAY_LONG_BASE_OFFSET;
    public static final int ARRAY_LONG_INDEX_SCALE;
    public static final int ARRAY_OBJECT_BASE_OFFSET;
    public static final int ARRAY_OBJECT_INDEX_SCALE;
    public static final int ARRAY_SHORT_BASE_OFFSET;
    public static final int ARRAY_SHORT_INDEX_SCALE;
    public static final int INVALID_FIELD_OFFSET = -1;
    private static final NeoUnsafe theUnsafe;

    static {
        registerNatives();
        NeoUnsafe neoUnsafe = new NeoUnsafe();
        theUnsafe = neoUnsafe;
        ARRAY_BOOLEAN_BASE_OFFSET = neoUnsafe.arrayBaseOffset(boolean[].class);
        ARRAY_BYTE_BASE_OFFSET = neoUnsafe.arrayBaseOffset(byte[].class);
        ARRAY_SHORT_BASE_OFFSET = neoUnsafe.arrayBaseOffset(short[].class);
        ARRAY_CHAR_BASE_OFFSET = neoUnsafe.arrayBaseOffset(char[].class);
        ARRAY_INT_BASE_OFFSET = neoUnsafe.arrayBaseOffset(int[].class);
        ARRAY_LONG_BASE_OFFSET = neoUnsafe.arrayBaseOffset(long[].class);
        ARRAY_FLOAT_BASE_OFFSET = neoUnsafe.arrayBaseOffset(float[].class);
        ARRAY_DOUBLE_BASE_OFFSET = neoUnsafe.arrayBaseOffset(double[].class);
        ARRAY_OBJECT_BASE_OFFSET = neoUnsafe.arrayBaseOffset(Object[].class);
        ARRAY_BOOLEAN_INDEX_SCALE = neoUnsafe.arrayIndexScale(boolean[].class);
        ARRAY_BYTE_INDEX_SCALE = neoUnsafe.arrayIndexScale(byte[].class);
        ARRAY_SHORT_INDEX_SCALE = neoUnsafe.arrayIndexScale(short[].class);
        ARRAY_CHAR_INDEX_SCALE = neoUnsafe.arrayIndexScale(char[].class);
        ARRAY_INT_INDEX_SCALE = neoUnsafe.arrayIndexScale(int[].class);
        ARRAY_LONG_INDEX_SCALE = neoUnsafe.arrayIndexScale(long[].class);
        ARRAY_FLOAT_INDEX_SCALE = neoUnsafe.arrayIndexScale(float[].class);
        ARRAY_DOUBLE_INDEX_SCALE = neoUnsafe.arrayIndexScale(double[].class);
        ARRAY_OBJECT_INDEX_SCALE = neoUnsafe.arrayIndexScale(Object[].class);
    }

    private NeoUnsafe() {
    }

    private long alignToHeapWordSize(long j) {
        if (j >= 0) {
            return ((j + 0) - 1) & 0;
        }
        throw invalidInput();
    }

    private long allocateMemory0(long j) {
        return 0L;
    }

    private void allocateMemoryChecks(long j) {
        checkSize(j);
    }

    private Object allocateUninitializedArray0(Class<?> cls, int i) {
        if (cls == Byte.TYPE) {
            return new byte[i];
        }
        if (cls == Boolean.TYPE) {
            return new boolean[i];
        }
        if (cls == Short.TYPE) {
            return new short[i];
        }
        if (cls == Character.TYPE) {
            return new char[i];
        }
        if (cls == Integer.TYPE) {
            return new int[i];
        }
        if (cls == Float.TYPE) {
            return new float[i];
        }
        if (cls == Long.TYPE) {
            return new long[i];
        }
        if (cls == Double.TYPE) {
            return new double[i];
        }
        return null;
    }

    private int arrayBaseOffset0(Class<?> cls) {
        return 0;
    }

    private int arrayIndexScale0(Class<?> cls) {
        return 0;
    }

    private byte bool2byte(boolean z) {
        return z ? (byte) 1 : (byte) 0;
    }

    private boolean byte2bool(byte b) {
        return b != 0;
    }

    private short c2s(char c) {
        return (short) c;
    }

    private void checkNativeAddress(long j) {
    }

    private void checkOffset(Object obj, long j) {
        if (j < 0) {
            throw invalidInput();
        }
    }

    private void checkPointer(Object obj, long j) {
        if (obj == null) {
            checkNativeAddress(j);
        } else {
            checkOffset(obj, j);
        }
    }

    private void checkPrimitiveArray(Class<?> cls) {
        Class<?> componentType = cls.getComponentType();
        if (componentType == null || !componentType.isPrimitive()) {
            throw invalidInput();
        }
    }

    private void checkPrimitivePointer(Object obj, long j) {
        checkPointer(obj, j);
        if (obj != null) {
            checkPrimitiveArray(obj.getClass());
        }
    }

    private void checkSize(long j) {
        if (j < 0) {
            throw invalidInput();
        }
    }

    private void checkWritebackEnabled() {
        if (!isWritebackEnabled()) {
            throw new RuntimeException("writebackMemory not enabled!");
        }
    }

    private void checkWritebackMemory(long j, long j2) {
        checkNativeAddress(j);
        checkSize(j2);
    }

    private static char convEndian(boolean z, char c) {
        return !z ? c : Character.reverseBytes(c);
    }

    private void copyMemory0(Object obj, long j, Object obj2, long j2, long j3) {
    }

    private void copyMemoryChecks(Object obj, long j, Object obj2, long j2, long j3) {
        checkSize(j3);
        checkPrimitivePointer(obj, j);
        checkPrimitivePointer(obj2, j2);
    }

    private void copySwapMemory0(Object obj, long j, Object obj2, long j2, long j3, long j4) {
    }

    private void copySwapMemoryChecks(Object obj, long j, Object obj2, long j2, long j3, long j4) {
        checkSize(j3);
        if (j4 != 2 && j4 != 4 && j4 != 8) {
            throw invalidInput();
        }
        if (j3 % j4 != 0) {
            throw invalidInput();
        }
        checkPrimitivePointer(obj, j);
        checkPrimitivePointer(obj2, j2);
    }

    private Class<?> defineAnonymousClass0(Class<?> cls, byte[] bArr, Object[] objArr) {
        return null;
    }

    private void ensureClassInitialized0(Class<?> cls) {
    }

    private void freeMemory0(long j) {
    }

    private void freeMemoryChecks(long j) {
        checkPointer(null, j);
    }

    private int getLoadAverage0(double[] dArr, int i) {
        return 0;
    }

    public static NeoUnsafe getUnsafe() {
        return theUnsafe;
    }

    private RuntimeException invalidInput() {
        return new IllegalArgumentException();
    }

    private boolean is32BitClean(long j) {
        return (j >>> 32) == 0;
    }

    public static boolean isWritebackEnabled() {
        return false;
    }

    private static int makeInt(short s, short s2) {
        return (toUnsignedInt(s) << pickPos(16, 0)) | (toUnsignedInt(s2) << pickPos(16, 16));
    }

    private static long makeLong(byte b, byte b2, byte b3, byte b4, byte b5, byte b6, byte b7, byte b8) {
        return (toUnsignedLong(b2) << pickPos(56, 8)) | (toUnsignedLong(b) << pickPos(56, 0)) | (toUnsignedLong(b3) << pickPos(56, 16)) | (toUnsignedLong(b4) << pickPos(56, 24)) | (toUnsignedLong(b5) << pickPos(56, 32)) | (toUnsignedLong(b6) << pickPos(56, 40)) | (toUnsignedLong(b7) << pickPos(56, 48)) | (toUnsignedLong(b8) << pickPos(56, 56));
    }

    private static short makeShort(byte b, byte b2) {
        return (short) ((toUnsignedInt(b) << pickPos(8, 0)) | (toUnsignedInt(b2) << pickPos(8, 8)));
    }

    private long objectFieldOffset0(Field field) {
        return 0L;
    }

    private long objectFieldOffset1(Class<?> cls, String str) {
        return 0L;
    }

    private static byte pick(byte b, byte b2) {
        return b;
    }

    private static int pickPos(int i, int i2) {
        return i2;
    }

    private void putIntParts(Object obj, long j, short s, short s2) {
        putShort(obj, 0 + j, pick(s, s2));
        putShort(obj, j + 2, pick(s2, s));
    }

    private void putLongParts(Object obj, long j, byte b, byte b2, byte b3, byte b4, byte b5, byte b6, byte b7, byte b8) {
        putByte(obj, 0 + j, pick(b, b8));
        putByte(obj, 1 + j, pick(b2, b7));
        putByte(obj, 2 + j, pick(b3, b6));
        putByte(obj, 3 + j, pick(b4, b5));
        putByte(obj, 4 + j, pick(b5, b4));
        putByte(obj, 5 + j, pick(b6, b3));
        putByte(obj, 6 + j, pick(b7, b2));
        putByte(obj, j + 7, pick(b8, b));
    }

    private void putShortParts(Object obj, long j, byte b, byte b2) {
        putByte(obj, 0 + j, pick(b, b2));
        putByte(obj, j + 1, pick(b2, b));
    }

    private long reallocateMemory0(long j, long j2) {
        return 0L;
    }

    private void reallocateMemoryChecks(long j, long j2) {
        checkPointer(null, j);
        checkSize(j2);
    }

    private static void registerNatives() {
    }

    private char s2c(short s) {
        return (char) s;
    }

    private void setMemory0(Object obj, long j, long j2, byte b) {
    }

    private void setMemoryChecks(Object obj, long j, long j2, byte b) {
        checkPrimitivePointer(obj, j);
        checkSize(j2);
    }

    private boolean shouldBeInitialized0(Class<?> cls) {
        return false;
    }

    private Object staticFieldBase0(Field field) {
        return null;
    }

    private long staticFieldOffset0(Field field) {
        return 0L;
    }

    private static void throwIllegalAccessError() {
        throw new IllegalAccessError();
    }

    private static void throwNoSuchMethodError() {
        throw new NoSuchMethodError();
    }

    private static int toUnsignedInt(byte b) {
        return b & 255;
    }

    private static long toUnsignedLong(byte b) {
        return b & 255;
    }

    private void writeback0(long j) {
    }

    private void writebackPostSync0() {
    }

    private void writebackPreSync0() {
    }

    public int addressSize() {
        return 0;
    }

    public Object allocateInstance(Class<?> cls) throws InstantiationException {
        return null;
    }

    public long allocateMemory(long j) {
        long alignToHeapWordSize = alignToHeapWordSize(j);
        allocateMemoryChecks(alignToHeapWordSize);
        if (alignToHeapWordSize == 0) {
            return 0L;
        }
        long allocateMemory0 = allocateMemory0(alignToHeapWordSize);
        if (allocateMemory0 != 0) {
            return allocateMemory0;
        }
        throw new OutOfMemoryError("Unable to allocate " + alignToHeapWordSize + " bytes");
    }

    public Object allocateUninitializedArray(Class<?> cls, int i) {
        if (cls == null) {
            throw new IllegalArgumentException("Component type is null");
        }
        if (!cls.isPrimitive()) {
            throw new IllegalArgumentException("Component type is not primitive");
        }
        if (i >= 0) {
            return allocateUninitializedArray0(cls, i);
        }
        throw new IllegalArgumentException("Negative length");
    }

    public int arrayBaseOffset(Class<?> cls) {
        cls.getClass();
        return arrayBaseOffset0(cls);
    }

    public int arrayIndexScale(Class<?> cls) {
        cls.getClass();
        return arrayIndexScale0(cls);
    }

    public final boolean compareAndExchangeBoolean(Object obj, long j, boolean z, boolean z2) {
        return byte2bool(compareAndExchangeByte(obj, j, bool2byte(z), bool2byte(z2)));
    }

    public final boolean compareAndExchangeBooleanAcquire(Object obj, long j, boolean z, boolean z2) {
        return byte2bool(compareAndExchangeByteAcquire(obj, j, bool2byte(z), bool2byte(z2)));
    }

    public final boolean compareAndExchangeBooleanRelease(Object obj, long j, boolean z, boolean z2) {
        return byte2bool(compareAndExchangeByteRelease(obj, j, bool2byte(z), bool2byte(z2)));
    }

    public final byte compareAndExchangeByte(Object obj, long j, byte b, byte b2) {
        int intVolatile;
        long j2 = (-4) & j;
        int i = ((int) (j & 3)) << 3;
        int i2 = 255 << i;
        int i3 = (b & 255) << i;
        int i4 = (255 & b2) << i;
        do {
            intVolatile = getIntVolatile(obj, j2);
            int i5 = intVolatile & i2;
            if (i5 != i3) {
                return (byte) (i5 >> i);
            }
        } while (!weakCompareAndSetInt(obj, j2, intVolatile, ((~i2) & intVolatile) | i4));
        return b;
    }

    public final byte compareAndExchangeByteAcquire(Object obj, long j, byte b, byte b2) {
        return compareAndExchangeByte(obj, j, b, b2);
    }

    public final byte compareAndExchangeByteRelease(Object obj, long j, byte b, byte b2) {
        return compareAndExchangeByte(obj, j, b, b2);
    }

    public final char compareAndExchangeChar(Object obj, long j, char c, char c2) {
        return s2c(compareAndExchangeShort(obj, j, c2s(c), c2s(c2)));
    }

    public final char compareAndExchangeCharAcquire(Object obj, long j, char c, char c2) {
        return s2c(compareAndExchangeShortAcquire(obj, j, c2s(c), c2s(c2)));
    }

    public final char compareAndExchangeCharRelease(Object obj, long j, char c, char c2) {
        return s2c(compareAndExchangeShortRelease(obj, j, c2s(c), c2s(c2)));
    }

    public final double compareAndExchangeDouble(Object obj, long j, double d, double d2) {
        return Double.longBitsToDouble(compareAndExchangeLong(obj, j, Double.doubleToRawLongBits(d), Double.doubleToRawLongBits(d2)));
    }

    public final double compareAndExchangeDoubleAcquire(Object obj, long j, double d, double d2) {
        return Double.longBitsToDouble(compareAndExchangeLongAcquire(obj, j, Double.doubleToRawLongBits(d), Double.doubleToRawLongBits(d2)));
    }

    public final double compareAndExchangeDoubleRelease(Object obj, long j, double d, double d2) {
        return Double.longBitsToDouble(compareAndExchangeLongRelease(obj, j, Double.doubleToRawLongBits(d), Double.doubleToRawLongBits(d2)));
    }

    public final float compareAndExchangeFloat(Object obj, long j, float f, float f2) {
        return Float.intBitsToFloat(compareAndExchangeInt(obj, j, Float.floatToRawIntBits(f), Float.floatToRawIntBits(f2)));
    }

    public final float compareAndExchangeFloatAcquire(Object obj, long j, float f, float f2) {
        return Float.intBitsToFloat(compareAndExchangeIntAcquire(obj, j, Float.floatToRawIntBits(f), Float.floatToRawIntBits(f2)));
    }

    public final float compareAndExchangeFloatRelease(Object obj, long j, float f, float f2) {
        return Float.intBitsToFloat(compareAndExchangeIntRelease(obj, j, Float.floatToRawIntBits(f), Float.floatToRawIntBits(f2)));
    }

    public final int compareAndExchangeInt(Object obj, long j, int i, int i2) {
        return 0;
    }

    public final int compareAndExchangeIntAcquire(Object obj, long j, int i, int i2) {
        return compareAndExchangeInt(obj, j, i, i2);
    }

    public final int compareAndExchangeIntRelease(Object obj, long j, int i, int i2) {
        return compareAndExchangeInt(obj, j, i, i2);
    }

    public final long compareAndExchangeLong(Object obj, long j, long j2, long j3) {
        return 0L;
    }

    public final long compareAndExchangeLongAcquire(Object obj, long j, long j2, long j3) {
        return compareAndExchangeLong(obj, j, j2, j3);
    }

    public final long compareAndExchangeLongRelease(Object obj, long j, long j2, long j3) {
        return compareAndExchangeLong(obj, j, j2, j3);
    }

    public final Object compareAndExchangeObject(Object obj, long j, Object obj2, Object obj3) {
        return compareAndExchangeReference(obj, j, obj2, obj3);
    }

    public final Object compareAndExchangeObjectAcquire(Object obj, long j, Object obj2, Object obj3) {
        return compareAndExchangeReferenceAcquire(obj, j, obj2, obj3);
    }

    public final Object compareAndExchangeObjectRelease(Object obj, long j, Object obj2, Object obj3) {
        return compareAndExchangeReferenceRelease(obj, j, obj2, obj3);
    }

    public final Object compareAndExchangeReference(Object obj, long j, Object obj2, Object obj3) {
        return null;
    }

    public final Object compareAndExchangeReferenceAcquire(Object obj, long j, Object obj2, Object obj3) {
        return compareAndExchangeReference(obj, j, obj2, obj3);
    }

    public final Object compareAndExchangeReferenceRelease(Object obj, long j, Object obj2, Object obj3) {
        return compareAndExchangeReference(obj, j, obj2, obj3);
    }

    public final short compareAndExchangeShort(Object obj, long j, short s, short s2) {
        int intVolatile;
        long j2 = j & 3;
        if (j2 == 3) {
            throw new IllegalArgumentException("Update spans the word, not supported");
        }
        long j3 = j & (-4);
        int i = ((int) j2) << 3;
        int i2 = 65535 << i;
        int i3 = (s & 65535) << i;
        int i4 = (s2 & 65535) << i;
        do {
            intVolatile = getIntVolatile(obj, j3);
            int i5 = intVolatile & i2;
            if (i5 != i3) {
                return (short) (i5 >> i);
            }
        } while (!weakCompareAndSetInt(obj, j3, intVolatile, ((~i2) & intVolatile) | i4));
        return s;
    }

    public final short compareAndExchangeShortAcquire(Object obj, long j, short s, short s2) {
        return compareAndExchangeShort(obj, j, s, s2);
    }

    public final short compareAndExchangeShortRelease(Object obj, long j, short s, short s2) {
        return compareAndExchangeShort(obj, j, s, s2);
    }

    public final boolean compareAndSetBoolean(Object obj, long j, boolean z, boolean z2) {
        return compareAndSetByte(obj, j, bool2byte(z), bool2byte(z2));
    }

    public final boolean compareAndSetByte(Object obj, long j, byte b, byte b2) {
        return compareAndExchangeByte(obj, j, b, b2) == b;
    }

    public final boolean compareAndSetChar(Object obj, long j, char c, char c2) {
        return compareAndSetShort(obj, j, c2s(c), c2s(c2));
    }

    public final boolean compareAndSetDouble(Object obj, long j, double d, double d2) {
        return compareAndSetLong(obj, j, Double.doubleToRawLongBits(d), Double.doubleToRawLongBits(d2));
    }

    public final boolean compareAndSetFloat(Object obj, long j, float f, float f2) {
        return compareAndSetInt(obj, j, Float.floatToRawIntBits(f), Float.floatToRawIntBits(f2));
    }

    public final boolean compareAndSetInt(Object obj, long j, int i, int i2) {
        return false;
    }

    public final boolean compareAndSetLong(Object obj, long j, long j2, long j3) {
        return false;
    }

    public final boolean compareAndSetObject(Object obj, long j, Object obj2, Object obj3) {
        return compareAndSetReference(obj, j, obj2, obj3);
    }

    public final boolean compareAndSetReference(Object obj, long j, Object obj2, Object obj3) {
        return false;
    }

    public final boolean compareAndSetShort(Object obj, long j, short s, short s2) {
        return compareAndExchangeShort(obj, j, s, s2) == s;
    }

    public void copyMemory(Object obj, long j, Object obj2, long j2, long j3) {
        copyMemoryChecks(obj, j, obj2, j2, j3);
        if (j3 == 0) {
            return;
        }
        copyMemory0(obj, j, obj2, j2, j3);
    }

    public void copySwapMemory(Object obj, long j, Object obj2, long j2, long j3, long j4) {
        copySwapMemoryChecks(obj, j, obj2, j2, j3, j4);
        if (j3 == 0) {
            return;
        }
        copySwapMemory0(obj, j, obj2, j2, j3, j4);
    }

    public long dataCacheLineAlignDown(long j) {
        return j & 0;
    }

    public int dataCacheLineFlushSize() {
        return 0;
    }

    public Class<?> defineAnonymousClass(Class<?> cls, byte[] bArr, Object[] objArr) {
        if (cls == null || bArr == null) {
            throw null;
        }
        if (cls.isArray() || cls.isPrimitive()) {
            throw new IllegalArgumentException();
        }
        return defineAnonymousClass0(cls, bArr, objArr);
    }

    public Class<?> defineClass(String str, byte[] bArr, int i, int i2, ClassLoader classLoader, ProtectionDomain protectionDomain) {
        bArr.getClass();
        if (i2 >= 0) {
            return defineClass0(str, bArr, i, i2, classLoader, protectionDomain);
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public Class<?> defineClass0(String str, byte[] bArr, int i, int i2, ClassLoader classLoader, ProtectionDomain protectionDomain) {
        return null;
    }

    public void ensureClassInitialized(Class<?> cls) {
        cls.getClass();
        ensureClassInitialized0(cls);
    }

    public void freeMemory(long j) {
        freeMemoryChecks(j);
        if (j == 0) {
            return;
        }
        freeMemory0(j);
    }

    public void fullFence() {
    }

    public long getAddress(Object obj, long j) {
        return getLong(obj, j);
    }

    public final byte getAndAddByte(Object obj, long j, byte b) {
        byte byteVolatile;
        do {
            byteVolatile = getByteVolatile(obj, j);
        } while (!weakCompareAndSetByte(obj, j, byteVolatile, (byte) (byteVolatile + b)));
        return byteVolatile;
    }

    public final byte getAndAddByteAcquire(Object obj, long j, byte b) {
        byte byteAcquire;
        do {
            byteAcquire = getByteAcquire(obj, j);
        } while (!weakCompareAndSetByteAcquire(obj, j, byteAcquire, (byte) (byteAcquire + b)));
        return byteAcquire;
    }

    public final byte getAndAddByteRelease(Object obj, long j, byte b) {
        byte b2;
        do {
            b2 = getByte(obj, j);
        } while (!weakCompareAndSetByteRelease(obj, j, b2, (byte) (b2 + b)));
        return b2;
    }

    public final char getAndAddChar(Object obj, long j, char c) {
        return (char) getAndAddShort(obj, j, (short) c);
    }

    public final char getAndAddCharAcquire(Object obj, long j, char c) {
        return (char) getAndAddShortAcquire(obj, j, (short) c);
    }

    public final char getAndAddCharRelease(Object obj, long j, char c) {
        return (char) getAndAddShortRelease(obj, j, (short) c);
    }

    public final double getAndAddDouble(Object obj, long j, double d) {
        long longVolatile;
        double longBitsToDouble;
        do {
            longVolatile = getLongVolatile(obj, j);
            longBitsToDouble = Double.longBitsToDouble(longVolatile);
        } while (!weakCompareAndSetLong(obj, j, longVolatile, Double.doubleToRawLongBits(longBitsToDouble + d)));
        return longBitsToDouble;
    }

    public final double getAndAddDoubleAcquire(Object obj, long j, double d) {
        long longAcquire;
        double longBitsToDouble;
        do {
            longAcquire = getLongAcquire(obj, j);
            longBitsToDouble = Double.longBitsToDouble(longAcquire);
        } while (!weakCompareAndSetLongAcquire(obj, j, longAcquire, Double.doubleToRawLongBits(longBitsToDouble + d)));
        return longBitsToDouble;
    }

    public final double getAndAddDoubleRelease(Object obj, long j, double d) {
        long j2;
        double longBitsToDouble;
        do {
            j2 = getLong(obj, j);
            longBitsToDouble = Double.longBitsToDouble(j2);
        } while (!weakCompareAndSetLongRelease(obj, j, j2, Double.doubleToRawLongBits(longBitsToDouble + d)));
        return longBitsToDouble;
    }

    public final float getAndAddFloat(Object obj, long j, float f) {
        int intVolatile;
        float intBitsToFloat;
        do {
            intVolatile = getIntVolatile(obj, j);
            intBitsToFloat = Float.intBitsToFloat(intVolatile);
        } while (!weakCompareAndSetInt(obj, j, intVolatile, Float.floatToRawIntBits(intBitsToFloat + f)));
        return intBitsToFloat;
    }

    public final float getAndAddFloatAcquire(Object obj, long j, float f) {
        int intAcquire;
        float intBitsToFloat;
        do {
            intAcquire = getIntAcquire(obj, j);
            intBitsToFloat = Float.intBitsToFloat(intAcquire);
        } while (!weakCompareAndSetIntAcquire(obj, j, intAcquire, Float.floatToRawIntBits(intBitsToFloat + f)));
        return intBitsToFloat;
    }

    public final float getAndAddFloatRelease(Object obj, long j, float f) {
        int i;
        float intBitsToFloat;
        do {
            i = getInt(obj, j);
            intBitsToFloat = Float.intBitsToFloat(i);
        } while (!weakCompareAndSetIntRelease(obj, j, i, Float.floatToRawIntBits(intBitsToFloat + f)));
        return intBitsToFloat;
    }

    public final int getAndAddInt(Object obj, long j, int i) {
        int intVolatile;
        do {
            intVolatile = getIntVolatile(obj, j);
        } while (!weakCompareAndSetInt(obj, j, intVolatile, intVolatile + i));
        return intVolatile;
    }

    public final int getAndAddIntAcquire(Object obj, long j, int i) {
        int intAcquire;
        do {
            intAcquire = getIntAcquire(obj, j);
        } while (!weakCompareAndSetIntAcquire(obj, j, intAcquire, intAcquire + i));
        return intAcquire;
    }

    public final int getAndAddIntRelease(Object obj, long j, int i) {
        int i2;
        do {
            i2 = getInt(obj, j);
        } while (!weakCompareAndSetIntRelease(obj, j, i2, i2 + i));
        return i2;
    }

    public final long getAndAddLong(Object obj, long j, long j2) {
        long longVolatile;
        do {
            longVolatile = getLongVolatile(obj, j);
        } while (!weakCompareAndSetLong(obj, j, longVolatile, longVolatile + j2));
        return longVolatile;
    }

    public final long getAndAddLongAcquire(Object obj, long j, long j2) {
        long longAcquire;
        do {
            longAcquire = getLongAcquire(obj, j);
        } while (!weakCompareAndSetLongAcquire(obj, j, longAcquire, longAcquire + j2));
        return longAcquire;
    }

    public final long getAndAddLongRelease(Object obj, long j, long j2) {
        long j3;
        do {
            j3 = getLong(obj, j);
        } while (!weakCompareAndSetLongRelease(obj, j, j3, j3 + j2));
        return j3;
    }

    public final short getAndAddShort(Object obj, long j, short s) {
        short shortVolatile;
        do {
            shortVolatile = getShortVolatile(obj, j);
        } while (!weakCompareAndSetShort(obj, j, shortVolatile, (short) (shortVolatile + s)));
        return shortVolatile;
    }

    public final short getAndAddShortAcquire(Object obj, long j, short s) {
        short shortAcquire;
        do {
            shortAcquire = getShortAcquire(obj, j);
        } while (!weakCompareAndSetShortAcquire(obj, j, shortAcquire, (short) (shortAcquire + s)));
        return shortAcquire;
    }

    public final short getAndAddShortRelease(Object obj, long j, short s) {
        short s2;
        do {
            s2 = getShort(obj, j);
        } while (!weakCompareAndSetShortRelease(obj, j, s2, (short) (s2 + s)));
        return s2;
    }

    public final boolean getAndBitwiseAndBoolean(Object obj, long j, boolean z) {
        return byte2bool(getAndBitwiseAndByte(obj, j, bool2byte(z)));
    }

    public final boolean getAndBitwiseAndBooleanAcquire(Object obj, long j, boolean z) {
        return byte2bool(getAndBitwiseAndByteAcquire(obj, j, bool2byte(z)));
    }

    public final boolean getAndBitwiseAndBooleanRelease(Object obj, long j, boolean z) {
        return byte2bool(getAndBitwiseAndByteRelease(obj, j, bool2byte(z)));
    }

    public final byte getAndBitwiseAndByte(Object obj, long j, byte b) {
        byte byteVolatile;
        do {
            byteVolatile = getByteVolatile(obj, j);
        } while (!weakCompareAndSetByte(obj, j, byteVolatile, (byte) (byteVolatile & b)));
        return byteVolatile;
    }

    public final byte getAndBitwiseAndByteAcquire(Object obj, long j, byte b) {
        byte b2;
        do {
            b2 = getByte(obj, j);
        } while (!weakCompareAndSetByteAcquire(obj, j, b2, (byte) (b2 & b)));
        return b2;
    }

    public final byte getAndBitwiseAndByteRelease(Object obj, long j, byte b) {
        byte b2;
        do {
            b2 = getByte(obj, j);
        } while (!weakCompareAndSetByteRelease(obj, j, b2, (byte) (b2 & b)));
        return b2;
    }

    public final char getAndBitwiseAndChar(Object obj, long j, char c) {
        return s2c(getAndBitwiseAndShort(obj, j, c2s(c)));
    }

    public final char getAndBitwiseAndCharAcquire(Object obj, long j, char c) {
        return s2c(getAndBitwiseAndShortAcquire(obj, j, c2s(c)));
    }

    public final char getAndBitwiseAndCharRelease(Object obj, long j, char c) {
        return s2c(getAndBitwiseAndShortRelease(obj, j, c2s(c)));
    }

    public final int getAndBitwiseAndInt(Object obj, long j, int i) {
        int intVolatile;
        do {
            intVolatile = getIntVolatile(obj, j);
        } while (!weakCompareAndSetInt(obj, j, intVolatile, intVolatile & i));
        return intVolatile;
    }

    public final int getAndBitwiseAndIntAcquire(Object obj, long j, int i) {
        int i2;
        do {
            i2 = getInt(obj, j);
        } while (!weakCompareAndSetIntAcquire(obj, j, i2, i2 & i));
        return i2;
    }

    public final int getAndBitwiseAndIntRelease(Object obj, long j, int i) {
        int i2;
        do {
            i2 = getInt(obj, j);
        } while (!weakCompareAndSetIntRelease(obj, j, i2, i2 & i));
        return i2;
    }

    public final long getAndBitwiseAndLong(Object obj, long j, long j2) {
        long longVolatile;
        do {
            longVolatile = getLongVolatile(obj, j);
        } while (!weakCompareAndSetLong(obj, j, longVolatile, longVolatile & j2));
        return longVolatile;
    }

    public final long getAndBitwiseAndLongAcquire(Object obj, long j, long j2) {
        long j3;
        do {
            j3 = getLong(obj, j);
        } while (!weakCompareAndSetLongAcquire(obj, j, j3, j3 & j2));
        return j3;
    }

    public final long getAndBitwiseAndLongRelease(Object obj, long j, long j2) {
        long j3;
        do {
            j3 = getLong(obj, j);
        } while (!weakCompareAndSetLongRelease(obj, j, j3, j3 & j2));
        return j3;
    }

    public final short getAndBitwiseAndShort(Object obj, long j, short s) {
        short shortVolatile;
        do {
            shortVolatile = getShortVolatile(obj, j);
        } while (!weakCompareAndSetShort(obj, j, shortVolatile, (short) (shortVolatile & s)));
        return shortVolatile;
    }

    public final short getAndBitwiseAndShortAcquire(Object obj, long j, short s) {
        short s2;
        do {
            s2 = getShort(obj, j);
        } while (!weakCompareAndSetShortAcquire(obj, j, s2, (short) (s2 & s)));
        return s2;
    }

    public final short getAndBitwiseAndShortRelease(Object obj, long j, short s) {
        short s2;
        do {
            s2 = getShort(obj, j);
        } while (!weakCompareAndSetShortRelease(obj, j, s2, (short) (s2 & s)));
        return s2;
    }

    public final boolean getAndBitwiseOrBoolean(Object obj, long j, boolean z) {
        return byte2bool(getAndBitwiseOrByte(obj, j, bool2byte(z)));
    }

    public final boolean getAndBitwiseOrBooleanAcquire(Object obj, long j, boolean z) {
        return byte2bool(getAndBitwiseOrByteAcquire(obj, j, bool2byte(z)));
    }

    public final boolean getAndBitwiseOrBooleanRelease(Object obj, long j, boolean z) {
        return byte2bool(getAndBitwiseOrByteRelease(obj, j, bool2byte(z)));
    }

    public final byte getAndBitwiseOrByte(Object obj, long j, byte b) {
        byte byteVolatile;
        do {
            byteVolatile = getByteVolatile(obj, j);
        } while (!weakCompareAndSetByte(obj, j, byteVolatile, (byte) (byteVolatile | b)));
        return byteVolatile;
    }

    public final byte getAndBitwiseOrByteAcquire(Object obj, long j, byte b) {
        byte b2;
        do {
            b2 = getByte(obj, j);
        } while (!weakCompareAndSetByteAcquire(obj, j, b2, (byte) (b2 | b)));
        return b2;
    }

    public final byte getAndBitwiseOrByteRelease(Object obj, long j, byte b) {
        byte b2;
        do {
            b2 = getByte(obj, j);
        } while (!weakCompareAndSetByteRelease(obj, j, b2, (byte) (b2 | b)));
        return b2;
    }

    public final char getAndBitwiseOrChar(Object obj, long j, char c) {
        return s2c(getAndBitwiseOrShort(obj, j, c2s(c)));
    }

    public final char getAndBitwiseOrCharAcquire(Object obj, long j, char c) {
        return s2c(getAndBitwiseOrShortAcquire(obj, j, c2s(c)));
    }

    public final char getAndBitwiseOrCharRelease(Object obj, long j, char c) {
        return s2c(getAndBitwiseOrShortRelease(obj, j, c2s(c)));
    }

    public final int getAndBitwiseOrInt(Object obj, long j, int i) {
        int intVolatile;
        do {
            intVolatile = getIntVolatile(obj, j);
        } while (!weakCompareAndSetInt(obj, j, intVolatile, intVolatile | i));
        return intVolatile;
    }

    public final int getAndBitwiseOrIntAcquire(Object obj, long j, int i) {
        int i2;
        do {
            i2 = getInt(obj, j);
        } while (!weakCompareAndSetIntAcquire(obj, j, i2, i2 | i));
        return i2;
    }

    public final int getAndBitwiseOrIntRelease(Object obj, long j, int i) {
        int i2;
        do {
            i2 = getInt(obj, j);
        } while (!weakCompareAndSetIntRelease(obj, j, i2, i2 | i));
        return i2;
    }

    public final long getAndBitwiseOrLong(Object obj, long j, long j2) {
        long longVolatile;
        do {
            longVolatile = getLongVolatile(obj, j);
        } while (!weakCompareAndSetLong(obj, j, longVolatile, longVolatile | j2));
        return longVolatile;
    }

    public final long getAndBitwiseOrLongAcquire(Object obj, long j, long j2) {
        long j3;
        do {
            j3 = getLong(obj, j);
        } while (!weakCompareAndSetLongAcquire(obj, j, j3, j3 | j2));
        return j3;
    }

    public final long getAndBitwiseOrLongRelease(Object obj, long j, long j2) {
        long j3;
        do {
            j3 = getLong(obj, j);
        } while (!weakCompareAndSetLongRelease(obj, j, j3, j3 | j2));
        return j3;
    }

    public final short getAndBitwiseOrShort(Object obj, long j, short s) {
        short shortVolatile;
        do {
            shortVolatile = getShortVolatile(obj, j);
        } while (!weakCompareAndSetShort(obj, j, shortVolatile, (short) (shortVolatile | s)));
        return shortVolatile;
    }

    public final short getAndBitwiseOrShortAcquire(Object obj, long j, short s) {
        short s2;
        do {
            s2 = getShort(obj, j);
        } while (!weakCompareAndSetShortAcquire(obj, j, s2, (short) (s2 | s)));
        return s2;
    }

    public final short getAndBitwiseOrShortRelease(Object obj, long j, short s) {
        short s2;
        do {
            s2 = getShort(obj, j);
        } while (!weakCompareAndSetShortRelease(obj, j, s2, (short) (s2 | s)));
        return s2;
    }

    public final boolean getAndBitwiseXorBoolean(Object obj, long j, boolean z) {
        return byte2bool(getAndBitwiseXorByte(obj, j, bool2byte(z)));
    }

    public final boolean getAndBitwiseXorBooleanAcquire(Object obj, long j, boolean z) {
        return byte2bool(getAndBitwiseXorByteAcquire(obj, j, bool2byte(z)));
    }

    public final boolean getAndBitwiseXorBooleanRelease(Object obj, long j, boolean z) {
        return byte2bool(getAndBitwiseXorByteRelease(obj, j, bool2byte(z)));
    }

    public final byte getAndBitwiseXorByte(Object obj, long j, byte b) {
        byte byteVolatile;
        do {
            byteVolatile = getByteVolatile(obj, j);
        } while (!weakCompareAndSetByte(obj, j, byteVolatile, (byte) (byteVolatile ^ b)));
        return byteVolatile;
    }

    public final byte getAndBitwiseXorByteAcquire(Object obj, long j, byte b) {
        byte b2;
        do {
            b2 = getByte(obj, j);
        } while (!weakCompareAndSetByteAcquire(obj, j, b2, (byte) (b2 ^ b)));
        return b2;
    }

    public final byte getAndBitwiseXorByteRelease(Object obj, long j, byte b) {
        byte b2;
        do {
            b2 = getByte(obj, j);
        } while (!weakCompareAndSetByteRelease(obj, j, b2, (byte) (b2 ^ b)));
        return b2;
    }

    public final char getAndBitwiseXorChar(Object obj, long j, char c) {
        return s2c(getAndBitwiseXorShort(obj, j, c2s(c)));
    }

    public final char getAndBitwiseXorCharAcquire(Object obj, long j, char c) {
        return s2c(getAndBitwiseXorShortAcquire(obj, j, c2s(c)));
    }

    public final char getAndBitwiseXorCharRelease(Object obj, long j, char c) {
        return s2c(getAndBitwiseXorShortRelease(obj, j, c2s(c)));
    }

    public final int getAndBitwiseXorInt(Object obj, long j, int i) {
        int intVolatile;
        do {
            intVolatile = getIntVolatile(obj, j);
        } while (!weakCompareAndSetInt(obj, j, intVolatile, intVolatile ^ i));
        return intVolatile;
    }

    public final int getAndBitwiseXorIntAcquire(Object obj, long j, int i) {
        int i2;
        do {
            i2 = getInt(obj, j);
        } while (!weakCompareAndSetIntAcquire(obj, j, i2, i2 ^ i));
        return i2;
    }

    public final int getAndBitwiseXorIntRelease(Object obj, long j, int i) {
        int i2;
        do {
            i2 = getInt(obj, j);
        } while (!weakCompareAndSetIntRelease(obj, j, i2, i2 ^ i));
        return i2;
    }

    public final long getAndBitwiseXorLong(Object obj, long j, long j2) {
        long longVolatile;
        do {
            longVolatile = getLongVolatile(obj, j);
        } while (!weakCompareAndSetLong(obj, j, longVolatile, longVolatile ^ j2));
        return longVolatile;
    }

    public final long getAndBitwiseXorLongAcquire(Object obj, long j, long j2) {
        long j3;
        do {
            j3 = getLong(obj, j);
        } while (!weakCompareAndSetLongAcquire(obj, j, j3, j3 ^ j2));
        return j3;
    }

    public final long getAndBitwiseXorLongRelease(Object obj, long j, long j2) {
        long j3;
        do {
            j3 = getLong(obj, j);
        } while (!weakCompareAndSetLongRelease(obj, j, j3, j3 ^ j2));
        return j3;
    }

    public final short getAndBitwiseXorShort(Object obj, long j, short s) {
        short shortVolatile;
        do {
            shortVolatile = getShortVolatile(obj, j);
        } while (!weakCompareAndSetShort(obj, j, shortVolatile, (short) (shortVolatile ^ s)));
        return shortVolatile;
    }

    public final short getAndBitwiseXorShortAcquire(Object obj, long j, short s) {
        short s2;
        do {
            s2 = getShort(obj, j);
        } while (!weakCompareAndSetShortAcquire(obj, j, s2, (short) (s2 ^ s)));
        return s2;
    }

    public final short getAndBitwiseXorShortRelease(Object obj, long j, short s) {
        short s2;
        do {
            s2 = getShort(obj, j);
        } while (!weakCompareAndSetShortRelease(obj, j, s2, (short) (s2 ^ s)));
        return s2;
    }

    public final boolean getAndSetBoolean(Object obj, long j, boolean z) {
        return byte2bool(getAndSetByte(obj, j, bool2byte(z)));
    }

    public final boolean getAndSetBooleanAcquire(Object obj, long j, boolean z) {
        return byte2bool(getAndSetByteAcquire(obj, j, bool2byte(z)));
    }

    public final boolean getAndSetBooleanRelease(Object obj, long j, boolean z) {
        return byte2bool(getAndSetByteRelease(obj, j, bool2byte(z)));
    }

    public final byte getAndSetByte(Object obj, long j, byte b) {
        byte byteVolatile;
        do {
            byteVolatile = getByteVolatile(obj, j);
        } while (!weakCompareAndSetByte(obj, j, byteVolatile, b));
        return byteVolatile;
    }

    public final byte getAndSetByteAcquire(Object obj, long j, byte b) {
        byte byteAcquire;
        do {
            byteAcquire = getByteAcquire(obj, j);
        } while (!weakCompareAndSetByteAcquire(obj, j, byteAcquire, b));
        return byteAcquire;
    }

    public final byte getAndSetByteRelease(Object obj, long j, byte b) {
        byte b2;
        do {
            b2 = getByte(obj, j);
        } while (!weakCompareAndSetByteRelease(obj, j, b2, b));
        return b2;
    }

    public final char getAndSetChar(Object obj, long j, char c) {
        return s2c(getAndSetShort(obj, j, c2s(c)));
    }

    public final char getAndSetCharAcquire(Object obj, long j, char c) {
        return s2c(getAndSetShortAcquire(obj, j, c2s(c)));
    }

    public final char getAndSetCharRelease(Object obj, long j, char c) {
        return s2c(getAndSetShortRelease(obj, j, c2s(c)));
    }

    public final double getAndSetDouble(Object obj, long j, double d) {
        return Double.longBitsToDouble(getAndSetLong(obj, j, Double.doubleToRawLongBits(d)));
    }

    public final double getAndSetDoubleAcquire(Object obj, long j, double d) {
        return Double.longBitsToDouble(getAndSetLongAcquire(obj, j, Double.doubleToRawLongBits(d)));
    }

    public final double getAndSetDoubleRelease(Object obj, long j, double d) {
        return Double.longBitsToDouble(getAndSetLongRelease(obj, j, Double.doubleToRawLongBits(d)));
    }

    public final float getAndSetFloat(Object obj, long j, float f) {
        return Float.intBitsToFloat(getAndSetInt(obj, j, Float.floatToRawIntBits(f)));
    }

    public final float getAndSetFloatAcquire(Object obj, long j, float f) {
        return Float.intBitsToFloat(getAndSetIntAcquire(obj, j, Float.floatToRawIntBits(f)));
    }

    public final float getAndSetFloatRelease(Object obj, long j, float f) {
        return Float.intBitsToFloat(getAndSetIntRelease(obj, j, Float.floatToRawIntBits(f)));
    }

    public final int getAndSetInt(Object obj, long j, int i) {
        int intVolatile;
        do {
            intVolatile = getIntVolatile(obj, j);
        } while (!weakCompareAndSetInt(obj, j, intVolatile, i));
        return intVolatile;
    }

    public final int getAndSetIntAcquire(Object obj, long j, int i) {
        int intAcquire;
        do {
            intAcquire = getIntAcquire(obj, j);
        } while (!weakCompareAndSetIntAcquire(obj, j, intAcquire, i));
        return intAcquire;
    }

    public final int getAndSetIntRelease(Object obj, long j, int i) {
        int i2;
        do {
            i2 = getInt(obj, j);
        } while (!weakCompareAndSetIntRelease(obj, j, i2, i));
        return i2;
    }

    public final long getAndSetLong(Object obj, long j, long j2) {
        long longVolatile;
        do {
            longVolatile = getLongVolatile(obj, j);
        } while (!weakCompareAndSetLong(obj, j, longVolatile, j2));
        return longVolatile;
    }

    public final long getAndSetLongAcquire(Object obj, long j, long j2) {
        long longAcquire;
        do {
            longAcquire = getLongAcquire(obj, j);
        } while (!weakCompareAndSetLongAcquire(obj, j, longAcquire, j2));
        return longAcquire;
    }

    public final long getAndSetLongRelease(Object obj, long j, long j2) {
        long j3;
        do {
            j3 = getLong(obj, j);
        } while (!weakCompareAndSetLongRelease(obj, j, j3, j2));
        return j3;
    }

    public final Object getAndSetObject(Object obj, long j, Object obj2) {
        return getAndSetReference(obj, j, obj2);
    }

    public final Object getAndSetObjectAcquire(Object obj, long j, Object obj2) {
        return getAndSetReferenceAcquire(obj, j, obj2);
    }

    public final Object getAndSetObjectRelease(Object obj, long j, Object obj2) {
        return getAndSetReferenceRelease(obj, j, obj2);
    }

    public final Object getAndSetReference(Object obj, long j, Object obj2) {
        Object referenceVolatile;
        do {
            referenceVolatile = getReferenceVolatile(obj, j);
        } while (!weakCompareAndSetReference(obj, j, referenceVolatile, obj2));
        return referenceVolatile;
    }

    public final Object getAndSetReferenceAcquire(Object obj, long j, Object obj2) {
        Object referenceAcquire;
        do {
            referenceAcquire = getReferenceAcquire(obj, j);
        } while (!weakCompareAndSetReferenceAcquire(obj, j, referenceAcquire, obj2));
        return referenceAcquire;
    }

    public final Object getAndSetReferenceRelease(Object obj, long j, Object obj2) {
        Object reference;
        do {
            reference = getReference(obj, j);
        } while (!weakCompareAndSetReferenceRelease(obj, j, reference, obj2));
        return reference;
    }

    public final short getAndSetShort(Object obj, long j, short s) {
        short shortVolatile;
        do {
            shortVolatile = getShortVolatile(obj, j);
        } while (!weakCompareAndSetShort(obj, j, shortVolatile, s));
        return shortVolatile;
    }

    public final short getAndSetShortAcquire(Object obj, long j, short s) {
        short shortAcquire;
        do {
            shortAcquire = getShortAcquire(obj, j);
        } while (!weakCompareAndSetShortAcquire(obj, j, shortAcquire, s));
        return shortAcquire;
    }

    public final short getAndSetShortRelease(Object obj, long j, short s) {
        short s2;
        do {
            s2 = getShort(obj, j);
        } while (!weakCompareAndSetShortRelease(obj, j, s2, s));
        return s2;
    }

    public boolean getBoolean(Object obj, long j) {
        return false;
    }

    public final boolean getBooleanAcquire(Object obj, long j) {
        return getBooleanVolatile(obj, j);
    }

    public final boolean getBooleanOpaque(Object obj, long j) {
        return getBooleanVolatile(obj, j);
    }

    public boolean getBooleanVolatile(Object obj, long j) {
        return false;
    }

    public byte getByte(Object obj, long j) {
        return (byte) 0;
    }

    public final byte getByteAcquire(Object obj, long j) {
        return getByteVolatile(obj, j);
    }

    public final byte getByteOpaque(Object obj, long j) {
        return getByteVolatile(obj, j);
    }

    public byte getByteVolatile(Object obj, long j) {
        return (byte) 0;
    }

    public char getChar(Object obj, long j) {
        return '0';
    }

    public final char getCharAcquire(Object obj, long j) {
        return getCharVolatile(obj, j);
    }

    public final char getCharOpaque(Object obj, long j) {
        return getCharVolatile(obj, j);
    }

    public final char getCharUnaligned(Object obj, long j) {
        if ((j & 1) == 0) {
            return getChar(obj, j);
        }
        return (char) makeShort(getByte(obj, j), getByte(obj, j + 1));
    }

    public char getCharVolatile(Object obj, long j) {
        return '0';
    }

    public double getDouble(Object obj, long j) {
        return 0.0d;
    }

    public final double getDoubleAcquire(Object obj, long j) {
        return getDoubleVolatile(obj, j);
    }

    public final double getDoubleOpaque(Object obj, long j) {
        return getDoubleVolatile(obj, j);
    }

    public double getDoubleVolatile(Object obj, long j) {
        return 0.0d;
    }

    public float getFloat(Object obj, long j) {
        return 0.0f;
    }

    public final float getFloatAcquire(Object obj, long j) {
        return getFloatVolatile(obj, j);
    }

    public final float getFloatOpaque(Object obj, long j) {
        return getFloatVolatile(obj, j);
    }

    public float getFloatVolatile(Object obj, long j) {
        return 0.0f;
    }

    public int getInt(Object obj, long j) {
        return 0;
    }

    public final int getIntAcquire(Object obj, long j) {
        return getIntVolatile(obj, j);
    }

    public final int getIntOpaque(Object obj, long j) {
        return getIntVolatile(obj, j);
    }

    public final int getIntUnaligned(Object obj, long j) {
        if ((j & 3) == 0) {
            return getInt(obj, j);
        }
        if ((j & 1) == 0) {
            return makeInt(getShort(obj, j), getShort(obj, j + 2));
        }
        return makeInt(getByte(obj, j), getByte(obj, 1 + j), getByte(obj, 2 + j), getByte(obj, j + 3));
    }

    public int getIntVolatile(Object obj, long j) {
        return 0;
    }

    public int getLoadAverage(double[] dArr, int i) {
        if (i < 0 || i > 3 || i > dArr.length) {
            throw new ArrayIndexOutOfBoundsException();
        }
        return getLoadAverage0(dArr, i);
    }

    public long getLong(Object obj, long j) {
        return 0L;
    }

    public final long getLongAcquire(Object obj, long j) {
        return getLongVolatile(obj, j);
    }

    public final long getLongOpaque(Object obj, long j) {
        return getLongVolatile(obj, j);
    }

    public final long getLongUnaligned(Object obj, long j) {
        if ((j & 7) == 0) {
            return getLong(obj, j);
        }
        if ((j & 3) == 0) {
            return makeLong(getInt(obj, j), getInt(obj, j + 4));
        }
        if ((j & 1) == 0) {
            return makeLong(getShort(obj, j), getShort(obj, j + 2), getShort(obj, j + 4), getShort(obj, j + 6));
        }
        return makeLong(getByte(obj, j), getByte(obj, j + 1), getByte(obj, j + 2), getByte(obj, j + 3), getByte(obj, j + 4), getByte(obj, j + 5), getByte(obj, j + 6), getByte(obj, j + 7));
    }

    public long getLongVolatile(Object obj, long j) {
        return 0L;
    }

    public final Object getObject(Object obj, long j) {
        return getReference(obj, j);
    }

    public final Object getObjectAcquire(Object obj, long j) {
        return getReferenceAcquire(obj, j);
    }

    public final Object getObjectOpaque(Object obj, long j) {
        return getReferenceOpaque(obj, j);
    }

    public final Object getObjectVolatile(Object obj, long j) {
        return getReferenceVolatile(obj, j);
    }

    public Object getReference(Object obj, long j) {
        return null;
    }

    public final Object getReferenceAcquire(Object obj, long j) {
        return getReferenceVolatile(obj, j);
    }

    public final Object getReferenceOpaque(Object obj, long j) {
        return getReferenceVolatile(obj, j);
    }

    public Object getReferenceVolatile(Object obj, long j) {
        return null;
    }

    public short getShort(Object obj, long j) {
        return (short) 0;
    }

    public final short getShortAcquire(Object obj, long j) {
        return getShortVolatile(obj, j);
    }

    public final short getShortOpaque(Object obj, long j) {
        return getShortVolatile(obj, j);
    }

    public final short getShortUnaligned(Object obj, long j) {
        if ((j & 1) == 0) {
            return getShort(obj, j);
        }
        return makeShort(getByte(obj, j), getByte(obj, j + 1));
    }

    public short getShortVolatile(Object obj, long j) {
        return (short) 0;
    }

    public Object getUncompressedObject(long j) {
        return null;
    }

    public void invokeCleaner(ByteBuffer byteBuffer) {
        if (!byteBuffer.isDirect()) {
            throw new IllegalArgumentException("buffer is non-direct");
        }
    }

    public final boolean isBigEndian() {
        return false;
    }

    public void loadFence() {
    }

    public final void loadLoadFence() {
        loadFence();
    }

    public long objectFieldOffset(Field field) {
        field.getClass();
        return objectFieldOffset0(field);
    }

    public int pageSize() {
        return 0;
    }

    public void park(boolean z, long j) {
    }

    public void putAddress(Object obj, long j, long j2) {
        putLong(obj, j, j2);
    }

    public void putBoolean(Object obj, long j, boolean z) {
    }

    public final void putBooleanOpaque(Object obj, long j, boolean z) {
        putBooleanVolatile(obj, j, z);
    }

    public final void putBooleanRelease(Object obj, long j, boolean z) {
        putBooleanVolatile(obj, j, z);
    }

    public void putBooleanVolatile(Object obj, long j, boolean z) {
    }

    public void putByte(Object obj, long j, byte b) {
    }

    public final void putByteOpaque(Object obj, long j, byte b) {
        putByteVolatile(obj, j, b);
    }

    public final void putByteRelease(Object obj, long j, byte b) {
        putByteVolatile(obj, j, b);
    }

    public void putByteVolatile(Object obj, long j, byte b) {
    }

    public void putChar(Object obj, long j, char c) {
    }

    public final void putCharOpaque(Object obj, long j, char c) {
        putCharVolatile(obj, j, c);
    }

    public final void putCharRelease(Object obj, long j, char c) {
        putCharVolatile(obj, j, c);
    }

    public final void putCharUnaligned(Object obj, long j, char c) {
        putShortUnaligned(obj, j, (short) c);
    }

    public void putCharVolatile(Object obj, long j, char c) {
    }

    public void putDouble(Object obj, long j, double d) {
    }

    public final void putDoubleOpaque(Object obj, long j, double d) {
        putDoubleVolatile(obj, j, d);
    }

    public final void putDoubleRelease(Object obj, long j, double d) {
        putDoubleVolatile(obj, j, d);
    }

    public void putDoubleVolatile(Object obj, long j, double d) {
    }

    public void putFloat(Object obj, long j, float f) {
    }

    public final void putFloatOpaque(Object obj, long j, float f) {
        putFloatVolatile(obj, j, f);
    }

    public final void putFloatRelease(Object obj, long j, float f) {
        putFloatVolatile(obj, j, f);
    }

    public void putFloatVolatile(Object obj, long j, float f) {
    }

    public void putInt(Object obj, long j, int i) {
    }

    public final void putIntOpaque(Object obj, long j, int i) {
        putIntVolatile(obj, j, i);
    }

    public final void putIntRelease(Object obj, long j, int i) {
        putIntVolatile(obj, j, i);
    }

    public final void putIntUnaligned(Object obj, long j, int i) {
        if ((3 & j) == 0) {
            putInt(obj, j, i);
        } else if ((1 & j) == 0) {
            putIntParts(obj, j, (short) (i >> 0), (short) (i >>> 16));
        } else {
            putIntParts(obj, j, (byte) (i >>> 0), (byte) (i >>> 8), (byte) (i >>> 16), (byte) (i >>> 24));
        }
    }

    public void putIntVolatile(Object obj, long j, int i) {
    }

    public void putLong(Object obj, long j, long j2) {
    }

    public final void putLongOpaque(Object obj, long j, long j2) {
        putLongVolatile(obj, j, j2);
    }

    public final void putLongRelease(Object obj, long j, long j2) {
        putLongVolatile(obj, j, j2);
    }

    public final void putLongUnaligned(Object obj, long j, long j2) {
        if ((7 & j) == 0) {
            putLong(obj, j, j2);
            return;
        }
        if ((3 & j) == 0) {
            putLongParts(obj, j, (int) (j2 >> 0), (int) (j2 >>> 32));
        } else if ((1 & j) == 0) {
            putLongParts(obj, j, (short) (j2 >>> 0), (short) (j2 >>> 16), (short) (j2 >>> 32), (short) (j2 >>> 48));
        } else {
            putLongParts(obj, j, (byte) (j2 >>> 0), (byte) (j2 >>> 8), (byte) (j2 >>> 16), (byte) (j2 >>> 24), (byte) (j2 >>> 32), (byte) (j2 >>> 40), (byte) (j2 >>> 48), (byte) (j2 >>> 56));
        }
    }

    public void putLongVolatile(Object obj, long j, long j2) {
    }

    public final void putObject(Object obj, long j, Object obj2) {
        putReference(obj, j, obj2);
    }

    public final void putObjectOpaque(Object obj, long j, Object obj2) {
        putReferenceOpaque(obj, j, obj2);
    }

    public final void putObjectRelease(Object obj, long j, Object obj2) {
        putReferenceRelease(obj, j, obj2);
    }

    public final void putObjectVolatile(Object obj, long j, Object obj2) {
        putReferenceVolatile(obj, j, obj2);
    }

    public void putReference(Object obj, long j, Object obj2) {
    }

    public final void putReferenceOpaque(Object obj, long j, Object obj2) {
        putReferenceVolatile(obj, j, obj2);
    }

    public final void putReferenceRelease(Object obj, long j, Object obj2) {
        putReferenceVolatile(obj, j, obj2);
    }

    public void putReferenceVolatile(Object obj, long j, Object obj2) {
    }

    public void putShort(Object obj, long j, short s) {
    }

    public final void putShortOpaque(Object obj, long j, short s) {
        putShortVolatile(obj, j, s);
    }

    public final void putShortRelease(Object obj, long j, short s) {
        putShortVolatile(obj, j, s);
    }

    public final void putShortUnaligned(Object obj, long j, short s) {
        if ((1 & j) == 0) {
            putShort(obj, j, s);
        } else {
            putShortParts(obj, j, (byte) (s >>> 0), (byte) (s >>> 8));
        }
    }

    public void putShortVolatile(Object obj, long j, short s) {
    }

    public long reallocateMemory(long j, long j2) {
        long alignToHeapWordSize = alignToHeapWordSize(j2);
        reallocateMemoryChecks(j, alignToHeapWordSize);
        if (alignToHeapWordSize == 0) {
            freeMemory(j);
            return 0L;
        }
        long allocateMemory0 = j == 0 ? allocateMemory0(alignToHeapWordSize) : reallocateMemory0(j, alignToHeapWordSize);
        if (allocateMemory0 != 0) {
            return allocateMemory0;
        }
        throw new OutOfMemoryError("Unable to allocate " + alignToHeapWordSize + " bytes");
    }

    public void setMemory(Object obj, long j, long j2, byte b) {
        setMemoryChecks(obj, j, j2, b);
        if (j2 == 0) {
            return;
        }
        setMemory0(obj, j, j2, b);
    }

    public boolean shouldBeInitialized(Class<?> cls) {
        cls.getClass();
        return shouldBeInitialized0(cls);
    }

    public Object staticFieldBase(Field field) {
        field.getClass();
        return staticFieldBase0(field);
    }

    public long staticFieldOffset(Field field) {
        field.getClass();
        return staticFieldOffset0(field);
    }

    public void storeFence() {
    }

    public final void storeStoreFence() {
        storeFence();
    }

    public void throwException(Throwable th) {
    }

    public final boolean unalignedAccess() {
        return false;
    }

    public void unpark(Object obj) {
    }

    public final boolean weakCompareAndSetBoolean(Object obj, long j, boolean z, boolean z2) {
        return weakCompareAndSetByte(obj, j, bool2byte(z), bool2byte(z2));
    }

    public final boolean weakCompareAndSetBooleanAcquire(Object obj, long j, boolean z, boolean z2) {
        return weakCompareAndSetByteAcquire(obj, j, bool2byte(z), bool2byte(z2));
    }

    public final boolean weakCompareAndSetBooleanPlain(Object obj, long j, boolean z, boolean z2) {
        return weakCompareAndSetBytePlain(obj, j, bool2byte(z), bool2byte(z2));
    }

    public final boolean weakCompareAndSetBooleanRelease(Object obj, long j, boolean z, boolean z2) {
        return weakCompareAndSetByteRelease(obj, j, bool2byte(z), bool2byte(z2));
    }

    public final boolean weakCompareAndSetByte(Object obj, long j, byte b, byte b2) {
        return compareAndSetByte(obj, j, b, b2);
    }

    public final boolean weakCompareAndSetByteAcquire(Object obj, long j, byte b, byte b2) {
        return weakCompareAndSetByte(obj, j, b, b2);
    }

    public final boolean weakCompareAndSetBytePlain(Object obj, long j, byte b, byte b2) {
        return weakCompareAndSetByte(obj, j, b, b2);
    }

    public final boolean weakCompareAndSetByteRelease(Object obj, long j, byte b, byte b2) {
        return weakCompareAndSetByte(obj, j, b, b2);
    }

    public final boolean weakCompareAndSetChar(Object obj, long j, char c, char c2) {
        return weakCompareAndSetShort(obj, j, c2s(c), c2s(c2));
    }

    public final boolean weakCompareAndSetCharAcquire(Object obj, long j, char c, char c2) {
        return weakCompareAndSetShortAcquire(obj, j, c2s(c), c2s(c2));
    }

    public final boolean weakCompareAndSetCharPlain(Object obj, long j, char c, char c2) {
        return weakCompareAndSetShortPlain(obj, j, c2s(c), c2s(c2));
    }

    public final boolean weakCompareAndSetCharRelease(Object obj, long j, char c, char c2) {
        return weakCompareAndSetShortRelease(obj, j, c2s(c), c2s(c2));
    }

    public final boolean weakCompareAndSetDouble(Object obj, long j, double d, double d2) {
        return weakCompareAndSetLong(obj, j, Double.doubleToRawLongBits(d), Double.doubleToRawLongBits(d2));
    }

    public final boolean weakCompareAndSetDoubleAcquire(Object obj, long j, double d, double d2) {
        return weakCompareAndSetLongAcquire(obj, j, Double.doubleToRawLongBits(d), Double.doubleToRawLongBits(d2));
    }

    public final boolean weakCompareAndSetDoublePlain(Object obj, long j, double d, double d2) {
        return weakCompareAndSetLongPlain(obj, j, Double.doubleToRawLongBits(d), Double.doubleToRawLongBits(d2));
    }

    public final boolean weakCompareAndSetDoubleRelease(Object obj, long j, double d, double d2) {
        return weakCompareAndSetLongRelease(obj, j, Double.doubleToRawLongBits(d), Double.doubleToRawLongBits(d2));
    }

    public final boolean weakCompareAndSetFloat(Object obj, long j, float f, float f2) {
        return weakCompareAndSetInt(obj, j, Float.floatToRawIntBits(f), Float.floatToRawIntBits(f2));
    }

    public final boolean weakCompareAndSetFloatAcquire(Object obj, long j, float f, float f2) {
        return weakCompareAndSetIntAcquire(obj, j, Float.floatToRawIntBits(f), Float.floatToRawIntBits(f2));
    }

    public final boolean weakCompareAndSetFloatPlain(Object obj, long j, float f, float f2) {
        return weakCompareAndSetIntPlain(obj, j, Float.floatToRawIntBits(f), Float.floatToRawIntBits(f2));
    }

    public final boolean weakCompareAndSetFloatRelease(Object obj, long j, float f, float f2) {
        return weakCompareAndSetIntRelease(obj, j, Float.floatToRawIntBits(f), Float.floatToRawIntBits(f2));
    }

    public final boolean weakCompareAndSetInt(Object obj, long j, int i, int i2) {
        return compareAndSetInt(obj, j, i, i2);
    }

    public final boolean weakCompareAndSetIntAcquire(Object obj, long j, int i, int i2) {
        return compareAndSetInt(obj, j, i, i2);
    }

    public final boolean weakCompareAndSetIntPlain(Object obj, long j, int i, int i2) {
        return compareAndSetInt(obj, j, i, i2);
    }

    public final boolean weakCompareAndSetIntRelease(Object obj, long j, int i, int i2) {
        return compareAndSetInt(obj, j, i, i2);
    }

    public final boolean weakCompareAndSetLong(Object obj, long j, long j2, long j3) {
        return compareAndSetLong(obj, j, j2, j3);
    }

    public final boolean weakCompareAndSetLongAcquire(Object obj, long j, long j2, long j3) {
        return compareAndSetLong(obj, j, j2, j3);
    }

    public final boolean weakCompareAndSetLongPlain(Object obj, long j, long j2, long j3) {
        return compareAndSetLong(obj, j, j2, j3);
    }

    public final boolean weakCompareAndSetLongRelease(Object obj, long j, long j2, long j3) {
        return compareAndSetLong(obj, j, j2, j3);
    }

    public final boolean weakCompareAndSetObject(Object obj, long j, Object obj2, Object obj3) {
        return weakCompareAndSetReference(obj, j, obj2, obj3);
    }

    public final boolean weakCompareAndSetObjectAcquire(Object obj, long j, Object obj2, Object obj3) {
        return weakCompareAndSetReferenceAcquire(obj, j, obj2, obj3);
    }

    public final boolean weakCompareAndSetObjectPlain(Object obj, long j, Object obj2, Object obj3) {
        return weakCompareAndSetReferencePlain(obj, j, obj2, obj3);
    }

    public final boolean weakCompareAndSetObjectRelease(Object obj, long j, Object obj2, Object obj3) {
        return weakCompareAndSetReferenceRelease(obj, j, obj2, obj3);
    }

    public final boolean weakCompareAndSetReference(Object obj, long j, Object obj2, Object obj3) {
        return compareAndSetReference(obj, j, obj2, obj3);
    }

    public final boolean weakCompareAndSetReferenceAcquire(Object obj, long j, Object obj2, Object obj3) {
        return compareAndSetReference(obj, j, obj2, obj3);
    }

    public final boolean weakCompareAndSetReferencePlain(Object obj, long j, Object obj2, Object obj3) {
        return compareAndSetReference(obj, j, obj2, obj3);
    }

    public final boolean weakCompareAndSetReferenceRelease(Object obj, long j, Object obj2, Object obj3) {
        return compareAndSetReference(obj, j, obj2, obj3);
    }

    public final boolean weakCompareAndSetShort(Object obj, long j, short s, short s2) {
        return compareAndSetShort(obj, j, s, s2);
    }

    public final boolean weakCompareAndSetShortAcquire(Object obj, long j, short s, short s2) {
        return weakCompareAndSetShort(obj, j, s, s2);
    }

    public final boolean weakCompareAndSetShortPlain(Object obj, long j, short s, short s2) {
        return weakCompareAndSetShort(obj, j, s, s2);
    }

    public final boolean weakCompareAndSetShortRelease(Object obj, long j, short s, short s2) {
        return weakCompareAndSetShort(obj, j, s, s2);
    }

    public void writebackMemory(long j, long j2) {
        checkWritebackEnabled();
        checkWritebackMemory(j, j2);
        writebackPreSync0();
        long dataCacheLineAlignDown = dataCacheLineAlignDown(j);
        long j3 = j + j2;
        while (dataCacheLineAlignDown < j3) {
            writeback0(dataCacheLineAlignDown);
            dataCacheLineAlignDown += dataCacheLineFlushSize();
        }
        writebackPostSync0();
    }

    private static short convEndian(boolean z, short s) {
        return !z ? s : Short.reverseBytes(s);
    }

    private static int pick(int i, int i2) {
        return i;
    }

    private static int toUnsignedInt(short s) {
        return s & 65535;
    }

    private static long toUnsignedLong(int i) {
        return i & 4294967295L;
    }

    public long getAddress(long j) {
        return getAddress(null, j);
    }

    public byte getByte(long j) {
        return getByte(null, j);
    }

    public char getChar(long j) {
        return getChar(null, j);
    }

    public double getDouble(long j) {
        return getDouble(null, j);
    }

    public float getFloat(long j) {
        return getFloat(null, j);
    }

    public int getInt(long j) {
        return getInt(null, j);
    }

    public long getLong(long j) {
        return getLong(null, j);
    }

    public short getShort(long j) {
        return getShort(null, j);
    }

    public void putAddress(long j, long j2) {
        putAddress(null, j, j2);
    }

    public void putByte(long j, byte b) {
        putByte(null, j, b);
    }

    public void putChar(long j, char c) {
        putChar(null, j, c);
    }

    public final void putCharUnaligned(Object obj, long j, char c, boolean z) {
        putCharUnaligned(obj, j, convEndian(z, c));
    }

    public void putDouble(long j, double d) {
        putDouble(null, j, d);
    }

    public void putFloat(long j, float f) {
        putFloat(null, j, f);
    }

    public void putInt(long j, int i) {
        putInt(null, j, i);
    }

    public void putLong(long j, long j2) {
        putLong(null, j, j2);
    }

    public void putShort(long j, short s) {
        putShort(null, j, s);
    }

    private static int convEndian(boolean z, int i) {
        return !z ? i : Integer.reverseBytes(i);
    }

    private static int makeInt(byte b, byte b2, byte b3, byte b4) {
        return (toUnsignedInt(b) << pickPos(24, 0)) | (toUnsignedInt(b2) << pickPos(24, 8)) | (toUnsignedInt(b3) << pickPos(24, 16)) | (toUnsignedInt(b4) << pickPos(24, 24));
    }

    private static short pick(short s, short s2) {
        return s;
    }

    private void putIntParts(Object obj, long j, byte b, byte b2, byte b3, byte b4) {
        putByte(obj, 0 + j, pick(b, b4));
        putByte(obj, 1 + j, pick(b2, b3));
        putByte(obj, 2 + j, pick(b3, b2));
        putByte(obj, j + 3, pick(b4, b));
    }

    private static long toUnsignedLong(short s) {
        return s & WebSocketProtocol.PAYLOAD_SHORT_MAX;
    }

    public void copyMemory(long j, long j2, long j3) {
        copyMemory(null, j, null, j2, j3);
    }

    public void copySwapMemory(long j, long j2, long j3, long j4) {
        copySwapMemory(null, j, null, j2, j3, j4);
    }

    public long objectFieldOffset(Class<?> cls, String str) {
        if (cls != null && str != null) {
            return objectFieldOffset1(cls, str);
        }
        throw null;
    }

    public final void putShortUnaligned(Object obj, long j, short s, boolean z) {
        putShortUnaligned(obj, j, convEndian(z, s));
    }

    public void setMemory(long j, long j2, byte b) {
        setMemory(null, j, j2, b);
    }

    private static long convEndian(boolean z, long j) {
        return !z ? j : Long.reverseBytes(j);
    }

    public final void putIntUnaligned(Object obj, long j, int i, boolean z) {
        putIntUnaligned(obj, j, convEndian(z, i));
    }

    public final char getCharUnaligned(Object obj, long j, boolean z) {
        return convEndian(z, getCharUnaligned(obj, j));
    }

    public final short getShortUnaligned(Object obj, long j, boolean z) {
        return convEndian(z, getShortUnaligned(obj, j));
    }

    public final void putLongUnaligned(Object obj, long j, long j2, boolean z) {
        putLongUnaligned(obj, j, convEndian(z, j2));
    }

    private static long makeLong(short s, short s2, short s3, short s4) {
        return (toUnsignedLong(s2) << pickPos(48, 16)) | (toUnsignedLong(s) << pickPos(48, 0)) | (toUnsignedLong(s3) << pickPos(48, 32)) | (toUnsignedLong(s4) << pickPos(48, 48));
    }

    private void putLongParts(Object obj, long j, short s, short s2, short s3, short s4) {
        putShort(obj, 0 + j, pick(s, s4));
        putShort(obj, 2 + j, pick(s2, s3));
        putShort(obj, 4 + j, pick(s3, s2));
        putShort(obj, j + 6, pick(s4, s));
    }

    public final int getIntUnaligned(Object obj, long j, boolean z) {
        return convEndian(z, getIntUnaligned(obj, j));
    }

    private static long makeLong(int i, int i2) {
        return (toUnsignedLong(i2) << pickPos(32, 32)) | (toUnsignedLong(i) << pickPos(32, 0));
    }

    private void putLongParts(Object obj, long j, int i, int i2) {
        putInt(obj, 0 + j, pick(i, i2));
        putInt(obj, j + 4, pick(i2, i));
    }

    public final long getLongUnaligned(Object obj, long j, boolean z) {
        return convEndian(z, getLongUnaligned(obj, j));
    }
}
