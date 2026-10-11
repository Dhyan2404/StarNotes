package com.alibaba.fastjson2;

import com.alibaba.fastjson2.AbstractC1733c;
import com.alibaba.fastjson2.util.Fnv;
import java.util.ArrayList;

/* renamed from: com.alibaba.fastjson2.b */
/* loaded from: classes3.dex */
public class C1732b {

    /* renamed from: a */
    public final String f12365a;

    /* renamed from: b */
    public final JSONReader f12366b;

    /* renamed from: c */
    public final boolean f12367c;

    public C1732b(String str) {
        this.f12365a = str;
        JSONReader m7299of = JSONReader.m7299of(str, JSONPath.f12260h);
        this.f12366b = m7299of;
        char c = m7299of.f12290ch;
        if (c == '-') {
            throw new JSONException("not support '-'");
        }
        if (c != '$') {
            this.f12367c = false;
        } else {
            m7299of.next();
            this.f12367c = true;
        }
    }

    /* renamed from: a */
    public JSONPath m7345a() {
        AbstractC1733c abstractC1733c;
        if (this.f12367c && this.f12366b.f12290ch == 26) {
            return JSONPath.f12258f;
        }
        ArrayList arrayList = new ArrayList();
        while (true) {
            JSONReader jSONReader = this.f12366b;
            char c = jSONReader.f12290ch;
            if (c == 26) {
                return new JSONPath(this.f12365a, arrayList, false, false);
            }
            if (c == '.') {
                jSONReader.next();
                abstractC1733c = m7347c();
            } else if (c == '[') {
                abstractC1733c = m7346b();
            } else if ((c >= 'a' && c <= 'z') || ((c >= 'A' && c <= 'Z') || c == '_')) {
                abstractC1733c = m7347c();
            } else {
                if (c != '@') {
                    throw new JSONException("not support " + c);
                }
                jSONReader.next();
                abstractC1733c = AbstractC1733c.a.f12368a;
            }
            arrayList.add(abstractC1733c);
        }
    }

    /* renamed from: b */
    public final AbstractC1733c m7346b() {
        AbstractC1733c c1735e;
        this.f12366b.next();
        JSONReader jSONReader = this.f12366b;
        char c = jSONReader.f12290ch;
        if (c == '\"' || c == '\'') {
            String readString = jSONReader.readString();
            if (this.f12366b.current() != ']') {
                if (this.f12366b.isString()) {
                    throw new JSONException("not support multi name");
                }
                throw new JSONException("TODO : " + this.f12366b.current());
            }
            c1735e = new C1735e(readString, Fnv.hashCode64(readString));
        } else {
            if (c == '*') {
                throw new JSONException("not support *");
            }
            switch (c) {
                case '0':
                case '1':
                case '2':
                case '3':
                case '4':
                case '5':
                case '6':
                case '7':
                case '8':
                case '9':
                    int readInt32Value = jSONReader.readInt32Value();
                    JSONReader jSONReader2 = this.f12366b;
                    if (jSONReader2.f12290ch == ':') {
                        throw new JSONException("not support range index ':'");
                    }
                    if (!jSONReader2.isNumber()) {
                        c1735e = C1734d.m7349c(readInt32Value);
                        break;
                    } else {
                        throw new JSONException("not support");
                    }
                case ':':
                    throw new JSONException("not support range index ':'");
                default:
                    throw new JSONException("TODO : " + this.f12366b.current());
            }
        }
        if (this.f12366b.nextIfArrayEnd()) {
            return c1735e;
        }
        throw new JSONException(this.f12366b.info("jsonpath syntax error"));
    }

    /* renamed from: c */
    public final AbstractC1733c m7347c() {
        JSONReader jSONReader = this.f12366b;
        char c = jSONReader.f12290ch;
        if (c == '*') {
            throw new JSONException("not support *");
        }
        if (c == '.') {
            throw new JSONException("not support jsonpath ..");
        }
        long readFieldNameHashCodeUnquote = jSONReader.readFieldNameHashCodeUnquote();
        String fieldName = this.f12366b.getFieldName();
        if (this.f12366b.f12290ch != '(') {
            return new C1735e(fieldName, readFieldNameHashCodeUnquote);
        }
        throw new JSONException("not support jsonpath function");
    }
}
