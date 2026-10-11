package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONReader;
import java.lang.reflect.Type;
import java.util.OptionalLong;

/* loaded from: classes3.dex */
public class x9k extends bak {

    /* renamed from: a */
    public static final x9k f89413a = new x9k();

    public x9k() {
        super(OptionalLong.class);
    }

    @Override // com.sunia.HTREnginev2.bak, com.alibaba.fastjson2.reader.ObjectReader
    public Object readJSONBObject(JSONReader jSONReader, Type type, Object obj, long j) {
        Long readInt64 = jSONReader.readInt64();
        return readInt64 == null ? OptionalLong.empty() : OptionalLong.of(readInt64.longValue());
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object readObject(JSONReader jSONReader, Type type, Object obj, long j) {
        Long readInt64 = jSONReader.readInt64();
        return readInt64 == null ? OptionalLong.empty() : OptionalLong.of(readInt64.longValue());
    }
}
