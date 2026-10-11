package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONWriter;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.UUID;
import java.util.function.Function;

/* loaded from: classes3.dex */
public final class dgg<T> extends wfg<T> {

    /* renamed from: J */
    public final Function f67849J;

    public dgg(String str, int i, long j, String str2, String str3, Type type, Class cls, Method method, Function function) {
        super(str, i, j, str2, str3, type, cls, null, method);
        this.f67849J = function;
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public Object getFieldValue(Object obj) {
        return this.f67849J.apply(obj);
    }

    @Override // com.sunia.HTREnginev2.wfg, com.alibaba.fastjson2.writer.FieldWriterObject, com.alibaba.fastjson2.writer.FieldWriter
    public boolean write(JSONWriter jSONWriter, T t) {
        UUID uuid = (UUID) this.f67849J.apply(t);
        if (uuid == null) {
            if (((this.features | jSONWriter.getFeatures()) & JSONWriter.Feature.WriteNulls.mask) == 0) {
                return false;
            }
            writeFieldName(jSONWriter);
            jSONWriter.writeNull();
            return true;
        }
        writeFieldName(jSONWriter);
        if (this.f88578y == null) {
            this.f88578y = getObjectWriter(jSONWriter, UUID.class);
        }
        if (this.f88578y != odk.f79605a) {
            this.f88578y.write(jSONWriter, uuid, this.fieldName, this.f88577x, this.features);
        } else {
            jSONWriter.writeUUID(uuid);
        }
        return true;
    }
}
