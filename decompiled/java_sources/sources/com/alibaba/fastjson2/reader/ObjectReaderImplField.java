package com.alibaba.fastjson2.reader;

import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.util.Fnv;
import com.alibaba.fastjson2.util.TypeUtils;
import java.lang.reflect.Field;
import java.lang.reflect.Type;

/* loaded from: classes3.dex */
public class ObjectReaderImplField implements ObjectReader {

    /* renamed from: a */
    public static final long f12673a = Fnv.hashCode64("declaringClass");

    /* renamed from: b */
    public static final long f12674b = Fnv.hashCode64("name");

    /* renamed from: a */
    public final Field m7447a(long j, String str, String str2) {
        if (!((j & JSONReader.Feature.SupportClassForName.mask) != 0)) {
            throw new JSONException("ClassForName not support");
        }
        try {
            return TypeUtils.loadClass(str2).getDeclaredField(str);
        } catch (NoSuchFieldException e) {
            throw new JSONException("method not found", e);
        }
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object readArrayMappingJSONBObject(JSONReader jSONReader, Type type, Object obj, long j) {
        if (jSONReader.startArray() == 2) {
            return m7447a(j | jSONReader.context.features, jSONReader.readString(), jSONReader.readString());
        }
        throw new JSONException("not support input " + jSONReader.info());
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object readArrayMappingObject(JSONReader jSONReader, Type type, Object obj, long j) {
        if (!jSONReader.nextIfArrayStart()) {
            throw new JSONException("not support input " + jSONReader.info());
        }
        String readString = jSONReader.readString();
        String readString2 = jSONReader.readString();
        if (jSONReader.nextIfArrayEnd()) {
            jSONReader.nextIfComma();
            return m7447a(jSONReader.context.features | j, readString2, readString);
        }
        throw new JSONException("not support input " + jSONReader.info());
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object readJSONBObject(JSONReader jSONReader, Type type, Object obj, long j) {
        return readObject(jSONReader, type, obj, j);
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object readObject(JSONReader jSONReader, Type type, Object obj, long j) {
        if (!jSONReader.nextIfObjectStart()) {
            if (jSONReader.isSupportBeanArray(j)) {
                return jSONReader.jsonb ? readArrayMappingJSONBObject(jSONReader, type, obj, j) : readArrayMappingObject(jSONReader, type, obj, j);
            }
            throw new JSONException("not support input " + jSONReader.info());
        }
        String str = null;
        String str2 = null;
        while (!jSONReader.nextIfObjectEnd()) {
            long readFieldNameHashCode = jSONReader.readFieldNameHashCode();
            if (readFieldNameHashCode == f12673a) {
                str2 = jSONReader.readString();
            } else if (readFieldNameHashCode == f12674b) {
                str = jSONReader.readString();
            } else {
                jSONReader.skipValue();
            }
        }
        if (!jSONReader.jsonb) {
            jSONReader.nextIfComma();
        }
        return m7447a(j | jSONReader.context.features, str, str2);
    }
}
