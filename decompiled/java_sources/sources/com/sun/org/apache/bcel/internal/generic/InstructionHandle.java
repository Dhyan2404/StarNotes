package com.sun.org.apache.bcel.internal.generic;

import com.sun.org.apache.bcel.internal.classfile.Utility;
import java.io.Serializable;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;

/* loaded from: classes10.dex */
public class InstructionHandle implements Serializable {
    private static InstructionHandle ih_list;
    private HashMap attributes;
    protected int i_position = -1;
    Instruction instruction;
    InstructionHandle next;
    InstructionHandle prev;
    private HashSet targeters;

    public InstructionHandle(Instruction instruction) {
        setInstruction(instruction);
    }

    public static final InstructionHandle getInstructionHandle(Instruction instruction) {
        InstructionHandle instructionHandle = ih_list;
        if (instructionHandle == null) {
            return new InstructionHandle(instruction);
        }
        ih_list = instructionHandle.next;
        instructionHandle.setInstruction(instruction);
        return instructionHandle;
    }

    public void accept(Visitor visitor) {
        this.instruction.accept(visitor);
    }

    public void addAttribute(Object obj, Object obj2) {
        if (this.attributes == null) {
            this.attributes = new HashMap(3);
        }
        this.attributes.put(obj, obj2);
    }

    public void addHandle() {
        this.next = ih_list;
        ih_list = this;
    }

    public void addTargeter(InstructionTargeter instructionTargeter) {
        if (this.targeters == null) {
            this.targeters = new HashSet();
        }
        this.targeters.add(instructionTargeter);
    }

    public void dispose() {
        this.prev = null;
        this.next = null;
        this.instruction.dispose();
        this.instruction = null;
        this.i_position = -1;
        this.attributes = null;
        removeAllTargeters();
        addHandle();
    }

    public Object getAttribute(Object obj) {
        HashMap hashMap = this.attributes;
        if (hashMap != null) {
            return hashMap.get(obj);
        }
        return null;
    }

    public Collection getAttributes() {
        return this.attributes.values();
    }

    public final Instruction getInstruction() {
        return this.instruction;
    }

    public final InstructionHandle getNext() {
        return this.next;
    }

    public int getPosition() {
        return this.i_position;
    }

    public final InstructionHandle getPrev() {
        return this.prev;
    }

    public InstructionTargeter[] getTargeters() {
        if (!hasTargeters()) {
            return null;
        }
        InstructionTargeter[] instructionTargeterArr = new InstructionTargeter[this.targeters.size()];
        this.targeters.toArray(instructionTargeterArr);
        return instructionTargeterArr;
    }

    public boolean hasTargeters() {
        HashSet hashSet = this.targeters;
        return hashSet != null && hashSet.size() > 0;
    }

    public void removeAllTargeters() {
        HashSet hashSet = this.targeters;
        if (hashSet != null) {
            hashSet.clear();
        }
    }

    public void removeAttribute(Object obj) {
        HashMap hashMap = this.attributes;
        if (hashMap != null) {
            hashMap.remove(obj);
        }
    }

    public void removeTargeter(InstructionTargeter instructionTargeter) {
        this.targeters.remove(instructionTargeter);
    }

    public void setInstruction(Instruction instruction) {
        if (instruction == null) {
            throw new ClassGenException("Assigning null to handle");
        }
        if (getClass() == BranchHandle.class || !(instruction instanceof BranchInstruction)) {
            Instruction instruction2 = this.instruction;
            if (instruction2 != null) {
                instruction2.dispose();
            }
            this.instruction = instruction;
            return;
        }
        throw new ClassGenException("Assigning branch instruction " + instruction + " to plain handle");
    }

    public void setPosition(int i) {
        this.i_position = i;
    }

    public Instruction swapInstruction(Instruction instruction) {
        Instruction instruction2 = this.instruction;
        this.instruction = instruction;
        return instruction2;
    }

    public String toString(boolean z) {
        return Utility.format(this.i_position, 4, false, ' ') + ": " + this.instruction.toString(z);
    }

    public int updatePosition(int i, int i2) {
        this.i_position += i;
        return 0;
    }

    public String toString() {
        return toString(true);
    }
}
