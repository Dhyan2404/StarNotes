package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.reader.FieldReader;
import com.alibaba.fastjson2.util.TypeUtils;
import java.lang.reflect.Method;
import java.util.Locale;
import java.util.function.BiConsumer;

/* loaded from: classes3.dex */
public final class kbg<T> extends FieldReader<T> {

    /* renamed from: o */
    public final BiConsumer<T, Double> f75259o;

    public kbg(String str, Class cls, int i, long j, String str2, Locale locale, Double d, Method method, BiConsumer<T, Double> biConsumer) {
        super(str, cls, cls, i, j, str2, locale, d, method, null);
        this.f75259o = biConsumer;
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, Object obj) {
        this.f75259o.accept(t, TypeUtils.toDouble(obj));
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void readFieldValue(JSONReader jSONReader, T t) {
        Double d;
        try {
            d = jSONReader.readDouble();
        } catch (Exception e) {
            if ((jSONReader.features(this.features) & JSONReader.Feature.NullOnError.mask) == 0) {
                throw e;
            }
            d = null;
        }
        this.f75259o.accept(t, d);
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public Object readFieldValue(JSONReader jSONReader) {
        return jSONReader.readDouble();
    }
}
