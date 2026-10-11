package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl;
import java.lang.reflect.Type;
import java.util.OptionalDouble;

/* loaded from: classes3.dex */
public final class idk extends ObjectWriterPrimitiveImpl {

    /* renamed from: a */
    public static final idk f73156a = new idk();

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void write(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        if (obj == null) {
            jSONWriter.writeNull();
            return;
        }
        OptionalDouble optionalDouble = (OptionalDouble) obj;
        if (optionalDouble.isPresent()) {
            jSONWriter.writeDouble(optionalDouble.getAsDouble());
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
        OptionalDouble optionalDouble = (OptionalDouble) obj;
        if (optionalDouble.isPresent()) {
            jSONWriter.writeDouble(optionalDouble.getAsDouble());
        } else {
            jSONWriter.writeNull();
        }
    }
}
