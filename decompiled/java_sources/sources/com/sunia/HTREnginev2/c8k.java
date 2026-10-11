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
public class c8k extends bak {

    /* renamed from: b */
    public static final c8k f66602b = new c8k(null);

    /* renamed from: c */
    public static final long f66603c = Fnv.hashCode64("[F");

    /* renamed from: a */
    public final Function<float[], Object> f66604a;

    public c8k(Function<float[], Object> function) {
        super(float[].class);
        this.f66604a = function;
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object createInstance(Collection collection) {
        float floatValue;
        float[] fArr = new float[collection.size()];
        int i = 0;
        for (Object obj : collection) {
            if (obj == null) {
                floatValue = 0.0f;
            } else if (obj instanceof Number) {
                floatValue = ((Number) obj).floatValue();
            } else {
                Function typeConvert = JSONFactory.defaultObjectReaderProvider.getTypeConvert(obj.getClass(), Float.TYPE);
                if (typeConvert == null) {
                    throw new JSONException("can not cast to float " + obj.getClass());
                }
                floatValue = ((Float) typeConvert.apply(obj)).floatValue();
            }
            fArr[i] = floatValue;
            i++;
        }
        Function<float[], Object> function = this.f66604a;
        return function != null ? function.apply(fArr) : fArr;
    }

    @Override // com.sunia.HTREnginev2.bak, com.alibaba.fastjson2.reader.ObjectReader
    public Object readJSONBObject(JSONReader jSONReader, Type type, Object obj, long j) {
        if (jSONReader.nextIfMatch(JSONB.Constants.BC_TYPED_ANY) && jSONReader.readTypeHashCode() != f66603c) {
            throw new JSONException("not support autoType : " + jSONReader.getString());
        }
        int startArray = jSONReader.startArray();
        if (startArray == -1) {
            return null;
        }
        float[] fArr = new float[startArray];
        for (int i = 0; i < startArray; i++) {
            fArr[i] = jSONReader.readFloatValue();
        }
        Function<float[], Object> function = this.f66604a;
        return function != null ? function.apply(fArr) : fArr;
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
        float[] fArr = new float[16];
        int i = 0;
        while (!jSONReader.nextIfArrayEnd()) {
            if (jSONReader.isEnd()) {
                throw new JSONException(jSONReader.info("input end"));
            }
            int i2 = i + 1;
            if (i2 - fArr.length > 0) {
                int length = fArr.length;
                int i3 = length + (length >> 1);
                if (i3 - i2 < 0) {
                    i3 = i2;
                }
                fArr = Arrays.copyOf(fArr, i3);
            }
            fArr[i] = jSONReader.readFloatValue();
            i = i2;
        }
        jSONReader.nextIfComma();
        float[] copyOf = Arrays.copyOf(fArr, i);
        Function<float[], Object> function = this.f66604a;
        return function != null ? function.apply(copyOf) : copyOf;
    }
}
