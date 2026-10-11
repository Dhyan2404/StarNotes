package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.reader.FieldReader;
import com.alibaba.fastjson2.util.TypeUtils;
import java.util.function.ObjLongConsumer;

/* loaded from: classes3.dex */
public final class qcg<T> extends FieldReader<T> {

    /* renamed from: o */
    public final ObjLongConsumer<T> f81897o;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public qcg(java.lang.String r13, int r14, java.lang.Long r15, java.lang.reflect.Method r16, java.util.function.ObjLongConsumer<T> r17) {
        /*
            r12 = this;
            java.lang.Class r3 = java.lang.Long.TYPE
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
            r0.f81897o = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.qcg.<init>(java.lang.String, int, java.lang.Long, java.lang.reflect.Method, java.util.function.ObjLongConsumer):void");
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, long j) {
        this.f81897o.accept(t, j);
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void readFieldValue(JSONReader jSONReader, T t) {
        this.f81897o.accept(t, jSONReader.readInt64Value());
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, Object obj) {
        this.f81897o.accept(t, TypeUtils.toLongValue(obj));
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public Object readFieldValue(JSONReader jSONReader) {
        return Long.valueOf(jSONReader.readInt64Value());
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, int i) {
        this.f81897o.accept(t, i);
    }
}
