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
public class z7k extends bak {

    /* renamed from: b */
    public static final z7k f91495b = new z7k(null);

    /* renamed from: c */
    public static final long f91496c = Fnv.hashCode64("[D");

    /* renamed from: a */
    public final Function<double[], Object> f91497a;

    public z7k(Function<double[], Object> function) {
        super(double[].class);
        this.f91497a = function;
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object createInstance(Collection collection) {
        double doubleValue;
        double[] dArr = new double[collection.size()];
        int i = 0;
        for (Object obj : collection) {
            if (obj == null) {
                doubleValue = 0.0d;
            } else if (obj instanceof Number) {
                doubleValue = ((Number) obj).doubleValue();
            } else {
                Function typeConvert = JSONFactory.defaultObjectReaderProvider.getTypeConvert(obj.getClass(), Double.TYPE);
                if (typeConvert == null) {
                    throw new JSONException("can not cast to double " + obj.getClass());
                }
                doubleValue = ((Double) typeConvert.apply(obj)).doubleValue();
            }
            dArr[i] = doubleValue;
            i++;
        }
        Function<double[], Object> function = this.f91497a;
        return function != null ? function.apply(dArr) : dArr;
    }

    @Override // com.sunia.HTREnginev2.bak, com.alibaba.fastjson2.reader.ObjectReader
    public Object readJSONBObject(JSONReader jSONReader, Type type, Object obj, long j) {
        if (jSONReader.nextIfMatch(JSONB.Constants.BC_TYPED_ANY) && jSONReader.readTypeHashCode() != f91496c) {
            throw new JSONException("not support autoType : " + jSONReader.getString());
        }
        int startArray = jSONReader.startArray();
        if (startArray == -1) {
            return null;
        }
        double[] dArr = new double[startArray];
        for (int i = 0; i < startArray; i++) {
            dArr[i] = jSONReader.readDoubleValue();
        }
        Function<double[], Object> function = this.f91497a;
        return function != null ? function.apply(dArr) : dArr;
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
        double[] dArr = new double[16];
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
                dArr = Arrays.copyOf(dArr, i3);
            }
            dArr[i] = jSONReader.readDoubleValue();
            i = i2;
        }
        jSONReader.nextIfComma();
        double[] copyOf = Arrays.copyOf(dArr, i);
        Function<double[], Object> function = this.f91497a;
        return function != null ? function.apply(copyOf) : copyOf;
    }
}
