package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONB;
import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.util.Fnv;
import com.alibaba.fastjson2.util.TypeUtils;
import com.alibaba.fastjson2.writer.ObjectWriter;
import com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl;
import com.alibaba.fastjson2.writer.ObjectWriterProvider;
import java.lang.reflect.Type;

/* loaded from: classes3.dex */
public final class ibk extends ObjectWriterPrimitiveImpl {

    /* renamed from: e */
    public static final ibk f73086e = new ibk(Object.class);

    /* renamed from: a */
    public final byte[] f73087a;

    /* renamed from: b */
    public final long f73088b;

    /* renamed from: c */
    public final Type f73089c;

    /* renamed from: d */
    public volatile ObjectWriter f73090d;

    public ibk(Type type) {
        this.f73089c = type;
        if (type == Object.class) {
            this.f73087a = JSONB.toBytes("[O");
            this.f73088b = Fnv.hashCode64("[0");
            return;
        }
        String str = '[' + TypeUtils.getTypeName((Class) type);
        this.f73087a = JSONB.toBytes(str);
        this.f73088b = Fnv.hashCode64(str);
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void write(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        boolean z;
        ObjectWriter objectWriter;
        Class<?> cls;
        String path;
        if (jSONWriter.jsonb) {
            writeJSONB(jSONWriter, obj, obj2, type, j);
            return;
        }
        if (obj == null) {
            jSONWriter.writeArrayNull();
            return;
        }
        boolean isRefDetect = jSONWriter.isRefDetect();
        Object[] objArr = (Object[]) obj;
        jSONWriter.startArray();
        Class<?> cls2 = null;
        ObjectWriter objectWriter2 = null;
        for (int i = 0; i < objArr.length; i++) {
            if (i != 0) {
                jSONWriter.writeComma();
            }
            Object obj3 = objArr[i];
            if (obj3 == null) {
                jSONWriter.writeNull();
            } else {
                Class<?> cls3 = obj3.getClass();
                if (cls3 == cls2) {
                    z = isRefDetect;
                    cls = cls2;
                    objectWriter = objectWriter2;
                } else {
                    boolean isRefDetect2 = jSONWriter.isRefDetect();
                    ObjectWriter objectWriter3 = jSONWriter.getObjectWriter(cls3);
                    if (isRefDetect2) {
                        isRefDetect2 = !ObjectWriterProvider.isNotReferenceDetect(cls3);
                    }
                    z = isRefDetect2;
                    objectWriter = objectWriter3;
                    cls = cls3;
                }
                if (!z || (path = jSONWriter.setPath(i, obj3)) == null) {
                    objectWriter.write(jSONWriter, obj3, Integer.valueOf(i), this.f73089c, j);
                    if (z) {
                        jSONWriter.popPath(obj3);
                    }
                } else {
                    jSONWriter.writeReference(path);
                    jSONWriter.popPath(obj3);
                }
                isRefDetect = z;
                cls2 = cls;
                objectWriter2 = objectWriter;
            }
        }
        jSONWriter.endArray();
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void writeJSONB(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        String path;
        if (obj == null) {
            jSONWriter.writeArrayNull();
            return;
        }
        boolean isRefDetect = jSONWriter.isRefDetect();
        Object[] objArr = (Object[]) obj;
        if (jSONWriter.isWriteTypeInfo(obj, type)) {
            jSONWriter.writeTypeName(this.f73087a, this.f73088b);
        }
        jSONWriter.startArray(objArr.length);
        Class<?> cls = null;
        boolean z = isRefDetect;
        ObjectWriter objectWriter = null;
        for (int i = 0; i < objArr.length; i++) {
            Object obj3 = objArr[i];
            if (obj3 == null) {
                jSONWriter.writeNull();
            } else {
                Class<?> cls2 = obj3.getClass();
                if (cls2 != cls) {
                    z = jSONWriter.isRefDetect();
                    objectWriter = jSONWriter.getObjectWriter(cls2);
                    if (z) {
                        z = !ObjectWriterProvider.isNotReferenceDetect(cls2);
                    }
                    cls = cls2;
                }
                if (!z || (path = jSONWriter.setPath(i, obj3)) == null) {
                    objectWriter.writeJSONB(jSONWriter, obj3, Integer.valueOf(i), this.f73089c, 0L);
                    if (z) {
                        jSONWriter.popPath(obj3);
                    }
                } else {
                    jSONWriter.writeReference(path);
                    jSONWriter.popPath(obj3);
                }
            }
        }
    }
}
