package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONB;
import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.util.Fnv;
import com.alibaba.fastjson2.util.TypeUtils;
import com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl;
import java.lang.reflect.Type;
import java.util.Currency;

/* loaded from: classes3.dex */
public final class eck extends ObjectWriterPrimitiveImpl {

    /* renamed from: b */
    public static final eck f68813b = new eck(null);

    /* renamed from: c */
    public static final eck f68814c = new eck(null);

    /* renamed from: d */
    public static final byte[] f68815d = JSONB.toBytes(TypeUtils.getTypeName(Currency.class));

    /* renamed from: e */
    public static final long f68816e = Fnv.hashCode64(TypeUtils.getTypeName(Currency.class));

    /* renamed from: a */
    public final Class f68817a;

    public eck(Class cls) {
        this.f68817a = cls;
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void write(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        if (jSONWriter.jsonb) {
            writeJSONB(jSONWriter, obj, obj2, type, j);
        } else if (obj == null) {
            jSONWriter.writeNull();
        } else {
            jSONWriter.writeString(((Currency) obj).getCurrencyCode());
        }
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void writeJSONB(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        if (obj == null) {
            jSONWriter.writeNull();
            return;
        }
        Currency currency = (Currency) obj;
        if (jSONWriter.isWriteTypeInfo(currency) && this.f68817a == null) {
            jSONWriter.writeTypeName(f68815d, f68816e);
        }
        jSONWriter.writeString(currency.getCurrencyCode());
    }
}
