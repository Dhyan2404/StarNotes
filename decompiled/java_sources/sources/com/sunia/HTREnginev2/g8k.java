package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONReader;
import java.lang.reflect.Type;

/* loaded from: classes3.dex */
public class g8k extends bak<Long> {

    /* renamed from: a */
    public static final g8k f70799a = new g8k();

    public g8k() {
        super(Long.class);
    }

    @Override // com.sunia.HTREnginev2.bak, com.alibaba.fastjson2.reader.ObjectReader
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public Long readJSONBObject(JSONReader jSONReader, Type type, Object obj, long j) {
        return jSONReader.readInt64();
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public Long readObject(JSONReader jSONReader, Type type, Object obj, long j) {
        return jSONReader.readInt64();
    }
}
