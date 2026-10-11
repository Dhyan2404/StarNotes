package org.json;

import java.io.IOException;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes13.dex */
public class JSONWriter {

    /* renamed from: d */
    public static final int f113958d = 200;
    protected Appendable writer;

    /* renamed from: a */
    public boolean f113959a = false;
    protected char mode = 'i';

    /* renamed from: b */
    public final JSONObject[] f113960b = new JSONObject[200];

    /* renamed from: c */
    public int f113961c = 0;

    public JSONWriter(Appendable appendable) {
        this.writer = appendable;
    }

    /* renamed from: a */
    public final JSONWriter m71051a(String str) throws JSONException {
        if (str == null) {
            throw new JSONException("Null pointer");
        }
        char c = this.mode;
        if (c != 'o' && c != 'a') {
            throw new JSONException("Value out of sequence.");
        }
        try {
            if (this.f113959a && c == 'a') {
                this.writer.append(',');
            }
            this.writer.append(str);
            if (this.mode == 'o') {
                this.mode = 'k';
            }
            this.f113959a = true;
            return this;
        } catch (IOException e) {
            throw new JSONException(e);
        }
    }

    public JSONWriter array() throws JSONException {
        char c = this.mode;
        if (c != 'i' && c != 'o' && c != 'a') {
            throw new JSONException("Misplaced array.");
        }
        m71054d(null);
        m71051a(IteratorUtils.f104923a);
        this.f113959a = false;
        return this;
    }

    /* renamed from: b */
    public final JSONWriter m71052b(char c, char c2) throws JSONException {
        if (this.mode != c) {
            throw new JSONException(c == 'a' ? "Misplaced endArray." : "Misplaced endObject.");
        }
        m71053c(c);
        try {
            this.writer.append(c2);
            this.f113959a = true;
            return this;
        } catch (IOException e) {
            throw new JSONException(e);
        }
    }

    /* renamed from: c */
    public final void m71053c(char c) throws JSONException {
        int i = this.f113961c;
        if (i <= 0) {
            throw new JSONException("Nesting error.");
        }
        JSONObject[] jSONObjectArr = this.f113960b;
        char c2 = 'a';
        if ((jSONObjectArr[i + (-1)] == null ? 'a' : 'k') != c) {
            throw new JSONException("Nesting error.");
        }
        int i2 = i - 1;
        this.f113961c = i2;
        if (i2 == 0) {
            c2 = 'd';
        } else if (jSONObjectArr[i2 - 1] != null) {
            c2 = 'k';
        }
        this.mode = c2;
    }

    /* renamed from: d */
    public final void m71054d(JSONObject jSONObject) throws JSONException {
        int i = this.f113961c;
        if (i >= 200) {
            throw new JSONException("Nesting too deep.");
        }
        this.f113960b[i] = jSONObject;
        this.mode = jSONObject == null ? 'a' : 'k';
        this.f113961c = i + 1;
    }

    public JSONWriter endArray() throws JSONException {
        return m71052b('a', ']');
    }

    public JSONWriter endObject() throws JSONException {
        return m71052b('k', '}');
    }

    public JSONWriter key(String str) throws JSONException {
        if (str == null) {
            throw new JSONException("Null key.");
        }
        if (this.mode != 'k') {
            throw new JSONException("Misplaced key.");
        }
        try {
            this.f113960b[this.f113961c - 1].putOnce(str, Boolean.TRUE);
            if (this.f113959a) {
                this.writer.append(',');
            }
            this.writer.append(JSONObject.quote(str));
            this.writer.append(':');
            this.f113959a = false;
            this.mode = 'o';
            return this;
        } catch (IOException e) {
            throw new JSONException(e);
        }
    }

    public JSONWriter object() throws JSONException {
        if (this.mode == 'i') {
            this.mode = 'o';
        }
        char c = this.mode;
        if (c != 'o' && c != 'a') {
            throw new JSONException("Misplaced object.");
        }
        m71051a("{");
        m71054d(new JSONObject());
        this.f113959a = false;
        return this;
    }

    public JSONWriter value(boolean z) throws JSONException {
        return m71051a(z ? "true" : "false");
    }

    public JSONWriter value(double d) throws JSONException {
        return value(new Double(d));
    }

    public JSONWriter value(long j) throws JSONException {
        return m71051a(Long.toString(j));
    }

    public JSONWriter value(Object obj) throws JSONException {
        return m71051a(JSONObject.valueToString(obj));
    }
}
