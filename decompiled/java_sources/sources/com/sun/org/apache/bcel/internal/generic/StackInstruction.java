package com.sun.org.apache.bcel.internal.generic;

/* loaded from: classes10.dex */
public abstract class StackInstruction extends Instruction {
    public StackInstruction() {
    }

    public Type getType(ConstantPoolGen constantPoolGen) {
        return Type.UNKNOWN;
    }

    public StackInstruction(short s) {
        super(s, (short) 1);
    }
}
