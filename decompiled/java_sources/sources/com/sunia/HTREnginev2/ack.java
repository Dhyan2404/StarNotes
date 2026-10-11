package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONB;
import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.util.Fnv;
import com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.lang.reflect.Type;
import java.util.function.Function;

/* loaded from: classes3.dex */
public final class ack extends ObjectWriterPrimitiveImpl {

    /* renamed from: b */
    public static final ack f64560b = new ack(null);

    /* renamed from: c */
    public static final byte[] f64561c = JSONB.toBytes(Constants.STATIC_CHAR_DATA_FIELD_SIG);

    /* renamed from: d */
    public static final long f64562d = Fnv.hashCode64(Constants.STATIC_CHAR_DATA_FIELD_SIG);

    /* renamed from: a */
    public final Function<Object, char[]> f64563a;

    public ack(Function<Object, char[]> function) {
        this.f64563a = function;
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void write(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        Function<Object, char[]> function = this.f64563a;
        char[] apply = (function == null || obj == null) ? (char[]) obj : function.apply(obj);
        if (jSONWriter.utf16) {
            jSONWriter.writeString(apply, 0, apply.length);
        } else {
            jSONWriter.writeString(new String(apply));
        }
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void writeJSONB(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        if (jSONWriter.isWriteTypeInfo(obj, type, j)) {
            jSONWriter.writeTypeName(f64561c, f64562d);
        }
        Function<Object, char[]> function = this.f64563a;
        char[] apply = (function == null || obj == null) ? (char[]) obj : function.apply(obj);
        jSONWriter.writeString(apply, 0, apply.length);
    }
}
