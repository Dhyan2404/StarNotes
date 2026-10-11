package org.mortbay.util.ajax;

import org.mortbay.util.ajax.JSONPojoConvertor;

/* renamed from: org.mortbay.util.ajax.h */
/* loaded from: classes13.dex */
public final class C20442h implements JSONPojoConvertor.NumberType {
    @Override // org.mortbay.util.ajax.JSONPojoConvertor.NumberType
    public Object getActualValue(Number number) {
        return number instanceof Double ? number : new Double(number.doubleValue());
    }
}
