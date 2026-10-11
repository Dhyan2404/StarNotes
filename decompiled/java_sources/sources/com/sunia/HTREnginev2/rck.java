package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl;
import com.fasterxml.jackson.core.base.ParserBase;
import java.lang.reflect.Type;

/* loaded from: classes3.dex */
public final class rck extends ObjectWriterPrimitiveImpl {

    /* renamed from: b */
    public static final rck f82975b = new rck(null);

    /* renamed from: a */
    public final Class f82976a;

    public rck(Class cls) {
        this.f82976a = cls;
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void write(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        if (obj == null) {
            jSONWriter.writeNumberNull();
            return;
        }
        long longValue = ((Number) obj).longValue();
        jSONWriter.writeInt64(longValue);
        if (longValue < ParserBase.f21225q || longValue > 2147483647L) {
            return;
        }
        JSONWriter.Feature feature = JSONWriter.Feature.WriteClassName;
        if ((feature.mask & j) != 0) {
            long features = jSONWriter.getFeatures();
            if ((feature.mask & features) == 0) {
                if ((features & (JSONWriter.Feature.WriteNonStringValueAsString.mask | JSONWriter.Feature.WriteLongAsString.mask)) != 0) {
                    return;
                }
                jSONWriter.writeRaw('L');
            }
        }
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void writeJSONB(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        if (obj == null) {
            jSONWriter.writeNumberNull();
        } else {
            jSONWriter.writeInt64(((Long) obj).longValue());
        }
    }
}
