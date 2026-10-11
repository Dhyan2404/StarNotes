package com.alibaba.fastjson2.writer;

import com.alibaba.fastjson2.JSONWriter;
import java.lang.reflect.Type;

/* loaded from: classes3.dex */
public class ObjectWriterImplToString extends ObjectWriterPrimitiveImpl {

    /* renamed from: a */
    public final boolean f12871a;
    public static final ObjectWriterImplToString INSTANCE = new ObjectWriterImplToString(false);
    public static final ObjectWriterImplToString DIRECT = new ObjectWriterImplToString(true);

    public ObjectWriterImplToString() {
        this(false);
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void write(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        if (obj == null) {
            jSONWriter.writeNull();
            return;
        }
        String obj3 = obj.toString();
        if (this.f12871a) {
            jSONWriter.writeRaw(obj3);
        } else {
            jSONWriter.writeString(obj3);
        }
    }

    public ObjectWriterImplToString(boolean z) {
        this.f12871a = z;
    }
}
