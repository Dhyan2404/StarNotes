package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONB;
import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.util.Fnv;
import com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl;
import java.lang.reflect.Type;

/* loaded from: classes3.dex */
public final class mdk extends ObjectWriterPrimitiveImpl {

    /* renamed from: a */
    public static final byte[] f77489a = JSONB.toBytes("[String");

    /* renamed from: b */
    public static final long f77490b = Fnv.hashCode64("[String");

    /* renamed from: c */
    public static final mdk f77491c = new mdk();

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void write(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        if (obj == null) {
            jSONWriter.writeArrayNull();
        } else {
            jSONWriter.writeString((String[]) obj);
        }
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void writeJSONB(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        if (obj == null) {
            jSONWriter.writeArrayNull();
            return;
        }
        if (jSONWriter.isWriteTypeInfo(obj, type, j)) {
            jSONWriter.writeTypeName(f77489a, f77490b);
        }
        String[] strArr = (String[]) obj;
        jSONWriter.startArray(strArr.length);
        for (String str : strArr) {
            if (str != null) {
                jSONWriter.writeString(str);
            } else if (jSONWriter.isEnabled(JSONWriter.Feature.NullAsDefaultValue.mask | JSONWriter.Feature.WriteNullStringAsEmpty.mask)) {
                jSONWriter.writeString("");
            } else {
                jSONWriter.writeNull();
            }
        }
    }
}
