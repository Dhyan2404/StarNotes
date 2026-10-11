package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl;
import java.lang.reflect.Type;

/* loaded from: classes3.dex */
public final class mck extends ObjectWriterPrimitiveImpl {

    /* renamed from: a */
    public static final mck f77466a = new mck();

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void write(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        if (obj == null) {
            jSONWriter.writeNumberNull();
            return;
        }
        jSONWriter.writeInt32(((Short) obj).shortValue());
        if (((jSONWriter.getFeatures() | j) & JSONWriter.Feature.WriteClassName.mask) == 0 || type == Short.class || type == Short.TYPE) {
            return;
        }
        jSONWriter.writeRaw('S');
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void writeJSONB(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        if (obj == null) {
            jSONWriter.writeNumberNull();
        } else {
            jSONWriter.writeInt16(((Short) obj).shortValue());
        }
    }
}
