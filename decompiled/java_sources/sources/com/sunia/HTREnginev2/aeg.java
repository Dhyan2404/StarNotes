package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.function.ToCharFunction;
import com.alibaba.fastjson2.writer.FieldWriter;

/* loaded from: classes3.dex */
public final class aeg extends FieldWriter {

    /* renamed from: r */
    public final ToCharFunction f64612r;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public aeg(java.lang.String r12, int r13, long r14, java.lang.String r16, java.lang.String r17, java.lang.reflect.Method r18, com.alibaba.fastjson2.function.ToCharFunction r19) {
        /*
            r11 = this;
            java.lang.Class r8 = java.lang.Character.TYPE
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
            r0.f64612r = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.aeg.<init>(java.lang.String, int, long, java.lang.String, java.lang.String, java.lang.reflect.Method, com.alibaba.fastjson2.function.ToCharFunction):void");
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public Object getFieldValue(Object obj) {
        return Character.valueOf(this.f64612r.applyAsChar(obj));
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public boolean write(JSONWriter jSONWriter, Object obj) {
        char applyAsChar = this.f64612r.applyAsChar(obj);
        writeFieldName(jSONWriter);
        jSONWriter.writeChar(applyAsChar);
        return true;
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public void writeValue(JSONWriter jSONWriter, Object obj) {
        jSONWriter.writeChar(this.f64612r.applyAsChar(obj));
    }
}
