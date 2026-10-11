package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.function.ObjBoolConsumer;
import com.alibaba.fastjson2.reader.FieldReader;
import com.alibaba.fastjson2.util.TypeUtils;

/* loaded from: classes3.dex */
public final class abg<T> extends FieldReader<T> {

    /* renamed from: o */
    public final ObjBoolConsumer<T> f64523o;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public abg(java.lang.String r13, int r14, java.lang.reflect.Method r15, com.alibaba.fastjson2.function.ObjBoolConsumer<T> r16) {
        /*
            r12 = this;
            java.lang.Class r3 = java.lang.Boolean.TYPE
            r5 = 0
            r7 = 0
            r8 = 0
            r9 = 0
            r11 = 0
            r0 = r12
            r1 = r13
            r2 = r3
            r4 = r14
            r10 = r15
            r0.<init>(r1, r2, r3, r4, r5, r7, r8, r9, r10, r11)
            r1 = r16
            r0.f64523o = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.abg.<init>(java.lang.String, int, java.lang.reflect.Method, com.alibaba.fastjson2.function.ObjBoolConsumer):void");
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, Object obj) {
        this.f64523o.accept(t, TypeUtils.toBooleanValue(obj));
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void readFieldValue(JSONReader jSONReader, T t) {
        this.f64523o.accept(t, jSONReader.readBoolValue());
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, boolean z) {
        this.f64523o.accept(t, z);
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public Object readFieldValue(JSONReader jSONReader) {
        return jSONReader.readBool();
    }
}
