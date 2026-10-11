package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONWriter;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.List;

/* loaded from: classes3.dex */
public final class nfg<T> extends mfg<T> {
    public nfg(String str, Type type, int i, long j, String str2, String str3, Type type2, Class cls, Field field) {
        super(str, type, i, j, str2, str3, type2, cls, field, null);
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public boolean write(JSONWriter jSONWriter, T t) {
        List<String> list = (List) getFieldValue(t);
        JSONWriter.Context context = jSONWriter.context;
        if (list == null) {
            if (((this.features | context.getFeatures()) & (JSONWriter.Feature.WriteNulls.mask | JSONWriter.Feature.NullAsDefaultValue.mask | JSONWriter.Feature.WriteNullListAsEmpty.mask)) == 0) {
                return false;
            }
            writeFieldName(jSONWriter);
            jSONWriter.writeArrayNull();
            return true;
        }
        String path = jSONWriter.setPath(this, list);
        if (path != null) {
            writeFieldName(jSONWriter);
            jSONWriter.writeReference(path);
            jSONWriter.popPath(list);
            return true;
        }
        if (this.f77543r == String.class) {
            writeListStr(jSONWriter, true, list);
        } else {
            writeList(jSONWriter, true, list);
        }
        jSONWriter.popPath(list);
        return true;
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public void writeValue(JSONWriter jSONWriter, T t) {
        String path;
        List list = (List) getFieldValue(t);
        if (list == null) {
            jSONWriter.writeNull();
            return;
        }
        boolean isRefDetect = jSONWriter.isRefDetect();
        if (isRefDetect && (path = jSONWriter.setPath(this.fieldName, list)) != null) {
            jSONWriter.writeReference(path);
            jSONWriter.popPath(list);
        } else {
            writeList(jSONWriter, false, list);
            if (isRefDetect) {
                jSONWriter.popPath(list);
            }
        }
    }
}
