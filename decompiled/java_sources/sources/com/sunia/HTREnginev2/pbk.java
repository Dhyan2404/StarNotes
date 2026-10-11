package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl;
import java.lang.reflect.Type;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes3.dex */
public final class pbk extends ObjectWriterPrimitiveImpl {

    /* renamed from: a */
    public static final pbk f80639a = new pbk();

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void write(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        if (obj == null) {
            jSONWriter.writeBooleanNull();
        } else {
            jSONWriter.writeBool(((AtomicBoolean) obj).get());
        }
    }
}
