package com.graphbuilder.math;

/* loaded from: classes4.dex */
public class VarMap {

    /* renamed from: a */
    public boolean f38864a;

    /* renamed from: b */
    public String[] f38865b;

    /* renamed from: c */
    public double[] f38866c;

    /* renamed from: d */
    public int f38867d;

    public VarMap() {
        this(true);
    }

    public double getValue(String str) {
        for (int i = 0; i < this.f38867d; i++) {
            if ((this.f38864a && this.f38865b[i].equals(str)) || (!this.f38864a && this.f38865b[i].equalsIgnoreCase(str))) {
                return this.f38866c[i];
            }
        }
        throw new RuntimeException("variable value has not been set: " + str);
    }

    public double[] getValues() {
        int i = this.f38867d;
        double[] dArr = new double[i];
        for (int i2 = 0; i2 < i; i2++) {
            dArr[i2] = this.f38866c[i2];
        }
        return dArr;
    }

    public String[] getVariableNames() {
        int i = this.f38867d;
        String[] strArr = new String[i];
        for (int i2 = 0; i2 < i; i2++) {
            strArr[i2] = this.f38865b[i2];
        }
        return strArr;
    }

    public boolean isCaseSensitive() {
        return this.f38864a;
    }

    public void remove(String str) {
        int i = 0;
        while (i < this.f38867d) {
            if (!(this.f38864a && this.f38865b[i].equals(str)) && (this.f38864a || !this.f38865b[i].equalsIgnoreCase(str))) {
                i++;
            } else {
                while (true) {
                    i++;
                    int i2 = this.f38867d;
                    if (i >= i2) {
                        int i3 = i2 - 1;
                        this.f38867d = i3;
                        this.f38865b[i3] = null;
                        this.f38866c[i3] = 0.0d;
                        return;
                    }
                    String[] strArr = this.f38865b;
                    int i4 = i - 1;
                    strArr[i4] = strArr[i];
                    double[] dArr = this.f38866c;
                    dArr[i4] = dArr[i];
                }
            }
        }
    }

    public void setValue(String str, double d) {
        if (str == null) {
            throw new IllegalArgumentException("varName cannot be null");
        }
        int i = 0;
        while (true) {
            int i2 = this.f38867d;
            if (i >= i2) {
                if (i2 == this.f38865b.length) {
                    int i3 = i2 * 2;
                    String[] strArr = new String[i3];
                    double[] dArr = new double[i3];
                    for (int i4 = 0; i4 < this.f38867d; i4++) {
                        strArr[i4] = this.f38865b[i4];
                        dArr[i4] = this.f38866c[i4];
                    }
                    this.f38865b = strArr;
                    this.f38866c = dArr;
                }
                String[] strArr2 = this.f38865b;
                int i5 = this.f38867d;
                strArr2[i5] = str;
                this.f38866c[i5] = d;
                this.f38867d = i5 + 1;
                return;
            }
            if ((!this.f38864a || !this.f38865b[i].equals(str)) && (this.f38864a || !this.f38865b[i].equalsIgnoreCase(str))) {
                i++;
            }
        }
        this.f38866c[i] = d;
    }

    public VarMap(boolean z) {
        this.f38865b = new String[2];
        this.f38866c = new double[2];
        this.f38867d = 0;
        this.f38864a = z;
    }
}
