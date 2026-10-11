package com.sun.org.apache.bcel.internal.generic;

import com.google.android.material.motion.MotionUtils;
import com.sun.org.apache.bcel.internal.classfile.LocalVariable;
import java.io.Serializable;

/* loaded from: classes10.dex */
public class LocalVariableGen implements InstructionTargeter, NamedAndTyped, Cloneable, Serializable {
    private InstructionHandle end;
    private int index;
    private String name;
    private InstructionHandle start;
    private Type type;

    public LocalVariableGen(int i, String str, Type type, InstructionHandle instructionHandle, InstructionHandle instructionHandle2) {
        if (i < 0 || i > 65535) {
            throw new ClassGenException("Invalid index index: " + i);
        }
        this.name = str;
        this.type = type;
        this.index = i;
        setStart(instructionHandle);
        setEnd(instructionHandle2);
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
        return this.start == instructionHandle || this.end == instructionHandle;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof LocalVariableGen)) {
            return false;
        }
        LocalVariableGen localVariableGen = (LocalVariableGen) obj;
        return localVariableGen.index == this.index && localVariableGen.start == this.start && localVariableGen.end == this.end;
    }

    public InstructionHandle getEnd() {
        return this.end;
    }

    public int getIndex() {
        return this.index;
    }

    public LocalVariable getLocalVariable(ConstantPoolGen constantPoolGen) {
        int position = this.start.getPosition();
        int position2 = this.end.getPosition() - position;
        if (position2 > 0) {
            position2 += this.end.getInstruction().getLength();
        }
        return new LocalVariable(position, position2, constantPoolGen.addUtf8(this.name), constantPoolGen.addUtf8(this.type.getSignature()), this.index, constantPoolGen.getConstantPool());
    }

    @Override // com.sun.org.apache.bcel.internal.generic.NamedAndTyped
    public String getName() {
        return this.name;
    }

    public InstructionHandle getStart() {
        return this.start;
    }

    @Override // com.sun.org.apache.bcel.internal.generic.NamedAndTyped
    public Type getType() {
        return this.type;
    }

    public void setEnd(InstructionHandle instructionHandle) {
        BranchInstruction.notifyTarget(this.end, instructionHandle, this);
        this.end = instructionHandle;
    }

    public void setIndex(int i) {
        this.index = i;
    }

    @Override // com.sun.org.apache.bcel.internal.generic.NamedAndTyped
    public void setName(String str) {
        this.name = str;
    }

    public void setStart(InstructionHandle instructionHandle) {
        BranchInstruction.notifyTarget(this.start, instructionHandle, this);
        this.start = instructionHandle;
    }

    @Override // com.sun.org.apache.bcel.internal.generic.NamedAndTyped
    public void setType(Type type) {
        this.type = type;
    }

    public String toString() {
        return "LocalVariableGen(" + this.name + ", " + this.type + ", " + this.start + ", " + this.end + MotionUtils.f31762d;
    }

    @Override // com.sun.org.apache.bcel.internal.generic.InstructionTargeter
    public void updateTarget(InstructionHandle instructionHandle, InstructionHandle instructionHandle2) {
        boolean z;
        boolean z2 = true;
        if (this.start == instructionHandle) {
            setStart(instructionHandle2);
            z = true;
        } else {
            z = false;
        }
        if (this.end == instructionHandle) {
            setEnd(instructionHandle2);
        } else {
            z2 = z;
        }
        if (z2) {
            return;
        }
        throw new ClassGenException("Not targeting " + instructionHandle + ", but {" + this.start + ", " + this.end + "}");
    }
}
