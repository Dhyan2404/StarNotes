package org.json;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.io.StringReader;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes13.dex */
public class JSONTokener {

    /* renamed from: a */
    public long f113951a;

    /* renamed from: b */
    public boolean f113952b;

    /* renamed from: c */
    public long f113953c;

    /* renamed from: d */
    public long f113954d;

    /* renamed from: e */
    public char f113955e;

    /* renamed from: f */
    public Reader f113956f;

    /* renamed from: g */
    public boolean f113957g;

    public JSONTokener(Reader reader) {
        this.f113956f = reader.markSupported() ? reader : new BufferedReader(reader);
        this.f113952b = false;
        this.f113957g = false;
        this.f113955e = (char) 0;
        this.f113953c = 0L;
        this.f113951a = 1L;
        this.f113954d = 1L;
    }

    public static int dehexchar(char c) {
        if (c >= '0' && c <= '9') {
            return c - '0';
        }
        if (c >= 'A' && c <= 'F') {
            return c - '7';
        }
        if (c < 'a' || c > 'f') {
            return -1;
        }
        return c - 'W';
    }

    public void back() throws JSONException {
        if (!this.f113957g) {
            long j = this.f113953c;
            if (j > 0) {
                this.f113953c = j - 1;
                this.f113951a--;
                this.f113957g = true;
                this.f113952b = false;
                return;
            }
        }
        throw new JSONException("Stepping back two steps is not supported");
    }

    public boolean end() {
        return this.f113952b && !this.f113957g;
    }

    public boolean more() throws JSONException {
        next();
        if (end()) {
            return false;
        }
        back();
        return true;
    }

    public char next() throws JSONException {
        int i = 0;
        if (this.f113957g) {
            this.f113957g = false;
            i = this.f113955e;
        } else {
            try {
                int read = this.f113956f.read();
                if (read <= 0) {
                    this.f113952b = true;
                } else {
                    i = read;
                }
            } catch (IOException e) {
                throw new JSONException(e);
            }
        }
        this.f113953c++;
        if (this.f113955e == '\r') {
            this.f113954d++;
            this.f113951a = i == 10 ? 0L : 1L;
        } else if (i == 10) {
            this.f113954d++;
            this.f113951a = 0L;
        } else {
            this.f113951a++;
        }
        char c = (char) i;
        this.f113955e = c;
        return c;
    }

    public char nextClean() throws JSONException {
        char next;
        do {
            next = next();
            if (next == 0) {
                break;
            }
        } while (next <= ' ');
        return next;
    }

    /* JADX WARN: Code restructure failed: missing block: B:79:0x008e, code lost:
    
        throw syntaxError("Unterminated string");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String nextString(char r7) throws org.json.JSONException {
        /*
            r6 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
        L5:
            char r1 = r6.next()
            if (r1 == 0) goto L88
            r2 = 10
            if (r1 == r2) goto L88
            r3 = 13
            if (r1 == r3) goto L88
            r4 = 92
            if (r1 == r4) goto L22
            if (r1 != r7) goto L1e
            java.lang.String r6 = r0.toString()
            return r6
        L1e:
            r0.append(r1)
            goto L5
        L22:
            char r1 = r6.next()
            r5 = 34
            if (r1 == r5) goto L83
            r5 = 39
            if (r1 == r5) goto L83
            r5 = 47
            if (r1 == r5) goto L83
            if (r1 == r4) goto L83
            r4 = 98
            if (r1 == r4) goto L7d
            r4 = 102(0x66, float:1.43E-43)
            if (r1 == r4) goto L77
            r4 = 110(0x6e, float:1.54E-43)
            if (r1 == r4) goto L73
            r2 = 114(0x72, float:1.6E-43)
            if (r1 == r2) goto L6f
            r2 = 116(0x74, float:1.63E-43)
            if (r1 == r2) goto L69
            r2 = 117(0x75, float:1.64E-43)
            java.lang.String r3 = "Illegal escape."
            if (r1 != r2) goto L64
            r1 = 4
            java.lang.String r1 = r6.next(r1)     // Catch: java.lang.NumberFormatException -> L5e
            r2 = 16
            int r1 = java.lang.Integer.parseInt(r1, r2)     // Catch: java.lang.NumberFormatException -> L5e
            char r1 = (char) r1     // Catch: java.lang.NumberFormatException -> L5e
            r0.append(r1)     // Catch: java.lang.NumberFormatException -> L5e
            goto L5
        L5e:
            r7 = move-exception
            org.json.JSONException r6 = r6.syntaxError(r3, r7)
            throw r6
        L64:
            org.json.JSONException r6 = r6.syntaxError(r3)
            throw r6
        L69:
            r1 = 9
            r0.append(r1)
            goto L5
        L6f:
            r0.append(r3)
            goto L5
        L73:
            r0.append(r2)
            goto L5
        L77:
            r1 = 12
            r0.append(r1)
            goto L5
        L7d:
            r1 = 8
            r0.append(r1)
            goto L5
        L83:
            r0.append(r1)
            goto L5
        L88:
            java.lang.String r7 = "Unterminated string"
            org.json.JSONException r6 = r6.syntaxError(r7)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: org.json.JSONTokener.nextString(char):java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x001c, code lost:
    
        back();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String nextTo(char r4) throws org.json.JSONException {
        /*
            r3 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
        L5:
            char r1 = r3.next()
            if (r1 == r4) goto L1a
            if (r1 == 0) goto L1a
            r2 = 10
            if (r1 == r2) goto L1a
            r2 = 13
            if (r1 != r2) goto L16
            goto L1a
        L16:
            r0.append(r1)
            goto L5
        L1a:
            if (r1 == 0) goto L1f
            r3.back()
        L1f:
            java.lang.String r3 = r0.toString()
            java.lang.String r3 = r3.trim()
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: org.json.JSONTokener.nextTo(char):java.lang.String");
    }

    public Object nextValue() throws JSONException {
        char nextClean = nextClean();
        if (nextClean == '\"' || nextClean == '\'') {
            return nextString(nextClean);
        }
        if (nextClean == '[') {
            back();
            return new JSONArray(this);
        }
        if (nextClean == '{') {
            back();
            return new JSONObject(this);
        }
        StringBuilder sb = new StringBuilder();
        while (nextClean >= ' ' && ",:]}/\\\"[{;=#".indexOf(nextClean) < 0) {
            sb.append(nextClean);
            nextClean = next();
        }
        back();
        String trim = sb.toString().trim();
        if ("".equals(trim)) {
            throw syntaxError("Missing value");
        }
        return JSONObject.stringToValue(trim);
    }

    public char skipTo(char c) throws JSONException {
        char next;
        try {
            long j = this.f113953c;
            long j2 = this.f113951a;
            long j3 = this.f113954d;
            this.f113956f.mark(1000000);
            do {
                next = next();
                if (next == 0) {
                    this.f113956f.reset();
                    this.f113953c = j;
                    this.f113951a = j2;
                    this.f113954d = j3;
                    return next;
                }
            } while (next != c);
            back();
            return next;
        } catch (IOException e) {
            throw new JSONException(e);
        }
    }

    public JSONException syntaxError(String str) {
        return new JSONException(str + toString());
    }

    public String toString() {
        return " at " + this.f113953c + " [character " + this.f113951a + " line " + this.f113954d + IteratorUtils.f104924b;
    }

    public JSONException syntaxError(String str, Throwable th) {
        return new JSONException(str + toString(), th);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0020, code lost:
    
        back();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String nextTo(java.lang.String r4) throws org.json.JSONException {
        /*
            r3 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
        L5:
            char r1 = r3.next()
            int r2 = r4.indexOf(r1)
            if (r2 >= 0) goto L1e
            if (r1 == 0) goto L1e
            r2 = 10
            if (r1 == r2) goto L1e
            r2 = 13
            if (r1 != r2) goto L1a
            goto L1e
        L1a:
            r0.append(r1)
            goto L5
        L1e:
            if (r1 == 0) goto L23
            r3.back()
        L23:
            java.lang.String r3 = r0.toString()
            java.lang.String r3 = r3.trim()
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: org.json.JSONTokener.nextTo(java.lang.String):java.lang.String");
    }

    public JSONTokener(InputStream inputStream) {
        this(new InputStreamReader(inputStream));
    }

    public JSONTokener(String str) {
        this(new StringReader(str));
    }

    public char next(char c) throws JSONException {
        char next = next();
        if (next == c) {
            return next;
        }
        throw syntaxError("Expected '" + c + "' and instead saw '" + next + CloudStorageConstants.SINGLE_QUOTES);
    }

    public String next(int i) throws JSONException {
        if (i == 0) {
            return "";
        }
        char[] cArr = new char[i];
        for (int i2 = 0; i2 < i; i2++) {
            cArr[i2] = next();
            if (end()) {
                throw syntaxError("Substring bounds error");
            }
        }
        return new String(cArr);
    }
}
