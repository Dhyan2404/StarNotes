package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.util.TypeUtils;
import com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl;
import java.lang.reflect.Type;
import java.util.List;

/* loaded from: classes3.dex */
public final class yck extends ObjectWriterPrimitiveImpl {

    /* renamed from: a */
    public final Class f90592a;

    /* renamed from: b */
    public final Class f90593b;

    /* renamed from: c */
    public final long f90594c;

    /* renamed from: d */
    public byte[] f90595d;

    public yck(Class cls, Class cls2, long j) {
        this.f90592a = cls;
        this.f90593b = cls2;
        this.f90594c = j;
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void write(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        if (obj == null) {
            jSONWriter.writeNull();
            return;
        }
        List list = (List) obj;
        jSONWriter.startArray();
        for (int i = 0; i < list.size(); i++) {
            if (i != 0) {
                jSONWriter.writeComma();
            }
            String str = (String) list.get(i);
            if (str == null) {
                jSONWriter.writeNull();
            } else {
                jSONWriter.writeString(str);
            }
        }
        jSONWriter.endArray();
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void writeJSONB(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        if (obj == null) {
            jSONWriter.writeNull();
            return;
        }
        Class<?> cls = obj.getClass();
        if (jSONWriter.isWriteTypeInfo(obj) && this.f90592a != cls) {
            jSONWriter.writeTypeName(TypeUtils.getTypeName((Class) cls));
        }
        List list = (List) obj;
        int size = list.size();
        jSONWriter.startArray(size);
        boolean isEnabled = jSONWriter.isEnabled(JSONWriter.Feature.WriteEnumUsingToString);
        for (int i = 0; i < size; i++) {
            Enum r4 = (Enum) list.get(i);
            Class<?> cls2 = r4.getClass();
            if (cls2 != this.f90593b) {
                jSONWriter.getObjectWriter(cls2).writeJSONB(jSONWriter, r4, null, this.f90593b, this.f90594c | j);
            } else {
                jSONWriter.writeString(isEnabled ? r4.toString() : r4.name());
            }
        }
        jSONWriter.endArray();
    }
}
