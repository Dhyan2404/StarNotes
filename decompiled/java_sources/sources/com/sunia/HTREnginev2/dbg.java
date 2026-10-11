package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.reader.FieldReader;

/* loaded from: classes3.dex */
public final class dbg<T> extends FieldReader<T> {
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public dbg(java.lang.String r13, int r14, long r15, java.lang.String r17, java.lang.Character r18, java.lang.reflect.Field r19) {
        /*
            r12 = this;
            java.lang.Class r3 = java.lang.Character.TYPE
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
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.dbg.<init>(java.lang.String, int, long, java.lang.String, java.lang.Character, java.lang.reflect.Field):void");
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, Object obj) {
        char charValue;
        if (obj instanceof String) {
            charValue = ((String) obj).charAt(0);
        } else {
            if (!(obj instanceof Character)) {
                throw new JSONException("cast to char error");
            }
            charValue = ((Character) obj).charValue();
        }
        try {
            this.field.set(t, Character.valueOf(charValue));
        } catch (Exception e) {
            throw new JSONException("set " + this.fieldName + " error", e);
        }
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void readFieldValue(JSONReader jSONReader, T t) {
        char readCharValue = jSONReader.readCharValue();
        if (readCharValue == 0 && jSONReader.wasNull()) {
            return;
        }
        accept((dbg<T>) t, readCharValue);
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public Object readFieldValue(JSONReader jSONReader) {
        return Character.valueOf(jSONReader.readCharValue());
    }
}
