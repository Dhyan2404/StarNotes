package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONB;
import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.util.Fnv;
import com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl;
import java.lang.reflect.Type;
import java.util.function.Function;

/* loaded from: classes3.dex */
public final class nck extends ObjectWriterPrimitiveImpl {

    /* renamed from: b */
    public static final nck f78522b = new nck(null);

    /* renamed from: c */
    public static final byte[] f78523c = JSONB.toBytes("[S");

    /* renamed from: d */
    public static final long f78524d = Fnv.hashCode64("[S");

    /* renamed from: a */
    public final Function<Object, short[]> f78525a;

    public nck(Function<Object, short[]> function) {
        this.f78525a = function;
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void write(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        if (obj == null) {
            jSONWriter.writeNull();
            return;
        }
        Function<Object, short[]> function = this.f78525a;
        short[] apply = function != null ? function.apply(obj) : (short[]) obj;
        jSONWriter.startArray();
        for (int i = 0; i < apply.length; i++) {
            if (i != 0) {
                jSONWriter.writeComma();
            }
            jSONWriter.writeInt32(apply[i]);
        }
        jSONWriter.endArray();
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void writeJSONB(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        if (jSONWriter.isWriteTypeInfo(obj, type)) {
            jSONWriter.writeTypeName(f78523c, f78524d);
        }
        Function<Object, short[]> function = this.f78525a;
        short[] apply = (function == null || obj == null) ? (short[]) obj : function.apply(obj);
        jSONWriter.startArray(apply.length);
        for (short s : apply) {
            jSONWriter.writeInt32(s);
        }
    }
}
