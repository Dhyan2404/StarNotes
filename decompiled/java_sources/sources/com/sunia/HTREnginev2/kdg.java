package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.reader.FieldReaderObject;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.Locale;

/* loaded from: classes3.dex */
public final class kdg<T> extends FieldReaderObject<T> {

    /* renamed from: o */
    public final boolean f75314o;

    public kdg(String str, Type type, Class cls, int i, long j, String str2, Locale locale, String str3, Method method) {
        super(str, type, cls, i, j, str2, locale, str3, method, null, null);
        this.f75314o = "trim".equals(str2) || (j & JSONReader.Feature.TrimString.mask) != 0;
    }

    @Override // com.alibaba.fastjson2.reader.FieldReaderObject, com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, Object obj) {
        String obj2 = ((obj instanceof String) || obj == null) ? (String) obj : obj.toString();
        if (this.f75314o && obj2 != null) {
            obj2 = obj2.trim();
        }
        try {
            this.method.invoke(t, obj2);
        } catch (Exception e) {
            throw new JSONException("set " + this.fieldName + " error", e);
        }
    }

    @Override // com.alibaba.fastjson2.reader.FieldReaderObject, com.alibaba.fastjson2.reader.FieldReader
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public String readFieldValue(JSONReader jSONReader) {
        String readString = jSONReader.readString();
        return (!this.f75314o || readString == null) ? readString : readString.trim();
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public boolean supportAcceptType(Class cls) {
        return true;
    }

    @Override // com.alibaba.fastjson2.reader.FieldReaderObject, com.alibaba.fastjson2.reader.FieldReader
    public void readFieldValue(JSONReader jSONReader, T t) {
        String readString = jSONReader.readString();
        if (this.f75314o && readString != null) {
            readString = readString.trim();
        }
        try {
            this.method.invoke(t, readString);
        } catch (Exception e) {
            throw new JSONException(jSONReader.info("set " + this.fieldName + " error"), e);
        }
    }
}
