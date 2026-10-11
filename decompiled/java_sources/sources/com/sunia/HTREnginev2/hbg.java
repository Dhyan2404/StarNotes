package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.reader.ObjectReaderImplDate;
import com.alibaba.fastjson2.util.JDKUtils;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.Date;
import java.util.Locale;
import java.util.function.BiConsumer;

/* loaded from: classes3.dex */
public final class hbg<T> extends ibg<T> {

    /* renamed from: r */
    public final BiConsumer<T, Date> f72035r;

    public hbg(String str, Type type, Class cls, int i, long j, String str2, Locale locale, Object obj, Field field, Method method, BiConsumer<T, Date> biConsumer) {
        super(str, type, cls, i, j, str2, locale, obj, method, field, ObjectReaderImplDate.m7444of(str2, locale));
        this.f72035r = biConsumer;
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, long j) {
        mo54444b(t, new Date(j));
    }

    @Override // com.sunia.HTREnginev2.ibg
    /* renamed from: b */
    public void mo54444b(T t, Date date) {
        BiConsumer<T, Date> biConsumer = this.f72035r;
        if (biConsumer != null) {
            biConsumer.accept(t, date);
            return;
        }
        if (t == null) {
            throw new JSONException("set " + this.fieldName + " error, object is null");
        }
        Method method = this.method;
        if (method != null) {
            try {
                method.invoke(t, date);
                return;
            } catch (Exception e) {
                throw new JSONException("set " + this.fieldName + " error", e);
            }
        }
        long j = this.fieldOffset;
        if (j != -1) {
            JDKUtils.UNSAFE.putObject(t, j, date);
            return;
        }
        try {
            this.field.set(t, date);
        } catch (Exception e2) {
            throw new JSONException("set " + this.fieldName + " error", e2);
        }
    }

    @Override // com.sunia.HTREnginev2.ibg
    /* renamed from: c */
    public void mo54445c(T t) {
        mo54444b(t, null);
    }

    @Override // com.sunia.HTREnginev2.ibg
    /* renamed from: d */
    public Object mo54446d(long j) {
        return new Date(j);
    }

    @Override // com.sunia.HTREnginev2.ibg
    /* renamed from: e */
    public Object mo54447e(Date date) {
        return date;
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void readFieldValue(JSONReader jSONReader, T t) {
        mo54444b(t, (Date) this.f73082o.readObject(jSONReader, this.fieldType, this.fieldName, this.features));
    }
}
