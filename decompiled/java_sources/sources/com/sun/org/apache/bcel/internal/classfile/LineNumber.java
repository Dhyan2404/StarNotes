package com.sun.org.apache.bcel.internal.classfile;

import com.google.android.material.motion.MotionUtils;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.Serializable;

/* loaded from: classes10.dex */
public final class LineNumber implements Cloneable, Node, Serializable {
    private int line_number;
    private int start_pc;

    public LineNumber(LineNumber lineNumber) {
        this(lineNumber.getStartPC(), lineNumber.getLineNumber());
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Node
    public void accept(Visitor visitor) {
        visitor.visitLineNumber(this);
    }

    public LineNumber copy() {
        try {
            return (LineNumber) clone();
        } catch (CloneNotSupportedException unused) {
            return null;
        }
    }

    public final void dump(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeShort(this.start_pc);
        dataOutputStream.writeShort(this.line_number);
    }

    public final int getLineNumber() {
        return this.line_number;
    }

    public final int getStartPC() {
        return this.start_pc;
    }

    public final void setLineNumber(int i) {
        this.line_number = i;
    }

    public final void setStartPC(int i) {
        this.start_pc = i;
    }

    public final String toString() {
        return "LineNumber(" + this.start_pc + ", " + this.line_number + MotionUtils.f31762d;
    }

    public LineNumber(DataInputStream dataInputStream) throws IOException {
        this(dataInputStream.readUnsignedShort(), dataInputStream.readUnsignedShort());
    }

    public LineNumber(int i, int i2) {
        this.start_pc = i;
        this.line_number = i2;
    }
}
