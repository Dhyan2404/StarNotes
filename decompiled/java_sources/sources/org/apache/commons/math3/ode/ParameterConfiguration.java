package org.apache.commons.math3.ode;

import java.io.Serializable;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes12.dex */
public class ParameterConfiguration implements Serializable {
    private static final long serialVersionUID = 2247518849090889379L;

    /* renamed from: hP */
    private double f108805hP;
    private String parameterName;

    public ParameterConfiguration(String str, double d) {
        this.parameterName = str;
        this.f108805hP = d;
    }

    public double getHP() {
        return this.f108805hP;
    }

    public String getParameterName() {
        return this.parameterName;
    }

    public void setHP(double d) {
        this.f108805hP = d;
    }
}
