package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.function.ObjShortConsumer;
import com.alibaba.fastjson2.reader.FieldReader;
import com.alibaba.fastjson2.util.TypeUtils;

/* loaded from: classes3.dex */
public final class acg<T> extends FieldReader<T> {

    /* renamed from: o */
    public final ObjShortConsumer<T> f64556o;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public acg(java.lang.String r13, int r14, long r15, java.lang.String r17, java.util.Locale r18, java.lang.Short r19, java.lang.reflect.Method r20, com.alibaba.fastjson2.function.ObjShortConsumer<T> r21) {
        /*
            r12 = this;
            java.lang.Class r3 = java.lang.Short.TYPE
            r11 = 0
            r0 = r12
            r1 = r13
            r2 = r3
            r4 = r14
            r5 = r15
            r7 = r17
            r8 = r18
            r9 = r19
            r10 = r20
            r0.<init>(r1, r2, r3, r4, r5, r7, r8, r9, r10, r11)
            r1 = r21
            r0.f64556o = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.acg.<init>(java.lang.String, int, long, java.lang.String, java.util.Locale, java.lang.Short, java.lang.reflect.Method, com.alibaba.fastjson2.function.ObjShortConsumer):void");
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, short s) {
        this.f64556o.accept(t, s);
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void readFieldValue(JSONReader jSONReader, T t) {
        this.f64556o.accept(t, (short) jSONReader.readInt32Value());
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, Object obj) {
        this.f64556o.accept(t, TypeUtils.toShortValue(obj));
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public Object readFieldValue(JSONReader jSONReader) {
        return Short.valueOf((short) jSONReader.readInt32Value());
    }
}
