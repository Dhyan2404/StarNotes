package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes3.dex */
public final class jfg extends hfg {
    public jfg(String str, int i, long j, String str2, String str3, Method method, Class cls) {
        super(str, i, j, str2, str3, cls, null, method);
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public Object getFieldValue(Object obj) {
        try {
            return this.method.invoke(obj, new Object[0]);
        } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e) {
            throw new JSONException("invoke getter method error, " + this.fieldName, e);
        }
    }
}
