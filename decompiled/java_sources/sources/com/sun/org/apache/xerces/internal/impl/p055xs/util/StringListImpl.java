package com.sun.org.apache.xerces.internal.impl.p055xs.util;

import com.sun.org.apache.xerces.internal.p056xs.StringList;
import java.util.Vector;

/* loaded from: classes10.dex */
public class StringListImpl implements StringList {
    public static final StringList EMPTY_LIST = new StringList() { // from class: com.sun.org.apache.xerces.internal.impl.xs.util.StringListImpl.1
        @Override // com.sun.org.apache.xerces.internal.p056xs.StringList
        public boolean contains(String str) {
            return false;
        }

        @Override // com.sun.org.apache.xerces.internal.p056xs.StringList
        public int getLength() {
            return 0;
        }

        @Override // com.sun.org.apache.xerces.internal.p056xs.StringList
        public String item(int i) {
            return null;
        }
    };
    private String[] fArray;
    private int fLength;
    private Vector fVector;

    public StringListImpl(Vector vector) {
        this.fArray = null;
        this.fLength = 0;
        this.fVector = vector;
        this.fLength = vector != null ? vector.size() : 0;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.StringList
    public boolean contains(String str) {
        Vector vector = this.fVector;
        if (vector != null) {
            return vector.contains(str);
        }
        if (str == null) {
            for (int i = 0; i < this.fLength; i++) {
                if (this.fArray[i] == null) {
                    return true;
                }
            }
        } else {
            for (int i2 = 0; i2 < this.fLength; i2++) {
                if (str.equals(this.fArray[i2])) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.StringList
    public int getLength() {
        return this.fLength;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.StringList
    public String item(int i) {
        if (i < 0 || i >= this.fLength) {
            return null;
        }
        Vector vector = this.fVector;
        return vector != null ? (String) vector.elementAt(i) : this.fArray[i];
    }

    public StringListImpl(String[] strArr, int i) {
        this.fArray = strArr;
        this.fLength = i;
    }
}
