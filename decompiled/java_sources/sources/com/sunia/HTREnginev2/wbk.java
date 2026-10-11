package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONB;
import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.util.Fnv;
import com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl;
import java.lang.reflect.Type;
import java.util.function.Function;

/* loaded from: classes3.dex */
public class wbk extends ObjectWriterPrimitiveImpl {

    /* renamed from: b */
    public static final wbk f88442b = new wbk(null);

    /* renamed from: c */
    public static final byte[] f88443c = JSONB.toBytes("[Z");

    /* renamed from: d */
    public static final long f88444d = Fnv.hashCode64("[Z");

    /* renamed from: a */
    public final Function<Object, boolean[]> f88445a;

    public wbk(Function<Object, boolean[]> function) {
        this.f88445a = function;
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void write(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        Function<Object, boolean[]> function = this.f88445a;
        jSONWriter.writeBool((function == null || obj == null) ? (boolean[]) obj : function.apply(obj));
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void writeJSONB(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        if (jSONWriter.isWriteTypeInfo(obj, type, j)) {
            jSONWriter.writeTypeName(f88443c, f88444d);
        }
        Function<Object, boolean[]> function = this.f88445a;
        jSONWriter.writeBool((function == null || obj == null) ? (boolean[]) obj : function.apply(obj));
    }
}
