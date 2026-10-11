package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl;
import java.lang.reflect.Type;
import java.util.TimeZone;

/* loaded from: classes3.dex */
public final class ndk extends ObjectWriterPrimitiveImpl {

    /* renamed from: a */
    public static final ndk f78549a = new ndk();

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void write(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        if (obj == null) {
            jSONWriter.writeNull();
        } else {
            jSONWriter.writeString(((TimeZone) obj).getID());
        }
    }
}
