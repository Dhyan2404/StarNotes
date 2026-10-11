package com.sun.org.apache.bcel.internal.verifier.structurals;

/* loaded from: classes10.dex */
public class Frame {
    protected static UninitializedObjectType _this;
    private LocalVariables locals;
    private OperandStack stack;

    public Frame(int i, int i2) {
        this.locals = new LocalVariables(i);
        this.stack = new OperandStack(i2);
    }

    public Object clone() {
        return new Frame(this.locals.getClone(), this.stack.getClone());
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Frame)) {
            return false;
        }
        Frame frame = (Frame) obj;
        return this.stack.equals(frame.stack) && this.locals.equals(frame.locals);
    }

    public Frame getClone() {
        return (Frame) clone();
    }

    public LocalVariables getLocals() {
        return this.locals;
    }

    public OperandStack getStack() {
        return this.stack;
    }

    public String toString() {
        return (("Local Variables:\n" + this.locals) + "OperandStack:\n") + this.stack;
    }

    public Frame(LocalVariables localVariables, OperandStack operandStack) {
        this.locals = localVariables;
        this.stack = operandStack;
    }
}
