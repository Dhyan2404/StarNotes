package com.sun.org.apache.bcel.internal.generic;

import com.sun.org.apache.bcel.internal.util.ByteSequence;
import java.io.DataOutputStream;
import java.io.IOException;

/* loaded from: classes10.dex */
public class RET extends Instruction implements IndexedInstruction, TypedInstruction {
    private int index;
    private boolean wide;

    public RET() {
    }

    private final void setWide() {
        boolean z = this.index > 255;
        this.wide = z;
        if (z) {
            this.length = (short) 4;
        } else {
            this.length = (short) 2;
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public void accept(Visitor visitor) {
        visitor.visitRET(this);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public void dump(DataOutputStream dataOutputStream) throws IOException {
        if (this.wide) {
            dataOutputStream.writeByte(196);
        }
        dataOutputStream.writeByte(this.opcode);
        if (this.wide) {
            dataOutputStream.writeShort(this.index);
        } else {
            dataOutputStream.writeByte(this.index);
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.IndexedInstruction
    public final int getIndex() {
        return this.index;
    }

    @Override // com.sun.org.apache.bcel.internal.generic.TypedInstruction
    public Type getType(ConstantPoolGen constantPoolGen) {
        return ReturnaddressType.NO_TARGET;
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public void initFromFile(ByteSequence byteSequence, boolean z) throws IOException {
        this.wide = z;
        if (z) {
            this.index = byteSequence.readUnsignedShort();
            this.length = (short) 4;
        } else {
            this.index = byteSequence.readUnsignedByte();
            this.length = (short) 2;
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.IndexedInstruction
    public final void setIndex(int i) {
        if (i >= 0) {
            this.index = i;
            setWide();
        } else {
            throw new ClassGenException("Negative index value: " + i);
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public String toString(boolean z) {
        return super.toString(z) + " " + this.index;
    }

    public RET(int i) {
        super((short) 169, (short) 2);
        setIndex(i);
    }
}
