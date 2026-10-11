package org.apache.poi.ss.formula.constant;

import com.google.android.material.motion.MotionUtils;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import org.apache.poi.util.LittleEndianInput;
import org.apache.poi.util.LittleEndianOutput;
import org.apache.poi.util.StringUtil;

/* loaded from: classes13.dex */
public final class ConstantValueParser {
    private static final Object EMPTY_REPRESENTATION = null;
    private static final int FALSE_ENCODING = 0;
    private static final int TRUE_ENCODING = 1;
    private static final int TYPE_BOOLEAN = 4;
    private static final int TYPE_EMPTY = 0;
    private static final int TYPE_ERROR_CODE = 16;
    private static final int TYPE_NUMBER = 1;
    private static final int TYPE_STRING = 2;

    private ConstantValueParser() {
    }

    public static void encode(LittleEndianOutput littleEndianOutput, Object[] objArr) {
        for (Object obj : objArr) {
            encodeSingleValue(littleEndianOutput, obj);
        }
    }

    private static void encodeSingleValue(LittleEndianOutput littleEndianOutput, Object obj) {
        if (obj == EMPTY_REPRESENTATION) {
            littleEndianOutput.writeByte(0);
            littleEndianOutput.writeLong(0L);
            return;
        }
        if (obj instanceof Boolean) {
            littleEndianOutput.writeByte(4);
            littleEndianOutput.writeLong(((Boolean) obj).booleanValue() ? 1L : 0L);
            return;
        }
        if (obj instanceof Double) {
            littleEndianOutput.writeByte(1);
            littleEndianOutput.writeDouble(((Double) obj).doubleValue());
            return;
        }
        if (obj instanceof String) {
            littleEndianOutput.writeByte(2);
            StringUtil.writeUnicodeString(littleEndianOutput, (String) obj);
        } else if (obj instanceof ErrorConstant) {
            littleEndianOutput.writeByte(16);
            littleEndianOutput.writeLong(((ErrorConstant) obj).getErrorCode());
        } else {
            throw new IllegalStateException("Unexpected value type (" + obj.getClass().getName() + CloudStorageConstants.SINGLE_QUOTES);
        }
    }

    public static int getEncodedSize(Object[] objArr) {
        int length = objArr.length;
        for (Object obj : objArr) {
            length += getEncodedSize(obj);
        }
        return length;
    }

    public static Object[] parse(LittleEndianInput littleEndianInput, int i) {
        if (i < 0) {
            throw new IllegalArgumentException("Invalid number of values to parse: " + i);
        }
        Object[] objArr = new Object[i];
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = readAConstantValue(littleEndianInput);
        }
        return objArr;
    }

    private static Object readAConstantValue(LittleEndianInput littleEndianInput) {
        byte readByte = littleEndianInput.readByte();
        if (readByte == 0) {
            littleEndianInput.readLong();
            return EMPTY_REPRESENTATION;
        }
        if (readByte == 1) {
            return Double.valueOf(littleEndianInput.readDouble());
        }
        if (readByte == 2) {
            return StringUtil.readUnicodeString(littleEndianInput);
        }
        if (readByte == 4) {
            return readBoolean(littleEndianInput);
        }
        if (readByte == 16) {
            int readUShort = littleEndianInput.readUShort();
            littleEndianInput.readUShort();
            littleEndianInput.readInt();
            return ErrorConstant.valueOf(readUShort);
        }
        throw new IllegalArgumentException("Unknown grbit value (" + ((int) readByte) + MotionUtils.f31762d);
    }

    private static Object readBoolean(LittleEndianInput littleEndianInput) {
        byte readLong = (byte) littleEndianInput.readLong();
        if (readLong == 0) {
            return Boolean.FALSE;
        }
        if (readLong == 1) {
            return Boolean.TRUE;
        }
        throw new IllegalArgumentException("unexpected boolean encoding (" + ((int) readLong) + MotionUtils.f31762d);
    }

    private static int getEncodedSize(Object obj) {
        Class<?> cls;
        if (obj == EMPTY_REPRESENTATION || (cls = obj.getClass()) == Boolean.class || cls == Double.class || cls == ErrorConstant.class) {
            return 8;
        }
        return StringUtil.getEncodedSize((String) obj);
    }
}
