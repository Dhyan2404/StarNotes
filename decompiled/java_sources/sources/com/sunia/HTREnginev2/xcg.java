package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.function.ObjByteConsumer;
import com.alibaba.fastjson2.reader.FieldReader;
import com.alibaba.fastjson2.util.TypeUtils;

/* loaded from: classes3.dex */
public final class xcg<T> extends FieldReader<T> {

    /* renamed from: o */
    public final ObjByteConsumer<T> f89519o;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public xcg(java.lang.String r13, int r14, java.lang.reflect.Method r15, com.alibaba.fastjson2.function.ObjByteConsumer<T> r16) {
        /*
            r12 = this;
            java.lang.Class r3 = java.lang.Byte.TYPE
            r5 = 0
            r7 = 0
            r8 = 0
            r9 = 0
            r11 = 0
            r0 = r12
            r1 = r13
            r2 = r3
            r4 = r14
            r10 = r15
            r0.<init>(r1, r2, r3, r4, r5, r7, r8, r9, r10, r11)
            r1 = r16
            r0.f89519o = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.xcg.<init>(java.lang.String, int, java.lang.reflect.Method, com.alibaba.fastjson2.function.ObjByteConsumer):void");
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, byte b) {
        this.f89519o.accept(t, b);
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void readFieldValue(JSONReader jSONReader, T t) {
        this.f89519o.accept(t, (byte) jSONReader.readInt32Value());
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, Object obj) {
        this.f89519o.accept(t, TypeUtils.toByteValue(obj));
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public Object readFieldValue(JSONReader jSONReader) {
        return Byte.valueOf((byte) jSONReader.readInt32Value());
    }
}
