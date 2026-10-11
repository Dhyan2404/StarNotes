package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.reader.ObjectReader;
import java.lang.reflect.Type;
import java.util.AbstractMap;
import java.util.Map;

/* loaded from: classes3.dex */
public class n9k extends bak {

    /* renamed from: a */
    public final Type f78433a;

    /* renamed from: b */
    public final Type f78434b;

    /* renamed from: c */
    public volatile ObjectReader f78435c;

    /* renamed from: d */
    public volatile ObjectReader f78436d;

    public n9k(Type type, Type type2) {
        super(Map.Entry.class);
        this.f78433a = type;
        this.f78434b = type2;
    }

    @Override // com.sunia.HTREnginev2.bak, com.alibaba.fastjson2.reader.ObjectReader
    public Object readJSONBObject(JSONReader jSONReader, Type type, Object obj, long j) {
        Object readObject;
        Object readObject2;
        int startArray = jSONReader.startArray();
        if (startArray != 2) {
            throw new JSONException(jSONReader.info("entryCnt must be 2, but " + startArray));
        }
        if (this.f78433a == null) {
            readObject = jSONReader.readAny();
        } else {
            if (this.f78435c == null) {
                this.f78435c = jSONReader.getObjectReader(this.f78433a);
            }
            readObject = this.f78435c.readObject(jSONReader, type, obj, j);
        }
        if (this.f78434b == null) {
            readObject2 = jSONReader.readAny();
        } else {
            if (this.f78436d == null) {
                this.f78436d = jSONReader.getObjectReader(this.f78434b);
            }
            readObject2 = this.f78436d.readObject(jSONReader, type, obj, j);
        }
        return new AbstractMap.SimpleEntry(readObject, readObject2);
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object readObject(JSONReader jSONReader, Type type, Object obj, long j) {
        Object readObject;
        jSONReader.nextIfObjectStart();
        Object readAny = jSONReader.readAny();
        jSONReader.nextIfMatch(':');
        if (this.f78434b == null) {
            readObject = jSONReader.readAny();
        } else {
            if (this.f78436d == null) {
                this.f78436d = jSONReader.getObjectReader(this.f78434b);
            }
            readObject = this.f78436d.readObject(jSONReader, type, obj, j);
        }
        jSONReader.nextIfObjectEnd();
        jSONReader.nextIfComma();
        return new AbstractMap.SimpleEntry(readAny, readObject);
    }
}
