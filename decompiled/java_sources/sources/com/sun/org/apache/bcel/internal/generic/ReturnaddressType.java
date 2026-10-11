package com.sun.org.apache.bcel.internal.generic;

/* loaded from: classes10.dex */
public class ReturnaddressType extends Type {
    public static final ReturnaddressType NO_TARGET = new ReturnaddressType();
    private InstructionHandle returnTarget;

    private ReturnaddressType() {
        super((byte) 16, "<return address>");
    }

    public boolean equals(Object obj) {
        if (obj instanceof ReturnaddressType) {
            return ((ReturnaddressType) obj).returnTarget.equals(this.returnTarget);
        }
        return false;
    }

    public InstructionHandle getTarget() {
        return this.returnTarget;
    }

    public ReturnaddressType(InstructionHandle instructionHandle) {
        super((byte) 16, "<return address targeting " + instructionHandle + ">");
        this.returnTarget = instructionHandle;
    }
}
