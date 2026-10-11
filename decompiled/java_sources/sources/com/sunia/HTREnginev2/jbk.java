package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONB;
import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.util.Fnv;
import com.alibaba.fastjson2.util.TypeUtils;
import com.alibaba.fastjson2.writer.ObjectWriter;
import com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl;
import com.alibaba.fastjson2.writer.ObjectWriterProvider;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.text.DecimalFormat;

/* loaded from: classes3.dex */
public final class jbk extends ObjectWriterPrimitiveImpl {

    /* renamed from: g */
    public static final jbk f74134g = new jbk(Float.class, null);

    /* renamed from: h */
    public static final jbk f74135h = new jbk(Double.class, null);

    /* renamed from: i */
    public static final jbk f74136i = new jbk(BigDecimal.class, null);

    /* renamed from: a */
    public final byte[] f74137a;

    /* renamed from: b */
    public final long f74138b;

    /* renamed from: c */
    public final Class f74139c;

    /* renamed from: d */
    public volatile ObjectWriter f74140d;

    /* renamed from: e */
    public final DecimalFormat f74141e;

    /* renamed from: f */
    public boolean f74142f;

    public jbk(Class cls, DecimalFormat decimalFormat) {
        this.f74139c = cls;
        this.f74141e = decimalFormat;
        String str = '[' + TypeUtils.getTypeName(cls);
        this.f74137a = JSONB.toBytes(str);
        this.f74138b = Fnv.hashCode64(str);
        this.f74142f = !ObjectWriterProvider.isNotReferenceDetect(cls);
    }

    /* renamed from: a */
    public ObjectWriter m54904a(JSONWriter jSONWriter) {
        ObjectWriter objectWriter = this.f74140d;
        if (objectWriter == null) {
            Class cls = this.f74139c;
            objectWriter = cls == Float.class ? this.f74141e != null ? new jck(this.f74141e) : jck.f74179b : cls == Double.class ? this.f74141e != null ? new gck(this.f74141e) : gck.f70903b : cls == BigDecimal.class ? this.f74141e != null ? new vbk(this.f74141e, null) : vbk.f87339c : jSONWriter.getObjectWriter(cls);
            this.f74140d = objectWriter;
        }
        return objectWriter;
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void write(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
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
        if (isRefDetect) {
            isRefDetect = this.f74142f;
        }
        Object[] objArr = (Object[]) obj;
        jSONWriter.startArray();
        for (int i = 0; i < objArr.length; i++) {
            if (i != 0) {
                jSONWriter.writeComma();
            }
            Object obj3 = objArr[i];
            if (obj3 == null) {
                jSONWriter.writeNull();
            } else {
                ObjectWriter m54904a = m54904a(jSONWriter);
                if (!isRefDetect || (path = jSONWriter.setPath(i, obj3)) == null) {
                    m54904a.write(jSONWriter, obj3, Integer.valueOf(i), this.f74139c, j);
                    if (isRefDetect) {
                        jSONWriter.popPath(obj3);
                    }
                } else {
                    jSONWriter.writeReference(path);
                    jSONWriter.popPath(obj3);
                }
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
        if (isRefDetect) {
            isRefDetect = this.f74142f;
        }
        Object[] objArr = (Object[]) obj;
        if (jSONWriter.isWriteTypeInfo(obj, type)) {
            jSONWriter.writeTypeName(this.f74137a, this.f74138b);
        }
        jSONWriter.startArray(objArr.length);
        for (int i = 0; i < objArr.length; i++) {
            Object obj3 = objArr[i];
            if (obj3 == null) {
                jSONWriter.writeNull();
            } else {
                ObjectWriter m54904a = m54904a(jSONWriter);
                if (!isRefDetect || (path = jSONWriter.setPath(i, obj3)) == null) {
                    m54904a.writeJSONB(jSONWriter, obj3, Integer.valueOf(i), this.f74139c, 0L);
                    if (isRefDetect) {
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
