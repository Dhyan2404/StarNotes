package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONWriter;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Type;

/* loaded from: classes3.dex */
public abstract class sdg extends vdg {
    public sdg(String str, int i, long j, String str2, String str3, Type type, Class cls, Field field, Method method) {
        super(str, i, j, str2, str3, type, cls, field, method);
    }

    @Override // com.sunia.HTREnginev2.vdg, com.alibaba.fastjson2.writer.FieldWriter
    public boolean write(JSONWriter jSONWriter, Object obj) {
        try {
            boolean booleanValue = ((Boolean) getFieldValue(obj)).booleanValue();
            if (!booleanValue && ((this.features | jSONWriter.getFeatures()) & JSONWriter.Feature.NotWriteDefaultValue.mask) != 0) {
                return false;
            }
            writeBool(jSONWriter, booleanValue);
            return true;
        } catch (RuntimeException e) {
            if (jSONWriter.isIgnoreErrorGetter()) {
                return false;
            }
            throw e;
        }
    }
}
