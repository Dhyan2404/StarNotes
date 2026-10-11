package com.sun.org.apache.bcel.internal.generic;

import com.sun.org.apache.bcel.internal.util.ByteSequence;
import java.io.DataOutputStream;
import java.io.IOException;

/* loaded from: classes10.dex */
public class IINC extends LocalVariableInstruction {

    /* renamed from: c */
    private int f64067c;
    private boolean wide;

    public IINC() {
    }

    private final void setWide() {
        boolean z = this.f64072n > 65535 || Math.abs(this.f64067c) > 127;
        this.wide = z;
        if (z) {
            this.length = (short) 6;
        } else {
            this.length = (short) 3;
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public void accept(Visitor visitor) {
        visitor.visitLocalVariableInstruction(this);
        visitor.visitIINC(this);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.LocalVariableInstruction, com.sun.org.apache.bcel.internal.generic.Instruction
    public void dump(DataOutputStream dataOutputStream) throws IOException {
        if (this.wide) {
            dataOutputStream.writeByte(196);
        }
        dataOutputStream.writeByte(this.opcode);
        if (this.wide) {
            dataOutputStream.writeShort(this.f64072n);
            dataOutputStream.writeShort(this.f64067c);
        } else {
            dataOutputStream.writeByte(this.f64072n);
            dataOutputStream.writeByte(this.f64067c);
        }
    }

    public final int getIncrement() {
        return this.f64067c;
    }

    @Override // com.sun.org.apache.bcel.internal.generic.LocalVariableInstruction, com.sun.org.apache.bcel.internal.generic.TypedInstruction
    public Type getType(ConstantPoolGen constantPoolGen) {
        return Type.INT;
    }

    @Override // com.sun.org.apache.bcel.internal.generic.LocalVariableInstruction, com.sun.org.apache.bcel.internal.generic.Instruction
    public void initFromFile(ByteSequence byteSequence, boolean z) throws IOException {
        this.wide = z;
        if (z) {
            this.length = (short) 6;
            this.f64072n = byteSequence.readUnsignedShort();
            this.f64067c = byteSequence.readShort();
        } else {
            this.length = (short) 3;
            this.f64072n = byteSequence.readUnsignedByte();
            this.f64067c = byteSequence.readByte();
        }
    }

    public final void setIncrement(int i) {
        this.f64067c = i;
        setWide();
    }

    @Override // com.sun.org.apache.bcel.internal.generic.LocalVariableInstruction, com.sun.org.apache.bcel.internal.generic.IndexedInstruction
    public final void setIndex(int i) {
        if (i >= 0) {
            this.f64072n = i;
            setWide();
        } else {
            throw new ClassGenException("Negative index value: " + i);
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.LocalVariableInstruction, com.sun.org.apache.bcel.internal.generic.Instruction
    public String toString(boolean z) {
        return super.toString(z) + " " + this.f64067c;
    }

    public IINC(int i, int i2) {
        this.opcode = (short) 132;
        this.length = (short) 3;
        setIndex(i);
        setIncrement(i2);
    }
}
