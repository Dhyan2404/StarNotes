package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.reader.FieldReader;
import com.alibaba.fastjson2.reader.ObjectReader;
import com.alibaba.fastjson2.util.TypeUtils;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Locale;
import java.util.Optional;

/* loaded from: classes3.dex */
public class u9k extends bak {

    /* renamed from: f */
    public static final u9k f86265f = new u9k(null, null, null);

    /* renamed from: a */
    public final String f86266a;

    /* renamed from: b */
    public final Locale f86267b;

    /* renamed from: c */
    public final Type f86268c;

    /* renamed from: d */
    public final Class f86269d;

    /* renamed from: e */
    public ObjectReader f86270e;

    public u9k(Type type, String str, Locale locale) {
        super(Optional.class);
        Type type2;
        if (type instanceof ParameterizedType) {
            Type[] actualTypeArguments = ((ParameterizedType) type).getActualTypeArguments();
            if (actualTypeArguments.length == 1) {
                type2 = actualTypeArguments[0];
                this.f86268c = type2;
                this.f86269d = TypeUtils.getClass(type2);
                this.f86266a = str;
                this.f86267b = locale;
            }
        }
        type2 = null;
        this.f86268c = type2;
        this.f86269d = TypeUtils.getClass(type2);
        this.f86266a = str;
        this.f86267b = locale;
    }

    /* renamed from: a */
    public static u9k m57601a(Type type, String str, Locale locale) {
        return type == null ? f86265f : new u9k(type, str, locale);
    }

    @Override // com.sunia.HTREnginev2.bak, com.alibaba.fastjson2.reader.ObjectReader
    public Object readJSONBObject(JSONReader jSONReader, Type type, Object obj, long j) {
        Object readJSONBObject;
        Type type2 = this.f86268c;
        if (type2 == null) {
            readJSONBObject = jSONReader.readAny();
        } else {
            if (this.f86270e == null) {
                String str = this.f86266a;
                ObjectReader m7434a = str != null ? FieldReader.m7434a(type2, this.f86269d, str, this.f86267b) : null;
                if (m7434a == null) {
                    this.f86270e = jSONReader.getObjectReader(this.f86268c);
                } else {
                    this.f86270e = m7434a;
                }
            }
            readJSONBObject = this.f86270e.readJSONBObject(jSONReader, this.f86268c, obj, 0L);
        }
        return readJSONBObject == null ? Optional.empty() : Optional.of(readJSONBObject);
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object readObject(JSONReader jSONReader, Type type, Object obj, long j) {
        Object readObject;
        Type type2 = this.f86268c;
        if (type2 == null) {
            readObject = jSONReader.readAny();
        } else {
            if (this.f86270e == null) {
                String str = this.f86266a;
                ObjectReader m7434a = str != null ? FieldReader.m7434a(type2, this.f86269d, str, this.f86267b) : null;
                if (m7434a == null) {
                    this.f86270e = jSONReader.getObjectReader(this.f86268c);
                } else {
                    this.f86270e = m7434a;
                }
            }
            readObject = this.f86270e.readObject(jSONReader, this.f86268c, obj, 0L);
        }
        return readObject == null ? Optional.empty() : Optional.of(readObject);
    }
}
