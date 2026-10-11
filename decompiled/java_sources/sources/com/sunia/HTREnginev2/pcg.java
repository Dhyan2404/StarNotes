package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.reader.FieldReader;
import com.alibaba.fastjson2.util.JDKUtils;
import com.alibaba.fastjson2.util.TypeUtils;
import java.lang.reflect.Field;

/* loaded from: classes3.dex */
public class pcg<T> extends FieldReader<T> {

    /* renamed from: o */
    public final long f80665o;

    public pcg(String str, Class cls, int i, long j, String str2, Long l, Field field) {
        super(str, cls, cls, i, j, str2, null, l, null, field);
        this.f80665o = JDKUtils.UNSAFE.objectFieldOffset(field);
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, float f) {
        accept((pcg<T>) t, Long.valueOf(f));
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void readFieldValue(JSONReader jSONReader, T t) {
        JDKUtils.UNSAFE.putLong(t, this.f80665o, jSONReader.readInt64Value());
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void readFieldValueJSONB(JSONReader jSONReader, T t) {
        readFieldValue(jSONReader, t);
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, double d) {
        accept((pcg<T>) t, Long.valueOf((long) d));
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, Object obj) {
        JDKUtils.UNSAFE.putLong(t, this.f80665o, TypeUtils.toLongValue(obj));
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public Object readFieldValue(JSONReader jSONReader) {
        return Long.valueOf(jSONReader.readInt64Value());
    }
}
