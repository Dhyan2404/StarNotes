package org.mortbay.util.ajax;

import org.mortbay.util.ajax.JSONPojoConvertor;

/* renamed from: org.mortbay.util.ajax.f */
/* loaded from: classes13.dex */
public final class C20440f implements JSONPojoConvertor.NumberType {
    @Override // org.mortbay.util.ajax.JSONPojoConvertor.NumberType
    public Object getActualValue(Number number) {
        return new Float(number.floatValue());
    }
}
