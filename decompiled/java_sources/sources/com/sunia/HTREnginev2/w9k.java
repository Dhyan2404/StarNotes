package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONReader;
import java.lang.reflect.Type;
import java.util.OptionalInt;

/* loaded from: classes3.dex */
public final class w9k extends bak {

    /* renamed from: a */
    public static final w9k f88389a = new w9k();

    public w9k() {
        super(OptionalInt.class);
    }

    @Override // com.sunia.HTREnginev2.bak, com.alibaba.fastjson2.reader.ObjectReader
    public Object readJSONBObject(JSONReader jSONReader, Type type, Object obj, long j) {
        Integer readInt32 = jSONReader.readInt32();
        return readInt32 == null ? OptionalInt.empty() : OptionalInt.of(readInt32.intValue());
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object readObject(JSONReader jSONReader, Type type, Object obj, long j) {
        Integer readInt32 = jSONReader.readInt32();
        return readInt32 == null ? OptionalInt.empty() : OptionalInt.of(readInt32.intValue());
    }
}
