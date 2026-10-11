package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.reader.FieldReaderObject;
import com.alibaba.fastjson2.util.Fnv;
import java.lang.reflect.Type;
import java.util.Locale;

/* loaded from: classes3.dex */
public class gdg<T> extends FieldReaderObject<T> {

    /* renamed from: o */
    public final String f70935o;

    /* renamed from: p */
    public final long f70936p;

    public gdg(String str, Type type, Class cls, String str2, int i, long j, String str3, Locale locale, Object obj) {
        super(str, type, cls, i, j, str3, locale, obj, null, null, null);
        this.f70935o = str2;
        this.f70936p = Fnv.hashCode64(str2);
    }

    @Override // com.alibaba.fastjson2.reader.FieldReaderObject, com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, Object obj) {
    }

    @Override // com.alibaba.fastjson2.reader.FieldReaderObject, com.alibaba.fastjson2.reader.FieldReader
    public void readFieldValue(JSONReader jSONReader, T t) {
        throw new JSONException("UnsupportedOperationException");
    }
}
