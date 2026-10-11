package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONReader;
import java.lang.reflect.Type;

/* loaded from: classes3.dex */
public class u7k extends bak {

    /* renamed from: a */
    public static final u7k f86188a = new u7k();

    public u7k() {
        super(Character.class);
    }

    @Override // com.sunia.HTREnginev2.bak, com.alibaba.fastjson2.reader.ObjectReader
    public Object readJSONBObject(JSONReader jSONReader, Type type, Object obj, long j) {
        if (jSONReader.nextIfNull()) {
            return null;
        }
        return Character.valueOf(jSONReader.readCharValue());
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object readObject(JSONReader jSONReader, Type type, Object obj, long j) {
        String readString = jSONReader.readString();
        if (readString == null) {
            return null;
        }
        return Character.valueOf(readString.charAt(0));
    }
}
