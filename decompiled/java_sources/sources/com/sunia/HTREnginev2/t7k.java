package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONB;
import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.util.Fnv;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.function.Function;

/* loaded from: classes3.dex */
public final class t7k extends bak {

    /* renamed from: b */
    public static final t7k f84957b = new t7k(null);

    /* renamed from: c */
    public static final long f84958c = Fnv.hashCode64(Constants.STATIC_CHAR_DATA_FIELD_SIG);

    /* renamed from: a */
    public final Function<char[], Object> f84959a;

    public t7k(Function<char[], Object> function) {
        super(char[].class);
        this.f84959a = function;
    }

    @Override // com.sunia.HTREnginev2.bak, com.alibaba.fastjson2.reader.ObjectReader
    public Object readJSONBObject(JSONReader jSONReader, Type type, Object obj, long j) {
        if (jSONReader.nextIfMatch(JSONB.Constants.BC_TYPED_ANY) && jSONReader.readTypeHashCode() != f84958c) {
            throw new JSONException("not support autoType : " + jSONReader.getString());
        }
        if (jSONReader.isString()) {
            return jSONReader.readString().toCharArray();
        }
        int startArray = jSONReader.startArray();
        if (startArray == -1) {
            return null;
        }
        char[] cArr = new char[startArray];
        for (int i = 0; i < startArray; i++) {
            if (jSONReader.isInt()) {
                cArr[i] = (char) jSONReader.readInt32Value();
            } else {
                cArr[i] = jSONReader.readString().charAt(0);
            }
        }
        Function<char[], Object> function = this.f84959a;
        return function != null ? function.apply(cArr) : cArr;
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object readObject(JSONReader jSONReader, Type type, Object obj, long j) {
        if (jSONReader.readIfNull()) {
            return null;
        }
        if (jSONReader.current() == '\"') {
            char[] charArray = jSONReader.readString().toCharArray();
            Function<char[], Object> function = this.f84959a;
            return function != null ? function.apply(charArray) : charArray;
        }
        if (!jSONReader.nextIfArrayStart()) {
            throw new JSONException(jSONReader.info("TODO"));
        }
        char[] cArr = new char[16];
        int i = 0;
        while (!jSONReader.nextIfArrayEnd()) {
            int i2 = i + 1;
            if (i2 - cArr.length > 0) {
                int length = cArr.length;
                int i3 = length + (length >> 1);
                if (i3 - i2 < 0) {
                    i3 = i2;
                }
                cArr = Arrays.copyOf(cArr, i3);
            }
            if (jSONReader.isInt()) {
                cArr[i] = (char) jSONReader.readInt32Value();
            } else {
                String readString = jSONReader.readString();
                cArr[i] = readString == null ? (char) 0 : readString.charAt(0);
            }
            i = i2;
        }
        jSONReader.nextIfComma();
        char[] copyOf = Arrays.copyOf(cArr, i);
        Function<char[], Object> function2 = this.f84959a;
        return function2 != null ? function2.apply(copyOf) : copyOf;
    }
}
