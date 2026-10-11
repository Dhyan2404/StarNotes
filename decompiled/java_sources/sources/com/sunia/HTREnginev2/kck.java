package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONB;
import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.util.Fnv;
import com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl;
import java.lang.reflect.Type;
import java.text.DecimalFormat;
import java.util.function.Function;

/* loaded from: classes3.dex */
public final class kck extends ObjectWriterPrimitiveImpl {

    /* renamed from: c */
    public static final kck f75286c = new kck(null, null);

    /* renamed from: d */
    public static final byte[] f75287d = JSONB.toBytes("[F");

    /* renamed from: e */
    public static final long f75288e = Fnv.hashCode64("[F");

    /* renamed from: a */
    public final DecimalFormat f75289a;

    /* renamed from: b */
    public final Function<Object, float[]> f75290b;

    public kck(DecimalFormat decimalFormat) {
        this.f75289a = decimalFormat;
        this.f75290b = null;
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void write(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        Function<Object, float[]> function = this.f75290b;
        float[] apply = (function == null || obj == null) ? (float[]) obj : function.apply(obj);
        DecimalFormat decimalFormat = this.f75289a;
        if (decimalFormat == null) {
            jSONWriter.writeFloat(apply);
        } else {
            jSONWriter.writeFloat(apply, decimalFormat);
        }
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void writeJSONB(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        if (jSONWriter.isWriteTypeInfo(obj, type)) {
            jSONWriter.writeTypeName(f75287d, f75288e);
        }
        Function<Object, float[]> function = this.f75290b;
        jSONWriter.writeFloat((function == null || obj == null) ? (float[]) obj : function.apply(obj));
    }

    public kck(Function<Object, float[]> function, DecimalFormat decimalFormat) {
        this.f75290b = function;
        this.f75289a = decimalFormat;
    }
}
