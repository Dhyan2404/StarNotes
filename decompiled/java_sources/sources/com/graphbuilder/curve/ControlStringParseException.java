package com.graphbuilder.curve;

import com.graphbuilder.math.ExpressionParseException;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes4.dex */
public class ControlStringParseException extends RuntimeException {
    private String descrip;
    private ExpressionParseException epe;
    private int fromIndex;
    private int toIndex;

    public ControlStringParseException(String str) {
        this.fromIndex = -1;
        this.toIndex = -1;
        this.epe = null;
        this.descrip = str;
    }

    public String getDescription() {
        return this.descrip;
    }

    public ExpressionParseException getExpressionParseException() {
        return this.epe;
    }

    public int getFromIndex() {
        return this.fromIndex;
    }

    public int getToIndex() {
        return this.toIndex;
    }

    @Override // java.lang.Throwable
    public String toString() {
        String str;
        if (this.epe != null) {
            str = "\n" + this.epe.toString();
        } else {
            str = "";
        }
        int i = this.fromIndex;
        if (i == -1 && this.toIndex == -1) {
            return this.descrip + str;
        }
        if (i == this.toIndex) {
            return this.descrip + " : [" + this.toIndex + IteratorUtils.f104924b + str;
        }
        return this.descrip + " : [" + this.fromIndex + ", " + this.toIndex + IteratorUtils.f104924b + str;
    }

    public ControlStringParseException(String str, int i) {
        this.epe = null;
        this.descrip = str;
        this.fromIndex = i;
        this.toIndex = i;
    }

    public ControlStringParseException(String str, int i, int i2) {
        this.epe = null;
        this.descrip = str;
        this.fromIndex = i;
        this.toIndex = i2;
    }

    public ControlStringParseException(String str, int i, int i2, ExpressionParseException expressionParseException) {
        this.descrip = str;
        this.fromIndex = i;
        this.toIndex = i2;
        this.epe = expressionParseException;
    }
}
