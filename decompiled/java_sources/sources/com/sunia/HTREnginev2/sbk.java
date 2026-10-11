package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONB;
import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl;
import java.lang.reflect.Type;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes3.dex */
public final class sbk extends ObjectWriterPrimitiveImpl {

    /* renamed from: b */
    public static final sbk f83989b = new sbk(null);

    /* renamed from: c */
    public static final byte[] f83990c = JSONB.toBytes("AtomicLong");

    /* renamed from: a */
    public final Class f83991a;

    public sbk(Class cls) {
        this.f83991a = cls;
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void write(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        if (obj == null) {
            jSONWriter.writeNumberNull();
        } else {
            jSONWriter.writeInt64(((Number) obj).longValue());
        }
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void writeJSONB(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        if (obj == null) {
            jSONWriter.writeNumberNull();
            return;
        }
        AtomicLong atomicLong = (AtomicLong) obj;
        if (jSONWriter.isWriteTypeInfo(atomicLong, type)) {
            jSONWriter.writeTypeName(f83990c, -1591858996898070466L);
        }
        jSONWriter.writeInt64(atomicLong.longValue());
    }
}
