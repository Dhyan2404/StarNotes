package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONReader;
import java.lang.reflect.Type;
import java.util.UUID;

/* loaded from: classes3.dex */
public class z9k extends bak {

    /* renamed from: a */
    public static final z9k f91546a = new z9k();

    public z9k() {
        super(UUID.class);
    }

    @Override // com.sunia.HTREnginev2.bak, com.alibaba.fastjson2.reader.ObjectReader
    public Object readJSONBObject(JSONReader jSONReader, Type type, Object obj, long j) {
        return jSONReader.readUUID();
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object readObject(JSONReader jSONReader, Type type, Object obj, long j) {
        return jSONReader.readUUID();
    }
}
