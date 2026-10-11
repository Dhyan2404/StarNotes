package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.util.TypeUtils;
import com.alibaba.fastjson2.writer.FieldWriter;
import com.alibaba.fastjson2.writer.ObjectWriter;
import com.alibaba.fastjson2.writer.ObjectWriterProvider;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.text.DecimalFormat;

/* loaded from: classes3.dex */
public final class ufg<T> extends FieldWriter<T> {

    /* renamed from: r */
    public final Type f86436r;

    /* renamed from: s */
    public final Class f86437s;

    /* renamed from: t */
    public ObjectWriter f86438t;

    public ufg(String str, Type type, int i, long j, String str2, String str3, Type type2, Class cls, Field field) {
        super(str, i, j, str2, str3, type2, cls, field, null);
        this.f86436r = type;
        if (type instanceof Class) {
            this.f86437s = (Class) type;
        } else {
            this.f86437s = TypeUtils.getMapping(type);
        }
    }

    /* renamed from: c */
    public void m57617c(JSONWriter jSONWriter, boolean z, Object[] objArr) {
        ObjectWriter itemWriter;
        Class<?> cls;
        ObjectWriter objectWriter;
        boolean z2;
        Class<?> cls2;
        String path;
        String path2;
        long features = jSONWriter.getFeatures() | this.features;
        boolean z3 = (JSONWriter.Feature.ReferenceDetection.mask & features) != 0;
        if (z) {
            if (objArr.length == 0 && (JSONWriter.Feature.NotWriteEmptyArray.mask & features) != 0) {
                return;
            } else {
                writeFieldName(jSONWriter);
            }
        }
        if (z3 && (path2 = jSONWriter.setPath(this.fieldName, objArr)) != null) {
            jSONWriter.writeReference(path2);
            return;
        }
        Class<?> cls3 = null;
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
                    Class<?> cls4 = obj.getClass();
                    if (cls4 == cls3) {
                        itemWriter = objectWriter2;
                        cls = cls3;
                    } else {
                        itemWriter = getItemWriter(jSONWriter, cls4);
                        cls = cls4;
                    }
                    objectWriter2 = itemWriter;
                    objectWriter2.write(jSONWriter, obj, Integer.valueOf(i), this.fieldType, features);
                    cls3 = cls;
                }
            }
            jSONWriter.endArray();
            return;
        }
        Class<?> cls5 = objArr.getClass();
        if (cls5 != this.fieldClass) {
            jSONWriter.writeTypeName(TypeUtils.getTypeName((Class) cls5));
        }
        int length = objArr.length;
        jSONWriter.startArray(length);
        ObjectWriter objectWriter3 = null;
        boolean z4 = z3;
        for (int i2 = 0; i2 < length; i2++) {
            Object obj2 = objArr[i2];
            if (obj2 == null) {
                jSONWriter.writeNull();
            } else {
                Class<?> cls6 = obj2.getClass();
                if (cls6 != cls3) {
                    boolean isRefDetect = jSONWriter.isRefDetect();
                    ObjectWriter itemWriter2 = getItemWriter(jSONWriter, cls6);
                    if (isRefDetect) {
                        isRefDetect = !ObjectWriterProvider.isNotReferenceDetect(cls6);
                    }
                    z2 = isRefDetect;
                    objectWriter = itemWriter2;
                    cls2 = cls6;
                } else {
                    objectWriter = objectWriter3;
                    z2 = z4;
                    cls2 = cls3;
                }
                if (!z2 || (path = jSONWriter.setPath(i2, obj2)) == null) {
                    objectWriter.writeJSONB(jSONWriter, obj2, Integer.valueOf(i2), this.f86436r, this.features);
                    if (z2) {
                        jSONWriter.popPath(obj2);
                    }
                } else {
                    jSONWriter.writeReference(path);
                    jSONWriter.popPath(obj2);
                }
                objectWriter3 = objectWriter;
                z4 = z2;
                cls3 = cls2;
            }
        }
        if (z3) {
            jSONWriter.popPath(objArr);
        }
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public ObjectWriter getItemWriter(JSONWriter jSONWriter, Type type) {
        if (type != null && type != this.f86436r) {
            return jSONWriter.getObjectWriter(type, TypeUtils.getClass(type));
        }
        ObjectWriter objectWriter = this.f86438t;
        if (objectWriter != null) {
            return objectWriter;
        }
        if (type == Double.class) {
            this.f86438t = new gck(new DecimalFormat(this.format));
        } else if (type == Float.class) {
            this.f86438t = new jck(new DecimalFormat(this.format));
        } else if (type != BigDecimal.class || this.decimalFormat == null) {
            this.f86438t = jSONWriter.getObjectWriter(this.f86436r, this.f86437s);
        } else {
            this.f86438t = new vbk(this.decimalFormat, null);
        }
        return this.f86438t;
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public ObjectWriter getObjectWriter(JSONWriter jSONWriter, Class cls) {
        return cls == String[].class ? mdk.f77491c : cls == Float[].class ? this.decimalFormat != null ? new jbk(Float.class, this.decimalFormat) : jbk.f74134g : cls == Double[].class ? this.decimalFormat != null ? new jbk(Double.class, this.decimalFormat) : jbk.f74135h : cls == BigDecimal[].class ? this.decimalFormat != null ? new jbk(BigDecimal.class, this.decimalFormat) : jbk.f74136i : jSONWriter.getObjectWriter(cls);
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public boolean write(JSONWriter jSONWriter, T t) {
        Object[] objArr = (Object[]) getFieldValue(t);
        if (objArr != null) {
            m57617c(jSONWriter, true, objArr);
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
            m57617c(jSONWriter, false, objArr);
        }
    }
}
