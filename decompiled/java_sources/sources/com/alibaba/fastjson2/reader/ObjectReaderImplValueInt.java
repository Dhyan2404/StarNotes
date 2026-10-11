package com.alibaba.fastjson2.reader;

import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONReader;
import java.lang.reflect.Type;
import java.util.function.IntFunction;

/* loaded from: classes3.dex */
public class ObjectReaderImplValueInt<T> implements ObjectReader<T> {

    /* renamed from: a */
    public final long f12736a;

    /* renamed from: b */
    public final IntFunction<T> f12737b;

    public ObjectReaderImplValueInt(Class<T> cls, long j, IntFunction<T> intFunction) {
        this.f12736a = j;
        this.f12737b = intFunction;
    }

    /* renamed from: of */
    public static <T> ObjectReaderImplValueInt<T> m7487of(Class<T> cls, IntFunction<T> intFunction) {
        return new ObjectReaderImplValueInt<>(cls, 0L, intFunction);
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
            return this.f12737b.apply(jSONReader.readInt32Value());
        } catch (Exception e) {
            throw new JSONException(jSONReader.info("create object error"), e);
        }
    }

    /* renamed from: of */
    public static <T> ObjectReaderImplValueInt<T> m7486of(Class<T> cls, long j, IntFunction<T> intFunction) {
        return new ObjectReaderImplValueInt<>(cls, j, intFunction);
    }
}
