package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONB;
import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.util.Fnv;
import com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.lang.reflect.Type;
import java.util.function.Function;

/* loaded from: classes3.dex */
public final class qck extends ObjectWriterPrimitiveImpl {

    /* renamed from: b */
    public static final qck f81900b = new qck(null);

    /* renamed from: c */
    public static final byte[] f81901c = JSONB.toBytes(Constants.TYPES_INDEX_SIG);

    /* renamed from: d */
    public static final long f81902d = Fnv.hashCode64(Constants.TYPES_INDEX_SIG);

    /* renamed from: a */
    public final Function<Object, int[]> f81903a;

    public qck(Function<Object, int[]> function) {
        this.f81903a = function;
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void write(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        if (obj == null) {
            jSONWriter.writeNull();
        } else {
            Function<Object, int[]> function = this.f81903a;
            jSONWriter.writeInt32(function != null ? function.apply(obj) : (int[]) obj);
        }
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void writeJSONB(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        if (obj == null) {
            jSONWriter.writeNull();
            return;
        }
        if (jSONWriter.isWriteTypeInfo(obj, type)) {
            jSONWriter.writeTypeName(f81901c, f81902d);
        }
        Function<Object, int[]> function = this.f81903a;
        jSONWriter.writeInt32(function != null ? function.apply(obj) : (int[]) obj);
    }
}
