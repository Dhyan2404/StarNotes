package com.alibaba.fastjson2.reader;

import com.alibaba.fastjson2.JSONReader;
import com.sunia.HTREnginev2.bak;
import java.lang.reflect.Type;
import java.util.function.IntFunction;

/* loaded from: classes3.dex */
public final class ObjectReaderImplFromInt<T> extends bak<T> {

    /* renamed from: a */
    public final IntFunction<T> f12676a;

    public ObjectReaderImplFromInt(Class<T> cls, IntFunction intFunction) {
        super(cls);
        this.f12676a = intFunction;
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
        return this.f12676a.apply(jSONReader.readInt32Value());
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public T readObject(JSONReader jSONReader, Type type, Object obj, long j) {
        if (jSONReader.nextIfNull()) {
            return null;
        }
        return this.f12676a.apply(jSONReader.readInt32Value());
    }
}
