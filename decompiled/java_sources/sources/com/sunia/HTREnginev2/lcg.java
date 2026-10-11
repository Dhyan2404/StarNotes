package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.reader.FieldReader;
import com.alibaba.fastjson2.util.TypeUtils;
import java.lang.reflect.Method;
import java.util.Locale;
import java.util.function.BiConsumer;

/* loaded from: classes3.dex */
public final class lcg<T, V> extends FieldReader<T> {

    /* renamed from: o */
    public final BiConsumer<T, V> f76345o;

    public lcg(String str, Class<V> cls, int i, long j, String str2, Locale locale, Object obj, Method method, BiConsumer<T, V> biConsumer) {
        super(str, cls, cls, i, j, str2, locale, obj, method, null);
        this.f76345o = biConsumer;
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, Object obj) {
        this.f76345o.accept(t, TypeUtils.toLong(obj));
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void readFieldValue(JSONReader jSONReader, T t) {
        Long l;
        try {
            l = jSONReader.readInt64();
        } catch (Exception e) {
            if ((jSONReader.features(this.features) & JSONReader.Feature.NullOnError.mask) == 0) {
                throw e;
            }
            l = null;
        }
        this.f76345o.accept(t, l);
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public Object readFieldValue(JSONReader jSONReader) {
        return jSONReader.readInt64();
    }
}
