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
public class f8k extends bak {

    /* renamed from: b */
    public static final f8k f69760b = new f8k(null);

    /* renamed from: c */
    public static final long f69761c = Fnv.hashCode64("[S");

    /* renamed from: a */
    public final Function<short[], Object> f69762a;

    public f8k(Function<short[], Object> function) {
        super(short[].class);
        this.f69762a = function;
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object createInstance(Collection collection) {
        short shortValue;
        short[] sArr = new short[collection.size()];
        int i = 0;
        for (Object obj : collection) {
            if (obj == null) {
                shortValue = 0;
            } else if (obj instanceof Number) {
                shortValue = ((Number) obj).shortValue();
            } else {
                Function typeConvert = JSONFactory.defaultObjectReaderProvider.getTypeConvert(obj.getClass(), Short.TYPE);
                if (typeConvert == null) {
                    throw new JSONException("can not cast to short " + obj.getClass());
                }
                shortValue = ((Short) typeConvert.apply(obj)).shortValue();
            }
            sArr[i] = shortValue;
            i++;
        }
        Function<short[], Object> function = this.f69762a;
        return function != null ? function.apply(sArr) : sArr;
    }

    @Override // com.sunia.HTREnginev2.bak, com.alibaba.fastjson2.reader.ObjectReader
    public Object readJSONBObject(JSONReader jSONReader, Type type, Object obj, long j) {
        if (jSONReader.nextIfMatch(JSONB.Constants.BC_TYPED_ANY)) {
            long readTypeHashCode = jSONReader.readTypeHashCode();
            if (readTypeHashCode != f69761c && readTypeHashCode != e8k.f68706b) {
                throw new JSONException("not support autoType : " + jSONReader.getString());
            }
        }
        int startArray = jSONReader.startArray();
        if (startArray == -1) {
            return null;
        }
        short[] sArr = new short[startArray];
        for (int i = 0; i < startArray; i++) {
            sArr[i] = (short) jSONReader.readInt32Value();
        }
        Function<short[], Object> function = this.f69762a;
        return function != null ? function.apply(sArr) : sArr;
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
        short[] sArr = new short[16];
        int i = 0;
        while (!jSONReader.nextIfArrayEnd()) {
            if (jSONReader.isEnd()) {
                throw new JSONException(jSONReader.info("input end"));
            }
            int i2 = i + 1;
            if (i2 - sArr.length > 0) {
                int length = sArr.length;
                int i3 = length + (length >> 1);
                if (i3 - i2 < 0) {
                    i3 = i2;
                }
                sArr = Arrays.copyOf(sArr, i3);
            }
            sArr[i] = (short) jSONReader.readInt32Value();
            i = i2;
        }
        jSONReader.nextIfComma();
        short[] copyOf = Arrays.copyOf(sArr, i);
        Function<short[], Object> function = this.f69762a;
        return function != null ? function.apply(copyOf) : copyOf;
    }
}
