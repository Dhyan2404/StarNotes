package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONB;
import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl;
import java.lang.reflect.Type;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes3.dex */
public final class qbk extends ObjectWriterPrimitiveImpl {

    /* renamed from: b */
    public static final qbk f81871b = new qbk(null);

    /* renamed from: c */
    public static final byte[] f81872c = JSONB.toBytes("AtomicInteger");

    /* renamed from: a */
    public final Class f81873a;

    public qbk(Class cls) {
        this.f81873a = cls;
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void write(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        if (obj == null) {
            jSONWriter.writeNumberNull();
        } else {
            jSONWriter.writeInt32(((AtomicInteger) obj).intValue());
        }
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void writeJSONB(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        if (obj == null) {
            jSONWriter.writeNumberNull();
            return;
        }
        AtomicInteger atomicInteger = (AtomicInteger) obj;
        if (jSONWriter.isWriteTypeInfo(atomicInteger, type)) {
            jSONWriter.writeTypeName(f81872c, 7576651708426282938L);
        }
        jSONWriter.writeInt32(atomicInteger.intValue());
    }
}
