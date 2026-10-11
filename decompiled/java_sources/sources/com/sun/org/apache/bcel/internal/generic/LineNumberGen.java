package com.sun.org.apache.bcel.internal.generic;

import com.sun.org.apache.bcel.internal.classfile.LineNumber;
import java.io.Serializable;

/* loaded from: classes10.dex */
public class LineNumberGen implements InstructionTargeter, Cloneable, Serializable {

    /* renamed from: ih */
    private InstructionHandle f64071ih;
    private int src_line;

    public LineNumberGen(InstructionHandle instructionHandle, int i) {
        setInstruction(instructionHandle);
        setSourceLine(i);
    }

    public Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e) {
            System.err.println(e);
            return null;
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.InstructionTargeter
    public boolean containsTarget(InstructionHandle instructionHandle) {
        return this.f64071ih == instructionHandle;
    }

    public InstructionHandle getInstruction() {
        return this.f64071ih;
    }

    public LineNumber getLineNumber() {
        return new LineNumber(this.f64071ih.getPosition(), this.src_line);
    }

    public int getSourceLine() {
        return this.src_line;
    }

    public void setInstruction(InstructionHandle instructionHandle) {
        BranchInstruction.notifyTarget(this.f64071ih, instructionHandle, this);
        this.f64071ih = instructionHandle;
    }

    public void setSourceLine(int i) {
        this.src_line = i;
    }

    @Override // com.sun.org.apache.bcel.internal.generic.InstructionTargeter
    public void updateTarget(InstructionHandle instructionHandle, InstructionHandle instructionHandle2) {
        if (instructionHandle == this.f64071ih) {
            setInstruction(instructionHandle2);
            return;
        }
        throw new ClassGenException("Not targeting " + instructionHandle + ", but " + this.f64071ih + "}");
    }
}
