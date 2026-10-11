package com.sun.org.apache.bcel.internal.util;

import com.sun.org.apache.bcel.internal.classfile.JavaClass;
import java.io.Serializable;
import java.util.Collection;
import java.util.HashMap;

/* loaded from: classes10.dex */
public class ClassSet implements Serializable {
    private HashMap _map = new HashMap();

    public boolean add(JavaClass javaClass) {
        if (this._map.containsKey(javaClass.getClassName())) {
            return false;
        }
        this._map.put(javaClass.getClassName(), javaClass);
        return true;
    }

    public boolean empty() {
        return this._map.isEmpty();
    }

    public String[] getClassNames() {
        return (String[]) this._map.keySet().toArray(new String[this._map.keySet().size()]);
    }

    public void remove(JavaClass javaClass) {
        this._map.remove(javaClass.getClassName());
    }

    public JavaClass[] toArray() {
        Collection values = this._map.values();
        JavaClass[] javaClassArr = new JavaClass[values.size()];
        values.toArray(javaClassArr);
        return javaClassArr;
    }
}
