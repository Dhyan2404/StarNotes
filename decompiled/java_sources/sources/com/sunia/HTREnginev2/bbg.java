package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.reader.FieldReader;
import com.alibaba.fastjson2.util.JDKUtils;
import com.alibaba.fastjson2.util.TypeUtils;

/* loaded from: classes3.dex */
public final class bbg<T> extends FieldReader<T> {
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public bbg(java.lang.String r13, int r14, long r15, java.lang.String r17, java.lang.Boolean r18, java.lang.reflect.Field r19) {
        /*
            r12 = this;
            java.lang.Class r3 = java.lang.Boolean.TYPE
            r8 = 0
            r10 = 0
            r0 = r12
            r1 = r13
            r2 = r3
            r4 = r14
            r5 = r15
            r7 = r17
            r9 = r18
            r11 = r19
            r0.<init>(r1, r2, r3, r4, r5, r7, r8, r9, r10, r11)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.bbg.<init>(java.lang.String, int, long, java.lang.String, java.lang.Boolean, java.lang.reflect.Field):void");
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, int i) {
        accept((bbg<T>) t, TypeUtils.toBooleanValue(Integer.valueOf(i)));
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void readFieldValue(JSONReader jSONReader, T t) {
        try {
            this.field.setBoolean(t, jSONReader.readBoolValue());
        } catch (Exception e) {
            throw new JSONException(jSONReader.info("set " + this.fieldName + " error"), e);
        }
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, Object obj) {
        if (obj == null) {
            if ((this.features & JSONReader.Feature.IgnoreSetNullValue.mask) != 0) {
                return;
            }
            accept((bbg<T>) t, false);
        } else {
            if (obj instanceof Boolean) {
                accept((bbg<T>) t, ((Boolean) obj).booleanValue());
                return;
            }
            throw new JSONException("set " + this.fieldName + " error, type not support " + obj.getClass());
        }
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public Object readFieldValue(JSONReader jSONReader) {
        return Boolean.valueOf(jSONReader.readBoolValue());
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, boolean z) {
        long j = this.fieldOffset;
        if (j != -1) {
            JDKUtils.UNSAFE.putBoolean(t, j, z);
            return;
        }
        try {
            this.field.setBoolean(t, z);
        } catch (Exception e) {
            throw new JSONException("set " + this.fieldName + " error", e);
        }
    }
}
