package com.sun.org.apache.bcel.internal.verifier.statics;

import com.sun.org.apache.bcel.internal.generic.Type;
import com.sun.org.apache.bcel.internal.verifier.exc.AssertionViolatedException;
import com.sun.org.apache.bcel.internal.verifier.exc.LocalVariableInfoInconsistentException;

/* loaded from: classes10.dex */
public class LocalVariablesInfo {
    private LocalVariableInfo[] localVariableInfos;

    public LocalVariablesInfo(int i) {
        this.localVariableInfos = new LocalVariableInfo[i];
        for (int i2 = 0; i2 < i; i2++) {
            this.localVariableInfos[i2] = new LocalVariableInfo();
        }
    }

    public void add(int i, String str, int i2, int i3, Type type) throws LocalVariableInfoInconsistentException {
        if (i >= 0) {
            LocalVariableInfo[] localVariableInfoArr = this.localVariableInfos;
            if (i < localVariableInfoArr.length) {
                localVariableInfoArr[i].add(str, i2, i3, type);
                if (type == Type.LONG) {
                    this.localVariableInfos[i + 1].add(str, i2, i3, LONG_Upper.theInstance());
                }
                if (type == Type.DOUBLE) {
                    this.localVariableInfos[i + 1].add(str, i2, i3, DOUBLE_Upper.theInstance());
                    return;
                }
                return;
            }
        }
        throw new AssertionViolatedException("Slot number for local variable information out of range.");
    }

    public LocalVariableInfo getLocalVariableInfo(int i) {
        if (i >= 0) {
            LocalVariableInfo[] localVariableInfoArr = this.localVariableInfos;
            if (i < localVariableInfoArr.length) {
                return localVariableInfoArr[i];
            }
        }
        throw new AssertionViolatedException("Slot number for local variable information out of range.");
    }
}
