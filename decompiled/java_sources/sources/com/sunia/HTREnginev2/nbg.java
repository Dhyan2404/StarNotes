package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.reader.FieldReader;
import com.alibaba.fastjson2.util.TypeUtils;
import java.util.function.ObjDoubleConsumer;

/* loaded from: classes3.dex */
public final class nbg<T> extends FieldReader<T> {

    /* renamed from: o */
    public final ObjDoubleConsumer<T> f78488o;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public nbg(java.lang.String r13, int r14, java.lang.Double r15, java.lang.reflect.Method r16, java.util.function.ObjDoubleConsumer<T> r17) {
        /*
            r12 = this;
            java.lang.Class r3 = java.lang.Double.TYPE
            r5 = 0
            r7 = 0
            r8 = 0
            r11 = 0
            r0 = r12
            r1 = r13
            r2 = r3
            r4 = r14
            r9 = r15
            r10 = r16
            r0.<init>(r1, r2, r3, r4, r5, r7, r8, r9, r10, r11)
            r1 = r17
            r0.f78488o = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.nbg.<init>(java.lang.String, int, java.lang.Double, java.lang.reflect.Method, java.util.function.ObjDoubleConsumer):void");
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, double d) {
        this.f78488o.accept(t, d);
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void readFieldValue(JSONReader jSONReader, T t) {
        this.f78488o.accept(t, jSONReader.readDoubleValue());
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, Object obj) {
        this.f78488o.accept(t, TypeUtils.toDoubleValue(obj));
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public Object readFieldValue(JSONReader jSONReader) {
        return Double.valueOf(jSONReader.readDoubleValue());
    }
}
