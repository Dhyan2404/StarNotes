package com.graphbuilder.math;

/* loaded from: classes4.dex */
public abstract class TermNode extends Expression {
    protected String name = null;
    protected boolean negate = false;

    public TermNode(String str, boolean z) {
        setName(str);
        setNegate(z);
    }

    /* renamed from: d */
    public static boolean m30859d(String str) {
        if (str.length() == 0) {
            return false;
        }
        char charAt = str.charAt(0);
        if ((charAt >= '0' && charAt <= '9') || charAt == '.' || charAt == ',' || charAt == '(' || charAt == ')' || charAt == '^' || charAt == '*' || charAt == '/' || charAt == '+' || charAt == '-' || charAt == ' ' || charAt == '\t' || charAt == '\n') {
            return false;
        }
        for (int i = 1; i < str.length(); i++) {
            char charAt2 = str.charAt(i);
            if (charAt2 == ',' || charAt2 == '(' || charAt2 == ')' || charAt2 == '^' || charAt2 == '*' || charAt2 == '/' || charAt2 == '+' || charAt2 == '-' || charAt2 == ' ' || charAt2 == '\t' || charAt2 == '\n') {
                return false;
            }
        }
        return true;
    }

    public String getName() {
        return this.name;
    }

    public boolean getNegate() {
        return this.negate;
    }

    public void setName(String str) {
        if (str == null) {
            throw new IllegalArgumentException("name cannot be null");
        }
        if (m30859d(str)) {
            this.name = str;
            return;
        }
        throw new IllegalArgumentException("invalid name: " + str);
    }

    public void setNegate(boolean z) {
        this.negate = z;
    }
}
