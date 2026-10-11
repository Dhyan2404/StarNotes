package com.alibaba.fastjson2.reader;

import com.alibaba.fastjson2.JSONReader;
import com.sunia.HTREnginev2.bak;
import java.lang.reflect.Type;
import java.util.function.Function;

/* loaded from: classes3.dex */
public final class ObjectReaderImplFromBoolean<T> extends bak<T> {

    /* renamed from: a */
    public final Function<Boolean, T> f12675a;

    public ObjectReaderImplFromBoolean(Class<T> cls, Function<Boolean, T> function) {
        super(cls);
        this.f12675a = function;
    }

    @Override // com.sunia.HTREnginev2.bak, com.alibaba.fastjson2.reader.ObjectReader
    public /* bridge */ /* synthetic */ Class getObjectClass() {
        return super.getObjectClass();
    }

    @Override // com.sunia.HTREnginev2.bak, com.alibaba.fastjson2.reader.ObjectReader
    public T readJSONBObject(JSONReader jSONReader, Type type, Object obj, long j) {
        if (jSONReader.nextIfNull()) {
            return null;
        }
        return this.f12675a.apply(Boolean.valueOf(jSONReader.readBoolValue()));
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public T readObject(JSONReader jSONReader, Type type, Object obj, long j) {
        if (jSONReader.nextIfNull()) {
            return null;
        }
        return this.f12675a.apply(Boolean.valueOf(jSONReader.readBoolValue()));
    }
}
