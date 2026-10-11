package org.mortbay.util.ajax;

import org.mortbay.util.ajax.JSONPojoConvertor;

/* renamed from: org.mortbay.util.ajax.g */
/* loaded from: classes13.dex */
public final class C20441g implements JSONPojoConvertor.NumberType {
    @Override // org.mortbay.util.ajax.JSONPojoConvertor.NumberType
    public Object getActualValue(Number number) {
        return number instanceof Long ? number : new Long(number.longValue());
    }
}
