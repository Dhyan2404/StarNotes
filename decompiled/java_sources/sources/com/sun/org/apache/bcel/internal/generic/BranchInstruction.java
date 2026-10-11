package com.sun.org.apache.bcel.internal.generic;

import com.sun.org.apache.bcel.internal.util.ByteSequence;
import java.io.DataOutputStream;
import java.io.IOException;
import org.apache.commons.text.AlphabetConverter;

/* loaded from: classes10.dex */
public abstract class BranchInstruction extends Instruction implements InstructionTargeter {
    protected int index;
    protected int position;
    protected InstructionHandle target;

    public BranchInstruction() {
    }

    public static final void notifyTarget(InstructionHandle instructionHandle, InstructionHandle instructionHandle2, InstructionTargeter instructionTargeter) {
        if (instructionHandle != null) {
            instructionHandle.removeTargeter(instructionTargeter);
        }
        if (instructionHandle2 != null) {
            instructionHandle2.addTargeter(instructionTargeter);
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.InstructionTargeter
    public boolean containsTarget(InstructionHandle instructionHandle) {
        return this.target == instructionHandle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public void dispose() {
        setTarget(null);
        this.index = -1;
        this.position = -1;
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public void dump(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeByte(this.opcode);
        int targetOffset = getTargetOffset();
        this.index = targetOffset;
        if (Math.abs(targetOffset) >= 32767) {
            throw new ClassGenException("Branch target offset too large for short");
        }
        dataOutputStream.writeShort(this.index);
    }

    public final int getIndex() {
        return this.index;
    }

    public InstructionHandle getTarget() {
        return this.target;
    }

    public int getTargetOffset(InstructionHandle instructionHandle) {
        if (instructionHandle != null) {
            int position = instructionHandle.getPosition();
            if (position >= 0) {
                return position - this.position;
            }
            throw new ClassGenException("Invalid branch target position offset for " + super.toString(true) + ":" + position + ":" + instructionHandle);
        }
        throw new ClassGenException("Target of " + super.toString(true) + " is invalid null handle");
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public void initFromFile(ByteSequence byteSequence, boolean z) throws IOException {
        this.length = (short) 3;
        this.index = byteSequence.readShort();
    }

    public void setTarget(InstructionHandle instructionHandle) {
        notifyTarget(this.target, instructionHandle, this);
        this.target = instructionHandle;
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public String toString(boolean z) {
        String str;
        String instruction = super.toString(z);
        if (z) {
            InstructionHandle instructionHandle = this.target;
            if (instructionHandle != null) {
                str = instructionHandle.getInstruction() == this ? "<points to itself>" : this.target.getInstruction() == null ? "<null instruction!!!?>" : this.target.getInstruction().toString(false);
            }
            str = "null";
        } else {
            if (this.target != null) {
                this.index = getTargetOffset();
                str = "" + (this.index + this.position);
            }
            str = "null";
        }
        return instruction + AlphabetConverter.f109940d + str;
    }

    public int updatePosition(int i, int i2) {
        this.position += i;
        return 0;
    }

    @Override // com.sun.org.apache.bcel.internal.generic.InstructionTargeter
    public void updateTarget(InstructionHandle instructionHandle, InstructionHandle instructionHandle2) {
        if (this.target == instructionHandle) {
            setTarget(instructionHandle2);
            return;
        }
        throw new ClassGenException("Not targeting " + instructionHandle + ", but " + this.target);
    }

    public BranchInstruction(short s, InstructionHandle instructionHandle) {
        super(s, (short) 3);
        setTarget(instructionHandle);
    }

    public int getTargetOffset() {
        return getTargetOffset(this.target);
    }
}
