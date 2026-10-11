package com.sun.org.apache.bcel.internal.verifier.statics;

import com.sun.org.apache.bcel.internal.generic.Type;
import com.sun.org.apache.bcel.internal.verifier.exc.LocalVariableInfoInconsistentException;
import java.util.Hashtable;

/* loaded from: classes10.dex */
public class LocalVariableInfo {
    private Hashtable types = new Hashtable();
    private Hashtable names = new Hashtable();

    private void setName(int i, String str) {
        this.names.put(Integer.toString(i), str);
    }

    private void setType(int i, Type type) {
        this.types.put(Integer.toString(i), type);
    }

    public void add(String str, int i, int i2, Type type) throws LocalVariableInfoInconsistentException {
        for (int i3 = i; i3 <= i + i2; i3++) {
            add(i3, str, type);
        }
    }

    public String getName(int i) {
        return (String) this.names.get(Integer.toString(i));
    }

    public Type getType(int i) {
        return (Type) this.types.get(Integer.toString(i));
    }

    private void add(int i, String str, Type type) throws LocalVariableInfoInconsistentException {
        if (getName(i) != null && !getName(i).equals(str)) {
            throw new LocalVariableInfoInconsistentException("At bytecode offset '" + i + "' a local variable has two different names: '" + getName(i) + "' and '" + str + "'.");
        }
        if (getType(i) != null && !getType(i).equals(type)) {
            throw new LocalVariableInfoInconsistentException("At bytecode offset '" + i + "' a local variable has two different types: '" + getType(i) + "' and '" + type + "'.");
        }
        setName(i, str);
        setType(i, type);
    }
}
