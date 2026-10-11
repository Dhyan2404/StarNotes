package com.sun.org.apache.xerces.internal.impl.p053dv;

import com.sun.org.apache.xerces.internal.p056xs.ShortList;

/* loaded from: classes10.dex */
public class ValidatedInfo {
    public Object actualValue;
    public short actualValueType;
    public ShortList itemValueTypes;
    public XSSimpleType memberType;
    public XSSimpleType[] memberTypes;
    public String normalizedValue;

    public void reset() {
        this.normalizedValue = null;
        this.actualValue = null;
        this.memberType = null;
        this.memberTypes = null;
    }

    public String stringValue() {
        Object obj = this.actualValue;
        return obj == null ? this.normalizedValue : obj.toString();
    }
}
