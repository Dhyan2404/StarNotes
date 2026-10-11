package com.sun.org.apache.bcel.internal.generic;

import com.sun.org.apache.bcel.internal.Constants;

/* loaded from: classes10.dex */
public final class BasicType extends Type {
    public BasicType(byte b) {
        super(b, Constants.SHORT_TYPE_NAMES[b]);
        if (b < 4 || b > 12) {
            throw new ClassGenException("Invalid type: " + ((int) b));
        }
    }

    public static final BasicType getType(byte b) {
        switch (b) {
            case 4:
                return Type.BOOLEAN;
            case 5:
                return Type.CHAR;
            case 6:
                return Type.FLOAT;
            case 7:
                return Type.DOUBLE;
            case 8:
                return Type.BYTE;
            case 9:
                return Type.SHORT;
            case 10:
                return Type.INT;
            case 11:
                return Type.LONG;
            case 12:
                return Type.VOID;
            default:
                throw new ClassGenException("Invalid type: " + ((int) b));
        }
    }

    public boolean equals(Object obj) {
        return (obj instanceof BasicType) && ((BasicType) obj).type == this.type;
    }
}
