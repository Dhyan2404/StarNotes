package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONWriter;
import java.util.function.ToIntFunction;

/* loaded from: classes3.dex */
public final class bfg extends xeg {

    /* renamed from: s */
    public final ToIntFunction f65709s;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public bfg(java.lang.String r12, int r13, long r14, java.lang.String r16, java.lang.String r17, java.lang.reflect.Method r18, java.util.function.ToIntFunction r19) {
        /*
            r11 = this;
            java.lang.Class r8 = java.lang.Integer.TYPE
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
            r0.f65709s = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.bfg.<init>(java.lang.String, int, long, java.lang.String, java.lang.String, java.lang.reflect.Method, java.util.function.ToIntFunction):void");
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public Object getFieldValue(Object obj) {
        return Integer.valueOf(this.f65709s.applyAsInt(obj));
    }

    @Override // com.sunia.HTREnginev2.xeg, com.alibaba.fastjson2.writer.FieldWriter
    public boolean write(JSONWriter jSONWriter, Object obj) {
        try {
            writeInt32(jSONWriter, this.f65709s.applyAsInt(obj));
            return true;
        } catch (RuntimeException e) {
            if (jSONWriter.isIgnoreErrorGetter()) {
                return false;
            }
            throw e;
        }
    }

    @Override // com.sunia.HTREnginev2.xeg, com.alibaba.fastjson2.writer.FieldWriter
    public void writeValue(JSONWriter jSONWriter, Object obj) {
        jSONWriter.writeInt32(this.f65709s.applyAsInt(obj));
    }
}
