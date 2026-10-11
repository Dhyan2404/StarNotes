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
public final class b8k extends bak {

    /* renamed from: a */
    public static final b8k f65528a = new b8k();

    /* renamed from: b */
    public static final long f65529b = Fnv.hashCode64("[Float");

    public b8k() {
        super(Float[].class);
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object createInstance(Collection collection) {
        Float f;
        Float[] fArr = new Float[collection.size()];
        int i = 0;
        for (Object obj : collection) {
            if (obj == null) {
                f = null;
            } else if (obj instanceof Number) {
                f = Float.valueOf(((Number) obj).floatValue());
            } else {
                Function typeConvert = JSONFactory.defaultObjectReaderProvider.getTypeConvert(obj.getClass(), Float.class);
                if (typeConvert == null) {
                    throw new JSONException("can not cast to Float " + obj.getClass());
                }
                f = (Float) typeConvert.apply(obj);
            }
            fArr[i] = f;
            i++;
        }
        return fArr;
    }

    @Override // com.sunia.HTREnginev2.bak, com.alibaba.fastjson2.reader.ObjectReader
    public Object readJSONBObject(JSONReader jSONReader, Type type, Object obj, long j) {
        if (jSONReader.nextIfMatch(JSONB.Constants.BC_TYPED_ANY) && jSONReader.readTypeHashCode() != f65529b) {
            throw new JSONException("not support autoType : " + jSONReader.getString());
        }
        int startArray = jSONReader.startArray();
        if (startArray == -1) {
            return null;
        }
        Float[] fArr = new Float[startArray];
        for (int i = 0; i < startArray; i++) {
            fArr[i] = jSONReader.readFloat();
        }
        return fArr;
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
        Float[] fArr = new Float[16];
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
                fArr = (Float[]) Arrays.copyOf(fArr, i3);
            }
            fArr[i] = jSONReader.readFloat();
            i = i2;
        }
        jSONReader.nextIfComma();
        return Arrays.copyOf(fArr, i);
    }
}
