package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.reader.FieldReader;
import java.lang.reflect.Method;
import java.util.Locale;
import java.util.function.BiConsumer;

/* loaded from: classes3.dex */
public final class jdg<T, V> extends FieldReader<T> {

    /* renamed from: o */
    public final BiConsumer<T, V> f74205o;

    /* renamed from: p */
    public final String f74206p;

    /* renamed from: q */
    public final boolean f74207q;

    public jdg(String str, Class<V> cls, int i, long j, String str2, Locale locale, Object obj, Method method, BiConsumer<T, V> biConsumer) {
        super(str, cls, cls, i, j, str2, locale, obj, method, null);
        this.f74205o = biConsumer;
        this.f74206p = str2;
        this.f74207q = "trim".equals(str2) || (j & JSONReader.Feature.TrimString.mask) != 0;
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, int i) {
        accept((jdg<T, V>) t, Integer.toString(i));
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void readFieldValue(JSONReader jSONReader, T t) {
        String readString = jSONReader.readString();
        if (this.f74207q && readString != null) {
            readString = readString.trim();
        }
        this.f74205o.accept(t, readString);
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public boolean supportAcceptType(Class cls) {
        return true;
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, long j) {
        accept((jdg<T, V>) t, Long.toString(j));
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, Object obj) {
        String str;
        if (!(obj instanceof String) && obj != null) {
            str = obj.toString();
        } else {
            str = (String) obj;
        }
        if (this.f74207q && str != null) {
            str = str.trim();
        }
        try {
            this.f74205o.accept(t, str);
        } catch (Exception e) {
            throw new JSONException("set " + super.toString() + " error", e);
        }
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public Object readFieldValue(JSONReader jSONReader) {
        return jSONReader.readString();
    }
}
