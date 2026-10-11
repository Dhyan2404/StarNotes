package com.alibaba.fastjson2.reader;

import com.alibaba.fastjson2.JSONReader;
import com.sunia.HTREnginev2.bak;
import java.lang.reflect.Type;
import java.util.function.Function;

/* loaded from: classes3.dex */
public final class ObjectReaderImplFromString<T> extends bak<T> {

    /* renamed from: a */
    public final Function<String, T> f12678a;

    public ObjectReaderImplFromString(Class<T> cls, Function<String, T> function) {
        super(cls);
        this.f12678a = function;
    }

    @Override // com.sunia.HTREnginev2.bak, com.alibaba.fastjson2.reader.ObjectReader
    public /* bridge */ /* synthetic */ Class getObjectClass() {
        return super.getObjectClass();
    }

    @Override // com.sunia.HTREnginev2.bak, com.alibaba.fastjson2.reader.ObjectReader
    public T readJSONBObject(JSONReader jSONReader, Type type, Object obj, long j) {
        String readString = jSONReader.readString();
        if (readString == null || readString.isEmpty()) {
            return null;
        }
        return this.f12678a.apply(readString);
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public T readObject(JSONReader jSONReader, Type type, Object obj, long j) {
        String readString = jSONReader.readString();
        if (readString == null) {
            return null;
        }
        return this.f12678a.apply(readString);
    }
}
