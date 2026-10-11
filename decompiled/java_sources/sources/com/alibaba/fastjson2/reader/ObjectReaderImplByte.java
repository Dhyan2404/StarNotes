package com.alibaba.fastjson2.reader;

import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.util.Fnv;
import com.sunia.HTREnginev2.bak;
import java.lang.reflect.Type;

/* loaded from: classes3.dex */
public final class ObjectReaderImplByte extends bak<Byte> {

    /* renamed from: a */
    public static final ObjectReaderImplByte f12662a = new ObjectReaderImplByte();
    public static final long HASH_TYPE = Fnv.hashCode64("B");

    public ObjectReaderImplByte() {
        super(Byte.class);
    }

    @Override // com.sunia.HTREnginev2.bak, com.alibaba.fastjson2.reader.ObjectReader
    public /* bridge */ /* synthetic */ Class getObjectClass() {
        return super.getObjectClass();
    }

    @Override // com.sunia.HTREnginev2.bak, com.alibaba.fastjson2.reader.ObjectReader
    public Byte readJSONBObject(JSONReader jSONReader, Type type, Object obj, long j) {
        Integer readInt32 = jSONReader.readInt32();
        if (readInt32 == null) {
            return null;
        }
        return Byte.valueOf(readInt32.byteValue());
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Byte readObject(JSONReader jSONReader, Type type, Object obj, long j) {
        Integer readInt32 = jSONReader.readInt32();
        if (readInt32 == null) {
            return null;
        }
        return Byte.valueOf(readInt32.byteValue());
    }
}
