package com.sun.org.apache.bcel.internal.generic;

/* loaded from: classes10.dex */
public final class SWITCH implements CompoundInstruction {
    private Select instruction;
    private int[] match;
    private int match_length;
    private InstructionHandle[] targets;

    public SWITCH(int[] iArr, InstructionHandle[] instructionHandleArr, InstructionHandle instructionHandle, int i) {
        this.match = (int[]) iArr.clone();
        this.targets = (InstructionHandle[]) instructionHandleArr.clone();
        int length = iArr.length;
        this.match_length = length;
        if (length < 2) {
            this.instruction = new TABLESWITCH(iArr, instructionHandleArr, instructionHandle);
            return;
        }
        sort(0, length - 1);
        if (matchIsOrdered(i)) {
            fillup(i, instructionHandle);
            this.instruction = new TABLESWITCH(this.match, this.targets, instructionHandle);
        } else {
            this.instruction = new LOOKUPSWITCH(this.match, this.targets, instructionHandle);
        }
    }

    private final void fillup(int i, InstructionHandle instructionHandle) {
        int i2 = this.match_length;
        int i3 = i2 + (i * i2);
        int[] iArr = new int[i3];
        InstructionHandle[] instructionHandleArr = new InstructionHandle[i3];
        iArr[0] = this.match[0];
        instructionHandleArr[0] = this.targets[0];
        int i4 = 1;
        for (int i5 = 1; i5 < this.match_length; i5++) {
            int[] iArr2 = this.match;
            int i6 = iArr2[i5 - 1];
            int i7 = iArr2[i5] - i6;
            for (int i8 = 1; i8 < i7; i8++) {
                iArr[i4] = i6 + i8;
                instructionHandleArr[i4] = instructionHandle;
                i4++;
            }
            iArr[i4] = this.match[i5];
            instructionHandleArr[i4] = this.targets[i5];
            i4++;
        }
        int[] iArr3 = new int[i4];
        this.match = iArr3;
        this.targets = new InstructionHandle[i4];
        System.arraycopy(iArr, 0, iArr3, 0, i4);
        System.arraycopy(instructionHandleArr, 0, this.targets, 0, i4);
    }

    private final boolean matchIsOrdered(int i) {
        for (int i2 = 1; i2 < this.match_length; i2++) {
            int[] iArr = this.match;
            if (iArr[i2] - iArr[i2 - 1] > i) {
                return false;
            }
        }
        return true;
    }

    private final void sort(int i, int i2) {
        int[] iArr;
        int i3;
        int i4 = this.match[(i + i2) / 2];
        int i5 = i;
        int i6 = i2;
        while (true) {
            if (this.match[i5] < i4) {
                i5++;
            } else {
                while (true) {
                    iArr = this.match;
                    i3 = iArr[i6];
                    if (i4 >= i3) {
                        break;
                    } else {
                        i6--;
                    }
                }
                if (i5 <= i6) {
                    int i7 = iArr[i5];
                    iArr[i5] = i3;
                    iArr[i6] = i7;
                    InstructionHandle[] instructionHandleArr = this.targets;
                    InstructionHandle instructionHandle = instructionHandleArr[i5];
                    instructionHandleArr[i5] = instructionHandleArr[i6];
                    instructionHandleArr[i6] = instructionHandle;
                    i5++;
                    i6--;
                }
                if (i5 > i6) {
                    break;
                }
            }
        }
        if (i < i6) {
            sort(i, i6);
        }
        if (i5 < i2) {
            sort(i5, i2);
        }
    }

    public final Instruction getInstruction() {
        return this.instruction;
    }

    @Override // com.sun.org.apache.bcel.internal.generic.CompoundInstruction
    public final InstructionList getInstructionList() {
        return new InstructionList((BranchInstruction) this.instruction);
    }

    public SWITCH(int[] iArr, InstructionHandle[] instructionHandleArr, InstructionHandle instructionHandle) {
        this(iArr, instructionHandleArr, instructionHandle, 1);
    }
}
