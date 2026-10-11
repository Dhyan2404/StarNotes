package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONB;
import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.util.Fnv;
import com.alibaba.fastjson2.util.IOUtils;
import com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.function.Function;
import java.util.zip.GZIPOutputStream;

/* loaded from: classes3.dex */
public final class wck extends ObjectWriterPrimitiveImpl {

    /* renamed from: b */
    public static final wck f88496b = new wck(null);

    /* renamed from: c */
    public static final byte[] f88497c = JSONB.toBytes("[B");

    /* renamed from: d */
    public static final long f88498d = Fnv.hashCode64("[B");

    /* renamed from: a */
    public final Function<Object, byte[]> f88499a;

    public wck(Function<Object, byte[]> function) {
        this.f88499a = function;
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void write(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        if (obj == null) {
            jSONWriter.writeArrayNull();
            return;
        }
        Function<Object, byte[]> function = this.f88499a;
        byte[] apply = function != null ? function.apply(obj) : (byte[]) obj;
        String dateFormat = jSONWriter.context.getDateFormat();
        GZIPOutputStream gZIPOutputStream = null;
        if ("millis".equals(dateFormat)) {
            dateFormat = null;
        }
        if ("gzip".equals(dateFormat) || "gzip,base64".equals(dateFormat)) {
            try {
                try {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    gZIPOutputStream = apply.length < 512 ? new GZIPOutputStream(byteArrayOutputStream, apply.length) : new GZIPOutputStream(byteArrayOutputStream);
                    gZIPOutputStream.write(apply);
                    gZIPOutputStream.finish();
                    apply = byteArrayOutputStream.toByteArray();
                } catch (IOException e) {
                    throw new JSONException("write gzipBytes error", e);
                }
            } finally {
                IOUtils.close(gZIPOutputStream);
            }
        }
        if ("base64".equals(dateFormat) || "gzip,base64".equals(dateFormat) || (jSONWriter.getFeatures(j) & JSONWriter.Feature.WriteByteArrayAsBase64.mask) != 0) {
            jSONWriter.writeBase64(apply);
            return;
        }
        jSONWriter.startArray();
        for (int i = 0; i < apply.length; i++) {
            if (i != 0) {
                jSONWriter.writeComma();
            }
            jSONWriter.writeInt32(apply[i]);
        }
        jSONWriter.endArray();
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void writeJSONB(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        if (jSONWriter.isWriteTypeInfo(obj, type)) {
            if (obj == byte[].class) {
                jSONWriter.writeTypeName(f88497c, f88498d);
            } else {
                jSONWriter.writeTypeName(obj.getClass().getName());
            }
        }
        Function<Object, byte[]> function = this.f88499a;
        jSONWriter.writeBinary((function == null || obj == null) ? (byte[]) obj : function.apply(obj));
    }
}
