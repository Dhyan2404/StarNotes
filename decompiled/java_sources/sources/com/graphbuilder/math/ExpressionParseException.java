package com.graphbuilder.math;

import com.google.android.material.motion.MotionUtils;

/* loaded from: classes4.dex */
public class ExpressionParseException extends RuntimeException {
    private String descrip;
    private int index;

    public ExpressionParseException(String str, int i) {
        this.descrip = str;
        this.index = i;
    }

    public String getDescription() {
        return this.descrip;
    }

    public int getIndex() {
        return this.index;
    }

    @Override // java.lang.Throwable
    public String toString() {
        return MotionUtils.f31761c + this.index + ") " + this.descrip;
    }
}
