package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.text.DecimalFormat;
import java.util.function.Function;

/* loaded from: classes3.dex */
public final class vbk extends ObjectWriterPrimitiveImpl {

    /* renamed from: c */
    public static final vbk f87339c = new vbk(null, null);

    /* renamed from: a */
    public final DecimalFormat f87340a;

    /* renamed from: b */
    public final Function<Object, BigDecimal> f87341b;

    public vbk(DecimalFormat decimalFormat, Function<Object, BigDecimal> function) {
        this.f87340a = decimalFormat;
        this.f87341b = function;
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl
    public Function getFunction() {
        return this.f87341b;
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void write(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        Function<Object, BigDecimal> function = this.f87341b;
        jSONWriter.writeDecimal((function == null || obj == null) ? (BigDecimal) obj : function.apply(obj), j, this.f87340a);
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void writeJSONB(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        Function<Object, BigDecimal> function = this.f87341b;
        jSONWriter.writeDecimal((function == null || obj == null) ? (BigDecimal) obj : function.apply(obj), j, this.f87340a);
    }
}
