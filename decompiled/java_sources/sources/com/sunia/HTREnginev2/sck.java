package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONB;
import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.util.Fnv;
import com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl;
import java.lang.reflect.Type;

/* loaded from: classes3.dex */
public final class sck extends ObjectWriterPrimitiveImpl {

    /* renamed from: a */
    public static final sck f84014a = new sck();

    /* renamed from: b */
    public static final byte[] f84015b = JSONB.toBytes("[Long");

    /* renamed from: c */
    public static final long f84016c = Fnv.hashCode64("[Long");

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void write(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        if (obj == null) {
            if (!jSONWriter.isEnabled(JSONWriter.Feature.NullAsDefaultValue.mask | JSONWriter.Feature.WriteNullListAsEmpty.mask)) {
                jSONWriter.writeNull();
                return;
            } else {
                jSONWriter.startArray();
                jSONWriter.endArray();
                return;
            }
        }
        Long[] lArr = (Long[]) obj;
        jSONWriter.startArray();
        for (int i = 0; i < lArr.length; i++) {
            if (i != 0) {
                jSONWriter.writeComma();
            }
            Long l = lArr[i];
            if (l == null) {
                jSONWriter.writeNull();
            } else {
                jSONWriter.writeInt64(l.longValue());
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
            jSONWriter.writeTypeName(f84015b, f84016c);
        }
        Long[] lArr = (Long[]) obj;
        jSONWriter.startArray(lArr.length);
        for (Long l : lArr) {
            if (l == null) {
                jSONWriter.writeNull();
            } else {
                jSONWriter.writeInt64(l);
            }
        }
    }
}
