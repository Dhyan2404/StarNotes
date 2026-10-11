package com.sun.org.apache.bcel.internal.generic;

/* loaded from: classes10.dex */
public final class BranchHandle extends InstructionHandle {
    private static BranchHandle bh_list;

    /* renamed from: bi */
    private BranchInstruction f64064bi;

    private BranchHandle(BranchInstruction branchInstruction) {
        super(branchInstruction);
        this.f64064bi = branchInstruction;
    }

    public static final BranchHandle getBranchHandle(BranchInstruction branchInstruction) {
        BranchHandle branchHandle = bh_list;
        if (branchHandle == null) {
            return new BranchHandle(branchInstruction);
        }
        bh_list = (BranchHandle) branchHandle.next;
        branchHandle.setInstruction(branchInstruction);
        return branchHandle;
    }

    @Override // com.sun.org.apache.bcel.internal.generic.InstructionHandle
    public void addHandle() {
        this.next = bh_list;
        bh_list = this;
    }

    @Override // com.sun.org.apache.bcel.internal.generic.InstructionHandle
    public int getPosition() {
        return this.f64064bi.position;
    }

    public InstructionHandle getTarget() {
        return this.f64064bi.getTarget();
    }

    @Override // com.sun.org.apache.bcel.internal.generic.InstructionHandle
    public void setInstruction(Instruction instruction) {
        super.setInstruction(instruction);
        if (instruction instanceof BranchInstruction) {
            this.f64064bi = (BranchInstruction) instruction;
            return;
        }
        throw new ClassGenException("Assigning " + instruction + " to branch handle which is not a branch instruction");
    }

    @Override // com.sun.org.apache.bcel.internal.generic.InstructionHandle
    public void setPosition(int i) {
        this.f64064bi.position = i;
        this.i_position = i;
    }

    public void setTarget(InstructionHandle instructionHandle) {
        this.f64064bi.setTarget(instructionHandle);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.InstructionHandle
    public int updatePosition(int i, int i2) {
        int updatePosition = this.f64064bi.updatePosition(i, i2);
        this.i_position = this.f64064bi.position;
        return updatePosition;
    }

    public void updateTarget(InstructionHandle instructionHandle, InstructionHandle instructionHandle2) {
        this.f64064bi.updateTarget(instructionHandle, instructionHandle2);
    }
}
