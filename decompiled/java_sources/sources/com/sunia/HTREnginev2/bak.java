package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.reader.ObjectReader;
import java.lang.reflect.Type;

/* loaded from: classes3.dex */
public abstract class bak<T> implements ObjectReader<T> {
    protected final Class objectClass;

    public bak(Class cls) {
        this.objectClass = cls;
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Class getObjectClass() {
        return this.objectClass;
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public abstract T readJSONBObject(JSONReader jSONReader, Type type, Object obj, long j);
}
