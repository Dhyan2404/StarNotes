package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONWriter;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.List;

/* loaded from: classes3.dex */
public final class pfg<T> extends mfg<T> {
    public pfg(String str, Type type, int i, long j, String str2, String str3, Method method, Type type2, Class cls) {
        super(str, type, i, j, str2, str3, type2, cls, null, method);
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public Object getFieldValue(Object obj) {
        try {
            return this.method.invoke(obj, new Object[0]);
        } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e) {
            throw new JSONException("invoke getter method error, " + this.fieldName, e);
        }
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public boolean write(JSONWriter jSONWriter, T t) {
        try {
            List<String> list = (List) getFieldValue(t);
            long features = this.features | jSONWriter.getFeatures();
            if (list == null) {
                if ((features & (JSONWriter.Feature.WriteNulls.mask | JSONWriter.Feature.NullAsDefaultValue.mask | JSONWriter.Feature.WriteNullListAsEmpty.mask)) == 0) {
                    return false;
                }
                writeFieldName(jSONWriter);
                jSONWriter.writeArrayNull();
                return true;
            }
            if ((JSONWriter.Feature.NotWriteEmptyArray.mask & features) != 0 && list.isEmpty()) {
                return false;
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
            if ((features & JSONWriter.Feature.ReferenceDetection.mask) != 0) {
                jSONWriter.popPath(list);
            }
            return true;
        } catch (JSONException e) {
            if (jSONWriter.isIgnoreErrorGetter()) {
                return false;
            }
            throw e;
        }
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public void writeValue(JSONWriter jSONWriter, T t) {
        List list = (List) getFieldValue(t);
        if (list == null) {
            jSONWriter.writeNull();
        } else {
            writeList(jSONWriter, false, list);
        }
    }
}
