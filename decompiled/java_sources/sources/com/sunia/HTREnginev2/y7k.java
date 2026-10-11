package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONB;
import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONFactory;
import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.util.Fnv;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.Collection;
import java.util.function.Function;

/* loaded from: classes3.dex */
public final class y7k extends bak {

    /* renamed from: a */
    public static final y7k f90463a = new y7k();

    /* renamed from: b */
    public static final long f90464b = Fnv.hashCode64("[Double");

    public y7k() {
        super(Double[].class);
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object createInstance(Collection collection) {
        Double d;
        Double[] dArr = new Double[collection.size()];
        int i = 0;
        for (Object obj : collection) {
            if (obj == null) {
                d = null;
            } else if (obj instanceof Number) {
                d = Double.valueOf(((Number) obj).doubleValue());
            } else {
                Function typeConvert = JSONFactory.defaultObjectReaderProvider.getTypeConvert(obj.getClass(), Double.class);
                if (typeConvert == null) {
                    throw new JSONException("can not cast to Double " + obj.getClass());
                }
                d = (Double) typeConvert.apply(obj);
            }
            dArr[i] = d;
            i++;
        }
        return dArr;
    }

    @Override // com.sunia.HTREnginev2.bak, com.alibaba.fastjson2.reader.ObjectReader
    public Object readJSONBObject(JSONReader jSONReader, Type type, Object obj, long j) {
        if (jSONReader.nextIfMatch(JSONB.Constants.BC_TYPED_ANY) && jSONReader.readTypeHashCode() != f90464b) {
            throw new JSONException("not support autoType : " + jSONReader.getString());
        }
        int startArray = jSONReader.startArray();
        if (startArray == -1) {
            return null;
        }
        Double[] dArr = new Double[startArray];
        for (int i = 0; i < startArray; i++) {
            dArr[i] = jSONReader.readDouble();
        }
        return dArr;
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
        Double[] dArr = new Double[16];
        int i = 0;
        while (!jSONReader.nextIfArrayEnd()) {
            if (jSONReader.isEnd()) {
                throw new JSONException(jSONReader.info("input end"));
            }
            int i2 = i + 1;
            if (i2 - dArr.length > 0) {
                int length = dArr.length;
                int i3 = length + (length >> 1);
                if (i3 - i2 < 0) {
                    i3 = i2;
                }
                dArr = (Double[]) Arrays.copyOf(dArr, i3);
            }
            dArr[i] = jSONReader.readDouble();
            i = i2;
        }
        jSONReader.nextIfComma();
        return Arrays.copyOf(dArr, i);
    }
}
