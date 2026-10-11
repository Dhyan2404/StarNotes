package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl;
import java.lang.reflect.Type;

/* loaded from: classes3.dex */
public class ybk extends ObjectWriterPrimitiveImpl {

    /* renamed from: a */
    public static final ybk f90568a = new ybk();

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void write(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        if (obj == null) {
            jSONWriter.writeBooleanNull();
        } else {
            jSONWriter.writeBool(((Boolean) obj).booleanValue());
        }
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void writeJSONB(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        if (obj == null) {
            jSONWriter.writeBooleanNull();
        } else {
            jSONWriter.writeBool(((Boolean) obj).booleanValue());
        }
    }
}
