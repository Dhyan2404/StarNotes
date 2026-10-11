package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.writer.ObjectWriter;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.List;
import java.util.function.Function;

/* loaded from: classes3.dex */
public final class ofg<T> extends mfg<T> {

    /* renamed from: w */
    public final Function<T, List> f79664w;

    public ofg(String str, int i, long j, String str2, String str3, Type type, Method method, Function<T, List> function, Type type2, Class cls) {
        super(str, type, i, j, str2, str3, type2, cls, null, method);
        this.f79664w = function;
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public Object getFieldValue(T t) {
        return this.f79664w.apply(t);
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public boolean write(JSONWriter jSONWriter, T t) {
        try {
            List apply = this.f79664w.apply(t);
            if (apply == null) {
                if (((this.features | jSONWriter.getFeatures()) & (JSONWriter.Feature.WriteNulls.mask | JSONWriter.Feature.NullAsDefaultValue.mask | JSONWriter.Feature.WriteNullListAsEmpty.mask)) == 0) {
                    return false;
                }
                writeFieldName(jSONWriter);
                jSONWriter.writeArrayNull();
                return true;
            }
            if ((this.features & JSONWriter.Feature.NotWriteEmptyArray.mask) != 0 && apply.isEmpty()) {
                return false;
            }
            String path = jSONWriter.setPath(this, apply);
            if (path != null) {
                writeFieldName(jSONWriter);
                jSONWriter.writeReference(path);
                jSONWriter.popPath(apply);
                return true;
            }
            if (this.f77543r == String.class) {
                writeListStr(jSONWriter, true, apply);
            } else {
                writeList(jSONWriter, true, apply);
            }
            jSONWriter.popPath(apply);
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
        List apply = this.f79664w.apply(t);
        if (apply == null) {
            jSONWriter.writeNull();
            return;
        }
        int i = 0;
        Class<?> cls = null;
        if (jSONWriter.jsonb) {
            int size = apply.size();
            jSONWriter.startArray(size);
            ObjectWriter objectWriter = null;
            while (i < size) {
                Object obj = apply.get(i);
                if (obj == null) {
                    jSONWriter.writeNull();
                } else {
                    Class<?> cls2 = obj.getClass();
                    if (cls2 != cls) {
                        objectWriter = getItemWriter(jSONWriter, cls2);
                        cls = cls2;
                    }
                    objectWriter.write(jSONWriter, obj);
                }
                i++;
            }
            return;
        }
        jSONWriter.startArray();
        ObjectWriter objectWriter2 = null;
        while (i < apply.size()) {
            if (i != 0) {
                jSONWriter.writeComma();
            }
            Object obj2 = apply.get(i);
            if (obj2 == null) {
                jSONWriter.writeNull();
            } else {
                Class<?> cls3 = obj2.getClass();
                if (cls3 != cls) {
                    objectWriter2 = getItemWriter(jSONWriter, cls3);
                    cls = cls3;
                }
                objectWriter2.write(jSONWriter, obj2);
            }
            i++;
        }
        jSONWriter.endArray();
    }
}
