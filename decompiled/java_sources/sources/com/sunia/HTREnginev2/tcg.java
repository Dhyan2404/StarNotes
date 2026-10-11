package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.reader.FieldReader;
import com.alibaba.fastjson2.util.TypeUtils;
import java.lang.reflect.Method;
import java.util.Locale;
import java.util.function.BiConsumer;

/* loaded from: classes3.dex */
public final class tcg<T, V> extends FieldReader<T> {

    /* renamed from: o */
    public final BiConsumer<T, V> f85188o;

    public tcg(String str, Class<V> cls, int i, long j, String str2, Locale locale, Object obj, Method method, BiConsumer<T, V> biConsumer) {
        super(str, cls, cls, i, j, str2, locale, obj, method, null);
        this.f85188o = biConsumer;
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, Object obj) {
        this.f85188o.accept(t, TypeUtils.toByte(obj));
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void readFieldValue(JSONReader jSONReader, T t) {
        Byte b = null;
        try {
            Integer readInt32 = jSONReader.readInt32();
            if (readInt32 != null) {
                b = Byte.valueOf(readInt32.byteValue());
            }
        } catch (Exception e) {
            if ((jSONReader.features(this.features) & JSONReader.Feature.NullOnError.mask) == 0) {
                throw e;
            }
        }
        this.f85188o.accept(t, b);
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public Object readFieldValue(JSONReader jSONReader) {
        return jSONReader.readInt32();
    }
}
