package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.writer.FieldWriterObject;
import com.alibaba.fastjson2.writer.ObjectWriter;
import com.alibaba.fastjson2.writer.ObjectWriterProvider;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Type;

/* loaded from: classes3.dex */
public abstract class wfg<T> extends FieldWriterObject<T> {

    /* renamed from: w */
    public final Type f88576w;

    /* renamed from: x */
    public final Class f88577x;

    /* renamed from: y */
    public volatile ObjectWriter f88578y;

    /* renamed from: z */
    public final boolean f88579z;

    public wfg(String str, int i, long j, String str2, String str3, Type type, Class cls, Field field, Method method) {
        super(str, i, j, str2, str3, type, cls, field, method);
        this.f88576w = type;
        this.f88577x = cls;
        this.f88579z = !ObjectWriterProvider.isNotReferenceDetect(cls);
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriterObject, com.alibaba.fastjson2.writer.FieldWriter
    public ObjectWriter getObjectWriter(JSONWriter jSONWriter, Class cls) {
        if (this.f88577x != cls) {
            return super.getObjectWriter(jSONWriter, cls);
        }
        if (this.f88578y != null) {
            return this.f88578y;
        }
        ObjectWriter objectWriter = super.getObjectWriter(jSONWriter, cls);
        this.f88578y = objectWriter;
        return objectWriter;
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriterObject, com.alibaba.fastjson2.writer.FieldWriter
    public boolean write(JSONWriter jSONWriter, T t) {
        try {
            Object fieldValue = getFieldValue(t);
            if (fieldValue != null) {
                ObjectWriter objectWriter = getObjectWriter(jSONWriter, this.f88577x);
                writeFieldName(jSONWriter);
                if (jSONWriter.jsonb) {
                    objectWriter.writeJSONB(jSONWriter, fieldValue, this.fieldName, this.f88576w, this.features);
                } else {
                    objectWriter.write(jSONWriter, fieldValue, this.fieldName, this.f88576w, this.features);
                }
                return true;
            }
            if (((this.features | jSONWriter.getFeatures()) & JSONWriter.Feature.WriteNulls.mask) == 0) {
                return false;
            }
            writeFieldName(jSONWriter);
            if (this.f88577x.isArray()) {
                jSONWriter.writeArrayNull();
            } else {
                Class cls = this.f88577x;
                if (cls == StringBuffer.class || cls == StringBuilder.class) {
                    jSONWriter.writeStringNull();
                } else {
                    jSONWriter.writeNull();
                }
            }
            return true;
        } catch (RuntimeException e) {
            if (jSONWriter.isIgnoreErrorGetter()) {
                return false;
            }
            throw e;
        }
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriterObject, com.alibaba.fastjson2.writer.FieldWriter
    public void writeValue(JSONWriter jSONWriter, T t) {
        Object fieldValue = getFieldValue(t);
        if (fieldValue == null) {
            jSONWriter.writeNull();
            return;
        }
        boolean z = this.f88579z && jSONWriter.isRefDetect();
        if (z) {
            if (fieldValue == t) {
                jSONWriter.writeReference(Constants.ATTRVAL_PARENT);
                return;
            }
            String path = jSONWriter.setPath(this.fieldName, fieldValue);
            if (path != null) {
                jSONWriter.writeReference(path);
                jSONWriter.popPath(fieldValue);
                return;
            }
        }
        ObjectWriter objectWriter = getObjectWriter(jSONWriter, this.f88577x);
        boolean z2 = (jSONWriter.getFeatures(this.features) & JSONWriter.Feature.BeanToArray.mask) != 0;
        if (jSONWriter.jsonb) {
            if (z2) {
                objectWriter.writeArrayMappingJSONB(jSONWriter, fieldValue, this.fieldName, this.f88576w, this.features);
            } else {
                objectWriter.writeJSONB(jSONWriter, fieldValue, this.fieldName, this.f88576w, this.features);
            }
        } else if (z2) {
            objectWriter.writeArrayMapping(jSONWriter, fieldValue, this.fieldName, this.f88576w, this.features);
        } else {
            objectWriter.write(jSONWriter, fieldValue, this.fieldName, this.f88576w, this.features);
        }
        if (z) {
            jSONWriter.popPath(fieldValue);
        }
    }
}
