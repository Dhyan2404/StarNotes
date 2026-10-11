package com.sun.org.apache.bcel.internal.verifier.structurals;

import com.sun.org.apache.bcel.internal.generic.ReferenceType;
import com.sun.org.apache.bcel.internal.generic.Type;
import com.sun.org.apache.bcel.internal.verifier.exc.AssertionViolatedException;
import com.sun.org.apache.bcel.internal.verifier.exc.StructuralCodeConstraintException;

/* loaded from: classes10.dex */
public class LocalVariables {
    private Type[] locals;

    public LocalVariables(int i) {
        this.locals = new Type[i];
        for (int i2 = 0; i2 < i; i2++) {
            this.locals[i2] = Type.UNKNOWN;
        }
    }

    public Object clone() {
        LocalVariables localVariables = new LocalVariables(this.locals.length);
        int i = 0;
        while (true) {
            Type[] typeArr = this.locals;
            if (i >= typeArr.length) {
                return localVariables;
            }
            localVariables.locals[i] = typeArr[i];
            i++;
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof LocalVariables)) {
            return false;
        }
        LocalVariables localVariables = (LocalVariables) obj;
        if (this.locals.length != localVariables.locals.length) {
            return false;
        }
        int i = 0;
        while (true) {
            Type[] typeArr = this.locals;
            if (i >= typeArr.length) {
                return true;
            }
            if (!typeArr[i].equals(localVariables.locals[i])) {
                return false;
            }
            i++;
        }
    }

    public Type get(int i) {
        return this.locals[i];
    }

    public LocalVariables getClone() {
        return (LocalVariables) clone();
    }

    public void initializeObject(UninitializedObjectType uninitializedObjectType) {
        int i = 0;
        while (true) {
            Type[] typeArr = this.locals;
            if (i >= typeArr.length) {
                return;
            }
            if (typeArr[i] == uninitializedObjectType) {
                typeArr[i] = uninitializedObjectType.getInitialized();
            }
            i++;
        }
    }

    public int maxLocals() {
        return this.locals.length;
    }

    public void merge(LocalVariables localVariables) {
        if (this.locals.length == localVariables.locals.length) {
            for (int i = 0; i < this.locals.length; i++) {
                merge(localVariables, i);
            }
            return;
        }
        throw new AssertionViolatedException("Merging LocalVariables of different size?!? From different methods or what?!?");
    }

    public void set(int i, Type type) {
        if (type != Type.BYTE && type != Type.SHORT && type != Type.BOOLEAN && type != Type.CHAR) {
            this.locals[i] = type;
            return;
        }
        throw new AssertionViolatedException("LocalVariables do not know about '" + type + "'. Use Type.INT instead.");
    }

    public String toString() {
        String str = new String();
        for (int i = 0; i < this.locals.length; i++) {
            str = str + Integer.toString(i) + ": " + this.locals[i] + "\n";
        }
        return str;
    }

    private void merge(LocalVariables localVariables, int i) {
        Type type = this.locals[i];
        if (!(type instanceof UninitializedObjectType) && (localVariables.locals[i] instanceof UninitializedObjectType)) {
            throw new StructuralCodeConstraintException("Backwards branch with an uninitialized object in the local variables detected.");
        }
        if (!type.equals(localVariables.locals[i]) && (this.locals[i] instanceof UninitializedObjectType) && (localVariables.locals[i] instanceof UninitializedObjectType)) {
            throw new StructuralCodeConstraintException("Backwards branch with an uninitialized object in the local variables detected.");
        }
        Type[] typeArr = this.locals;
        Type type2 = typeArr[i];
        if ((type2 instanceof UninitializedObjectType) && !(localVariables.locals[i] instanceof UninitializedObjectType)) {
            typeArr[i] = ((UninitializedObjectType) type2).getInitialized();
        }
        Type type3 = this.locals[i];
        if (type3 instanceof ReferenceType) {
            Type type4 = localVariables.locals[i];
            if (type4 instanceof ReferenceType) {
                if (type3.equals(type4)) {
                    return;
                }
                ReferenceType firstCommonSuperclass = ((ReferenceType) this.locals[i]).getFirstCommonSuperclass((ReferenceType) localVariables.locals[i]);
                if (firstCommonSuperclass != null) {
                    this.locals[i] = firstCommonSuperclass;
                    return;
                }
                throw new AssertionViolatedException("Could not load all the super classes of '" + this.locals[i] + "' and '" + localVariables.locals[i] + "'.");
            }
        }
        if (type3.equals(localVariables.locals[i])) {
            return;
        }
        this.locals[i] = Type.UNKNOWN;
    }
}
