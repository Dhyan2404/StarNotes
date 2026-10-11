package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONReader;
import java.lang.reflect.Type;
import java.util.OptionalDouble;

/* loaded from: classes3.dex */
public class v9k extends bak {

    /* renamed from: a */
    public static final v9k f87282a = new v9k();

    public v9k() {
        super(OptionalDouble.class);
    }

    @Override // com.sunia.HTREnginev2.bak, com.alibaba.fastjson2.reader.ObjectReader
    public Object readJSONBObject(JSONReader jSONReader, Type type, Object obj, long j) {
        Double readDouble = jSONReader.readDouble();
        return readDouble == null ? OptionalDouble.empty() : OptionalDouble.of(readDouble.doubleValue());
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object readObject(JSONReader jSONReader, Type type, Object obj, long j) {
        Double readDouble = jSONReader.readDouble();
        return readDouble == null ? OptionalDouble.empty() : OptionalDouble.of(readDouble.doubleValue());
    }
}
