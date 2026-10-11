package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.function.ToFloatFunction;
import com.alibaba.fastjson2.writer.FieldWriter;
import java.text.DecimalFormat;

/* loaded from: classes3.dex */
public final class reg extends FieldWriter {

    /* renamed from: r */
    public final ToFloatFunction f83026r;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public reg(java.lang.String r12, int r13, long r14, java.lang.String r16, java.lang.String r17, java.lang.reflect.Method r18, com.alibaba.fastjson2.function.ToFloatFunction r19) {
        /*
            r11 = this;
            java.lang.Class r8 = java.lang.Float.TYPE
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
            r0.f83026r = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.reg.<init>(java.lang.String, int, long, java.lang.String, java.lang.String, java.lang.reflect.Method, com.alibaba.fastjson2.function.ToFloatFunction):void");
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public Object getFieldValue(Object obj) {
        return Float.valueOf(this.f83026r.applyAsFloat(obj));
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public boolean write(JSONWriter jSONWriter, Object obj) {
        try {
            float applyAsFloat = this.f83026r.applyAsFloat(obj);
            writeFieldName(jSONWriter);
            DecimalFormat decimalFormat = this.decimalFormat;
            if (decimalFormat != null) {
                jSONWriter.writeFloat(applyAsFloat, decimalFormat);
                return true;
            }
            jSONWriter.writeFloat(applyAsFloat);
            return true;
        } catch (RuntimeException e) {
            if (jSONWriter.isIgnoreErrorGetter()) {
                return false;
            }
            throw e;
        }
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public void writeValue(JSONWriter jSONWriter, Object obj) {
        float applyAsFloat = this.f83026r.applyAsFloat(obj);
        DecimalFormat decimalFormat = this.decimalFormat;
        if (decimalFormat != null) {
            jSONWriter.writeDouble(applyAsFloat, decimalFormat);
        } else {
            jSONWriter.writeDouble(applyAsFloat);
        }
    }
}
