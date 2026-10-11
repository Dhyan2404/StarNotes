package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.reader.FieldReader;
import com.alibaba.fastjson2.util.TypeUtils;
import java.lang.reflect.Method;
import java.math.BigDecimal;
import java.util.Locale;
import java.util.function.BiConsumer;

/* loaded from: classes3.dex */
public final class sag<T, V> extends FieldReader<T> {

    /* renamed from: o */
    public final BiConsumer<T, V> f83954o;

    public sag(String str, Class<V> cls, int i, long j, String str2, Locale locale, Object obj, Method method, BiConsumer<T, V> biConsumer) {
        super(str, cls, cls, i, j, str2, locale, obj, method, null);
        this.f83954o = biConsumer;
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, Object obj) {
        try {
            this.f83954o.accept(t, TypeUtils.toBigDecimal(obj));
        } catch (Exception e) {
            throw new JSONException("set " + super.toString() + " error", e);
        }
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void readFieldValue(JSONReader jSONReader, T t) {
        BigDecimal bigDecimal;
        try {
            bigDecimal = jSONReader.readBigDecimal();
        } catch (Exception e) {
            if ((jSONReader.features(this.features) & JSONReader.Feature.NullOnError.mask) == 0) {
                throw e;
            }
            bigDecimal = null;
        }
        this.f83954o.accept(t, bigDecimal);
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, int i) {
        try {
            this.f83954o.accept(t, BigDecimal.valueOf(i));
        } catch (Exception e) {
            throw new JSONException("set " + super.toString() + " error", e);
        }
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public Object readFieldValue(JSONReader jSONReader) {
        return jSONReader.readBigDecimal();
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, long j) {
        try {
            this.f83954o.accept(t, BigDecimal.valueOf(j));
        } catch (Exception e) {
            throw new JSONException("set " + super.toString() + " error", e);
        }
    }
}
