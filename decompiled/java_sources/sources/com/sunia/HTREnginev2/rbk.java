package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl;
import java.lang.reflect.Type;
import java.util.concurrent.atomic.AtomicIntegerArray;

/* loaded from: classes3.dex */
public class rbk extends ObjectWriterPrimitiveImpl {

    /* renamed from: a */
    public static final rbk f82949a = new rbk();

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void write(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        if (obj == null) {
            jSONWriter.writeArrayNull();
            return;
        }
        AtomicIntegerArray atomicIntegerArray = (AtomicIntegerArray) obj;
        jSONWriter.startArray();
        for (int i = 0; i < atomicIntegerArray.length(); i++) {
            if (i != 0) {
                jSONWriter.writeComma();
            }
            jSONWriter.writeInt32(atomicIntegerArray.get(i));
        }
        jSONWriter.endArray();
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void writeJSONB(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        if (obj == null) {
            jSONWriter.writeArrayNull();
            return;
        }
        AtomicIntegerArray atomicIntegerArray = (AtomicIntegerArray) obj;
        jSONWriter.startArray(atomicIntegerArray.length());
        for (int i = 0; i < atomicIntegerArray.length(); i++) {
            jSONWriter.writeInt32(atomicIntegerArray.get(i));
        }
    }
}
