package com.sun.org.apache.bcel.internal.verifier.statics;

import java.util.ArrayList;

/* loaded from: classes10.dex */
public class IntList {
    private ArrayList theList = new ArrayList();

    public void add(int i) {
        this.theList.add(new Integer(i));
    }

    public boolean contains(int i) {
        int size = this.theList.size();
        Integer[] numArr = new Integer[size];
        this.theList.toArray(numArr);
        for (int i2 = 0; i2 < size; i2++) {
            if (i == numArr[i2].intValue()) {
                return true;
            }
        }
        return false;
    }
}
