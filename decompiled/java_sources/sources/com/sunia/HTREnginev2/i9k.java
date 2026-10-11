package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONReader;
import java.lang.reflect.Type;
import java.util.Locale;

/* loaded from: classes3.dex */
public class i9k extends bak {

    /* renamed from: a */
    public static final i9k f73029a = new i9k();

    public i9k() {
        super(Locale.class);
    }

    @Override // com.sunia.HTREnginev2.bak, com.alibaba.fastjson2.reader.ObjectReader
    public Object readJSONBObject(JSONReader jSONReader, Type type, Object obj, long j) {
        String readString = jSONReader.readString();
        if (readString == null || readString.isEmpty()) {
            return null;
        }
        String[] split = readString.split("_");
        return split.length == 1 ? new Locale(split[0]) : split.length == 2 ? new Locale(split[0], split[1]) : new Locale(split[0], split[1], split[2]);
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object readObject(JSONReader jSONReader, Type type, Object obj, long j) {
        String readString = jSONReader.readString();
        if (readString == null || readString.isEmpty()) {
            return null;
        }
        String[] split = readString.split("_");
        return split.length == 1 ? new Locale(split[0]) : split.length == 2 ? new Locale(split[0], split[1]) : new Locale(split[0], split[1], split[2]);
    }
}
