package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.function.ObjCharConsumer;
import com.alibaba.fastjson2.reader.FieldReader;

/* loaded from: classes3.dex */
public final class ebg<T> extends FieldReader<T> {

    /* renamed from: o */
    public final ObjCharConsumer<T> f68773o;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ebg(java.lang.String r13, int r14, java.lang.String r15, java.lang.Character r16, java.lang.reflect.Method r17, com.alibaba.fastjson2.function.ObjCharConsumer<T> r18) {
        /*
            r12 = this;
            java.lang.Class r3 = java.lang.Character.TYPE
            r5 = 0
            r8 = 0
            r11 = 0
            r0 = r12
            r1 = r13
            r2 = r3
            r4 = r14
            r7 = r15
            r9 = r16
            r10 = r17
            r0.<init>(r1, r2, r3, r4, r5, r7, r8, r9, r10, r11)
            r1 = r18
            r0.f68773o = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.ebg.<init>(java.lang.String, int, java.lang.String, java.lang.Character, java.lang.reflect.Method, com.alibaba.fastjson2.function.ObjCharConsumer):void");
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, char c) {
        this.f68773o.accept(t, c);
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public String readFieldValue(JSONReader jSONReader) {
        return jSONReader.readString();
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, Object obj) {
        char charValue;
        if (obj instanceof String) {
            charValue = ((String) obj).charAt(0);
        } else if (obj instanceof Character) {
            charValue = ((Character) obj).charValue();
        } else {
            throw new JSONException("cast to char error");
        }
        accept((ebg<T>) t, charValue);
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void readFieldValue(JSONReader jSONReader, T t) {
        char readCharValue = jSONReader.readCharValue();
        if (readCharValue == 0 && jSONReader.wasNull()) {
            return;
        }
        this.f68773o.accept(t, readCharValue);
    }
}
