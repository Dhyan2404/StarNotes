package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl;
import java.lang.reflect.Type;
import java.util.Map;

/* loaded from: classes3.dex */
public final class edk extends ObjectWriterPrimitiveImpl {

    /* renamed from: a */
    public static final edk f68847a = new edk();

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void write(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        Map.Entry entry = (Map.Entry) obj;
        if (entry == null) {
            jSONWriter.writeNull();
            return;
        }
        jSONWriter.startObject();
        jSONWriter.writeAny(entry.getKey());
        jSONWriter.writeColon();
        jSONWriter.writeAny(entry.getValue());
        jSONWriter.endObject();
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void writeJSONB(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        Map.Entry entry = (Map.Entry) obj;
        if (entry == null) {
            jSONWriter.writeNull();
            return;
        }
        jSONWriter.startArray(2);
        jSONWriter.writeAny(entry.getKey());
        jSONWriter.writeAny(entry.getValue());
    }
}
