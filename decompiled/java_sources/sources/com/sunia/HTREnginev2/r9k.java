package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONFactory;
import com.alibaba.fastjson2.JSONReader;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.Collection;
import java.util.function.Function;

/* loaded from: classes3.dex */
public class r9k extends bak {

    /* renamed from: a */
    public static final r9k f82898a = new r9k();

    public r9k() {
        super(Number[].class);
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object createInstance(Collection collection) {
        Number[] numberArr = new Number[collection.size()];
        int i = 0;
        for (Object obj : collection) {
            if (obj != null && !(obj instanceof Number)) {
                Function typeConvert = JSONFactory.defaultObjectReaderProvider.getTypeConvert(obj.getClass(), Number.class);
                if (typeConvert == null) {
                    throw new JSONException("can not cast to Number " + obj.getClass());
                }
                obj = typeConvert.apply(obj);
            }
            numberArr[i] = (Number) obj;
            i++;
        }
        return numberArr;
    }

    @Override // com.sunia.HTREnginev2.bak, com.alibaba.fastjson2.reader.ObjectReader
    public Object readJSONBObject(JSONReader jSONReader, Type type, Object obj, long j) {
        int startArray = jSONReader.startArray();
        if (startArray == -1) {
            return null;
        }
        Number[] numberArr = new Number[startArray];
        for (int i = 0; i < startArray; i++) {
            numberArr[i] = jSONReader.readNumber();
        }
        return numberArr;
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object readObject(JSONReader jSONReader, Type type, Object obj, long j) {
        if (jSONReader.readIfNull()) {
            return null;
        }
        if (!jSONReader.nextIfArrayStart()) {
            throw new JSONException(jSONReader.info("TODO"));
        }
        Number[] numberArr = new Number[16];
        int i = 0;
        while (!jSONReader.nextIfArrayEnd()) {
            int i2 = i + 1;
            if (i2 - numberArr.length > 0) {
                int length = numberArr.length;
                int i3 = length + (length >> 1);
                if (i3 - i2 < 0) {
                    i3 = i2;
                }
                numberArr = (Number[]) Arrays.copyOf(numberArr, i3);
            }
            numberArr[i] = jSONReader.readNumber();
            i = i2;
        }
        jSONReader.nextIfComma();
        return Arrays.copyOf(numberArr, i);
    }
}
