package com.alibaba.fastjson2.reader;

import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.util.Fnv;
import com.alibaba.fastjson2.util.TypeUtils;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.List;

/* loaded from: classes3.dex */
public class ObjectReaderImplMethod implements ObjectReader<Method> {

    /* renamed from: a */
    public static final long f12723a = Fnv.hashCode64("declaringClass");

    /* renamed from: b */
    public static final long f12724b = Fnv.hashCode64("name");

    /* renamed from: c */
    public static final long f12725c = Fnv.hashCode64("parameterTypes");

    /* renamed from: a */
    public final Method m7483a(long j, String str, String str2, List<String> list) {
        Class<?>[] clsArr;
        long j2 = j & JSONReader.Feature.SupportClassForName.mask;
        if (!(j2 != 0)) {
            throw new JSONException("ClassForName not support");
        }
        Class loadClass = TypeUtils.loadClass(str2);
        if (list == null) {
            clsArr = new Class[0];
        } else {
            Class<?>[] clsArr2 = new Class[list.size()];
            for (int i = 0; i < list.size(); i++) {
                clsArr2[i] = TypeUtils.loadClass(list.get(i));
            }
            clsArr = clsArr2;
        }
        try {
            return loadClass.getDeclaredMethod(str, clsArr);
        } catch (NoSuchMethodException e) {
            throw new JSONException("method not found", e);
        }
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Method readArrayMappingJSONBObject(JSONReader jSONReader, Type type, Object obj, long j) {
        if (jSONReader.startArray() == 3) {
            return m7483a(jSONReader.context.features | j, jSONReader.readString(), jSONReader.readString(), jSONReader.readArray(String.class));
        }
        throw new JSONException("not support input " + jSONReader.info());
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Method readArrayMappingObject(JSONReader jSONReader, Type type, Object obj, long j) {
        if (jSONReader.nextIfArrayStart()) {
            String readString = jSONReader.readString();
            String readString2 = jSONReader.readString();
            List readArray = jSONReader.readArray(String.class);
            if (jSONReader.nextIfArrayEnd()) {
                jSONReader.nextIfComma();
                return m7483a(jSONReader.context.features | j, readString2, readString, readArray);
            }
            throw new JSONException("not support input " + jSONReader.info());
        }
        throw new JSONException("not support input " + jSONReader.info());
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Method readJSONBObject(JSONReader jSONReader, Type type, Object obj, long j) {
        return readObject(jSONReader, type, obj, j);
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Method readObject(JSONReader jSONReader, Type type, Object obj, long j) {
        if (!jSONReader.nextIfObjectStart()) {
            if (jSONReader.isSupportBeanArray(j)) {
                if (jSONReader.jsonb) {
                    return readArrayMappingJSONBObject(jSONReader, type, obj, j);
                }
                return readArrayMappingObject(jSONReader, type, obj, j);
            }
            throw new JSONException("not support input " + jSONReader.info());
        }
        String str = null;
        String str2 = null;
        List list = null;
        while (!jSONReader.nextIfObjectEnd()) {
            long readFieldNameHashCode = jSONReader.readFieldNameHashCode();
            if (readFieldNameHashCode == f12723a) {
                str2 = jSONReader.readString();
            } else if (readFieldNameHashCode == f12724b) {
                str = jSONReader.readString();
            } else if (readFieldNameHashCode == f12725c) {
                list = jSONReader.readArray(String.class);
            } else {
                jSONReader.skipValue();
            }
        }
        if (!jSONReader.jsonb) {
            jSONReader.nextIfComma();
        }
        return m7483a(jSONReader.context.features | j, str, str2, list);
    }
}
