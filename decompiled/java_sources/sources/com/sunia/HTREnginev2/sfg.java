package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONWriter;
import java.util.function.ToLongFunction;

/* loaded from: classes3.dex */
public final class sfg<T> extends beg<T> {

    /* renamed from: z */
    public final ToLongFunction f84099z;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public sfg(java.lang.String r12, int r13, long r14, java.lang.String r16, java.lang.String r17, java.lang.reflect.Method r18, java.util.function.ToLongFunction r19) {
        /*
            r11 = this;
            java.lang.Class r8 = java.lang.Long.TYPE
            r9 = 0
            r0 = r11
            r1 = r12
            r2 = r13
            r3 = r14
            r5 = r16
            r6 = r17
            r7 = r8
            r10 = r18
            r0.<init>(r1, r2, r3, r5, r6, r7, r8, r9, r10)
            r1 = r19
            r0.f84099z = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.sfg.<init>(java.lang.String, int, long, java.lang.String, java.lang.String, java.lang.reflect.Method, java.util.function.ToLongFunction):void");
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public Object getFieldValue(T t) {
        return Long.valueOf(this.f84099z.applyAsLong(t));
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public boolean write(JSONWriter jSONWriter, T t) {
        writeDate(jSONWriter, this.f84099z.applyAsLong(t));
        return true;
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public void writeValue(JSONWriter jSONWriter, T t) {
        writeDate(jSONWriter, false, this.f84099z.applyAsLong(t));
    }
}
