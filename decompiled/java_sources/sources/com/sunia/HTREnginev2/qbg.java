package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.reader.FieldReader;
import com.alibaba.fastjson2.util.TypeUtils;
import java.lang.reflect.Method;
import java.util.Locale;
import java.util.function.BiConsumer;

/* loaded from: classes3.dex */
public final class qbg<T> extends FieldReader<T> {

    /* renamed from: o */
    public final BiConsumer<T, Float> f81869o;

    public qbg(String str, Class cls, int i, long j, String str2, Locale locale, Float f, Method method, BiConsumer<T, Float> biConsumer) {
        super(str, cls, cls, i, j, str2, locale, f, method, null);
        this.f81869o = biConsumer;
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, Object obj) {
        this.f81869o.accept(t, TypeUtils.toFloat(obj));
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void readFieldValue(JSONReader jSONReader, T t) {
        Float f;
        try {
            f = jSONReader.readFloat();
        } catch (Exception e) {
            if ((jSONReader.features(this.features) & JSONReader.Feature.NullOnError.mask) == 0) {
                throw e;
            }
            f = null;
        }
        this.f81869o.accept(t, f);
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public Object readFieldValue(JSONReader jSONReader) {
        return jSONReader.readFloat();
    }
}
