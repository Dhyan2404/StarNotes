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
public final class ObjectReaderImplInt32Array extends bak {

    /* renamed from: a */
    public static final ObjectReaderImplInt32Array f12679a = new ObjectReaderImplInt32Array();
    public static final long HASH_TYPE = Fnv.hashCode64("[Integer");

    public ObjectReaderImplInt32Array() {
        super(Integer[].class);
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object createInstance(Collection collection) {
        Integer num;
        Integer[] numArr = new Integer[collection.size()];
        int i = 0;
        for (Object obj : collection) {
            if (obj == null) {
                num = null;
            } else if (obj instanceof Number) {
                num = Integer.valueOf(((Number) obj).intValue());
            } else {
                Function typeConvert = JSONFactory.defaultObjectReaderProvider.getTypeConvert(obj.getClass(), Integer.class);
                if (typeConvert == null) {
                    throw new JSONException("can not cast to Integer " + obj.getClass());
                }
                num = (Integer) typeConvert.apply(obj);
            }
            numArr[i] = num;
            i++;
        }
        return numArr;
    }

    @Override // com.sunia.HTREnginev2.bak, com.alibaba.fastjson2.reader.ObjectReader
    public /* bridge */ /* synthetic */ Class getObjectClass() {
        return super.getObjectClass();
    }

    @Override // com.sunia.HTREnginev2.bak, com.alibaba.fastjson2.reader.ObjectReader
    public Object readJSONBObject(JSONReader jSONReader, Type type, Object obj, long j) {
        if (jSONReader.nextIfMatch(JSONB.Constants.BC_TYPED_ANY)) {
            long readTypeHashCode = jSONReader.readTypeHashCode();
            if (readTypeHashCode != HASH_TYPE && readTypeHashCode != ObjectReaderImplInt32ValueArray.HASH_TYPE) {
                throw new JSONException(jSONReader.info("not support type " + jSONReader.getString()));
            }
        }
        int startArray = jSONReader.startArray();
        if (startArray == -1) {
            return null;
        }
        Integer[] numArr = new Integer[startArray];
        for (int i = 0; i < startArray; i++) {
            numArr[i] = jSONReader.readInt32();
        }
        return numArr;
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
        Integer[] numArr = new Integer[16];
        int i = 0;
        while (!jSONReader.nextIfArrayEnd()) {
            if (jSONReader.isEnd()) {
                throw new JSONException(jSONReader.info("input end"));
            }
            int i2 = i + 1;
            if (i2 - numArr.length > 0) {
                int length = numArr.length;
                int i3 = length + (length >> 1);
                if (i3 - i2 < 0) {
                    i3 = i2;
                }
                numArr = (Integer[]) Arrays.copyOf(numArr, i3);
            }
            numArr[i] = jSONReader.readInt32();
            i = i2;
        }
        jSONReader.nextIfComma();
        return Arrays.copyOf(numArr, i);
    }
}
