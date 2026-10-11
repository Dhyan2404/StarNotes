package com.sun.org.apache.bcel.internal.generic;

import com.sun.org.apache.bcel.internal.util.ByteSequence;
import java.io.DataOutputStream;
import java.io.IOException;

/* loaded from: classes10.dex */
public class LOOKUPSWITCH extends Select {
    public LOOKUPSWITCH() {
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public void accept(Visitor visitor) {
        visitor.visitVariableLengthInstruction(this);
        visitor.visitStackProducer(this);
        visitor.visitBranchInstruction(this);
        visitor.visitSelect(this);
        visitor.visitLOOKUPSWITCH(this);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Select, com.sun.org.apache.bcel.internal.generic.BranchInstruction, com.sun.org.apache.bcel.internal.generic.Instruction
    public void dump(DataOutputStream dataOutputStream) throws IOException {
        super.dump(dataOutputStream);
        dataOutputStream.writeInt(this.match_length);
        for (int i = 0; i < this.match_length; i++) {
            dataOutputStream.writeInt(this.match[i]);
            int[] iArr = this.indices;
            int targetOffset = getTargetOffset(this.targets[i]);
            iArr[i] = targetOffset;
            dataOutputStream.writeInt(targetOffset);
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Select, com.sun.org.apache.bcel.internal.generic.BranchInstruction, com.sun.org.apache.bcel.internal.generic.Instruction
    public void initFromFile(ByteSequence byteSequence, boolean z) throws IOException {
        super.initFromFile(byteSequence, z);
        int readInt = byteSequence.readInt();
        this.match_length = readInt;
        short s = (short) ((readInt * 8) + 9);
        this.fixed_length = s;
        this.length = (short) (s + this.padding);
        this.match = new int[readInt];
        this.indices = new int[readInt];
        this.targets = new InstructionHandle[readInt];
        for (int i = 0; i < this.match_length; i++) {
            this.match[i] = byteSequence.readInt();
            this.indices[i] = byteSequence.readInt();
        }
    }

    public LOOKUPSWITCH(int[] iArr, InstructionHandle[] instructionHandleArr, InstructionHandle instructionHandle) {
        super((short) 171, iArr, instructionHandleArr, instructionHandle);
        short s = (short) ((this.match_length * 8) + 9);
        this.length = s;
        this.fixed_length = s;
    }
}
