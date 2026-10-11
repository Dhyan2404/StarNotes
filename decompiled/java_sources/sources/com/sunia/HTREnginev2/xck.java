package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONArray;
import com.alibaba.fastjson2.JSONB;
import com.alibaba.fastjson2.JSONFactory;
import com.alibaba.fastjson2.JSONObject;
import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.util.Fnv;
import com.alibaba.fastjson2.util.TypeUtils;
import com.alibaba.fastjson2.writer.ObjectWriter;
import com.alibaba.fastjson2.writer.ObjectWriterImplMap;
import com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl;
import com.alibaba.fastjson2.writer.ObjectWriterProvider;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public final class xck extends ObjectWriterPrimitiveImpl {

    /* renamed from: h */
    public static final xck f89521h = new xck(null, null, null, null, 0);

    /* renamed from: i */
    public static final xck f89522i = new xck(JSONArray.class, null, null, null, 0);

    /* renamed from: j */
    public static final xck f89523j;

    /* renamed from: k */
    public static final Class f89524k;

    /* renamed from: l */
    public static final String f89525l;

    /* renamed from: m */
    public static final byte[] f89526m;

    /* renamed from: n */
    public static final long f89527n;

    /* renamed from: a */
    public final Class f89528a;

    /* renamed from: b */
    public final Type f89529b;

    /* renamed from: c */
    public final Class f89530c;

    /* renamed from: d */
    public final Type f89531d;

    /* renamed from: e */
    public final long f89532e;

    /* renamed from: f */
    public final boolean f89533f;

    /* renamed from: g */
    public volatile ObjectWriter f89534g;

    static {
        Class classJSONArray1x = JSONFactory.getClassJSONArray1x();
        if (classJSONArray1x == null) {
            f89523j = null;
        } else {
            f89523j = new xck(classJSONArray1x, null, null, null, 0L);
        }
        f89524k = new ArrayList().subList(0, 0).getClass();
        String typeName = TypeUtils.getTypeName(ArrayList.class);
        f89525l = typeName;
        f89526m = JSONB.toBytes(typeName);
        f89527n = Fnv.hashCode64(typeName);
    }

    public xck(Class cls, Type type, Class cls2, Type type2, long j) {
        this.f89528a = cls;
        this.f89529b = type;
        this.f89530c = cls2;
        this.f89531d = type2;
        this.f89532e = j;
        this.f89533f = (cls2 == null || ObjectWriterProvider.isNotReferenceDetect(cls2)) ? false : true;
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void write(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        Class<?> cls;
        int i;
        ObjectWriter objectWriter;
        boolean isRefDetect;
        ObjectWriter objectWriter2;
        boolean z;
        int i2;
        String path;
        ObjectWriter objectWriter3;
        DecimalFormat decimalFormat;
        if (obj == null) {
            jSONWriter.writeArrayNull();
            return;
        }
        List list = (List) obj;
        DecimalFormat decimalFormat2 = null;
        if (jSONWriter.jsonb) {
            jSONWriter.startArray(list.size());
            ObjectWriter objectWriter4 = null;
            for (int i3 = 0; i3 < list.size(); i3++) {
                Object obj3 = list.get(i3);
                if (obj3 == null) {
                    jSONWriter.writeNull();
                } else {
                    Class<?> cls2 = obj3.getClass();
                    if (cls2 == decimalFormat2) {
                        decimalFormat = decimalFormat2;
                        objectWriter3 = objectWriter4;
                    } else {
                        objectWriter3 = jSONWriter.getObjectWriter(cls2);
                        decimalFormat = cls2;
                    }
                    objectWriter4 = objectWriter3;
                    objectWriter4.writeJSONB(jSONWriter, obj3, Integer.valueOf(i3), this.f89531d, j);
                    decimalFormat2 = decimalFormat;
                }
            }
            return;
        }
        JSONWriter.Context context = jSONWriter.context;
        ObjectWriterProvider objectWriterProvider = context.provider;
        jSONWriter.startArray();
        Class<?> cls3 = null;
        ObjectWriter objectWriter5 = null;
        int i4 = 0;
        boolean z2 = true;
        while (i4 < list.size()) {
            if (i4 != 0) {
                jSONWriter.writeComma();
            }
            Object obj4 = list.get(i4);
            if (obj4 == null) {
                jSONWriter.writeNull();
            } else {
                Class<?> cls4 = obj4.getClass();
                if (cls4 == String.class) {
                    jSONWriter.writeString((String) obj4);
                } else {
                    if (cls4 == Integer.class) {
                        i = i4;
                        if ((objectWriterProvider.f12886f & 2) == 0) {
                            jSONWriter.writeInt32((Integer) obj4);
                            cls = cls3;
                        } else {
                            cls = cls3;
                            objectWriterProvider.getObjectWriter(cls4, cls4, false).write(jSONWriter, obj4, Integer.valueOf(i), Integer.class, j);
                        }
                    } else {
                        cls = cls3;
                        i = i4;
                        if (cls4 == Long.class) {
                            if ((objectWriterProvider.f12886f & 4) == 0) {
                                jSONWriter.writeInt64((Long) obj4);
                            } else {
                                objectWriterProvider.getObjectWriter(cls4, cls4, false).write(jSONWriter, obj4, Integer.valueOf(i), Long.class, j);
                            }
                        } else if (cls4 == Boolean.class) {
                            if ((objectWriterProvider.f12886f & 2) == 0) {
                                jSONWriter.writeBool(((Boolean) obj4).booleanValue());
                            } else {
                                objectWriterProvider.getObjectWriter(cls4, cls4, false).write(jSONWriter, obj4, Integer.valueOf(i), Boolean.class, j);
                            }
                        } else if (cls4 != BigDecimal.class) {
                            if (cls4 != this.f89530c || this.f89534g == null) {
                                if (cls4 == cls) {
                                    objectWriter2 = objectWriter5;
                                } else {
                                    if (cls4 == JSONObject.class) {
                                        objectWriter = ObjectWriterImplMap.f12854r;
                                        isRefDetect = jSONWriter.isRefDetect();
                                    } else if (cls4 == JSONFactory.getClassJSONObject1x()) {
                                        objectWriter = ObjectWriterImplMap.getINSTANCE1();
                                        isRefDetect = jSONWriter.isRefDetect();
                                    } else if (cls4 == JSONArray.class) {
                                        objectWriter = f89522i;
                                        isRefDetect = jSONWriter.isRefDetect();
                                    } else if (cls4 == JSONFactory.getClassJSONArray1x()) {
                                        objectWriter = f89523j;
                                        isRefDetect = jSONWriter.isRefDetect();
                                    } else {
                                        objectWriter = context.getObjectWriter(cls4);
                                        isRefDetect = jSONWriter.isRefDetect(obj4);
                                    }
                                    z2 = isRefDetect;
                                    if (cls4 == this.f89530c) {
                                        this.f89534g = objectWriter;
                                    }
                                    cls = cls4;
                                    objectWriter2 = objectWriter;
                                    objectWriter5 = objectWriter2;
                                }
                                z = z2;
                            } else {
                                objectWriter2 = this.f89534g;
                                z = z2;
                                z2 = this.f89533f && jSONWriter.isRefDetect();
                            }
                            if (!z2 || (path = jSONWriter.setPath(i, obj4)) == null) {
                                i2 = i;
                                objectWriter2.write(jSONWriter, obj4, Integer.valueOf(i), this.f89531d, this.f89532e);
                                if (z2) {
                                    jSONWriter.popPath(obj4);
                                }
                            } else {
                                jSONWriter.writeReference(path);
                                jSONWriter.popPath(obj4);
                                i2 = i;
                            }
                            cls3 = cls;
                            z2 = z;
                            i4 = i2 + 1;
                            decimalFormat2 = null;
                        } else if ((objectWriterProvider.f12886f & 8) == 0) {
                            jSONWriter.writeDecimal((BigDecimal) obj4, j, decimalFormat2);
                        } else {
                            objectWriterProvider.getObjectWriter(cls4, cls4, false).write(jSONWriter, obj4, Integer.valueOf(i), BigDecimal.class, j);
                        }
                    }
                    i2 = i;
                    cls3 = cls;
                    i4 = i2 + 1;
                    decimalFormat2 = null;
                }
            }
            cls = cls3;
            i = i4;
            i2 = i;
            cls3 = cls;
            i4 = i2 + 1;
            decimalFormat2 = null;
        }
        jSONWriter.endArray();
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl, com.alibaba.fastjson2.writer.ObjectWriter
    public void writeArrayMappingJSONB(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        if (obj == null) {
            jSONWriter.writeArrayNull();
            return;
        }
        List list = (List) obj;
        jSONWriter.startArray(list.size());
        Class<?> cls = null;
        ObjectWriter objectWriter = null;
        for (int i = 0; i < list.size(); i++) {
            Object obj3 = list.get(i);
            if (obj3 == null) {
                jSONWriter.writeNull();
            } else {
                Class<?> cls2 = obj3.getClass();
                if (cls2 != cls) {
                    objectWriter = jSONWriter.getObjectWriter(cls2);
                    cls = cls2;
                }
                objectWriter.writeArrayMappingJSONB(jSONWriter, obj3, Integer.valueOf(i), this.f89531d, this.f89532e | j);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:109:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0156  */
    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void writeJSONB(com.alibaba.fastjson2.JSONWriter r20, java.lang.Object r21, java.lang.Object r22, java.lang.reflect.Type r23, long r24) {
        /*
            Method dump skipped, instructions count: 357
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.xck.writeJSONB(com.alibaba.fastjson2.JSONWriter, java.lang.Object, java.lang.Object, java.lang.reflect.Type, long):void");
    }
}
