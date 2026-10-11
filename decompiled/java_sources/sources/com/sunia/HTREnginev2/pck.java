package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONB;
import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.util.Fnv;
import com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl;
import java.lang.reflect.Type;

/* loaded from: classes3.dex */
public final class pck extends ObjectWriterPrimitiveImpl {

    /* renamed from: a */
    public static final pck f80668a = new pck();

    /* renamed from: b */
    public static final byte[] f80669b = JSONB.toBytes("[Integer");

    /* renamed from: c */
    public static final long f80670c = Fnv.hashCode64("[Integer");

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
        Integer[] numArr = (Integer[]) obj;
        jSONWriter.startArray();
        for (int i = 0; i < numArr.length; i++) {
            if (i != 0) {
                jSONWriter.writeComma();
            }
            Integer num = numArr[i];
            if (num == null) {
                jSONWriter.writeNull();
            } else {
                jSONWriter.writeInt32(num);
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
            jSONWriter.writeTypeName(f80669b, f80670c);
        }
        Integer[] numArr = (Integer[]) obj;
        jSONWriter.startArray(numArr.length);
        for (Integer num : numArr) {
            if (num == null) {
                jSONWriter.writeNull();
            } else {
                jSONWriter.writeInt32(num);
            }
        }
    }
}
