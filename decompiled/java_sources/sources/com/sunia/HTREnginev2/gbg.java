package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONFactory;
import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.reader.FieldReaderObject;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.Collections;
import java.util.Map;

/* loaded from: classes3.dex */
public class gbg<T> extends FieldReaderObject<T> {
    public gbg(String str, Type type, Class cls, int i, long j, String str2, Method method, Field field) {
        super(str, type, cls, i, j, str2, null, null, method, field, null);
        Type type2;
        if (type instanceof ParameterizedType) {
            Type[] actualTypeArguments = ((ParameterizedType) type).getActualTypeArguments();
            if (actualTypeArguments.length > 0) {
                type2 = actualTypeArguments[0];
                this.f12475l = type2;
            }
        }
        type2 = null;
        this.f12475l = type2;
    }

    @Override // com.alibaba.fastjson2.reader.FieldReaderObject, com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, Object obj) {
        if (obj == null) {
            return;
        }
        try {
            Collection collection = (Collection) this.method.invoke(t, new Object[0]);
            if (collection == Collections.EMPTY_LIST || collection == Collections.EMPTY_SET || collection == null || collection.equals(obj)) {
                return;
            }
            String name = collection.getClass().getName();
            if ("java.util.Collections$UnmodifiableRandomAccessList".equals(name) || "java.util.Arrays$ArrayList".equals(name) || "java.util.Collections$SingletonList".equals(name) || obj == collection) {
                return;
            }
            for (Object obj2 : (Collection) obj) {
                if (obj2 == null) {
                    collection.add(obj2);
                } else {
                    if (obj2 instanceof Map) {
                        Type type = this.f12475l;
                        if ((type instanceof Class) && !((Class) type).isAssignableFrom(obj2.getClass())) {
                            if (this.f12477n == null) {
                                this.f12477n = JSONFactory.defaultObjectReaderProvider.getObjectReader(this.f12475l);
                            }
                            obj2 = this.f12477n.createInstance((Map) obj2, 0L);
                        }
                    }
                    collection.add(obj2);
                }
            }
        } catch (Exception e) {
            throw new JSONException("set " + this.fieldName + " error", e);
        }
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public boolean isReadOnly() {
        return true;
    }

    @Override // com.alibaba.fastjson2.reader.FieldReaderObject, com.alibaba.fastjson2.reader.FieldReader
    public void readFieldValue(JSONReader jSONReader, T t) {
        if (this.initReader == null) {
            this.initReader = jSONReader.context.getObjectReader(this.fieldType);
        }
        accept((gbg<T>) t, jSONReader.jsonb ? this.initReader.readJSONBObject(jSONReader, this.fieldType, this.fieldName, 0L) : this.initReader.readObject(jSONReader, this.fieldType, this.fieldName, 0L));
    }
}
