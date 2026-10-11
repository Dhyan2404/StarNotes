package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl;
import java.lang.reflect.Type;
import java.util.function.BiFunction;
import java.util.function.ToIntFunction;

/* loaded from: classes3.dex */
public class xbk extends ObjectWriterPrimitiveImpl {

    /* renamed from: a */
    public final ToIntFunction f89475a;

    /* renamed from: b */
    public final BiFunction<Object, Integer, Boolean> f89476b;

    public xbk(ToIntFunction toIntFunction, BiFunction<Object, Integer, Boolean> biFunction) {
        this.f89475a = toIntFunction;
        this.f89476b = biFunction;
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void write(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        if (obj == null) {
            jSONWriter.writeArrayNull();
            return;
        }
        int applyAsInt = this.f89475a.applyAsInt(obj);
        jSONWriter.startArray();
        for (int i = 0; i < applyAsInt; i++) {
            boolean booleanValue = this.f89476b.apply(obj, Integer.valueOf(i)).booleanValue();
            if (i != 0) {
                jSONWriter.writeComma();
            }
            jSONWriter.writeBool(booleanValue);
        }
        jSONWriter.endArray();
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void writeJSONB(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        if (obj == null) {
            jSONWriter.writeArrayNull();
            return;
        }
        if (jSONWriter.isWriteTypeInfo(obj, type, j)) {
            jSONWriter.writeTypeName(wbk.f88443c, wbk.f88444d);
        }
        int applyAsInt = this.f89475a.applyAsInt(obj);
        jSONWriter.startArray(applyAsInt);
        for (int i = 0; i < applyAsInt; i++) {
            jSONWriter.writeBool(this.f89476b.apply(obj, Integer.valueOf(i)).booleanValue());
        }
    }
}
