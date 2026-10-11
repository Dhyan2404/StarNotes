package com.alibaba.fastjson2.writer;

import com.alibaba.fastjson2.JSONWriter;
import java.lang.reflect.Type;
import java.util.List;

/* loaded from: classes3.dex */
public class ObjectWriterException extends ObjectWriterAdapter<Exception> {
    public ObjectWriterException(Class cls, long j, List<FieldWriter> list) {
        super(cls, null, null, j, list);
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriterAdapter, com.alibaba.fastjson2.writer.ObjectWriter
    public void write(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        if (jSONWriter.jsonb) {
            writeJSONB(jSONWriter, obj, obj2, type, j);
            return;
        }
        if (hasFilter(jSONWriter)) {
            writeWithFilter(jSONWriter, obj);
            return;
        }
        jSONWriter.startObject();
        if ((jSONWriter.getFeatures(j) & (JSONWriter.Feature.WriteClassName.mask | JSONWriter.Feature.WriteThrowableClassName.mask)) != 0) {
            writeTypeInfo(jSONWriter);
        }
        int size = this.f12839g.size();
        for (int i = 0; i < size; i++) {
            this.f12839g.get(i).write(jSONWriter, obj);
        }
        jSONWriter.endObject();
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriterAdapter, com.alibaba.fastjson2.writer.ObjectWriter
    public void writeJSONB(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        writeClassInfo(jSONWriter);
        int size = this.f12839g.size();
        jSONWriter.startObject();
        for (int i = 0; i < size; i++) {
            this.f12839g.get(i).write(jSONWriter, obj);
        }
        jSONWriter.endObject();
    }
}
