package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONPath;
import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.reader.ObjectReader;
import com.alibaba.fastjson2.util.MultiType;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.lang.reflect.Type;
import java.util.Collection;

/* loaded from: classes3.dex */
public final class a7k implements ObjectReader {

    /* renamed from: a */
    public final Type[] f64402a;

    /* renamed from: b */
    public final ObjectReader[] f64403b;

    public a7k(MultiType multiType) {
        int size = multiType.size();
        Type[] typeArr = new Type[size];
        for (int i = 0; i < multiType.size(); i++) {
            typeArr[i] = multiType.getType(i);
        }
        this.f64402a = typeArr;
        this.f64403b = new ObjectReader[size];
    }

    /* renamed from: a */
    public ObjectReader m52977a(JSONReader jSONReader, int i) {
        ObjectReader objectReader = this.f64403b[i];
        if (objectReader != null) {
            return objectReader;
        }
        ObjectReader objectReader2 = jSONReader.getObjectReader(this.f64402a[i]);
        this.f64403b[i] = objectReader2;
        return objectReader2;
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object createInstance(Collection collection) {
        return new Object[this.f64402a.length];
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object readJSONBObject(JSONReader jSONReader, Type type, Object obj, long j) {
        Object readObject;
        int startArray = jSONReader.startArray();
        if (startArray == -1) {
            return null;
        }
        Object[] objArr = new Object[this.f64402a.length];
        for (int i = 0; i < startArray; i++) {
            if (jSONReader.isReference()) {
                String readReference = jSONReader.readReference();
                if (Constants.ATTRVAL_PARENT.equals(readReference)) {
                    readObject = objArr;
                } else {
                    jSONReader.addResolveTask(objArr, i, JSONPath.m7282of(readReference));
                    readObject = null;
                }
            } else {
                readObject = m52977a(jSONReader, i).readObject(jSONReader, this.f64402a[i], Integer.valueOf(i), j);
            }
            objArr[i] = readObject;
        }
        return objArr;
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object readObject(JSONReader jSONReader, Type type, Object obj, long j) {
        Object readObject;
        if (jSONReader.jsonb) {
            return readJSONBObject(jSONReader, type, obj, 0L);
        }
        if (jSONReader.nextIfNullOrEmptyString()) {
            return null;
        }
        Object[] objArr = new Object[this.f64402a.length];
        if (!jSONReader.nextIfArrayStart()) {
            throw new JSONException(jSONReader.info("TODO"));
        }
        int i = 0;
        while (!jSONReader.nextIfArrayEnd()) {
            if (jSONReader.isReference()) {
                String readReference = jSONReader.readReference();
                if (Constants.ATTRVAL_PARENT.equals(readReference)) {
                    readObject = objArr;
                } else {
                    jSONReader.addResolveTask(objArr, i, JSONPath.m7282of(readReference));
                    readObject = null;
                }
            } else {
                readObject = m52977a(jSONReader, i).readObject(jSONReader, this.f64402a[i], Integer.valueOf(i), j);
            }
            objArr[i] = readObject;
            jSONReader.nextIfComma();
            i++;
        }
        jSONReader.nextIfComma();
        return objArr;
    }
}
