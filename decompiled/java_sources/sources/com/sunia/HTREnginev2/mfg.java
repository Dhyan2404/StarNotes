package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.util.TypeUtils;
import com.alibaba.fastjson2.writer.FieldWriter;
import com.alibaba.fastjson2.writer.ObjectWriter;
import com.alibaba.fastjson2.writer.ObjectWriterProvider;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.text.DecimalFormat;
import java.util.Date;
import java.util.List;

/* loaded from: classes3.dex */
public abstract class mfg<T> extends FieldWriter<T> {

    /* renamed from: r */
    public final Type f77543r;

    /* renamed from: s */
    public final Class f77544s;

    /* renamed from: t */
    public final boolean f77545t;

    /* renamed from: u */
    public ObjectWriter f77546u;

    /* renamed from: v */
    public ObjectWriter f77547v;

    public mfg(String str, Type type, int i, long j, String str2, String str3, Type type2, Class cls, Field field, Method method) {
        super(str, i, j, str2, str3, type2, cls, field, method);
        Type type3 = type == null ? Object.class : type;
        this.f77543r = type3;
        if (type3 instanceof Class) {
            Class cls2 = (Class) type;
            this.f77544s = cls2;
            if (cls2 != null) {
                if (Enum.class.isAssignableFrom(cls2)) {
                    this.f77546u = new yck(cls, cls2, j);
                } else if (cls2 == String.class) {
                    this.f77546u = zck.f91615a;
                } else {
                    this.f77546u = new xck(cls, type2, cls2, type, j);
                }
            }
        } else {
            this.f77544s = TypeUtils.getMapping(type);
        }
        Class cls3 = this.f77544s;
        this.f77545t = cls3 != null && ObjectWriterProvider.isNotReferenceDetect(cls3);
        if (str2 == null || this.f77544s != Date.class) {
            return;
        }
        this.f77547v = new fck(str2, null);
    }

    /* renamed from: c */
    public final void m55594c(JSONWriter jSONWriter, boolean z, List list) {
        boolean z2;
        ObjectWriter objectWriter;
        Class<?> cls;
        Object obj;
        String path;
        ObjectWriter itemWriter;
        long features = jSONWriter.getFeatures(this.features);
        boolean z3 = (JSONWriter.Feature.BeanToArray.mask & features) != 0;
        if ((JSONWriter.Feature.NotWriteEmptyArray.mask & features) != 0 && list.isEmpty() && z) {
            return;
        }
        boolean z4 = (JSONWriter.Feature.ReferenceDetection.mask & features) != 0;
        if (z) {
            writeFieldName(jSONWriter);
        }
        int size = list.size();
        if (jSONWriter.isWriteTypeInfo((Object) list, this.fieldClass)) {
            jSONWriter.writeTypeName(TypeUtils.getTypeName((Class) list.getClass()));
        }
        jSONWriter.startArray(size);
        Class<?> cls2 = null;
        ObjectWriter objectWriter2 = null;
        for (int i = 0; i < size; i++) {
            Object obj2 = list.get(i);
            if (obj2 == null) {
                jSONWriter.writeNull();
            } else {
                Class<?> cls3 = obj2.getClass();
                if (cls3 != cls2) {
                    boolean isRefDetect = jSONWriter.isRefDetect();
                    if (cls3 != this.f77543r || (itemWriter = this.f77547v) == null) {
                        itemWriter = getItemWriter(jSONWriter, cls3);
                    }
                    if (isRefDetect) {
                        isRefDetect = !(cls3 == this.f77544s ? this.f77545t : ObjectWriterProvider.isNotReferenceDetect(cls3));
                    }
                    z2 = isRefDetect;
                    objectWriter = itemWriter;
                    cls = cls3;
                } else {
                    z2 = z4;
                    objectWriter = objectWriter2;
                    cls = cls2;
                }
                if (!z2 || (path = jSONWriter.setPath(i, obj2)) == null) {
                    if (z3) {
                        obj = obj2;
                        objectWriter.writeArrayMappingJSONB(jSONWriter, obj2, Integer.valueOf(i), this.f77543r, features);
                    } else {
                        obj = obj2;
                        objectWriter.writeJSONB(jSONWriter, obj, Integer.valueOf(i), this.f77543r, features);
                    }
                    if (z2) {
                        jSONWriter.popPath(obj);
                    }
                } else {
                    jSONWriter.writeReference(path);
                    jSONWriter.popPath(obj2);
                }
                z4 = z2;
                objectWriter2 = objectWriter;
                cls2 = cls;
            }
        }
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public Class getItemClass() {
        return this.f77544s;
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public Type getItemType() {
        return this.f77543r;
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public ObjectWriter getItemWriter(JSONWriter jSONWriter, Type type) {
        if (type != null && type != this.f77543r) {
            return jSONWriter.getObjectWriter(type, TypeUtils.getClass(type));
        }
        ObjectWriter objectWriter = this.f77547v;
        if (objectWriter != null) {
            return objectWriter;
        }
        if (this.format != null) {
            if (type == Double.class) {
                gck gckVar = new gck(new DecimalFormat(this.format));
                this.f77547v = gckVar;
                return gckVar;
            }
            if (type == Float.class) {
                jck jckVar = new jck(new DecimalFormat(this.format));
                this.f77547v = jckVar;
                return jckVar;
            }
            if (type == BigDecimal.class) {
                vbk vbkVar = new vbk(new DecimalFormat(this.format), null);
                this.f77547v = vbkVar;
                return vbkVar;
            }
        }
        ObjectWriter objectWriter2 = jSONWriter.getObjectWriter(this.f77543r, this.f77544s);
        this.f77547v = objectWriter2;
        return objectWriter2;
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public ObjectWriter getObjectWriter(JSONWriter jSONWriter, Class cls) {
        ObjectWriter objectWriter = this.f77546u;
        if (objectWriter != null && this.fieldClass.isAssignableFrom(cls)) {
            return objectWriter;
        }
        if (objectWriter != null || cls != this.fieldClass) {
            return jSONWriter.getObjectWriter(cls);
        }
        ObjectWriter objectWriter2 = jSONWriter.getObjectWriter(cls);
        this.f77546u = objectWriter2;
        return objectWriter2;
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public void writeList(JSONWriter jSONWriter, boolean z, List list) {
        boolean z2;
        ObjectWriter objectWriter;
        Class<?> cls;
        String path;
        if (jSONWriter.jsonb) {
            m55594c(jSONWriter, z, list);
            return;
        }
        long features = jSONWriter.getFeatures(this.features);
        if ((JSONWriter.Feature.NotWriteEmptyArray.mask & features) != 0 && list.isEmpty() && z) {
            return;
        }
        boolean z3 = (JSONWriter.Feature.ReferenceDetection.mask & features) != 0;
        if (z) {
            writeFieldName(jSONWriter);
        }
        jSONWriter.startArray();
        Class<?> cls2 = null;
        ObjectWriter objectWriter2 = null;
        for (int i = 0; i < list.size(); i++) {
            if (i != 0) {
                jSONWriter.writeComma();
            }
            Object obj = list.get(i);
            if (obj == null) {
                jSONWriter.writeNull();
            } else {
                Class<?> cls3 = obj.getClass();
                if (cls3 == String.class) {
                    jSONWriter.writeString((String) obj);
                } else {
                    if (cls3 == cls2) {
                        z2 = z3;
                        objectWriter = objectWriter2;
                        cls = cls2;
                    } else {
                        boolean isRefDetect = jSONWriter.isRefDetect();
                        ObjectWriter itemWriter = getItemWriter(jSONWriter, cls3);
                        if (isRefDetect) {
                            isRefDetect = !ObjectWriterProvider.isNotReferenceDetect(cls3);
                        }
                        z2 = isRefDetect;
                        objectWriter = itemWriter;
                        cls = cls3;
                    }
                    if (!z2 || (path = jSONWriter.setPath(i, obj)) == null) {
                        objectWriter.write(jSONWriter, obj, null, this.f77543r, features);
                        if (z2) {
                            jSONWriter.popPath(obj);
                        }
                    } else {
                        jSONWriter.writeReference(path);
                        jSONWriter.popPath(obj);
                    }
                    z3 = z2;
                    objectWriter2 = objectWriter;
                    cls2 = cls;
                }
            }
        }
        jSONWriter.endArray();
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public void writeListStr(JSONWriter jSONWriter, boolean z, List<String> list) {
        if (z) {
            writeFieldName(jSONWriter);
        }
        if (jSONWriter.jsonb && jSONWriter.isWriteTypeInfo((Object) list, this.fieldClass)) {
            jSONWriter.writeTypeName(TypeUtils.getTypeName((Class) list.getClass()));
        }
        jSONWriter.writeString(list);
    }
}
