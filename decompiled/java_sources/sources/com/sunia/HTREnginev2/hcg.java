package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.reader.FieldReader;
import com.alibaba.fastjson2.util.JDKUtils;
import com.alibaba.fastjson2.util.TypeUtils;
import java.lang.reflect.Field;

/* loaded from: classes3.dex */
public class hcg<T> extends FieldReader<T> {

    /* renamed from: o */
    public final long f72072o;

    public hcg(String str, Class cls, int i, String str2, Integer num, Field field) {
        super(str, cls, cls, i, 0L, str2, null, num, null, field);
        this.f72072o = JDKUtils.UNSAFE.objectFieldOffset(field);
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, float f) {
        accept((hcg<T>) t, Integer.valueOf((int) f));
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void readFieldValue(JSONReader jSONReader, T t) {
        JDKUtils.UNSAFE.putInt(t, this.f72072o, jSONReader.readInt32Value());
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void readFieldValueJSONB(JSONReader jSONReader, T t) {
        accept((hcg<T>) t, jSONReader.readInt32Value());
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, double d) {
        accept((hcg<T>) t, Integer.valueOf((int) d));
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, Object obj) {
        JDKUtils.UNSAFE.putInt(t, this.f72072o, TypeUtils.toIntValue(obj));
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public Object readFieldValue(JSONReader jSONReader) {
        return Integer.valueOf(jSONReader.readInt32Value());
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, long j) {
        JDKUtils.UNSAFE.putInt(t, this.f72072o, (int) j);
    }
}
