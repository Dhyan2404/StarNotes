package com.alibaba.fastjson2.writer;

import com.alibaba.fastjson2.JSONB;
import com.alibaba.fastjson2.JSONFactory;
import com.alibaba.fastjson2.JSONObject;
import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.filter.AfterFilter;
import com.alibaba.fastjson2.filter.BeforeFilter;
import com.alibaba.fastjson2.filter.NameFilter;
import com.alibaba.fastjson2.filter.PropertyFilter;
import com.alibaba.fastjson2.filter.PropertyPreFilter;
import com.alibaba.fastjson2.filter.ValueFilter;
import com.alibaba.fastjson2.util.BeanUtils;
import com.alibaba.fastjson2.util.Fnv;
import com.alibaba.fastjson2.util.JDKUtils;
import com.alibaba.fastjson2.util.TypeUtils;
import com.onyx.android.sdk.data.common.cloud.Constant;
import java.lang.reflect.Field;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.nio.charset.StandardCharsets;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.SortedMap;
import java.util.TreeMap;

/* loaded from: classes3.dex */
public final class ObjectWriterImplMap extends ObjectWriterPrimitiveImpl {

    /* renamed from: p */
    public static final byte[] f12852p = JSONB.toBytes("JO10");

    /* renamed from: q */
    public static final long f12853q = Fnv.hashCode64("JO10");

    /* renamed from: r */
    public static final ObjectWriterImplMap f12854r = new ObjectWriterImplMap(String.class, Object.class, JSONObject.class, JSONObject.class, 0);

    /* renamed from: s */
    public static ObjectWriterImplMap f12855s;

    /* renamed from: a */
    public final Type f12856a;

    /* renamed from: b */
    public final Class f12857b;

    /* renamed from: c */
    public final Type f12858c;

    /* renamed from: d */
    public final Type f12859d;

    /* renamed from: e */
    public final boolean f12860e;

    /* renamed from: f */
    public volatile ObjectWriter f12861f;

    /* renamed from: g */
    public volatile ObjectWriter f12862g;

    /* renamed from: h */
    public final byte[] f12863h;

    /* renamed from: i */
    public final long f12864i;

    /* renamed from: j */
    public final long f12865j;

    /* renamed from: k */
    public final boolean f12866k;

    /* renamed from: l */
    public final Field f12867l;

    /* renamed from: m */
    public long f12868m;

    /* renamed from: n */
    public final char[] f12869n;

    /* renamed from: o */
    public final byte[] f12870o;

    public ObjectWriterImplMap(Class cls, long j) {
        this(null, null, cls, cls, j);
    }

    public static ObjectWriterImplMap getINSTANCE1() {
        if (f12855s == null) {
            Class classJSONObject1x = JSONFactory.getClassJSONObject1x();
            if (classJSONObject1x == null) {
                f12855s = null;
            } else {
                f12855s = new ObjectWriterImplMap(String.class, Object.class, classJSONObject1x, classJSONObject1x, 0L);
            }
        }
        return f12855s;
    }

    /* renamed from: of */
    public static ObjectWriterImplMap m7615of(Class cls) {
        if (cls == JSONObject.class) {
            return f12854r;
        }
        if (cls == JSONFactory.getClassJSONObject1x()) {
            return getINSTANCE1();
        }
        return new ObjectWriterImplMap(null, null, cls, cls, 0L);
    }

    /* JADX WARN: Removed duplicated region for block: B:110:0x0182 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x018e  */
    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void write(com.alibaba.fastjson2.JSONWriter r21, java.lang.Object r22, java.lang.Object r23, java.lang.reflect.Type r24, long r25) {
        /*
            Method dump skipped, instructions count: 634
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.writer.ObjectWriterImplMap.write(com.alibaba.fastjson2.JSONWriter, java.lang.Object, java.lang.Object, java.lang.reflect.Type, long):void");
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl, com.alibaba.fastjson2.writer.ObjectWriter
    public void writeArrayMappingJSONB(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        jSONWriter.startObject();
        boolean isWriteNulls = jSONWriter.isWriteNulls();
        for (Map.Entry entry : ((Map) obj).entrySet()) {
            String str = (String) entry.getKey();
            Object value = entry.getValue();
            if (value != null) {
                jSONWriter.writeString(str);
                Class<?> cls = value.getClass();
                if (cls == String.class) {
                    jSONWriter.writeString((String) value);
                } else {
                    jSONWriter.getObjectWriter(cls).writeJSONB(jSONWriter, value, str, this.f12859d, this.f12865j);
                }
            } else if (isWriteNulls) {
                jSONWriter.writeString(str);
                jSONWriter.writeNull();
            }
        }
        jSONWriter.endObject();
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x024c  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0258  */
    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void writeJSONB(com.alibaba.fastjson2.JSONWriter r31, java.lang.Object r32, java.lang.Object r33, java.lang.reflect.Type r34, long r35) {
        /*
            Method dump skipped, instructions count: 732
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.writer.ObjectWriterImplMap.writeJSONB(com.alibaba.fastjson2.JSONWriter, java.lang.Object, java.lang.Object, java.lang.reflect.Type, long):void");
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public boolean writeTypeInfo(JSONWriter jSONWriter) {
        if (jSONWriter.utf8) {
            jSONWriter.writeNameRaw(this.f12870o);
            return true;
        }
        jSONWriter.writeNameRaw(this.f12869n);
        return true;
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void writeWithFilter(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        PropertyFilter propertyFilter;
        AfterFilter afterFilter;
        PropertyFilter propertyFilter2;
        AfterFilter afterFilter2;
        if (obj == null) {
            jSONWriter.writeNull();
            return;
        }
        jSONWriter.startObject();
        Map map = (Map) obj;
        long features = j | jSONWriter.getFeatures();
        long j2 = JSONWriter.Feature.MapSortField.mask;
        JSONWriter.Feature feature = JSONWriter.Feature.SortMapEntriesByKeys;
        long j3 = 0;
        if (((j2 | feature.mask) & features) != 0 && !(map instanceof SortedMap) && (map.getClass() != LinkedHashMap.class || (feature.mask & features) != 0)) {
            map = new TreeMap(map);
        }
        JSONWriter.Context context = jSONWriter.context;
        BeforeFilter beforeFilter = context.getBeforeFilter();
        if (beforeFilter != null) {
            beforeFilter.writeBefore(jSONWriter, obj);
        }
        PropertyPreFilter propertyPreFilter = context.getPropertyPreFilter();
        NameFilter nameFilter = context.getNameFilter();
        ValueFilter valueFilter = context.getValueFilter();
        PropertyFilter propertyFilter3 = context.getPropertyFilter();
        AfterFilter afterFilter3 = context.getAfterFilter();
        boolean isEnabled = context.isEnabled(JSONWriter.Feature.WriteNulls.mask);
        for (Map.Entry entry : map.entrySet()) {
            Object value = entry.getValue();
            if (value != null || isEnabled) {
                Object key = entry.getKey();
                String obj3 = key == null ? null : key.toString();
                if (propertyPreFilter == null || propertyPreFilter.process(jSONWriter, obj, obj3)) {
                    if (nameFilter != null) {
                        obj3 = nameFilter.process(obj, obj3, value);
                    }
                    if (propertyFilter3 == null || propertyFilter3.apply(obj, obj3, value)) {
                        if (valueFilter != null) {
                            value = valueFilter.apply(obj, obj3, value);
                        }
                        Object obj4 = value;
                        if (obj4 == null) {
                            propertyFilter = propertyFilter3;
                            afterFilter = afterFilter3;
                            if ((jSONWriter.getFeatures(features) & JSONWriter.Feature.WriteNulls.mask) == j3) {
                                propertyFilter3 = propertyFilter;
                                afterFilter3 = afterFilter;
                            }
                        } else {
                            propertyFilter = propertyFilter3;
                            afterFilter = afterFilter3;
                        }
                        jSONWriter.writeName(obj3);
                        jSONWriter.writeColon();
                        if (obj4 == null) {
                            jSONWriter.writeNull();
                            propertyFilter2 = propertyFilter;
                            afterFilter2 = afterFilter;
                        } else {
                            propertyFilter2 = propertyFilter;
                            afterFilter2 = afterFilter;
                            jSONWriter.getObjectWriter(obj4.getClass()).write(jSONWriter, obj4, obj2, type, this.f12865j);
                        }
                        afterFilter3 = afterFilter2;
                        propertyFilter3 = propertyFilter2;
                        j3 = 0;
                    }
                }
            }
        }
        AfterFilter afterFilter4 = afterFilter3;
        if (afterFilter4 != null) {
            afterFilter4.writeAfter(jSONWriter, obj);
        }
        jSONWriter.endObject();
    }

    public ObjectWriterImplMap(Type type, Type type2, Class cls, Type type3, long j) {
        this.f12868m = -1L;
        this.f12858c = type;
        this.f12859d = type2;
        this.f12857b = cls;
        this.f12856a = type3;
        this.f12865j = j;
        if (type2 == null) {
            this.f12860e = true;
        } else {
            this.f12860e = !ObjectWriterProvider.isNotReferenceDetect(TypeUtils.getClass(type2));
        }
        String typeName = TypeUtils.getTypeName(cls);
        String str = "\"@type\":\"" + cls.getName() + "\"";
        this.f12869n = str.toCharArray();
        this.f12870o = str.getBytes(StandardCharsets.UTF_8);
        boolean equals = "JO1".equals(typeName);
        this.f12866k = equals;
        this.f12863h = JSONB.toBytes(typeName);
        this.f12864i = Fnv.hashCode64(typeName);
        if (equals) {
            Field declaredField = BeanUtils.getDeclaredField(cls, Constant.MAP_TAG);
            this.f12867l = declaredField;
            if (declaredField != null) {
                declaredField.setAccessible(true);
                this.f12868m = JDKUtils.UNSAFE.objectFieldOffset(declaredField);
                return;
            }
            return;
        }
        this.f12867l = null;
    }

    /* renamed from: of */
    public static ObjectWriterImplMap m7616of(Type type) {
        return new ObjectWriterImplMap(TypeUtils.getClass(type), 0L);
    }

    /* renamed from: of */
    public static ObjectWriterImplMap m7617of(Type type, Class cls) {
        Type type2;
        Type type3;
        if (type instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) type;
            parameterizedType.getRawType();
            Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
            if (actualTypeArguments.length == 2) {
                Type type4 = actualTypeArguments[0];
                type3 = actualTypeArguments[1];
                type2 = type4;
                return new ObjectWriterImplMap(type2, type3, cls, type, 0L);
            }
        }
        type2 = null;
        type3 = null;
        return new ObjectWriterImplMap(type2, type3, cls, type, 0L);
    }
}
