package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl;
import java.lang.reflect.Type;
import java.util.Locale;

/* loaded from: classes3.dex */
public final class ddk extends ObjectWriterPrimitiveImpl {

    /* renamed from: a */
    public static final ddk f67756a = new ddk();

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void write(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        if (obj == null) {
            jSONWriter.writeNull();
        } else {
            jSONWriter.writeString(((Locale) obj).toString());
        }
    }
}
