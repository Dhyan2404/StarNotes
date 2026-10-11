package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.util.TypeUtils;
import com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public final class zck extends ObjectWriterPrimitiveImpl {

    /* renamed from: a */
    public static final zck f91615a = new zck();

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void write(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        if (obj == null) {
            jSONWriter.writeNull();
            return;
        }
        List list = (List) obj;
        jSONWriter.startArray();
        for (int i = 0; i < list.size(); i++) {
            if (i != 0) {
                jSONWriter.writeComma();
            }
            String str = (String) list.get(i);
            if (str == null) {
                jSONWriter.writeNull();
            } else {
                jSONWriter.writeString(str);
            }
        }
        jSONWriter.endArray();
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void writeJSONB(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        Class<List> cls;
        if (obj == null) {
            jSONWriter.writeArrayNull();
            return;
        }
        if (type == TypeUtils.PARAM_TYPE_LIST_STR) {
            cls = List.class;
        } else if (type instanceof Class) {
            cls = (Class) type;
        } else {
            if (type instanceof ParameterizedType) {
                Type rawType = ((ParameterizedType) type).getRawType();
                if (rawType instanceof Class) {
                    cls = (Class) rawType;
                }
            }
            cls = null;
        }
        Class<?> cls2 = obj.getClass();
        if (cls2 != ArrayList.class && jSONWriter.isWriteTypeInfo(obj, (Class) cls, j)) {
            if (cls2 == xck.f89524k) {
                cls2 = ArrayList.class;
            }
            jSONWriter.writeTypeName(TypeUtils.getTypeName((Class) cls2));
        }
        jSONWriter.writeString((List<String>) obj);
    }
}
