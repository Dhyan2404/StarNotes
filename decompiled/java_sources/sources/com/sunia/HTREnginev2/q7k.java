package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONB;
import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.util.Fnv;
import java.lang.reflect.Type;
import java.util.Arrays;

/* loaded from: classes3.dex */
public class q7k extends bak {

    /* renamed from: a */
    public static final q7k f81744a = new q7k();

    /* renamed from: b */
    public static final long f81745b = Fnv.hashCode64("[Z");

    public q7k() {
        super(boolean[].class);
    }

    @Override // com.sunia.HTREnginev2.bak, com.alibaba.fastjson2.reader.ObjectReader
    public Object readJSONBObject(JSONReader jSONReader, Type type, Object obj, long j) {
        if (jSONReader.nextIfMatch(JSONB.Constants.BC_TYPED_ANY) && jSONReader.readTypeHashCode() != f81745b) {
            throw new JSONException("not support autoType : " + jSONReader.getString());
        }
        int startArray = jSONReader.startArray();
        if (startArray == -1) {
            return null;
        }
        boolean[] zArr = new boolean[startArray];
        for (int i = 0; i < startArray; i++) {
            zArr[i] = jSONReader.readBoolValue();
        }
        return zArr;
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object readObject(JSONReader jSONReader, Type type, Object obj, long j) {
        if (jSONReader.readIfNull()) {
            return null;
        }
        if (!jSONReader.nextIfArrayStart()) {
            if (!jSONReader.isString()) {
                throw new JSONException(jSONReader.info("TODO"));
            }
            String readString = jSONReader.readString();
            if (readString.isEmpty()) {
                return null;
            }
            throw new JSONException(jSONReader.info("not support input " + readString));
        }
        boolean[] zArr = new boolean[16];
        int i = 0;
        while (!jSONReader.nextIfArrayEnd()) {
            int i2 = i + 1;
            if (i2 - zArr.length > 0) {
                int length = zArr.length;
                int i3 = length + (length >> 1);
                if (i3 - i2 < 0) {
                    i3 = i2;
                }
                zArr = Arrays.copyOf(zArr, i3);
            }
            zArr[i] = jSONReader.readBoolValue();
            i = i2;
        }
        jSONReader.nextIfComma();
        return Arrays.copyOf(zArr, i);
    }
}
