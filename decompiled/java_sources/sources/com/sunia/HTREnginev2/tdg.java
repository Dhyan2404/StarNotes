package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.util.JDKUtils;
import java.lang.reflect.Field;

/* loaded from: classes3.dex */
public final class tdg extends sdg {
    public tdg(String str, int i, long j, String str2, String str3, Field field, Class cls) {
        super(str, i, j, str2, str3, cls, cls, field, null);
    }

    /* renamed from: c */
    public boolean m57363c(Object obj) {
        if (obj == null) {
            throw new JSONException("field.get error, " + this.fieldName);
        }
        try {
            long j = this.fieldOffset;
            return j != -1 ? JDKUtils.UNSAFE.getBoolean(obj, j) : this.field.getBoolean(obj);
        } catch (IllegalAccessException | IllegalArgumentException e) {
            throw new JSONException("field.get error, " + this.fieldName, e);
        }
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public Object getFieldValue(Object obj) {
        return Boolean.valueOf(m57363c(obj));
    }
}
