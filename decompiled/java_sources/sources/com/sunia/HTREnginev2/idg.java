package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.reader.FieldReader;
import com.alibaba.fastjson2.util.JDKUtils;
import java.lang.reflect.Field;

/* loaded from: classes3.dex */
public class idg<T> extends FieldReader<T> {

    /* renamed from: o */
    public final boolean f73151o;

    /* renamed from: p */
    public final boolean f73152p;

    /* renamed from: q */
    public final long f73153q;

    public idg(String str, Class cls, int i, long j, String str2, String str3, Field field) {
        super(str, cls, cls, i, j, str2, null, str3, null, field);
        this.f73151o = "trim".equals(str2) || (j & JSONReader.Feature.TrimString.mask) != 0;
        this.f73153q = JDKUtils.UNSAFE.objectFieldOffset(field);
        this.f73152p = (j & JSONReader.Feature.EmptyStringAsNull.mask) != 0;
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, Object obj) {
        String obj2 = (obj == null || (obj instanceof String)) ? (String) obj : obj.toString();
        if (this.f73151o && obj2 != null) {
            obj2 = obj2.trim();
        }
        JDKUtils.UNSAFE.putObject(t, this.f73153q, obj2);
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public String readFieldValue(JSONReader jSONReader) {
        String readString = jSONReader.readString();
        if (this.f73151o && readString != null) {
            readString = readString.trim();
        }
        if (this.f73152p && readString != null && readString.isEmpty()) {
            return null;
        }
        return readString;
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void readFieldValueJSONB(JSONReader jSONReader, T t) {
        String readString = jSONReader.readString();
        if (this.f73151o && readString != null) {
            readString = readString.trim();
        }
        if (this.f73152p && readString != null && readString.isEmpty()) {
            readString = null;
        }
        accept((idg<T>) t, readString);
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public boolean supportAcceptType(Class cls) {
        return true;
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void readFieldValue(JSONReader jSONReader, T t) {
        String readString = jSONReader.readString();
        if (this.f73151o && readString != null) {
            readString = readString.trim();
        }
        JDKUtils.UNSAFE.putObject(t, this.f73153q, readString);
    }
}
