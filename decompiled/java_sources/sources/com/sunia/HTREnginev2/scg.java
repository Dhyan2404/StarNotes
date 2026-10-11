package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.reader.FieldReader;
import com.alibaba.fastjson2.util.TypeUtils;
import java.lang.reflect.Field;

/* loaded from: classes3.dex */
public final class scg<T> extends FieldReader<T> {
    public scg(String str, Class cls, int i, long j, String str2, Byte b, Field field) {
        super(str, cls, cls, i, j, str2, null, b, null, field);
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, short s) {
        accept((scg<T>) t, Byte.valueOf((byte) s));
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void readFieldValue(JSONReader jSONReader, T t) {
        Integer readInt32 = jSONReader.readInt32();
        try {
            this.field.set(t, readInt32 == null ? null : Byte.valueOf(readInt32.byteValue()));
        } catch (Exception e) {
            throw new JSONException(jSONReader.info("set " + this.fieldName + " error"), e);
        }
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, float f) {
        accept((scg<T>) t, Byte.valueOf((byte) f));
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, double d) {
        accept((scg<T>) t, Byte.valueOf((byte) d));
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, int i) {
        accept((scg<T>) t, Byte.valueOf((byte) i));
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public Object readFieldValue(JSONReader jSONReader) {
        return Byte.valueOf((byte) jSONReader.readInt32Value());
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, long j) {
        accept((scg<T>) t, Byte.valueOf((byte) j));
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, Object obj) {
        try {
            this.field.set(t, TypeUtils.toByte(obj));
        } catch (Exception e) {
            throw new JSONException("set " + this.fieldName + " error", e);
        }
    }
}
