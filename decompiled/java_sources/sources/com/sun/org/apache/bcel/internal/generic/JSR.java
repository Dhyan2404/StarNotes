package com.sun.org.apache.bcel.internal.generic;

import java.io.DataOutputStream;
import java.io.IOException;

/* loaded from: classes10.dex */
public class JSR extends JsrInstruction implements VariableLengthInstruction {
    public JSR() {
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public void accept(Visitor visitor) {
        visitor.visitStackProducer(this);
        visitor.visitVariableLengthInstruction(this);
        visitor.visitBranchInstruction(this);
        visitor.visitJsrInstruction(this);
        visitor.visitJSR(this);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.BranchInstruction, com.sun.org.apache.bcel.internal.generic.Instruction
    public void dump(DataOutputStream dataOutputStream) throws IOException {
        this.index = getTargetOffset();
        if (this.opcode == 168) {
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
        this.opcode = (short) 201;
        this.length = (short) 5;
        return 2;
    }

    public JSR(InstructionHandle instructionHandle) {
        super((short) 168, instructionHandle);
    }
}
