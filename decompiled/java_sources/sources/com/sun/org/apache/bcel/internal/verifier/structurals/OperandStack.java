package com.sun.org.apache.bcel.internal.verifier.structurals;

import com.sun.org.apache.bcel.internal.generic.ObjectType;
import com.sun.org.apache.bcel.internal.generic.ReferenceType;
import com.sun.org.apache.bcel.internal.generic.Type;
import com.sun.org.apache.bcel.internal.verifier.exc.AssertionViolatedException;
import com.sun.org.apache.bcel.internal.verifier.exc.StructuralCodeConstraintException;
import java.util.ArrayList;

/* loaded from: classes10.dex */
public class OperandStack {
    private int maxStack;
    private ArrayList stack = new ArrayList();

    public OperandStack(int i) {
        this.maxStack = i;
    }

    public void clear() {
        this.stack = new ArrayList();
    }

    public Object clone() {
        OperandStack operandStack = new OperandStack(this.maxStack);
        operandStack.stack = (ArrayList) this.stack.clone();
        return operandStack;
    }

    public boolean equals(Object obj) {
        if (obj instanceof OperandStack) {
            return this.stack.equals(((OperandStack) obj).stack);
        }
        return false;
    }

    public OperandStack getClone() {
        return (OperandStack) clone();
    }

    public void initializeObject(UninitializedObjectType uninitializedObjectType) {
        for (int i = 0; i < this.stack.size(); i++) {
            if (this.stack.get(i) == uninitializedObjectType) {
                this.stack.set(i, uninitializedObjectType.getInitialized());
            }
        }
    }

    public boolean isEmpty() {
        return this.stack.isEmpty();
    }

    public int maxStack() {
        return this.maxStack;
    }

    public void merge(OperandStack operandStack) {
        if (slotsUsed() != operandStack.slotsUsed() || size() != operandStack.size()) {
            throw new StructuralCodeConstraintException("Cannot merge stacks of different size:\nOperandStack A:\n" + this + "\nOperandStack B:\n" + operandStack);
        }
        for (int i = 0; i < size(); i++) {
            if (!(this.stack.get(i) instanceof UninitializedObjectType) && (operandStack.stack.get(i) instanceof UninitializedObjectType)) {
                throw new StructuralCodeConstraintException("Backwards branch with an uninitialized object on the stack detected.");
            }
            if (!this.stack.get(i).equals(operandStack.stack.get(i)) && (this.stack.get(i) instanceof UninitializedObjectType) && !(operandStack.stack.get(i) instanceof UninitializedObjectType)) {
                throw new StructuralCodeConstraintException("Backwards branch with an uninitialized object on the stack detected.");
            }
            if ((this.stack.get(i) instanceof UninitializedObjectType) && !(operandStack.stack.get(i) instanceof UninitializedObjectType)) {
                ArrayList arrayList = this.stack;
                arrayList.set(i, ((UninitializedObjectType) arrayList.get(i)).getInitialized());
            }
            if (!this.stack.get(i).equals(operandStack.stack.get(i))) {
                if (!(this.stack.get(i) instanceof ReferenceType) || !(operandStack.stack.get(i) instanceof ReferenceType)) {
                    throw new StructuralCodeConstraintException("Cannot merge stacks of different types:\nStack A:\n" + this + "\nStack B:\n" + operandStack);
                }
                ArrayList arrayList2 = this.stack;
                arrayList2.set(i, ((ReferenceType) arrayList2.get(i)).getFirstCommonSuperclass((ReferenceType) operandStack.stack.get(i)));
            }
        }
    }

    public Type peek() {
        return peek(0);
    }

    public Type pop() {
        return (Type) this.stack.remove(size() - 1);
    }

    public void push(Type type) {
        if (type == null) {
            throw new AssertionViolatedException("Cannot push NULL onto OperandStack.");
        }
        if (type == Type.BOOLEAN || type == Type.CHAR || type == Type.BYTE || type == Type.SHORT) {
            throw new AssertionViolatedException("The OperandStack does not know about '" + type + "'; use Type.INT instead.");
        }
        if (slotsUsed() < this.maxStack) {
            this.stack.add(type);
            return;
        }
        throw new AssertionViolatedException("OperandStack too small, should have thrown proper Exception elsewhere. Stack: " + this);
    }

    public int size() {
        return this.stack.size();
    }

    public int slotsUsed() {
        int i = 0;
        for (int i2 = 0; i2 < this.stack.size(); i2++) {
            i += peek(i2).getSize();
        }
        return i;
    }

    public String toString() {
        String str = "Slots used: " + slotsUsed() + " MaxStack: " + this.maxStack + ".\n";
        for (int i = 0; i < size(); i++) {
            str = str + peek(i) + " (Size: " + peek(i).getSize() + ")\n";
        }
        return str;
    }

    public Type peek(int i) {
        return (Type) this.stack.get((size() - i) - 1);
    }

    public Type pop(int i) {
        for (int i2 = 0; i2 < i; i2++) {
            pop();
        }
        return null;
    }

    public OperandStack(int i, ObjectType objectType) {
        this.maxStack = i;
        push(objectType);
    }
}
