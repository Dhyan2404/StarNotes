package com.sun.org.apache.bcel.internal.generic;

import java.io.DataOutputStream;
import java.io.IOException;

/* loaded from: classes10.dex */
public class GOTO extends GotoInstruction implements VariableLengthInstruction {
    public GOTO() {
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public void accept(Visitor visitor) {
        visitor.visitVariableLengthInstruction(this);
        visitor.visitUnconditionalBranch(this);
        visitor.visitBranchInstruction(this);
        visitor.visitGotoInstruction(this);
        visitor.visitGOTO(this);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.BranchInstruction, com.sun.org.apache.bcel.internal.generic.Instruction
    public void dump(DataOutputStream dataOutputStream) throws IOException {
        this.index = getTargetOffset();
        if (this.opcode == 167) {
            super.dump(dataOutputStream);
            return;
        }
        this.index = getTargetOffset();
        dataOutputStream.writeByte(this.opcode);
        dataOutputStream.writeInt(this.index);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.BranchInstruction
    public int updatePosition(int i, int i2) {
        int targetOffset = getTargetOffset();
        this.position += i;
        if (Math.abs(targetOffset) < 32767 - i2) {
            return 0;
        }
        this.opcode = (short) 200;
        this.length = (short) 5;
        return 2;
    }

    public GOTO(InstructionHandle instructionHandle) {
        super((short) 167, instructionHandle);
    }
}
