package com.alibaba.fastjson2.writer;

import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.codec.FieldInfo;
import com.alibaba.fastjson2.writer.ObjectWriterProvider;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.C14434t4;
import com.sunia.HTREnginev2.eck;
import com.sunia.HTREnginev2.hck;
import com.sunia.HTREnginev2.jbk;
import com.sunia.HTREnginev2.kck;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.text.DecimalFormat;
import java.util.Collection;
import java.util.Currency;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicIntegerArray;
import java.util.concurrent.atomic.AtomicLongArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes3.dex */
public class FieldWriterObject<T> extends FieldWriter<T> {

    /* renamed from: v */
    public static final AtomicReferenceFieldUpdater<FieldWriterObject, Class> f12827v = AtomicReferenceFieldUpdater.newUpdater(FieldWriterObject.class, Class.class, "r");

    /* renamed from: r */
    public volatile Class f12828r;

    /* renamed from: s */
    public final boolean f12829s;

    /* renamed from: t */
    public final boolean f12830t;

    /* renamed from: u */
    public final boolean f12831u;

    public FieldWriterObject(String str, int i, long j, String str2, String str3, Type type, Class cls, Field field, Method method) {
        super(str, i, j, str2, str3, type, cls, field, method);
        boolean z = true;
        this.f12829s = (FieldInfo.UNWRAPPED_MASK & j) != 0;
        if (cls == Currency.class) {
            this.f12828r = cls;
            this.f12826p = eck.f68814c;
        }
        if (!cls.isArray() && !Collection.class.isAssignableFrom(cls) && cls != AtomicLongArray.class && cls != AtomicIntegerArray.class) {
            z = false;
        }
        this.f12830t = z;
        this.f12831u = Number.class.isAssignableFrom(cls);
    }

    /* renamed from: f */
    public static boolean m7604f(Class cls, Class cls2) {
        return (cls == Integer.TYPE && cls2 == Integer.class) || (cls == Long.TYPE && cls2 == Long.class) || ((cls == Boolean.TYPE && cls2 == Boolean.class) || ((cls == Short.TYPE && cls2 == Short.class) || ((cls == Byte.TYPE && cls2 == Byte.class) || ((cls == Float.TYPE && cls2 == Float.class) || ((cls == Double.TYPE && cls2 == Double.class) || (cls == Character.TYPE && cls2 == Character.class))))));
    }

    /* renamed from: c */
    public final ObjectWriter m7605c(JSONWriter jSONWriter, Class cls) {
        ObjectWriter m7617of = Map.class.isAssignableFrom(cls) ? this.fieldClass.isAssignableFrom(cls) ? ObjectWriterImplMap.m7617of(this.fieldType, cls) : ObjectWriterImplMap.m7615of(cls) : jSONWriter.getObjectWriter(cls);
        C14434t4.m57298a(FieldWriter.f12814q, this, null, m7617of);
        return m7617of;
    }

    /* renamed from: d */
    public final ObjectWriter m7606d(JSONWriter jSONWriter, Class cls) {
        if (Map.class.isAssignableFrom(cls)) {
            return this.fieldClass.isAssignableFrom(cls) ? ObjectWriterImplMap.m7617of(this.fieldType, cls) : ObjectWriterImplMap.m7615of(cls);
        }
        String str = this.format;
        ObjectWriter m7602a = str != null ? FieldWriter.m7602a(this.fieldType, this.fieldClass, str, null, cls) : null;
        return m7602a == null ? jSONWriter.getObjectWriter(cls) : m7602a;
    }

    /* renamed from: e */
    public final ObjectWriter m7607e(JSONWriter jSONWriter, Class cls) {
        ObjectWriter objectWriter;
        if (this.format == null) {
            JSONWriter.Context context = jSONWriter.context;
            objectWriter = context.provider.getObjectWriterFromCache(cls, cls, ((this.features | context.getFeatures()) & JSONWriter.Feature.FieldBased.mask) != 0);
        } else {
            objectWriter = null;
        }
        DecimalFormat decimalFormat = this.decimalFormat;
        if (cls == Float[].class) {
            objectWriter = decimalFormat != null ? new jbk(Float.class, decimalFormat) : jbk.f74134g;
        } else if (cls == Double[].class) {
            objectWriter = decimalFormat != null ? new jbk(Double.class, decimalFormat) : jbk.f74135h;
        } else if (cls == float[].class) {
            objectWriter = decimalFormat != null ? new kck(decimalFormat) : kck.f75286c;
        } else if (cls == double[].class) {
            objectWriter = decimalFormat != null ? new hck(decimalFormat) : hck.f72073c;
        }
        if (objectWriter == null) {
            objectWriter = FieldWriter.m7602a(this.fieldType, this.fieldClass, this.format, null, cls);
        }
        if (objectWriter == null) {
            boolean m57298a = C14434t4.m57298a(f12827v, this, null, cls);
            ObjectWriter objectWriter2 = jSONWriter.getObjectWriter(cls);
            if (m57298a) {
                C14434t4.m57298a(FieldWriter.f12814q, this, null, objectWriter2);
            }
            return objectWriter2;
        }
        if (this.f12826p != null || !C14434t4.m57298a(f12827v, this, null, cls)) {
            return objectWriter;
        }
        C14434t4.m57298a(FieldWriter.f12814q, this, null, objectWriter);
        return objectWriter;
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public ObjectWriter getInitWriter() {
        return this.f12826p;
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public ObjectWriter getObjectWriter(JSONWriter jSONWriter, Class cls) {
        Class cls2 = this.f12828r;
        if (cls2 == null || this.f12826p == ObjectWriterProvider.C1752a.f12887a) {
            return m7607e(jSONWriter, cls);
        }
        boolean z = cls2 == cls || (cls2.isAssignableFrom(cls) && !jSONWriter.isEnabled(JSONWriter.Feature.WriteClassName) && (this.fieldType instanceof Class)) || ((cls2 == Map.class && cls2.isAssignableFrom(cls)) || (cls2 == List.class && cls2.isAssignableFrom(cls)));
        if (!z && cls2.isPrimitive()) {
            z = m7604f(cls2, cls);
        }
        return z ? this.f12826p == null ? m7605c(jSONWriter, cls) : this.f12826p : m7606d(jSONWriter, cls);
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public boolean unwrapped() {
        return this.f12829s;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public boolean write(JSONWriter jSONWriter, T t) {
        Field field;
        Class cls;
        long features = this.features | jSONWriter.getFeatures();
        if (!this.f12820j && (JSONWriter.Feature.IgnoreNoneSerializable.mask & features) != 0) {
            return false;
        }
        try {
            Object fieldValue = getFieldValue(t);
            if (fieldValue == null) {
                if ((JSONWriter.Feature.WriteNulls.mask & features) != 0 && (JSONWriter.Feature.NotWriteDefaultValue.mask & features) == 0) {
                    writeFieldName(jSONWriter);
                    if (this.f12830t) {
                        jSONWriter.writeArrayNull();
                    } else if (this.f12831u) {
                        jSONWriter.writeNumberNull();
                    } else {
                        Class cls2 = this.fieldClass;
                        if (cls2 == Appendable.class || cls2 == StringBuffer.class || cls2 == StringBuilder.class) {
                            jSONWriter.writeStringNull();
                        } else {
                            jSONWriter.writeNull();
                        }
                    }
                    return true;
                }
                long j = JSONWriter.Feature.WriteNullNumberAsZero.mask;
                long j2 = JSONWriter.Feature.NullAsDefaultValue.mask;
                if (((j | j2) & features) != 0 && this.f12831u) {
                    writeFieldName(jSONWriter);
                    jSONWriter.writeInt32(0);
                    return true;
                }
                if ((features & (JSONWriter.Feature.WriteNullBooleanAsFalse.mask | j2)) == 0 || !((cls = this.fieldClass) == Boolean.class || cls == AtomicBoolean.class)) {
                    return false;
                }
                writeFieldName(jSONWriter);
                jSONWriter.writeBool(false);
                return true;
            }
            if (fieldValue == t && this.fieldClass == Throwable.class && (field = this.field) != null && field.getDeclaringClass() == Throwable.class) {
                return false;
            }
            if ((JSONWriter.Feature.IgnoreNoneSerializable.mask & features) != 0 && !(fieldValue instanceof Serializable)) {
                return false;
            }
            boolean isRefDetect = jSONWriter.isRefDetect(fieldValue);
            if (isRefDetect) {
                if (fieldValue == t) {
                    writeFieldName(jSONWriter);
                    jSONWriter.writeReference(Constants.ATTRVAL_PARENT);
                    return true;
                }
                String path = jSONWriter.setPath(this, fieldValue);
                if (path != null) {
                    writeFieldName(jSONWriter);
                    jSONWriter.writeReference(path);
                    jSONWriter.popPath(fieldValue);
                    return true;
                }
            }
            Class<?> cls3 = fieldValue.getClass();
            if (cls3 == byte[].class) {
                writeBinary(jSONWriter, (byte[]) fieldValue);
                return true;
            }
            ObjectWriter objectWriter = getObjectWriter(jSONWriter, cls3);
            if (objectWriter == null) {
                throw new JSONException("get objectWriter error : " + cls3);
            }
            if (this.f12829s) {
                if (fieldValue instanceof Map) {
                    boolean z = jSONWriter.jsonb;
                    for (Map.Entry entry : ((Map) fieldValue).entrySet()) {
                        String obj = entry.getKey().toString();
                        Object value = entry.getValue();
                        if (value != null || (JSONWriter.Feature.WriteNulls.mask & features) != 0) {
                            jSONWriter.writeName(obj);
                            if (!z) {
                                jSONWriter.writeColon();
                            }
                            if (value == null) {
                                jSONWriter.writeNull();
                            } else {
                                jSONWriter.getObjectWriter(value.getClass()).write(jSONWriter, value);
                            }
                        }
                    }
                    if (isRefDetect) {
                        jSONWriter.popPath(fieldValue);
                    }
                    return true;
                }
                if (objectWriter instanceof ObjectWriterAdapter) {
                    Iterator<FieldWriter> it2 = ((ObjectWriterAdapter) objectWriter).f12839g.iterator();
                    while (it2.hasNext()) {
                        it2.next().write(jSONWriter, fieldValue);
                    }
                    return true;
                }
            }
            writeFieldName(jSONWriter);
            boolean z2 = jSONWriter.jsonb;
            long j3 = this.features;
            if ((JSONWriter.Feature.BeanToArray.mask & j3) != 0) {
                if (z2) {
                    objectWriter.writeArrayMappingJSONB(jSONWriter, fieldValue, this.fieldName, this.fieldType, j3);
                } else {
                    objectWriter.writeArrayMapping(jSONWriter, fieldValue, this.fieldName, this.fieldType, j3);
                }
            } else if (z2) {
                objectWriter.writeJSONB(jSONWriter, fieldValue, this.fieldName, this.fieldType, j3);
            } else {
                objectWriter.write(jSONWriter, fieldValue, this.fieldName, this.fieldType, j3);
            }
            if (isRefDetect) {
                jSONWriter.popPath(fieldValue);
            }
            return true;
        } catch (RuntimeException e) {
            if (jSONWriter.isIgnoreErrorGetter()) {
                return false;
            }
            throw e;
        }
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public void writeValue(JSONWriter jSONWriter, T t) {
        ObjectWriter objectWriter;
        Object fieldValue = getFieldValue(t);
        if (fieldValue == null) {
            jSONWriter.writeNull();
            return;
        }
        Class<?> cls = fieldValue.getClass();
        if (this.f12828r == null) {
            this.f12828r = cls;
            objectWriter = getObjectWriter(jSONWriter, cls);
            C14434t4.m57298a(FieldWriter.f12814q, this, null, objectWriter);
        } else {
            objectWriter = this.f12828r == cls ? this.f12826p : jSONWriter.getObjectWriter(cls);
        }
        if (objectWriter == null) {
            throw new JSONException("get value writer error, valueType : " + cls);
        }
        boolean z = jSONWriter.isRefDetect() && !ObjectWriterProvider.isNotReferenceDetect(cls);
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
        if (!jSONWriter.jsonb) {
            objectWriter.write(jSONWriter, fieldValue, this.fieldName, this.fieldClass, this.features);
        } else if (jSONWriter.isBeanToArray()) {
            objectWriter.writeArrayMappingJSONB(jSONWriter, fieldValue, this.fieldName, this.fieldClass, this.features);
        } else {
            objectWriter.writeJSONB(jSONWriter, fieldValue, this.fieldName, this.fieldClass, this.features);
        }
        if (z) {
            jSONWriter.popPath(fieldValue);
        }
    }
}
