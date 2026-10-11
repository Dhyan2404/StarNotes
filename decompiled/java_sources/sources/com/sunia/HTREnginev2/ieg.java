package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.util.JDKUtils;
import com.alibaba.fastjson2.writer.FieldWriter;
import java.text.DecimalFormat;

/* loaded from: classes3.dex */
public final class ieg<T> extends FieldWriter<T> {
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ieg(java.lang.String r12, int r13, java.lang.String r14, java.lang.String r15, java.lang.reflect.Field r16) {
        /*
            r11 = this;
            r3 = 0
            java.lang.Class r8 = java.lang.Double.TYPE
            r10 = 0
            r0 = r11
            r1 = r12
            r2 = r13
            r5 = r14
            r6 = r15
            r7 = r8
            r9 = r16
            r0.<init>(r1, r2, r3, r5, r6, r7, r8, r9, r10)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.ieg.<init>(java.lang.String, int, java.lang.String, java.lang.String, java.lang.reflect.Field):void");
    }

    /* renamed from: c */
    public double m54711c(Object obj) {
        if (obj == null) {
            throw new JSONException("field.get error, " + this.fieldName);
        }
        try {
            long j = this.fieldOffset;
            return j != -1 ? JDKUtils.UNSAFE.getDouble(obj, j) : this.field.getDouble(obj);
        } catch (IllegalAccessException | IllegalArgumentException e) {
            throw new JSONException("field.get error, " + this.fieldName, e);
        }
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public Object getFieldValue(Object obj) {
        return Double.valueOf(m54711c(obj));
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public boolean write(JSONWriter jSONWriter, T t) {
        writeDouble(jSONWriter, m54711c(t));
        return true;
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public void writeValue(JSONWriter jSONWriter, T t) {
        double m54711c = m54711c(t);
        DecimalFormat decimalFormat = this.decimalFormat;
        if (decimalFormat != null) {
            jSONWriter.writeDouble(m54711c, decimalFormat);
        } else {
            jSONWriter.writeDouble(m54711c);
        }
    }
}
