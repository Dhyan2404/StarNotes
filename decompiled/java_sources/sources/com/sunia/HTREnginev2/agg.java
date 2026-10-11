package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.writer.FieldWriter;
import java.lang.reflect.Field;

/* loaded from: classes3.dex */
public final class agg<T> extends FieldWriter<T> {
    public agg(String str, int i, long j, String str2, String str3, Field field) {
        super(str, i, j, str2, str3, String.class, String.class, field, null);
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public boolean write(JSONWriter jSONWriter, T t) {
        String str = (String) getFieldValue(t);
        if (str == null) {
            long features = this.features | jSONWriter.getFeatures();
            long j = JSONWriter.Feature.WriteNulls.mask;
            long j2 = JSONWriter.Feature.NullAsDefaultValue.mask;
            long j3 = JSONWriter.Feature.WriteNullStringAsEmpty.mask;
            if (((j | j2 | j3) & features) == 0 || (JSONWriter.Feature.NotWriteDefaultValue.mask & features) != 0) {
                return false;
            }
            if ((features & (j2 | j3)) != 0) {
                writeFieldName(jSONWriter);
                jSONWriter.writeString("");
                return true;
            }
        }
        if (this.f12823m && str != null) {
            str = str.trim();
        }
        writeFieldName(jSONWriter);
        if (this.f12822l && jSONWriter.jsonb) {
            jSONWriter.writeSymbol(str);
        } else if (this.f12824n) {
            jSONWriter.writeRaw(str);
        } else {
            jSONWriter.writeString(str);
        }
        return true;
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public void writeValue(JSONWriter jSONWriter, T t) {
        String str = (String) getFieldValue(t);
        if (str == null) {
            jSONWriter.writeNull();
            return;
        }
        if (this.f12823m) {
            str = str.trim();
        }
        if (this.f12824n) {
            jSONWriter.writeRaw(str);
        } else {
            jSONWriter.writeString(str);
        }
    }
}
