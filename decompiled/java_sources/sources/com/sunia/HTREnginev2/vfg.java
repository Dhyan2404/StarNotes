package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.util.TypeUtils;
import com.alibaba.fastjson2.writer.FieldWriter;
import com.alibaba.fastjson2.writer.ObjectWriter;
import com.alibaba.fastjson2.writer.ObjectWriterProvider;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.math.BigDecimal;

/* loaded from: classes3.dex */
public final class vfg<T> extends FieldWriter<T> {

    /* renamed from: r */
    public final Type f87452r;

    /* renamed from: s */
    public final Class f87453s;

    /* renamed from: t */
    public ObjectWriter f87454t;

    public vfg(String str, Type type, int i, long j, String str2, String str3, Type type2, Class cls, Method method) {
        super(str, i, j, str2, str3, type2, cls, null, method);
        this.f87452r = type;
        if (type instanceof Class) {
            this.f87453s = (Class) type;
        } else {
            this.f87453s = TypeUtils.getMapping(type);
        }
    }

    /* renamed from: c */
    public void m57792c(JSONWriter jSONWriter, boolean z, Object[] objArr) {
        ObjectWriter objectWriter;
        boolean z2;
        Class<?> cls;
        String path;
        String path2;
        if (z) {
            writeFieldName(jSONWriter);
        }
        boolean isRefDetect = jSONWriter.isRefDetect();
        if (isRefDetect && (path2 = jSONWriter.setPath(this.fieldName, objArr)) != null) {
            jSONWriter.writeReference(path2);
            return;
        }
        Class<?> cls2 = null;
        if (!jSONWriter.jsonb) {
            jSONWriter.startArray();
            ObjectWriter objectWriter2 = null;
            for (int i = 0; i < objArr.length; i++) {
                if (i != 0) {
                    jSONWriter.writeComma();
                }
                Object obj = objArr[i];
                if (obj == null) {
                    jSONWriter.writeNull();
                } else {
                    Class<?> cls3 = obj.getClass();
                    if (cls3 != cls2) {
                        objectWriter2 = getItemWriter(jSONWriter, cls3);
                        cls2 = cls3;
                    }
                    objectWriter2.write(jSONWriter, obj);
                }
            }
            jSONWriter.endArray();
            return;
        }
        Class<?> cls4 = objArr.getClass();
        if (cls4 != this.fieldClass) {
            jSONWriter.writeTypeName(TypeUtils.getTypeName((Class) cls4));
        }
        int length = objArr.length;
        jSONWriter.startArray(length);
        ObjectWriter objectWriter3 = null;
        boolean z3 = isRefDetect;
        for (int i2 = 0; i2 < length; i2++) {
            Object obj2 = objArr[i2];
            if (obj2 == null) {
                jSONWriter.writeNull();
            } else {
                Class<?> cls5 = obj2.getClass();
                if (cls5 != cls2) {
                    boolean isRefDetect2 = jSONWriter.isRefDetect();
                    ObjectWriter itemWriter = getItemWriter(jSONWriter, cls5);
                    if (isRefDetect2) {
                        isRefDetect2 = !ObjectWriterProvider.isNotReferenceDetect(cls5);
                    }
                    z2 = isRefDetect2;
                    objectWriter = itemWriter;
                    cls = cls5;
                } else {
                    objectWriter = objectWriter3;
                    z2 = z3;
                    cls = cls2;
                }
                if (!z2 || (path = jSONWriter.setPath(i2, obj2)) == null) {
                    objectWriter.writeJSONB(jSONWriter, obj2, Integer.valueOf(i2), this.f87452r, this.features);
                    if (z2) {
                        jSONWriter.popPath(obj2);
                    }
                } else {
                    jSONWriter.writeReference(path);
                    jSONWriter.popPath(obj2);
                }
                objectWriter3 = objectWriter;
                z3 = z2;
                cls2 = cls;
            }
        }
        if (isRefDetect) {
            jSONWriter.popPath(objArr);
        }
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public Object getFieldValue(Object obj) {
        try {
            return this.method.invoke(obj, new Object[0]);
        } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e) {
            throw new JSONException("field.get error, " + this.fieldName, e);
        }
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public ObjectWriter getItemWriter(JSONWriter jSONWriter, Type type) {
        if (type != null && type != this.f87452r) {
            return jSONWriter.getObjectWriter(type, null);
        }
        ObjectWriter objectWriter = this.f87454t;
        if (objectWriter != null) {
            return objectWriter;
        }
        if (type == Float[].class) {
            return this.decimalFormat != null ? new jbk(Float.class, this.decimalFormat) : jbk.f74134g;
        }
        if (type == Double[].class) {
            return this.decimalFormat != null ? new jbk(Double.class, this.decimalFormat) : jbk.f74135h;
        }
        if (type == BigDecimal[].class) {
            return this.decimalFormat != null ? new jbk(BigDecimal.class, this.decimalFormat) : jbk.f74136i;
        }
        if (type == Float.class) {
            return this.decimalFormat != null ? new jck(this.decimalFormat) : jck.f74179b;
        }
        if (type == Double.class) {
            return this.decimalFormat != null ? new gck(this.decimalFormat) : gck.f70903b;
        }
        if (type == BigDecimal.class) {
            return this.decimalFormat != null ? new vbk(this.decimalFormat, null) : vbk.f87339c;
        }
        ObjectWriter objectWriter2 = jSONWriter.getObjectWriter(this.f87452r, this.f87453s);
        this.f87454t = objectWriter2;
        return objectWriter2;
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public boolean write(JSONWriter jSONWriter, T t) {
        Object[] objArr = (Object[]) getFieldValue(t);
        if (objArr != null) {
            m57792c(jSONWriter, true, objArr);
            return true;
        }
        if (((this.features | jSONWriter.getFeatures()) & (JSONWriter.Feature.WriteNulls.mask | JSONWriter.Feature.NullAsDefaultValue.mask | JSONWriter.Feature.WriteNullListAsEmpty.mask)) == 0) {
            return false;
        }
        writeFieldName(jSONWriter);
        jSONWriter.writeArrayNull();
        return true;
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public void writeValue(JSONWriter jSONWriter, T t) {
        Object[] objArr = (Object[]) getFieldValue(t);
        if (objArr == null) {
            jSONWriter.writeNull();
        } else {
            m57792c(jSONWriter, false, objArr);
        }
    }
}
