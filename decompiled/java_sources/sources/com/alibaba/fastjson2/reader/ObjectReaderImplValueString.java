package com.alibaba.fastjson2.reader;

import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONReader;
import java.lang.reflect.Type;
import java.util.function.Function;

/* loaded from: classes3.dex */
public class ObjectReaderImplValueString<T> implements ObjectReader<T> {

    /* renamed from: a */
    public final long f12738a;

    /* renamed from: b */
    public final Function<String, T> f12739b;

    public ObjectReaderImplValueString(Class<T> cls, long j, Function<String, T> function) {
        this.f12738a = j;
        this.f12739b = function;
    }

    /* renamed from: of */
    public static <T> ObjectReaderImplValueString<T> m7489of(Class<T> cls, Function<String, T> function) {
        return new ObjectReaderImplValueString<>(cls, 0L, function);
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public T readJSONBObject(JSONReader jSONReader, Type type, Object obj, long j) {
        return readObject(jSONReader, type, obj, j);
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public T readObject(JSONReader jSONReader, Type type, Object obj, long j) {
        if (jSONReader.nextIfNullOrEmptyString()) {
            return null;
        }
        try {
            return this.f12739b.apply(jSONReader.readString());
        } catch (Exception e) {
            throw new JSONException(jSONReader.info("create object error"), e);
        }
    }

    /* renamed from: of */
    public static <T> ObjectReaderImplValueString<T> m7488of(Class<T> cls, long j, Function<String, T> function) {
        return new ObjectReaderImplValueString<>(cls, j, function);
    }
}
