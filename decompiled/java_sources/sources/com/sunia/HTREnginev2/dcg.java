package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.reader.FieldReader;
import com.alibaba.fastjson2.util.TypeUtils;
import java.lang.reflect.Method;
import java.util.Locale;
import java.util.function.BiConsumer;

/* loaded from: classes3.dex */
public final class dcg<T, V> extends FieldReader<T> {

    /* renamed from: o */
    public final BiConsumer<T, V> f67719o;

    public dcg(String str, Class<V> cls, int i, long j, String str2, Locale locale, Object obj, Method method, BiConsumer<T, V> biConsumer) {
        super(str, cls, cls, i, j, str2, locale, obj, method, null);
        this.f67719o = biConsumer;
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, Object obj) {
        this.f67719o.accept(t, TypeUtils.toInteger(obj));
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void readFieldValue(JSONReader jSONReader, T t) {
        Integer num;
        try {
            num = jSONReader.readInt32();
        } catch (Exception e) {
            if ((jSONReader.features(this.features) & JSONReader.Feature.NullOnError.mask) == 0) {
                throw e;
            }
            num = null;
        }
        this.f67719o.accept(t, num);
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public Object readFieldValue(JSONReader jSONReader) {
        return jSONReader.readInt32();
    }
}
