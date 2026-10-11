package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONB;
import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.util.Fnv;
import com.alibaba.fastjson2.util.TypeUtils;
import com.alibaba.fastjson2.writer.ObjectWriter;
import com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl;
import com.alibaba.fastjson2.writer.ObjectWriterProvider;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeSet;

/* loaded from: classes3.dex */
public final class dck extends ObjectWriterPrimitiveImpl {

    /* renamed from: c */
    public static final dck f67724c = new dck();

    /* renamed from: d */
    public static final byte[] f67725d = JSONB.toBytes(TypeUtils.getTypeName(LinkedHashSet.class));

    /* renamed from: e */
    public static final long f67726e = Fnv.hashCode64(TypeUtils.getTypeName(LinkedHashSet.class));

    /* renamed from: f */
    public static final byte[] f67727f = JSONB.toBytes(TypeUtils.getTypeName(TreeSet.class));

    /* renamed from: g */
    public static final long f67728g = Fnv.hashCode64(TypeUtils.getTypeName(TreeSet.class));

    /* renamed from: a */
    public Type f67729a;

    /* renamed from: b */
    public long f67730b;

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void write(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        if (jSONWriter.jsonb) {
            writeJSONB(jSONWriter, obj, obj2, type, j);
            return;
        }
        if (obj == null) {
            jSONWriter.writeNull();
            return;
        }
        if ((obj instanceof Set) && jSONWriter.isWriteTypeInfo(obj, this.f67730b | j)) {
            jSONWriter.writeRaw("Set");
        }
        jSONWriter.startArray();
        Class<?> cls = null;
        int i = 0;
        ObjectWriter objectWriter = null;
        for (Object obj3 : (Iterable) obj) {
            if (i != 0) {
                jSONWriter.writeComma();
            }
            if (obj3 == null) {
                jSONWriter.writeNull();
            } else {
                Class<?> cls2 = obj3.getClass();
                if (cls2 != cls) {
                    objectWriter = jSONWriter.getObjectWriter(cls2);
                    cls = cls2;
                }
                objectWriter.write(jSONWriter, obj3, Integer.valueOf(i), this.f67729a, this.f67730b);
            }
            i++;
        }
        jSONWriter.endArray();
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void writeJSONB(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        Class cls;
        Type type2;
        ObjectWriter objectWriter;
        Class<?> cls2;
        String path;
        if (obj == null) {
            jSONWriter.writeNull();
            return;
        }
        Class<?> cls3 = null;
        if (type instanceof Class) {
            cls = (Class) type;
            type2 = null;
        } else if (type instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) type;
            Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
            Type type3 = actualTypeArguments.length == 1 ? actualTypeArguments[0] : null;
            Type rawType = parameterizedType.getRawType();
            cls = rawType instanceof Class ? (Class) rawType : null;
            type2 = type3;
        } else {
            cls = null;
            type2 = null;
        }
        Collection collection = (Collection) obj;
        Class<?> cls4 = obj.getClass();
        boolean isWriteTypeInfo = jSONWriter.isWriteTypeInfo(obj, cls);
        if (isWriteTypeInfo && ((cls == Set.class && cls4 == HashSet.class) || (type == Collection.class && cls4 == ArrayList.class))) {
            isWriteTypeInfo = false;
        }
        if (isWriteTypeInfo) {
            if (cls4 == LinkedHashSet.class) {
                jSONWriter.writeTypeName(f67725d, f67726e);
            } else if (cls4 == TreeSet.class) {
                jSONWriter.writeTypeName(f67727f, f67728g);
            } else {
                jSONWriter.writeTypeName(TypeUtils.getTypeName((Class) cls4));
            }
        }
        boolean isRefDetect = (collection.size() <= 1 || (collection instanceof SortedSet) || (collection instanceof LinkedHashSet)) ? jSONWriter.isRefDetect() : false;
        jSONWriter.startArray(collection.size());
        ObjectWriter objectWriter2 = null;
        int i = 0;
        for (Object obj3 : collection) {
            if (obj3 == null) {
                jSONWriter.writeNull();
            } else {
                Class<?> cls5 = obj3.getClass();
                if (cls5 == cls3) {
                    objectWriter = objectWriter2;
                    cls2 = cls3;
                } else {
                    objectWriter = jSONWriter.getObjectWriter(cls5);
                    cls2 = cls5;
                }
                boolean z = isRefDetect && !ObjectWriterProvider.isNotReferenceDetect(cls5);
                if (!z || (path = jSONWriter.setPath(i, obj3)) == null) {
                    objectWriter.writeJSONB(jSONWriter, obj3, Integer.valueOf(i), type2, j);
                    if (z) {
                        jSONWriter.popPath(obj3);
                    }
                } else {
                    jSONWriter.writeReference(path);
                    jSONWriter.popPath(obj3);
                }
                objectWriter2 = objectWriter;
                cls3 = cls2;
            }
            i++;
        }
    }
}
