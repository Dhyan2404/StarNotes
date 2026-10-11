package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONB;
import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.util.Fnv;
import com.alibaba.fastjson2.writer.ObjectWriter;
import com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl;
import java.lang.reflect.Type;
import java.util.function.Function;

/* loaded from: classes3.dex */
public final class tck extends ObjectWriterPrimitiveImpl {

    /* renamed from: b */
    public static final tck f85191b = new tck(null);

    /* renamed from: c */
    public static final byte[] f85192c = JSONB.toBytes("[J");

    /* renamed from: d */
    public static final long f85193d = Fnv.hashCode64("[J");

    /* renamed from: a */
    public final Function<Object, long[]> f85194a;

    public tck(Function<Object, long[]> function) {
        this.f85194a = function;
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void write(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        if (obj == null) {
            jSONWriter.writeNull();
            return;
        }
        ObjectWriter objectWriter = (jSONWriter.context.provider.f12886f & 4) != 0 ? jSONWriter.context.getObjectWriter(Long.class) : null;
        Function<Object, long[]> function = this.f85194a;
        long[] apply = function != null ? function.apply(obj) : (long[]) obj;
        if (objectWriter == null || objectWriter == ock.f79573a) {
            jSONWriter.writeInt64(apply);
            return;
        }
        jSONWriter.startArray();
        for (int i = 0; i < apply.length; i++) {
            if (i != 0) {
                jSONWriter.writeComma();
            }
            objectWriter.write(jSONWriter, Long.valueOf(apply[i]), Integer.valueOf(i), Long.TYPE, j);
        }
        jSONWriter.endArray();
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void writeJSONB(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        if (obj == null) {
            jSONWriter.writeNull();
            return;
        }
        if (jSONWriter.isWriteTypeInfo(obj, type)) {
            jSONWriter.writeTypeName(f85192c, f85193d);
        }
        Function<Object, long[]> function = this.f85194a;
        jSONWriter.writeInt64(function != null ? function.apply(obj) : (long[]) obj);
    }
}
