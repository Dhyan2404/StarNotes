package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl;
import java.lang.reflect.Type;
import java.text.DecimalFormat;

/* loaded from: classes3.dex */
public final class gck extends ObjectWriterPrimitiveImpl {

    /* renamed from: b */
    public static final gck f70903b = new gck(null);

    /* renamed from: a */
    public final DecimalFormat f70904a;

    public gck(DecimalFormat decimalFormat) {
        this.f70904a = decimalFormat;
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void write(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        if (obj == null) {
            jSONWriter.writeNull();
            return;
        }
        DecimalFormat decimalFormat = this.f70904a;
        if (decimalFormat != null) {
            jSONWriter.writeRaw(decimalFormat.format(obj));
            return;
        }
        jSONWriter.writeDouble(((Double) obj).doubleValue());
        if (((jSONWriter.getFeatures() | j) & JSONWriter.Feature.WriteClassName.mask) == 0 || type == Double.class || type == Double.TYPE) {
            return;
        }
        jSONWriter.writeRaw('D');
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void writeJSONB(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        if (obj == null) {
            jSONWriter.writeNull();
        } else {
            jSONWriter.writeDouble(((Double) obj).doubleValue());
        }
    }
}
