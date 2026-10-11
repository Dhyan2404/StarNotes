package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes3.dex */
public final class efg<T> extends cfg<T> {
    public efg(String str, int i, long j, String str2, String str3, Method method, Class cls) {
        super(str, i, j, str2, str3, cls, null, method);
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public Object getFieldValue(T t) {
        try {
            return this.method.invoke(t, new Object[0]);
        } catch (IllegalAccessException | IllegalArgumentException e) {
            throw new JSONException("invoke getter method error, " + this.fieldName, e);
        } catch (InvocationTargetException e2) {
            e = e2;
            Throwable cause = e.getCause();
            String str = "invoke getter method error, " + this.fieldName;
            if (cause != null) {
                e = cause;
            }
            throw new JSONException(str, e);
        }
    }
}
