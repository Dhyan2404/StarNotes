package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONArray;
import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONFactory;
import com.alibaba.fastjson2.JSONPath;
import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.reader.ObjectArrayReader;
import com.alibaba.fastjson2.reader.ObjectReader;
import com.alibaba.fastjson2.util.Fnv;
import com.alibaba.fastjson2.util.TypeUtils;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.lang.reflect.Array;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.function.Function;

/* loaded from: classes3.dex */
public final class b7k extends bak {

    /* renamed from: a */
    public final Class f65472a;

    /* renamed from: b */
    public final Class f65473b;

    /* renamed from: c */
    public final long f65474c;

    /* renamed from: d */
    public final String f65475d;

    /* renamed from: e */
    public final long f65476e;

    public b7k(Class cls) {
        super(cls);
        Class<?> componentType = cls.getComponentType();
        this.f65472a = componentType;
        String typeName = TypeUtils.getTypeName((Class) componentType);
        this.f65474c = Fnv.hashCode64(typeName);
        String str = '[' + typeName;
        this.f65475d = str;
        this.f65476e = Fnv.hashCode64(str);
        this.f65473b = TypeUtils.getClass(componentType);
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object createInstance(Collection collection) {
        Class<?> cls;
        Class<?> cls2;
        Function typeConvert;
        Object[] objArr = (Object[]) Array.newInstance((Class<?>) this.f65473b, collection.size());
        Iterator it2 = collection.iterator();
        int i = 0;
        while (it2.hasNext()) {
            Object next = it2.next();
            if (next != null && (cls = next.getClass()) != (cls2 = this.f65472a) && (typeConvert = JSONFactory.defaultObjectReaderProvider.getTypeConvert(cls, cls2)) != null) {
                next = typeConvert.apply(next);
            }
            if (!this.f65472a.isInstance(next)) {
                ObjectReader objectReader = JSONFactory.defaultObjectReaderProvider.getObjectReader(this.f65472a);
                if (next instanceof Map) {
                    next = objectReader.createInstance((Map) next, new JSONReader.Feature[0]);
                } else if (next instanceof Collection) {
                    next = objectReader.createInstance((Collection) next);
                } else if (next instanceof Object[]) {
                    next = objectReader.createInstance(JSONArray.m7268of((Object[]) next));
                } else if (next != null) {
                    Class<?> cls3 = next.getClass();
                    if (!cls3.isArray()) {
                        throw new JSONException("component type not match, expect " + this.f65472a.getName() + ", but " + cls3);
                    }
                    int length = Array.getLength(next);
                    JSONArray jSONArray = new JSONArray(length);
                    for (int i2 = 0; i2 < length; i2++) {
                        jSONArray.add(Array.get(next, i2));
                    }
                    next = objectReader.createInstance(jSONArray);
                } else {
                    continue;
                }
            }
            objArr[i] = next;
            i++;
        }
        return objArr;
    }

    @Override // com.sunia.HTREnginev2.bak, com.alibaba.fastjson2.reader.ObjectReader
    public Object readJSONBObject(JSONReader jSONReader, Type type, Object obj, long j) {
        Object readJSONBObject;
        if (jSONReader.getType() == -110) {
            jSONReader.next();
            long readTypeHashCode = jSONReader.readTypeHashCode();
            if (readTypeHashCode != ObjectArrayReader.TYPE_HASH_CODE && readTypeHashCode != this.f65476e) {
                if (!jSONReader.isSupportAutoType(j)) {
                    throw new JSONException(jSONReader.info("not support autotype : " + jSONReader.getString()));
                }
                ObjectReader objectReaderAutoType = jSONReader.getObjectReaderAutoType(readTypeHashCode, this.objectClass, j);
                if (objectReaderAutoType != null) {
                    return objectReaderAutoType.readObject(jSONReader, type, obj, j);
                }
                throw new JSONException(jSONReader.info("auotype not support : " + jSONReader.getString()));
            }
        }
        int startArray = jSONReader.startArray();
        if (startArray == -1) {
            return null;
        }
        Object[] objArr = (Object[]) Array.newInstance((Class<?>) this.f65473b, startArray);
        for (int i = 0; i < startArray; i++) {
            if (jSONReader.isReference()) {
                String readReference = jSONReader.readReference();
                if (Constants.ATTRVAL_PARENT.equals(readReference)) {
                    readJSONBObject = objArr;
                } else {
                    jSONReader.addResolveTask(objArr, i, JSONPath.m7282of(readReference));
                    readJSONBObject = null;
                }
            } else {
                ObjectReader checkAutoType = jSONReader.checkAutoType(this.f65473b, this.f65474c, j);
                readJSONBObject = checkAutoType != null ? checkAutoType.readJSONBObject(jSONReader, null, null, j) : jSONReader.read(this.f65472a);
            }
            objArr[i] = readJSONBObject;
        }
        return objArr;
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object readObject(JSONReader jSONReader, Type type, Object obj, long j) {
        if (jSONReader.jsonb) {
            return readJSONBObject(jSONReader, type, obj, 0L);
        }
        if (jSONReader.readIfNull()) {
            return null;
        }
        if (!jSONReader.nextIfArrayStart()) {
            if (jSONReader.current() == '\"' && jSONReader.readString().isEmpty()) {
                return null;
            }
            throw new JSONException(jSONReader.info("TODO"));
        }
        Object[] objArr = (Object[]) Array.newInstance((Class<?>) this.f65472a, 16);
        int i = 0;
        while (!jSONReader.nextIfArrayEnd()) {
            int i2 = i + 1;
            if (i2 - objArr.length > 0) {
                int length = objArr.length;
                int i3 = length + (length >> 1);
                if (i3 - i2 < 0) {
                    i3 = i2;
                }
                objArr = Arrays.copyOf(objArr, i3);
            }
            objArr[i] = jSONReader.read(this.f65472a);
            jSONReader.nextIfComma();
            i = i2;
        }
        jSONReader.nextIfComma();
        return Arrays.copyOf(objArr, i);
    }
}
