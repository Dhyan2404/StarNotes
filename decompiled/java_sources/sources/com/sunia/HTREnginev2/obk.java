package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONB;
import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl;
import java.lang.reflect.Type;
import java.math.BigDecimal;

/* loaded from: classes3.dex */
public final class obk extends ObjectWriterPrimitiveImpl {

    /* renamed from: a */
    public static final obk f79541a = new obk();

    /* renamed from: b */
    public static final byte[] f79542b = JSONB.toBytes("[BigDecimal");

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
        BigDecimal[] bigDecimalArr = (BigDecimal[]) obj;
        jSONWriter.startArray();
        for (int i = 0; i < bigDecimalArr.length; i++) {
            if (i != 0) {
                jSONWriter.writeComma();
            }
            jSONWriter.writeDecimal(bigDecimalArr[i], 0L, null);
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
            jSONWriter.writeTypeName(f79542b, -2138534155605614069L);
        }
        BigDecimal[] bigDecimalArr = (BigDecimal[]) obj;
        jSONWriter.startArray(bigDecimalArr.length);
        for (BigDecimal bigDecimal : bigDecimalArr) {
            jSONWriter.writeDecimal(bigDecimal, 0L, null);
        }
    }
}
