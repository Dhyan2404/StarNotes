package org.mortbay.util.ajax;

import org.mortbay.util.ajax.JSONPojoConvertor;

/* renamed from: org.mortbay.util.ajax.d */
/* loaded from: classes13.dex */
public final class C20438d implements JSONPojoConvertor.NumberType {
    @Override // org.mortbay.util.ajax.JSONPojoConvertor.NumberType
    public Object getActualValue(Number number) {
        return new Short(number.shortValue());
    }
}
