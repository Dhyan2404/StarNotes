package com.sun.org.apache.bcel.internal.generic;

import com.sun.org.apache.bcel.internal.util.ByteSequence;
import java.io.DataOutputStream;
import java.io.IOException;

/* loaded from: classes10.dex */
public class TABLESWITCH extends Select {
    public TABLESWITCH() {
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public void accept(Visitor visitor) {
        visitor.visitVariableLengthInstruction(this);
        visitor.visitStackProducer(this);
        visitor.visitBranchInstruction(this);
        visitor.visitSelect(this);
        visitor.visitTABLESWITCH(this);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Select, com.sun.org.apache.bcel.internal.generic.BranchInstruction, com.sun.org.apache.bcel.internal.generic.Instruction
    public void dump(DataOutputStream dataOutputStream) throws IOException {
        super.dump(dataOutputStream);
        dataOutputStream.writeInt(this.match_length > 0 ? this.match[0] : 0);
        int i = this.match_length;
        dataOutputStream.writeInt(i > 0 ? this.match[i - 1] : 0);
        for (int i2 = 0; i2 < this.match_length; i2++) {
            int[] iArr = this.indices;
            int targetOffset = getTargetOffset(this.targets[i2]);
            iArr[i2] = targetOffset;
            dataOutputStream.writeInt(targetOffset);
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Select, com.sun.org.apache.bcel.internal.generic.BranchInstruction, com.sun.org.apache.bcel.internal.generic.Instruction
    public void initFromFile(ByteSequence byteSequence, boolean z) throws IOException {
        super.initFromFile(byteSequence, z);
        int readInt = byteSequence.readInt();
        int readInt2 = byteSequence.readInt();
        int i = (readInt2 - readInt) + 1;
        this.match_length = i;
        short s = (short) ((i * 4) + 13);
        this.fixed_length = s;
        this.length = (short) (s + this.padding);
        this.match = new int[i];
        this.indices = new int[i];
        this.targets = new InstructionHandle[i];
        for (int i2 = readInt; i2 <= readInt2; i2++) {
            this.match[i2 - readInt] = i2;
        }
        for (int i3 = 0; i3 < this.match_length; i3++) {
            this.indices[i3] = byteSequence.readInt();
        }
    }

    public TABLESWITCH(int[] iArr, InstructionHandle[] instructionHandleArr, InstructionHandle instructionHandle) {
        super((short) 170, iArr, instructionHandleArr, instructionHandle);
        short s = (short) ((this.match_length * 4) + 13);
        this.length = s;
        this.fixed_length = s;
    }
}
