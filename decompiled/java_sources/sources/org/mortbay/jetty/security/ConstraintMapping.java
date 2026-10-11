package org.mortbay.jetty.security;

/* loaded from: classes13.dex */
public class ConstraintMapping {

    /* renamed from: a */
    public String f114966a;

    /* renamed from: b */
    public String f114967b;

    /* renamed from: c */
    public Constraint f114968c;

    public Constraint getConstraint() {
        return this.f114968c;
    }

    public String getMethod() {
        return this.f114966a;
    }

    public String getPathSpec() {
        return this.f114967b;
    }

    public void setConstraint(Constraint constraint) {
        this.f114968c = constraint;
    }

    public void setMethod(String str) {
        this.f114966a = str;
    }

    public void setPathSpec(String str) {
        this.f114967b = str;
    }
}
