package com.sun.org.apache.bcel.internal.generic;

import com.sun.org.apache.bcel.internal.ExceptionConstants;

/* loaded from: classes10.dex */
public abstract class ArrayInstruction extends Instruction implements ExceptionThrower, TypedInstruction {
    public ArrayInstruction() {
    }

    @Override // com.sun.org.apache.bcel.internal.generic.ExceptionThrower
    public Class[] getExceptions() {
        return ExceptionConstants.EXCS_ARRAY_EXCEPTION;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0002. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0021  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0024  */
    @Override // com.sun.org.apache.bcel.internal.generic.TypedInstruction
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.sun.org.apache.bcel.internal.generic.Type getType(com.sun.org.apache.bcel.internal.generic.ConstantPoolGen r3) {
        /*
            r2 = this;
            short r3 = r2.opcode
            switch(r3) {
                case 46: goto L36;
                case 47: goto L33;
                case 48: goto L30;
                case 49: goto L2d;
                case 50: goto L2a;
                case 51: goto L27;
                case 52: goto L24;
                case 53: goto L21;
                default: goto L5;
            }
        L5:
            switch(r3) {
                case 79: goto L36;
                case 80: goto L33;
                case 81: goto L30;
                case 82: goto L2d;
                case 83: goto L2a;
                case 84: goto L27;
                case 85: goto L24;
                case 86: goto L21;
                default: goto L8;
            }
        L8:
            com.sun.org.apache.bcel.internal.generic.ClassGenException r3 = new com.sun.org.apache.bcel.internal.generic.ClassGenException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "Oops: unknown case in switch"
            r0.append(r1)
            short r2 = r2.opcode
            r0.append(r2)
            java.lang.String r2 = r0.toString()
            r3.<init>(r2)
            throw r3
        L21:
            com.sun.org.apache.bcel.internal.generic.BasicType r2 = com.sun.org.apache.bcel.internal.generic.Type.SHORT
            return r2
        L24:
            com.sun.org.apache.bcel.internal.generic.BasicType r2 = com.sun.org.apache.bcel.internal.generic.Type.CHAR
            return r2
        L27:
            com.sun.org.apache.bcel.internal.generic.BasicType r2 = com.sun.org.apache.bcel.internal.generic.Type.BYTE
            return r2
        L2a:
            com.sun.org.apache.bcel.internal.generic.ObjectType r2 = com.sun.org.apache.bcel.internal.generic.Type.OBJECT
            return r2
        L2d:
            com.sun.org.apache.bcel.internal.generic.BasicType r2 = com.sun.org.apache.bcel.internal.generic.Type.DOUBLE
            return r2
        L30:
            com.sun.org.apache.bcel.internal.generic.BasicType r2 = com.sun.org.apache.bcel.internal.generic.Type.FLOAT
            return r2
        L33:
            com.sun.org.apache.bcel.internal.generic.BasicType r2 = com.sun.org.apache.bcel.internal.generic.Type.LONG
            return r2
        L36:
            com.sun.org.apache.bcel.internal.generic.BasicType r2 = com.sun.org.apache.bcel.internal.generic.Type.INT
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.bcel.internal.generic.ArrayInstruction.getType(com.sun.org.apache.bcel.internal.generic.ConstantPoolGen):com.sun.org.apache.bcel.internal.generic.Type");
    }

    public ArrayInstruction(short s) {
        super(s, (short) 1);
    }
}
