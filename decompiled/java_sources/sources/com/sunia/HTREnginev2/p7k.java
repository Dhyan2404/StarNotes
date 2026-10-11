package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONReader;
import java.lang.reflect.Type;
import java.math.BigInteger;

/* loaded from: classes3.dex */
public final class p7k extends bak<BigInteger> {

    /* renamed from: a */
    public static final p7k f80531a = new p7k();

    public p7k() {
        super(BigInteger.class);
    }

    @Override // com.sunia.HTREnginev2.bak, com.alibaba.fastjson2.reader.ObjectReader
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public BigInteger readJSONBObject(JSONReader jSONReader, Type type, Object obj, long j) {
        return jSONReader.readBigInteger();
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public BigInteger readObject(JSONReader jSONReader, Type type, Object obj, long j) {
        return jSONReader.readBigInteger();
    }
}
