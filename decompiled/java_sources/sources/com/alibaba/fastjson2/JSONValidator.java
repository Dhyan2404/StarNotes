package com.alibaba.fastjson2;

/* loaded from: classes3.dex */
public class JSONValidator {

    /* renamed from: a */
    public final JSONReader f12317a;

    /* renamed from: b */
    public Boolean f12318b;

    /* renamed from: c */
    public Type f12319c;

    /* loaded from: classes3.dex */
    public enum Type {
        Object,
        Array,
        Value
    }

    public JSONValidator(JSONReader jSONReader) {
        this.f12317a = jSONReader;
    }

    public static JSONValidator from(String str) {
        return new JSONValidator(JSONReader.m7296of(str));
    }

    public static JSONValidator fromUtf8(byte[] bArr) {
        return new JSONValidator(JSONReader.m7303of(bArr));
    }

    public Type getType() {
        if (this.f12319c == null) {
            validate();
        }
        return this.f12319c;
    }

    public boolean validate() {
        Boolean bool = this.f12318b;
        try {
            if (bool != null) {
                return bool.booleanValue();
            }
            try {
                char current = this.f12317a.current();
                this.f12317a.skipValue();
                this.f12317a.close();
                if (current == '{') {
                    this.f12319c = Type.Object;
                } else if (current == '[') {
                    this.f12319c = Type.Array;
                } else {
                    this.f12319c = Type.Value;
                }
                Boolean valueOf = Boolean.valueOf(this.f12317a.isEnd());
                this.f12318b = valueOf;
                return valueOf.booleanValue();
            } catch (JSONException unused) {
                this.f12318b = Boolean.FALSE;
                this.f12317a.close();
                return false;
            }
        } catch (Throwable th) {
            this.f12317a.close();
            throw th;
        }
    }

    public static JSONValidator from(JSONReader jSONReader) {
        return new JSONValidator(jSONReader);
    }
}
