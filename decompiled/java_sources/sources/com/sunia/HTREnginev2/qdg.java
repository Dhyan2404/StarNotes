package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.writer.FieldWriter;
import java.lang.reflect.Method;
import java.math.BigInteger;
import java.util.function.Function;

/* loaded from: classes3.dex */
public final class qdg<T> extends FieldWriter<T> {

    /* renamed from: r */
    public final Function<T, BigInteger> f81925r;

    public qdg(String str, int i, long j, String str2, String str3, Method method, Function<T, BigInteger> function) {
        super(str, i, j, str2, str3, BigInteger.class, BigInteger.class, null, method);
        this.f81925r = function;
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public Object getFieldValue(T t) {
        return this.f81925r.apply(t);
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public boolean write(JSONWriter jSONWriter, T t) {
        BigInteger apply = this.f81925r.apply(t);
        if (apply == null && ((this.features | jSONWriter.getFeatures()) & JSONWriter.Feature.WriteNulls.mask) == 0) {
            return false;
        }
        writeFieldName(jSONWriter);
        jSONWriter.writeBigInt(apply, this.features);
        return true;
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public void writeValue(JSONWriter jSONWriter, T t) {
        jSONWriter.writeBigInt((BigInteger) getFieldValue(t), this.features);
    }
}
