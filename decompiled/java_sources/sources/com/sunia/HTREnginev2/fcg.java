package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONReader;
import java.util.Locale;

/* loaded from: classes3.dex */
public final class fcg<T> extends gdg<T> {
    public fcg(String str, Class cls, String str2, int i, long j, String str3, Locale locale, Object obj) {
        super(str, cls, cls, str2, i, j, str3, locale, obj);
    }

    @Override // com.alibaba.fastjson2.reader.FieldReaderObject, com.alibaba.fastjson2.reader.FieldReader
    public Object readFieldValue(JSONReader jSONReader) {
        return jSONReader.readInt32();
    }
}
