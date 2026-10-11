package com.alibaba.fastjson2.reader;

import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.util.Fnv;
import com.sunia.HTREnginev2.bak;
import java.lang.reflect.Type;

/* loaded from: classes3.dex */
public final class ObjectReaderImplShort extends bak {

    /* renamed from: a */
    public static final ObjectReaderImplShort f12726a = new ObjectReaderImplShort();
    public static final long HASH_TYPE = Fnv.hashCode64("S");

    public ObjectReaderImplShort() {
        super(Short.class);
    }

    @Override // com.sunia.HTREnginev2.bak, com.alibaba.fastjson2.reader.ObjectReader
    public /* bridge */ /* synthetic */ Class getObjectClass() {
        return super.getObjectClass();
    }

    @Override // com.sunia.HTREnginev2.bak, com.alibaba.fastjson2.reader.ObjectReader
    public Object readJSONBObject(JSONReader jSONReader, Type type, Object obj, long j) {
        Integer readInt32 = jSONReader.readInt32();
        if (readInt32 == null) {
            return null;
        }
        return Short.valueOf(readInt32.shortValue());
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object readObject(JSONReader jSONReader, Type type, Object obj, long j) {
        Integer readInt32 = jSONReader.readInt32();
        if (readInt32 == null) {
            return null;
        }
        return Short.valueOf(readInt32.shortValue());
    }
}
