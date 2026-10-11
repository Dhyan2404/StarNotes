package com.alibaba.fastjson2.reader;

import com.alibaba.fastjson2.JSONB;
import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONFactory;
import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.util.Fnv;
import com.sunia.HTREnginev2.bak;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.Collection;
import java.util.function.Function;

/* loaded from: classes3.dex */
public final class ObjectReaderImplInt64Array extends bak {

    /* renamed from: a */
    public static final ObjectReaderImplInt64Array f12682a = new ObjectReaderImplInt64Array();
    public static final long HASH_TYPE = Fnv.hashCode64("[Long");

    public ObjectReaderImplInt64Array() {
        super(Long[].class);
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object createInstance(Collection collection) {
        Long l;
        Long[] lArr = new Long[collection.size()];
        int i = 0;
        for (Object obj : collection) {
            if (obj == null) {
                l = null;
            } else if (obj instanceof Number) {
                l = Long.valueOf(((Number) obj).longValue());
            } else {
                Function typeConvert = JSONFactory.defaultObjectReaderProvider.getTypeConvert(obj.getClass(), Long.class);
                if (typeConvert == null) {
                    throw new JSONException("can not cast to Integer " + obj.getClass());
                }
                l = (Long) typeConvert.apply(obj);
            }
            lArr[i] = l;
            i++;
        }
        return lArr;
    }

    @Override // com.sunia.HTREnginev2.bak, com.alibaba.fastjson2.reader.ObjectReader
    public /* bridge */ /* synthetic */ Class getObjectClass() {
        return super.getObjectClass();
    }

    @Override // com.sunia.HTREnginev2.bak, com.alibaba.fastjson2.reader.ObjectReader
    public Object readJSONBObject(JSONReader jSONReader, Type type, Object obj, long j) {
        if (jSONReader.nextIfMatch(JSONB.Constants.BC_TYPED_ANY)) {
            long readTypeHashCode = jSONReader.readTypeHashCode();
            if (readTypeHashCode != HASH_TYPE && readTypeHashCode != ObjectReaderImplInt64ValueArray.HASH_TYPE && readTypeHashCode != ObjectReaderImplInt32Array.HASH_TYPE && readTypeHashCode != ObjectReaderImplInt32ValueArray.HASH_TYPE) {
                throw new JSONException(jSONReader.info("not support type " + jSONReader.getString()));
            }
        }
        int startArray = jSONReader.startArray();
        if (startArray == -1) {
            return null;
        }
        Long[] lArr = new Long[startArray];
        for (int i = 0; i < startArray; i++) {
            lArr[i] = jSONReader.readInt64();
        }
        return lArr;
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
        Long[] lArr = new Long[16];
        int i = 0;
        while (!jSONReader.nextIfArrayEnd()) {
            if (jSONReader.isEnd()) {
                throw new JSONException(jSONReader.info("input end"));
            }
            int i2 = i + 1;
            if (i2 - lArr.length > 0) {
                int length = lArr.length;
                int i3 = length + (length >> 1);
                if (i3 - i2 < 0) {
                    i3 = i2;
                }
                lArr = (Long[]) Arrays.copyOf(lArr, i3);
            }
            lArr[i] = jSONReader.readInt64();
            i = i2;
        }
        jSONReader.nextIfComma();
        return Arrays.copyOf(lArr, i);
    }
}
