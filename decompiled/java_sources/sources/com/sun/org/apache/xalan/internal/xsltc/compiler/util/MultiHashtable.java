package com.sun.org.apache.xalan.internal.xsltc.compiler.util;

import java.util.Hashtable;
import java.util.Vector;

/* loaded from: classes10.dex */
public final class MultiHashtable extends Hashtable {
    static final long serialVersionUID = -6151608290510033572L;

    /* JADX WARN: Multi-variable type inference failed */
    public Object maps(Object obj, Object obj2) {
        Vector vector;
        if (obj != null && (vector = (Vector) get(obj)) != null) {
            int size = vector.size();
            for (int i = 0; i < size; i++) {
                Object elementAt = vector.elementAt(i);
                if (elementAt.equals(obj2)) {
                    return elementAt;
                }
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Hashtable, java.util.Dictionary, java.util.Map
    public Object put(Object obj, Object obj2) {
        Vector vector = (Vector) get(obj);
        if (vector == null) {
            vector = new Vector();
            super.put(obj, vector);
        }
        vector.add(obj2);
        return vector;
    }
}
