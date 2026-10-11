package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONB;
import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.util.Fnv;
import com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl;
import java.lang.reflect.Type;

/* loaded from: classes3.dex */
public final class vck extends ObjectWriterPrimitiveImpl {

    /* renamed from: a */
    public static final vck f87367a = new vck();

    /* renamed from: b */
    public static final byte[] f87368b = JSONB.toBytes("[Byte");

    /* renamed from: c */
    public static final long f87369c = Fnv.hashCode64("[Byte");

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void write(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        if (obj == null) {
            jSONWriter.writeNull();
            return;
        }
        Byte[] bArr = (Byte[]) obj;
        jSONWriter.startArray();
        for (int i = 0; i < bArr.length; i++) {
            if (i != 0) {
                jSONWriter.writeComma();
            }
            Byte b = bArr[i];
            if (b == null) {
                jSONWriter.writeNull();
            } else {
                jSONWriter.writeInt32(b.byteValue());
            }
        }
        jSONWriter.endArray();
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void writeJSONB(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        if (obj == null) {
            jSONWriter.writeNull();
            return;
        }
        if (jSONWriter.isWriteTypeInfo(obj, type)) {
            jSONWriter.writeTypeName(f87368b, f87369c);
        }
        Byte[] bArr = (Byte[]) obj;
        jSONWriter.startArray(bArr.length);
        for (Byte b : bArr) {
            if (b == null) {
                jSONWriter.writeNull();
            } else {
                jSONWriter.writeInt32(b.byteValue());
            }
        }
    }
}
