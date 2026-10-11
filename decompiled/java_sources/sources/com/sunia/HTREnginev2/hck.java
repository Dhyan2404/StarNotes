package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONB;
import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.util.Fnv;
import com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl;
import java.lang.reflect.Type;
import java.text.DecimalFormat;
import java.util.function.Function;

/* loaded from: classes3.dex */
public final class hck extends ObjectWriterPrimitiveImpl {

    /* renamed from: c */
    public static final hck f72073c = new hck(null);

    /* renamed from: d */
    public static final byte[] f72074d = JSONB.toBytes("[D");

    /* renamed from: e */
    public static final long f72075e = Fnv.hashCode64("[D");

    /* renamed from: a */
    public final DecimalFormat f72076a;

    /* renamed from: b */
    public final Function<Object, double[]> f72077b;

    public hck(DecimalFormat decimalFormat) {
        this.f72076a = decimalFormat;
        this.f72077b = null;
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void write(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        Function<Object, double[]> function = this.f72077b;
        double[] apply = (function == null || obj == null) ? (double[]) obj : function.apply(obj);
        DecimalFormat decimalFormat = this.f72076a;
        if (decimalFormat == null) {
            jSONWriter.writeDouble(apply);
        } else {
            jSONWriter.writeDouble(apply, decimalFormat);
        }
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void writeJSONB(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        if (jSONWriter.isWriteTypeInfo(obj, type)) {
            jSONWriter.writeTypeName(f72074d, f72075e);
        }
        Function<Object, double[]> function = this.f72077b;
        jSONWriter.writeDouble((function == null || obj == null) ? (double[]) obj : function.apply(obj));
    }

    public hck(Function<Object, double[]> function, DecimalFormat decimalFormat) {
        this.f72077b = function;
        this.f72076a = decimalFormat;
    }
}
