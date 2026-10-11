package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl;
import java.lang.reflect.Type;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class ubk extends ObjectWriterPrimitiveImpl {

    /* renamed from: b */
    public static final ubk f86322b = new ubk(null);

    /* renamed from: a */
    public final Class f86323a;

    public ubk(Class cls) {
        this.f86323a = cls;
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void write(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        if (obj == null) {
            jSONWriter.writeNull();
            return;
        }
        Object obj3 = ((AtomicReference) obj).get();
        if (obj3 == null) {
            jSONWriter.writeNull();
        }
        jSONWriter.writeAny(obj3);
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void writeJSONB(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        if (obj == null) {
            jSONWriter.writeNull();
            return;
        }
        Object obj3 = ((AtomicReference) obj).get();
        if (obj3 == null) {
            jSONWriter.writeNull();
        }
        jSONWriter.writeAny(obj3);
    }
}
