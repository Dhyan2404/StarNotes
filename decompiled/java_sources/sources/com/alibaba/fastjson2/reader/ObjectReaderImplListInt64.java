package com.alibaba.fastjson2.reader;

import com.alibaba.fastjson2.JSONArray;
import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.util.Fnv;
import com.alibaba.fastjson2.util.TypeUtils;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.function.Function;

/* loaded from: classes3.dex */
public final class ObjectReaderImplListInt64 implements ObjectReader {

    /* renamed from: a */
    public final Class f12705a;

    /* renamed from: b */
    public final Class f12706b;

    /* renamed from: c */
    public final long f12707c;

    public ObjectReaderImplListInt64(Class cls, Class cls2) {
        this.f12705a = cls;
        this.f12706b = cls2;
        this.f12707c = Fnv.hashCode64(TypeUtils.getTypeName(cls2));
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object createInstance(long j) {
        Class cls = this.f12706b;
        if (cls == ArrayList.class) {
            return new ArrayList();
        }
        if (cls == LinkedList.class) {
            return new LinkedList();
        }
        try {
            return cls.newInstance();
        } catch (IllegalAccessException | InstantiationException unused) {
            throw new JSONException("create list error, type " + this.f12706b);
        }
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object readJSONBObject(JSONReader jSONReader, Type type, Object obj, long j) {
        Function buildFunction;
        if (jSONReader.nextIfNull()) {
            return null;
        }
        Class cls = this.f12705a;
        ObjectReader checkAutoType = jSONReader.checkAutoType(cls, this.f12707c, j);
        if (checkAutoType != null) {
            cls = checkAutoType.getObjectClass();
        }
        Collection arrayList = cls == ArrayList.class ? new ArrayList() : cls == JSONArray.class ? new JSONArray() : (cls == null || cls == this.f12705a) ? (Collection) createInstance(j | jSONReader.context.features) : (Collection) checkAutoType.createInstance(j);
        int startArray = jSONReader.startArray();
        for (int i = 0; i < startArray; i++) {
            arrayList.add(jSONReader.readInt64());
        }
        return (checkAutoType == null || (buildFunction = checkAutoType.getBuildFunction()) == null) ? arrayList : (Collection) buildFunction.apply(arrayList);
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object readObject(JSONReader jSONReader, Type type, Object obj, long j) {
        if (jSONReader.jsonb) {
            return readJSONBObject(jSONReader, type, obj, 0L);
        }
        if (jSONReader.readIfNull()) {
            return null;
        }
        if (jSONReader.isString()) {
            Collection collection = (Collection) createInstance(j | jSONReader.context.features);
            String readString = jSONReader.readString();
            if (readString.indexOf(44) != -1) {
                for (String str : readString.split(",")) {
                    collection.add(Long.valueOf(Long.parseLong(str)));
                }
            } else {
                collection.add(Long.valueOf(Long.parseLong(readString)));
            }
            jSONReader.nextIfComma();
            return collection;
        }
        boolean nextIfSet = jSONReader.nextIfSet();
        if (jSONReader.current() != '[') {
            throw new JSONException(jSONReader.info("format error"));
        }
        jSONReader.next();
        Collection linkedHashSet = (nextIfSet && this.f12706b == Collection.class) ? new LinkedHashSet() : (Collection) createInstance(j | jSONReader.context.features);
        while (!jSONReader.isEnd()) {
            if (jSONReader.nextIfArrayEnd()) {
                jSONReader.nextIfComma();
                return linkedHashSet;
            }
            if (jSONReader.current() == ',') {
                throw new JSONException(jSONReader.info("illegal input error"));
            }
            linkedHashSet.add(jSONReader.readInt64());
        }
        throw new JSONException(jSONReader.info("illegal input error"));
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object createInstance(Collection collection) {
        Collection collection2 = (Collection) createInstance(0L);
        Iterator it2 = collection.iterator();
        while (it2.hasNext()) {
            collection2.add(TypeUtils.toLong(it2.next()));
        }
        return collection2;
    }
}
