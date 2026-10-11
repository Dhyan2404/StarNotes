package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.writer.ObjectWriter;
import java.lang.reflect.Type;
import java.math.BigInteger;

/* loaded from: classes3.dex */
public final class kbk implements ObjectWriter {

    /* renamed from: b */
    public static final kbk f75261b = new kbk(0);

    /* renamed from: a */
    public final long f75262a;

    public kbk(long j) {
        this.f75262a = j;
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void write(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        if (obj == null) {
            jSONWriter.writeNumberNull();
        } else {
            jSONWriter.writeBigInt((BigInteger) obj, j);
        }
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void writeJSONB(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        if (obj == null) {
            jSONWriter.writeNumberNull();
        } else {
            jSONWriter.writeBigInt((BigInteger) obj, j);
        }
    }
}
