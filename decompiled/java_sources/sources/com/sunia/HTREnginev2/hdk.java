package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.writer.FieldWriter;
import com.alibaba.fastjson2.writer.ObjectWriter;
import com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl;
import java.lang.reflect.Type;
import java.util.Locale;
import java.util.Optional;

/* loaded from: classes3.dex */
public final class hdk extends ObjectWriterPrimitiveImpl {

    /* renamed from: e */
    public static final hdk f72105e = new hdk(null, null);

    /* renamed from: a */
    public Type f72106a;

    /* renamed from: b */
    public long f72107b;

    /* renamed from: c */
    public final String f72108c;

    /* renamed from: d */
    public final Locale f72109d;

    public hdk(String str, Locale locale) {
        this.f72108c = str;
        this.f72109d = locale;
    }

    /* renamed from: a */
    public static hdk m54451a(String str, Locale locale) {
        return str == null ? f72105e : new hdk(str, locale);
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void write(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        if (obj == null) {
            jSONWriter.writeNull();
            return;
        }
        Optional optional = (Optional) obj;
        if (!optional.isPresent()) {
            jSONWriter.writeNull();
            return;
        }
        Object obj3 = optional.get();
        Class<?> cls = obj3.getClass();
        String str = this.f72108c;
        ObjectWriter m7602a = str != null ? FieldWriter.m7602a(null, null, str, this.f72109d, cls) : null;
        (m7602a == null ? jSONWriter.getObjectWriter(cls) : m7602a).write(jSONWriter, obj3, obj2, this.f72106a, this.f72107b);
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void writeJSONB(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        if (obj == null) {
            jSONWriter.writeNull();
            return;
        }
        Optional optional = (Optional) obj;
        if (!optional.isPresent()) {
            jSONWriter.writeNull();
        } else {
            Object obj3 = optional.get();
            jSONWriter.getObjectWriter(obj3.getClass()).writeJSONB(jSONWriter, obj3, obj2, null, j);
        }
    }

    public hdk(Type type, String str, Locale locale) {
        this.f72106a = type;
        this.f72108c = str;
        this.f72109d = locale;
    }
}
