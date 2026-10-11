package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl;
import java.lang.reflect.Type;
import java.util.OptionalInt;

/* loaded from: classes3.dex */
public final class jdk extends ObjectWriterPrimitiveImpl {

    /* renamed from: a */
    public static final jdk f74210a = new jdk();

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void write(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        if (obj == null) {
            jSONWriter.writeNull();
            return;
        }
        OptionalInt optionalInt = (OptionalInt) obj;
        if (optionalInt.isPresent()) {
            jSONWriter.writeInt32(optionalInt.getAsInt());
        } else {
            jSONWriter.writeNull();
        }
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void writeJSONB(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        if (obj == null) {
            jSONWriter.writeNull();
            return;
        }
        OptionalInt optionalInt = (OptionalInt) obj;
        if (optionalInt.isPresent()) {
            jSONWriter.writeInt32(optionalInt.getAsInt());
        } else {
            jSONWriter.writeNull();
        }
    }
}
