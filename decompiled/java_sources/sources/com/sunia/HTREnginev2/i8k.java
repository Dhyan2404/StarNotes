package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONB;
import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONFactory;
import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.util.Fnv;
import com.alibaba.fastjson2.util.IOUtils;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.Collection;
import java.util.function.Function;

/* loaded from: classes3.dex */
public class i8k extends bak {

    /* renamed from: d */
    public static final i8k f72999d = new i8k(null);

    /* renamed from: e */
    public static final long f73000e = Fnv.hashCode64("[B");

    /* renamed from: a */
    public final String f73001a;

    /* renamed from: b */
    public final Function<byte[], Object> f73002b;

    /* renamed from: c */
    public final long f73003c;

    public i8k(String str) {
        super(byte[].class);
        this.f73001a = str;
        this.f73002b = null;
        this.f73003c = 0L;
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object createInstance(Collection collection) {
        byte byteValue;
        byte[] bArr = new byte[collection.size()];
        int i = 0;
        for (Object obj : collection) {
            if (obj == null) {
                byteValue = 0;
            } else if (obj instanceof Number) {
                byteValue = ((Number) obj).byteValue();
            } else {
                Function typeConvert = JSONFactory.defaultObjectReaderProvider.getTypeConvert(obj.getClass(), Byte.TYPE);
                if (typeConvert == null) {
                    throw new JSONException("can not cast to byte " + obj.getClass());
                }
                byteValue = ((Byte) typeConvert.apply(obj)).byteValue();
            }
            bArr[i] = byteValue;
            i++;
        }
        Function<byte[], Object> function = this.f73002b;
        return function != null ? function.apply(bArr) : bArr;
    }

    @Override // com.sunia.HTREnginev2.bak, com.alibaba.fastjson2.reader.ObjectReader
    public Object readJSONBObject(JSONReader jSONReader, Type type, Object obj, long j) {
        byte[] bArr;
        if (jSONReader.nextIfMatch(JSONB.Constants.BC_TYPED_ANY)) {
            long readTypeHashCode = jSONReader.readTypeHashCode();
            if (readTypeHashCode != f73000e && readTypeHashCode != h8k.f71947c) {
                throw new JSONException("not support autoType : " + jSONReader.getString());
            }
        }
        if (jSONReader.isBinary()) {
            bArr = jSONReader.readBinary();
        } else if (jSONReader.isString()) {
            bArr = IOUtils.decodeBase64(jSONReader.readString());
        } else {
            int startArray = jSONReader.startArray();
            if (startArray == -1) {
                return null;
            }
            byte[] bArr2 = new byte[startArray];
            for (int i = 0; i < startArray; i++) {
                bArr2[i] = (byte) jSONReader.readInt32Value();
            }
            bArr = bArr2;
        }
        Function<byte[], Object> function = this.f73002b;
        return function != null ? function.apply(bArr) : bArr;
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
            byte[] decodeBase64 = (jSONReader.features(this.f73003c | j) & JSONReader.Feature.Base64StringAsByteArray.mask) != 0 ? IOUtils.decodeBase64(jSONReader.readString()) : jSONReader.readBinary();
            Function<byte[], Object> function = this.f73002b;
            return function != null ? function.apply(decodeBase64) : decodeBase64;
        }
        byte[] bArr = new byte[16];
        int i = 0;
        while (!jSONReader.nextIfArrayEnd()) {
            if (jSONReader.isEnd()) {
                throw new JSONException(jSONReader.info("input end"));
            }
            int i2 = i + 1;
            if (i2 - bArr.length > 0) {
                int length = bArr.length;
                int i3 = length + (length >> 1);
                if (i3 - i2 < 0) {
                    i3 = i2;
                }
                bArr = Arrays.copyOf(bArr, i3);
            }
            bArr[i] = (byte) jSONReader.readInt32Value();
            i = i2;
        }
        jSONReader.nextIfComma();
        byte[] copyOf = Arrays.copyOf(bArr, i);
        Function<byte[], Object> function2 = this.f73002b;
        return function2 != null ? function2.apply(copyOf) : copyOf;
    }

    public i8k(Function<byte[], Object> function, String str) {
        super(byte[].class);
        this.f73001a = str;
        this.f73003c = "base64".equals(str) ? JSONReader.Feature.Base64StringAsByteArray.mask : 0L;
        this.f73002b = function;
    }
}
