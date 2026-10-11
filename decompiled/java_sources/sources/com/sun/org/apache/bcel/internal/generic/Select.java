package com.sun.org.apache.bcel.internal.generic;

import com.google.android.material.motion.MotionUtils;
import com.sun.org.apache.bcel.internal.util.ByteSequence;
import java.io.DataOutputStream;
import java.io.IOException;

/* loaded from: classes10.dex */
public abstract class Select extends BranchInstruction implements VariableLengthInstruction, StackProducer {
    protected int fixed_length;
    protected int[] indices;
    protected int[] match;
    protected int match_length;
    protected int padding;
    protected InstructionHandle[] targets;

    public Select() {
        this.padding = 0;
    }

    @Override // com.sun.org.apache.bcel.internal.generic.BranchInstruction, com.sun.org.apache.bcel.internal.generic.InstructionTargeter
    public boolean containsTarget(InstructionHandle instructionHandle) {
        if (this.target == instructionHandle) {
            return true;
        }
        int i = 0;
        while (true) {
            InstructionHandle[] instructionHandleArr = this.targets;
            if (i >= instructionHandleArr.length) {
                return false;
            }
            if (instructionHandleArr[i] == instructionHandle) {
                return true;
            }
            i++;
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.BranchInstruction, com.sun.org.apache.bcel.internal.generic.Instruction
    public void dispose() {
        super.dispose();
        int i = 0;
        while (true) {
            InstructionHandle[] instructionHandleArr = this.targets;
            if (i >= instructionHandleArr.length) {
                return;
            }
            instructionHandleArr[i].removeTargeter(this);
            i++;
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.BranchInstruction, com.sun.org.apache.bcel.internal.generic.Instruction
    public void dump(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeByte(this.opcode);
        for (int i = 0; i < this.padding; i++) {
            dataOutputStream.writeByte(0);
        }
        int targetOffset = getTargetOffset();
        this.index = targetOffset;
        dataOutputStream.writeInt(targetOffset);
    }

    public int[] getIndices() {
        return this.indices;
    }

    public int[] getMatchs() {
        return this.match;
    }

    public InstructionHandle[] getTargets() {
        return this.targets;
    }

    @Override // com.sun.org.apache.bcel.internal.generic.BranchInstruction, com.sun.org.apache.bcel.internal.generic.Instruction
    public void initFromFile(ByteSequence byteSequence, boolean z) throws IOException {
        this.padding = (4 - (byteSequence.getIndex() % 4)) % 4;
        for (int i = 0; i < this.padding; i++) {
            byteSequence.readByte();
        }
        this.index = byteSequence.readInt();
    }

    public void setTarget(int i, InstructionHandle instructionHandle) {
        BranchInstruction.notifyTarget(this.targets[i], instructionHandle, this);
        this.targets[i] = instructionHandle;
    }

    @Override // com.sun.org.apache.bcel.internal.generic.BranchInstruction, com.sun.org.apache.bcel.internal.generic.Instruction
    public String toString(boolean z) {
        StringBuffer stringBuffer = new StringBuffer(super.toString(z));
        if (z) {
            for (int i = 0; i < this.match_length; i++) {
                InstructionHandle instructionHandle = this.targets[i];
                stringBuffer.append(MotionUtils.f31761c + this.match[i] + ", " + (instructionHandle != null ? instructionHandle.getInstruction().toString() : "null") + " = {" + this.indices[i] + "})");
            }
        } else {
            stringBuffer.append(" ...");
        }
        return stringBuffer.toString();
    }

    @Override // com.sun.org.apache.bcel.internal.generic.BranchInstruction
    public int updatePosition(int i, int i2) {
        int i3 = this.position + i;
        this.position = i3;
        short s = this.length;
        int i4 = (4 - ((i3 + 1) % 4)) % 4;
        this.padding = i4;
        short s2 = (short) (this.fixed_length + i4);
        this.length = s2;
        return s2 - s;
    }

    @Override // com.sun.org.apache.bcel.internal.generic.BranchInstruction, com.sun.org.apache.bcel.internal.generic.InstructionTargeter
    public void updateTarget(InstructionHandle instructionHandle, InstructionHandle instructionHandle2) {
        boolean z;
        int i = 0;
        if (this.target == instructionHandle) {
            setTarget(instructionHandle2);
            z = true;
        } else {
            z = false;
        }
        while (true) {
            InstructionHandle[] instructionHandleArr = this.targets;
            if (i >= instructionHandleArr.length) {
                break;
            }
            if (instructionHandleArr[i] == instructionHandle) {
                setTarget(i, instructionHandle2);
                z = true;
            }
            i++;
        }
        if (z) {
            return;
        }
        throw new ClassGenException("Not targeting " + instructionHandle);
    }

    public Select(short s, int[] iArr, InstructionHandle[] instructionHandleArr, InstructionHandle instructionHandle) {
        super(s, instructionHandle);
        this.padding = 0;
        this.targets = instructionHandleArr;
        for (InstructionHandle instructionHandle2 : instructionHandleArr) {
            BranchInstruction.notifyTarget(null, instructionHandle2, this);
        }
        this.match = iArr;
        int length = iArr.length;
        this.match_length = length;
        if (length == instructionHandleArr.length) {
            this.indices = new int[length];
            return;
        }
        throw new ClassGenException("Match and target array have not the same length");
    }
}
