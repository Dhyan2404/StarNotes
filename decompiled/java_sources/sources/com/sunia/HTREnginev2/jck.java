package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl;
import java.lang.reflect.Type;
import java.text.DecimalFormat;

/* loaded from: classes3.dex */
public final class jck extends ObjectWriterPrimitiveImpl {

    /* renamed from: b */
    public static final jck f74179b = new jck(null);

    /* renamed from: a */
    public final DecimalFormat f74180a;

    public jck(DecimalFormat decimalFormat) {
        this.f74180a = decimalFormat;
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void write(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        if (obj == null) {
            jSONWriter.writeNull();
            return;
        }
        DecimalFormat decimalFormat = this.f74180a;
        if (decimalFormat != null) {
            jSONWriter.writeRaw(decimalFormat.format(obj));
            return;
        }
        jSONWriter.writeFloat(((Float) obj).floatValue());
        if (((jSONWriter.getFeatures() | j) & JSONWriter.Feature.WriteClassName.mask) == 0 || type == Float.class || type == Float.TYPE) {
            return;
        }
        jSONWriter.writeRaw('F');
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void writeJSONB(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        if (obj == null) {
            jSONWriter.writeNull();
        } else {
            jSONWriter.writeFloat(((Float) obj).floatValue());
        }
    }
}
