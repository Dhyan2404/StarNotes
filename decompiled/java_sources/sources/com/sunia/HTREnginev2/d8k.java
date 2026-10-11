package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONB;
import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.reader.ObjectReader;
import com.alibaba.fastjson2.util.Fnv;
import com.alibaba.fastjson2.util.IOUtils;
import com.alibaba.fastjson2.util.TypeUtils;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes3.dex */
public class d8k implements ObjectReader {

    /* renamed from: a */
    public final Type f67610a;

    /* renamed from: b */
    public final Class f67611b;

    /* renamed from: c */
    public final Type f67612c;

    /* renamed from: d */
    public final Class<?> f67613d;

    /* renamed from: e */
    public ObjectReader f67614e;

    /* renamed from: f */
    public final String f67615f;

    /* renamed from: g */
    public final long f67616g;

    public d8k(GenericArrayType genericArrayType) {
        this.f67610a = genericArrayType;
        this.f67611b = TypeUtils.getClass(genericArrayType);
        Type genericComponentType = genericArrayType.getGenericComponentType();
        this.f67612c = genericComponentType;
        Class<?> mapping = TypeUtils.getMapping(genericComponentType);
        this.f67613d = mapping;
        String str = IteratorUtils.f104923a + TypeUtils.getTypeName((Class) mapping);
        this.f67615f = str;
        this.f67616g = Fnv.hashCode64(str);
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object readJSONBObject(JSONReader jSONReader, Type type, Object obj, long j) {
        if (jSONReader.nextIfMatch(JSONB.Constants.BC_TYPED_ANY) && jSONReader.readTypeHashCode() != this.f67616g) {
            throw new JSONException("not support input typeName " + jSONReader.getString());
        }
        int startArray = jSONReader.startArray();
        if (startArray > 0 && this.f67614e == null) {
            this.f67614e = jSONReader.context.getObjectReader(this.f67612c);
        }
        Object newInstance = Array.newInstance(this.f67613d, startArray);
        for (int i = 0; i < startArray; i++) {
            Array.set(newInstance, i, this.f67614e.readJSONBObject(jSONReader, this.f67612c, null, 0L));
        }
        return newInstance;
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object readObject(JSONReader jSONReader, Type type, Object obj, long j) {
        Object readString;
        if (this.f67614e == null) {
            this.f67614e = jSONReader.context.getObjectReader(this.f67612c);
        }
        if (jSONReader.jsonb) {
            return readJSONBObject(jSONReader, type, obj, 0L);
        }
        if (jSONReader.readIfNull()) {
            return null;
        }
        char current = jSONReader.current();
        if (current == '\"') {
            if ((type instanceof GenericArrayType) && ((GenericArrayType) type).getGenericComponentType() == Byte.TYPE) {
                return (jSONReader.features(j) & JSONReader.Feature.Base64StringAsByteArray.mask) != 0 ? IOUtils.decodeBase64(jSONReader.readString()) : jSONReader.readBinary();
            }
            if (jSONReader.readString().isEmpty()) {
                return null;
            }
            throw new JSONException(jSONReader.info());
        }
        ArrayList arrayList = new ArrayList();
        if (current != '[') {
            throw new JSONException(jSONReader.info());
        }
        jSONReader.next();
        while (!jSONReader.nextIfArrayEnd()) {
            ObjectReader objectReader = this.f67614e;
            if (objectReader != null) {
                readString = objectReader.readObject(jSONReader, this.f67612c, null, 0L);
            } else {
                if (this.f67612c != String.class) {
                    throw new JSONException(jSONReader.info("TODO : " + this.f67612c));
                }
                readString = jSONReader.readString();
            }
            arrayList.add(readString);
            jSONReader.nextIfComma();
        }
        jSONReader.nextIfComma();
        Object newInstance = Array.newInstance(this.f67613d, arrayList.size());
        for (int i = 0; i < arrayList.size(); i++) {
            Array.set(newInstance, i, arrayList.get(i));
        }
        return newInstance;
    }
}
