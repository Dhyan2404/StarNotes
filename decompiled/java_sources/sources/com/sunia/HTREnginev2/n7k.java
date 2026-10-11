package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONReader;
import java.lang.reflect.Type;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class n7k extends bak {

    /* renamed from: b */
    public static final n7k f78380b = new n7k(Object.class);

    /* renamed from: a */
    public final Type f78381a;

    public n7k(Type type) {
        super(AtomicReference.class);
        this.f78381a = type;
    }

    @Override // com.sunia.HTREnginev2.bak, com.alibaba.fastjson2.reader.ObjectReader
    public Object readJSONBObject(JSONReader jSONReader, Type type, Object obj, long j) {
        if (jSONReader.nextIfNull()) {
            return null;
        }
        return new AtomicReference(jSONReader.read(this.f78381a));
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object readObject(JSONReader jSONReader, Type type, Object obj, long j) {
        if (jSONReader.nextIfNull()) {
            return null;
        }
        return new AtomicReference(jSONReader.read(this.f78381a));
    }
}
