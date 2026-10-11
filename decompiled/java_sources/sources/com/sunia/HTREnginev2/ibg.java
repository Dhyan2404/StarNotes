package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.reader.FieldReader;
import com.alibaba.fastjson2.reader.ObjectReader;
import com.alibaba.fastjson2.util.DateUtils;
import com.alibaba.fastjson2.util.IOUtils;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.Date;
import java.util.Locale;

/* loaded from: classes3.dex */
public abstract class ibg<T> extends FieldReader<T> {

    /* renamed from: o */
    public final ObjectReader f73082o;

    /* renamed from: p */
    public final boolean f73083p;

    /* renamed from: q */
    public final boolean f73084q;

    public ibg(String str, Type type, Class cls, int i, long j, String str2, Locale locale, Object obj, Method method, Field field, ObjectReader objectReader) {
        super(str, type, cls, i, j, str2, locale, obj, method, field);
        boolean z;
        this.f73082o = objectReader;
        boolean z2 = false;
        if (str2 != null) {
            z = true;
            if (!str2.equals("millis")) {
                if (str2.equals("unixtime")) {
                    z = false;
                    z2 = true;
                }
            }
            this.f73083p = z2;
            this.f73084q = z;
        }
        z = false;
        this.f73083p = z2;
        this.f73084q = z;
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, Object obj) {
        if (obj == null) {
            mo54445c(t);
            return;
        }
        if (obj instanceof String) {
            String str = (String) obj;
            if (str.isEmpty() || "null".equals(str)) {
                mo54445c(t);
                return;
            }
            if ((this.format == null || this.f73083p || this.f73084q) && IOUtils.isNumber(str)) {
                long parseLong = Long.parseLong(str);
                if (this.f73083p) {
                    parseLong *= 1000;
                }
                accept((ibg<T>) t, parseLong);
                return;
            }
            obj = DateUtils.parseDate(str, this.format, DateUtils.DEFAULT_ZONE_ID);
        }
        if (obj instanceof Date) {
            mo54444b(t, (Date) obj);
        } else {
            if (obj instanceof Long) {
                accept((ibg<T>) t, ((Long) obj).longValue());
                return;
            }
            throw new JSONException("not support value " + obj.getClass());
        }
    }

    /* renamed from: b */
    public abstract void mo54444b(T t, Date date);

    /* renamed from: c */
    public abstract void mo54445c(T t);

    /* renamed from: d */
    public abstract Object mo54446d(long j);

    /* renamed from: e */
    public abstract Object mo54447e(Date date);

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public final ObjectReader getObjectReader(JSONReader jSONReader) {
        return this.f73082o;
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public final Object readFieldValue(JSONReader jSONReader) {
        return this.f73082o.readObject(jSONReader, this.fieldType, this.fieldName, this.features);
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public boolean supportAcceptType(Class cls) {
        return cls == Date.class || cls == String.class;
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public final ObjectReader getObjectReader(JSONReader.Context context) {
        return this.f73082o;
    }
}
