package com.alibaba.fastjson2.reader;

import com.alibaba.fastjson2.JSONArray;
import com.alibaba.fastjson2.JSONB;
import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.util.Fnv;
import com.alibaba.fastjson2.util.TypeUtils;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.function.BiConsumer;
import java.util.function.Function;

/* loaded from: classes3.dex */
public class FieldReaderList<T, V> extends FieldReaderObject<T> {

    /* renamed from: o */
    public final long f12479o;

    /* renamed from: p */
    public final long f12480p;

    public FieldReaderList(String str, Type type, Class cls, Type type2, Class cls2, int i, long j, String str2, Locale locale, Object obj, Method method, Field field, BiConsumer biConsumer) {
        super(str, type, cls, i, j, str2, locale, obj, method, field, biConsumer);
        this.f12475l = type2;
        this.f12476m = cls2;
        this.f12480p = cls2 == null ? 0L : Fnv.hashCode64(cls2.getName());
        this.f12479o = cls != null ? Fnv.hashCode64(TypeUtils.getTypeName(cls)) : 0L;
        if (str2 == null || type2 != Date.class) {
            return;
        }
        this.f12477n = new ObjectReaderImplDate(str2, locale);
    }

    public void accept(T t, JSONArray jSONArray) {
        accept((FieldReaderList<T, V>) t, (Object) jSONArray);
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public ObjectReader checkObjectAutoType(JSONReader jSONReader) {
        if (!jSONReader.nextIfMatch(JSONB.Constants.BC_TYPED_ANY)) {
            return null;
        }
        long readTypeHashCode = jSONReader.readTypeHashCode();
        long features = jSONReader.features(this.features);
        JSONReader.Context context = jSONReader.context;
        JSONReader.AutoTypeBeforeHandler contextAutoTypeBeforeHandler = context.getContextAutoTypeBeforeHandler();
        if (contextAutoTypeBeforeHandler != null) {
            Class<?> apply = contextAutoTypeBeforeHandler.apply(readTypeHashCode, this.fieldClass, features);
            if (apply == null) {
                apply = contextAutoTypeBeforeHandler.apply(jSONReader.getString(), this.fieldClass, features);
            }
            if (apply != null) {
                return context.getObjectReader(this.fieldClass);
            }
        }
        if (!jSONReader.isSupportAutoType(features)) {
            if (jSONReader.isArray() && !jSONReader.isEnabled(JSONReader.Feature.ErrorOnNotSupportAutoType)) {
                return getObjectReader(jSONReader);
            }
            throw new JSONException(jSONReader.info("autoType not support input " + jSONReader.getString()));
        }
        ObjectReader objectReaderAutoType = jSONReader.getObjectReaderAutoType(readTypeHashCode, this.fieldClass, features);
        if (objectReaderAutoType instanceof ObjectReaderImplList) {
            ObjectReaderImplList objectReaderImplList = (ObjectReaderImplList) objectReaderAutoType;
            objectReaderAutoType = new ObjectReaderImplList(this.fieldType, this.fieldClass, objectReaderImplList.f12695c, this.f12475l, objectReaderImplList.f12701i);
        }
        if (objectReaderAutoType != null) {
            return objectReaderAutoType;
        }
        throw new JSONException(jSONReader.info("auotype not support : " + jSONReader.getString()));
    }

    public Collection<V> createList(JSONReader.Context context) {
        Class cls = this.fieldClass;
        return (cls == List.class || cls == Collection.class || cls == ArrayList.class) ? new ArrayList() : (Collection) getObjectReader(context).createInstance();
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public long getItemClassHash() {
        return this.f12480p;
    }

    @Override // com.alibaba.fastjson2.reader.FieldReaderObject, com.alibaba.fastjson2.reader.FieldReader
    public void readFieldValue(JSONReader jSONReader, T t) {
        Object readObject;
        if (jSONReader.jsonb) {
            readFieldValueJSONB(jSONReader, t);
            return;
        }
        Function function = null;
        if (jSONReader.nextIfNull()) {
            accept((FieldReaderList<T, V>) t, (JSONArray) null);
            return;
        }
        JSONReader.Context context = jSONReader.context;
        ObjectReader objectReader = getObjectReader(context);
        ObjectReader objectReader2 = this.initReader;
        if (objectReader2 != null) {
            function = objectReader2.getBuildFunction();
        } else if (objectReader instanceof ObjectReaderImplList) {
            function = objectReader.getBuildFunction();
        }
        char current = jSONReader.current();
        if (current == '[') {
            ObjectReader itemObjectReader = getItemObjectReader(context);
            Collection<V> createList = createList(context);
            jSONReader.next();
            int i = 0;
            while (!jSONReader.nextIfArrayEnd()) {
                if (jSONReader.isReference()) {
                    String readReference = jSONReader.readReference();
                    if (Constants.ATTRVAL_PARENT.equals(readReference)) {
                        readObject = createList;
                    } else {
                        addResolveTask(jSONReader, (List) createList, i, readReference);
                        i++;
                    }
                } else {
                    readObject = itemObjectReader.readObject(jSONReader, null, null, 0L);
                }
                createList.add(readObject);
                jSONReader.nextIfComma();
                i++;
            }
            if (function != null) {
                createList = (Collection<V>) ((Collection) function.apply(createList));
            }
            accept((FieldReaderList<T, V>) t, createList);
            jSONReader.nextIfComma();
            return;
        }
        if (current == '{' && (getItemObjectReader(context) instanceof ObjectReaderBean)) {
            Object readObject2 = this.f12477n.readObject(jSONReader, null, null, this.features);
            Collection collection = (Collection) objectReader.createInstance(this.features);
            collection.add(readObject2);
            if (function != null) {
                collection = (Collection) function.apply(collection);
            }
            accept((FieldReaderList<T, V>) t, collection);
            jSONReader.nextIfComma();
            return;
        }
        accept((FieldReaderList<T, V>) t, objectReader.readObject(jSONReader, null, null, this.features));
    }

    @Override // com.alibaba.fastjson2.reader.FieldReaderObject, com.alibaba.fastjson2.reader.FieldReader
    public Object readFieldValue(JSONReader jSONReader) {
        Function typeConvert;
        int i = 0;
        if (jSONReader.jsonb) {
            int startArray = jSONReader.startArray();
            Object[] objArr = new Object[startArray];
            ObjectReader itemObjectReader = getItemObjectReader(jSONReader.context);
            while (i < startArray) {
                objArr[i] = itemObjectReader.readObject(jSONReader, null, null, 0L);
                i++;
            }
            return Arrays.asList(objArr);
        }
        if (jSONReader.current() == '[') {
            JSONReader.Context context = jSONReader.context;
            ObjectReader itemObjectReader2 = getItemObjectReader(context);
            Collection<V> createList = createList(context);
            jSONReader.next();
            while (!jSONReader.nextIfArrayEnd()) {
                createList.add(itemObjectReader2.readObject(jSONReader, null, null, 0L));
                jSONReader.nextIfComma();
            }
            jSONReader.nextIfComma();
            return createList;
        }
        if (jSONReader.isString()) {
            String readString = jSONReader.readString();
            Type type = this.f12475l;
            if ((type instanceof Class) && Number.class.isAssignableFrom((Class) type) && (typeConvert = jSONReader.context.provider.getTypeConvert(String.class, this.f12475l)) != null) {
                Collection<V> createList2 = createList(jSONReader.context);
                if (readString.indexOf(44) != -1) {
                    String[] split = readString.split(",");
                    int length = split.length;
                    while (i < length) {
                        createList2.add(typeConvert.apply(split[i]));
                        i++;
                    }
                }
                return createList2;
            }
        }
        throw new JSONException(jSONReader.info("TODO : " + getClass()));
    }
}
