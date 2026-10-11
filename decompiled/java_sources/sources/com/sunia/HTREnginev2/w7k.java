package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONObject;
import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.util.Fnv;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.lang.reflect.Type;
import java.util.Currency;

/* loaded from: classes3.dex */
public final class w7k extends bak {

    /* renamed from: a */
    public static final w7k f88309a = new w7k();

    /* renamed from: b */
    public static final long f88310b = Fnv.hashCode64("Currency");

    public w7k() {
        super(Currency.class);
    }

    @Override // com.sunia.HTREnginev2.bak, com.alibaba.fastjson2.reader.ObjectReader
    public Object readJSONBObject(JSONReader jSONReader, Type type, Object obj, long j) {
        if (jSONReader.getType() == -110) {
            jSONReader.next();
            long readTypeHashCode = jSONReader.readTypeHashCode();
            if (readTypeHashCode != f88310b && readTypeHashCode != -7860540621745740270L) {
                throw new JSONException(jSONReader.info("currency not support input autoTypeClass " + jSONReader.getString()));
            }
        }
        String readString = jSONReader.readString();
        if (readString == null || readString.isEmpty()) {
            return null;
        }
        return Currency.getInstance(readString);
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object readObject(JSONReader jSONReader, Type type, Object obj, long j) {
        String readString;
        if (jSONReader.isObject()) {
            JSONObject jSONObject = new JSONObject();
            jSONReader.readObject(jSONObject, new JSONReader.Feature[0]);
            readString = jSONObject.getString(FirebaseAnalytics.Param.CURRENCY);
            if (readString == null) {
                readString = jSONObject.getString("currencyCode");
            }
        } else {
            readString = jSONReader.readString();
        }
        if (readString == null || readString.isEmpty()) {
            return null;
        }
        return Currency.getInstance(readString);
    }
}
