package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.function.ObjFloatConsumer;
import com.alibaba.fastjson2.reader.FieldReader;
import com.alibaba.fastjson2.util.TypeUtils;

/* loaded from: classes3.dex */
public final class tbg<T> extends FieldReader<T> {

    /* renamed from: o */
    public final ObjFloatConsumer<T> f85156o;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public tbg(java.lang.String r13, int r14, java.lang.Float r15, java.lang.reflect.Method r16, com.alibaba.fastjson2.function.ObjFloatConsumer<T> r17) {
        /*
            r12 = this;
            java.lang.Class r3 = java.lang.Float.TYPE
            r5 = 0
            r7 = 0
            r8 = 0
            r11 = 0
            r0 = r12
            r1 = r13
            r2 = r3
            r4 = r14
            r9 = r15
            r10 = r16
            r0.<init>(r1, r2, r3, r4, r5, r7, r8, r9, r10, r11)
            r1 = r17
            r0.f85156o = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.tbg.<init>(java.lang.String, int, java.lang.Float, java.lang.reflect.Method, com.alibaba.fastjson2.function.ObjFloatConsumer):void");
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, float f) {
        this.f85156o.accept(t, f);
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void readFieldValue(JSONReader jSONReader, T t) {
        this.f85156o.accept(t, jSONReader.readFloatValue());
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, Object obj) {
        this.f85156o.accept(t, TypeUtils.toFloatValue(obj));
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public Object readFieldValue(JSONReader jSONReader) {
        return Float.valueOf(jSONReader.readFloatValue());
    }
}
