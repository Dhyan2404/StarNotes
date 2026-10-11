package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.writer.FieldWriter;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.List;
import java.util.function.Function;

/* loaded from: classes3.dex */
public final class qfg<T> extends FieldWriter<T> {

    /* renamed from: r */
    public final Function<T, List> f81994r;

    public qfg(String str, int i, long j, String str2, String str3, Method method, Function<T, List> function, Type type, Class cls) {
        super(str, i, j, str2, str3, type, cls, null, method);
        this.f81994r = function;
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public Object getFieldValue(T t) {
        return this.f81994r.apply(t);
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public boolean write(JSONWriter jSONWriter, T t) {
        int i = 0;
        try {
            List apply = this.f81994r.apply(t);
            long features = this.features | jSONWriter.getFeatures();
            if (apply == null) {
                if ((features & (JSONWriter.Feature.WriteNulls.mask | JSONWriter.Feature.NullAsDefaultValue.mask | JSONWriter.Feature.WriteNullListAsEmpty.mask)) == 0) {
                    return false;
                }
                writeFieldName(jSONWriter);
                jSONWriter.writeArrayNull();
                return true;
            }
            if ((features & JSONWriter.Feature.NotWriteEmptyArray.mask) != 0 && apply.isEmpty()) {
                return false;
            }
            writeFieldName(jSONWriter);
            if (jSONWriter.jsonb) {
                int size = apply.size();
                jSONWriter.startArray(size);
                while (i < size) {
                    String str = (String) apply.get(i);
                    if (str == null) {
                        jSONWriter.writeNull();
                    } else {
                        jSONWriter.writeString(str);
                    }
                    i++;
                }
                return true;
            }
            jSONWriter.startArray();
            while (i < apply.size()) {
                if (i != 0) {
                    jSONWriter.writeComma();
                }
                String str2 = (String) apply.get(i);
                if (str2 == null) {
                    jSONWriter.writeNull();
                } else {
                    jSONWriter.writeString(str2);
                }
                i++;
            }
            jSONWriter.endArray();
            return true;
        } catch (RuntimeException e) {
            if (jSONWriter.isIgnoreErrorGetter()) {
                return false;
            }
            throw e;
        }
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public void writeValue(JSONWriter jSONWriter, T t) {
        List apply = this.f81994r.apply(t);
        if (apply == null) {
            jSONWriter.writeNull();
            return;
        }
        int i = 0;
        if (jSONWriter.jsonb) {
            int size = apply.size();
            jSONWriter.startArray(size);
            while (i < size) {
                String str = (String) apply.get(i);
                if (str == null) {
                    jSONWriter.writeNull();
                } else {
                    jSONWriter.writeString(str);
                }
                i++;
            }
            return;
        }
        jSONWriter.startArray();
        while (i < apply.size()) {
            if (i != 0) {
                jSONWriter.writeComma();
            }
            String str2 = (String) apply.get(i);
            if (str2 == null) {
                jSONWriter.writeNull();
            } else {
                jSONWriter.writeString(str2);
            }
            i++;
        }
        jSONWriter.endArray();
    }
}
