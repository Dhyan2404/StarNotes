package com.alibaba.fastjson2.reader;

import com.alibaba.fastjson2.JSONReader;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

/* loaded from: classes3.dex */
public abstract class FieldReaderAtomicReference<T> extends FieldReader<T> {

    /* renamed from: o */
    public final Type f12478o;

    public FieldReaderAtomicReference(String str, Type type, Class cls, int i, long j, String str2, Method method, Field field) {
        super(str, type, cls, i, j, str2, null, null, method, field);
        Type type2;
        if (type instanceof ParameterizedType) {
            Type[] actualTypeArguments = ((ParameterizedType) type).getActualTypeArguments();
            if (actualTypeArguments.length == 1) {
                type2 = actualTypeArguments[0];
                this.f12478o = type2;
            }
        }
        type2 = null;
        this.f12478o = type2;
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void readFieldValue(JSONReader jSONReader, T t) {
        if (jSONReader.nextIfNull()) {
            return;
        }
        accept((FieldReaderAtomicReference<T>) t, jSONReader.read(this.f12478o));
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public Object readFieldValue(JSONReader jSONReader) {
        return jSONReader.read(this.f12478o);
    }
}
