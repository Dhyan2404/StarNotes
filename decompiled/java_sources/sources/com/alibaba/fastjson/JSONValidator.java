package com.alibaba.fastjson;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;

/* loaded from: classes3.dex */
public abstract class JSONValidator implements Cloneable, Closeable {

    /* renamed from: ch */
    protected char f12203ch;
    protected boolean eof;
    protected Type type;
    protected int pos = -1;
    protected int count = 0;
    protected boolean supportMultiValue = true;

    /* loaded from: classes3.dex */
    public static class ReaderValidator extends JSONValidator {
        private static final ThreadLocal<char[]> bufLocal = new ThreadLocal<>();
        private char[] buf;

        /* renamed from: r */
        final Reader f12204r;
        private int end = -1;
        private int readCount = 0;

        public ReaderValidator(Reader reader) {
            this.f12204r = reader;
            ThreadLocal<char[]> threadLocal = bufLocal;
            char[] cArr = threadLocal.get();
            this.buf = cArr;
            if (cArr != null) {
                threadLocal.set(null);
            } else {
                this.buf = new char[8192];
            }
            next();
            skipWhiteSpace();
        }

        @Override // com.alibaba.fastjson.JSONValidator, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            bufLocal.set(this.buf);
            this.f12204r.close();
        }

        @Override // com.alibaba.fastjson.JSONValidator
        public void next() {
            int i = this.pos;
            if (i < this.end) {
                char[] cArr = this.buf;
                int i2 = i + 1;
                this.pos = i2;
                this.f12203ch = cArr[i2];
                return;
            }
            if (this.eof) {
                return;
            }
            try {
                Reader reader = this.f12204r;
                char[] cArr2 = this.buf;
                int read = reader.read(cArr2, 0, cArr2.length);
                this.readCount++;
                if (read > 0) {
                    this.f12203ch = this.buf[0];
                    this.pos = 0;
                    this.end = read - 1;
                } else {
                    if (read == -1) {
                        this.pos = 0;
                        this.end = 0;
                        this.buf = null;
                        this.f12203ch = (char) 0;
                        this.eof = true;
                        return;
                    }
                    this.pos = 0;
                    this.end = 0;
                    this.buf = null;
                    this.f12203ch = (char) 0;
                    this.eof = true;
                    throw new JSONException("read error");
                }
            } catch (IOException unused) {
                throw new JSONException("read error");
            }
        }
    }

    /* loaded from: classes3.dex */
    public enum Type {
        Object,
        Array,
        Value
    }

    /* loaded from: classes3.dex */
    public static class UTF16Validator extends JSONValidator {
        private final String str;

        public UTF16Validator(String str) {
            this.str = str;
            next();
            skipWhiteSpace();
        }

        @Override // com.alibaba.fastjson.JSONValidator
        public final void fieldName() {
            char charAt;
            int i = this.pos;
            do {
                i++;
                if (i >= this.str.length() || (charAt = this.str.charAt(i)) == '\\') {
                    next();
                    while (true) {
                        char c = this.f12203ch;
                        if (c == '\\') {
                            next();
                            if (this.f12203ch == 'u') {
                                next();
                                next();
                                next();
                                next();
                                next();
                            } else {
                                next();
                            }
                        } else {
                            if (c == '\"') {
                                next();
                                return;
                            }
                            next();
                        }
                    }
                }
            } while (charAt != '\"');
            int i2 = i + 1;
            this.f12203ch = this.str.charAt(i2);
            this.pos = i2;
        }

        @Override // com.alibaba.fastjson.JSONValidator
        public void next() {
            int i = this.pos + 1;
            this.pos = i;
            if (i < this.str.length()) {
                this.f12203ch = this.str.charAt(this.pos);
            } else {
                this.f12203ch = (char) 0;
                this.eof = true;
            }
        }

        @Override // com.alibaba.fastjson.JSONValidator
        public final void skipWhiteSpace() {
            if (this.f12203ch > '\r') {
                return;
            }
            while (JSONValidator.isWhiteSpace(this.f12203ch)) {
                next();
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class UTF8InputStreamValidator extends JSONValidator {
        private static final ThreadLocal<byte[]> bufLocal = new ThreadLocal<>();
        private byte[] buf;

        /* renamed from: is */
        private final InputStream f12205is;
        private int end = -1;
        private int readCount = 0;

        public UTF8InputStreamValidator(InputStream inputStream) {
            this.f12205is = inputStream;
            ThreadLocal<byte[]> threadLocal = bufLocal;
            byte[] bArr = threadLocal.get();
            this.buf = bArr;
            if (bArr != null) {
                threadLocal.set(null);
            } else {
                this.buf = new byte[8192];
            }
            next();
            skipWhiteSpace();
        }

        @Override // com.alibaba.fastjson.JSONValidator, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            bufLocal.set(this.buf);
            this.f12205is.close();
        }

        @Override // com.alibaba.fastjson.JSONValidator
        public void next() {
            int i = this.pos;
            if (i < this.end) {
                byte[] bArr = this.buf;
                int i2 = i + 1;
                this.pos = i2;
                this.f12203ch = (char) bArr[i2];
                return;
            }
            if (this.eof) {
                return;
            }
            try {
                InputStream inputStream = this.f12205is;
                byte[] bArr2 = this.buf;
                int read = inputStream.read(bArr2, 0, bArr2.length);
                this.readCount++;
                if (read > 0) {
                    this.f12203ch = (char) this.buf[0];
                    this.pos = 0;
                    this.end = read - 1;
                } else {
                    if (read == -1) {
                        this.pos = 0;
                        this.end = 0;
                        this.buf = null;
                        this.f12203ch = (char) 0;
                        this.eof = true;
                        return;
                    }
                    this.pos = 0;
                    this.end = 0;
                    this.buf = null;
                    this.f12203ch = (char) 0;
                    this.eof = true;
                    throw new JSONException("read error");
                }
            } catch (IOException unused) {
                throw new JSONException("read error");
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class UTF8Validator extends JSONValidator {
        private final byte[] bytes;

        public UTF8Validator(byte[] bArr) {
            this.bytes = bArr;
            next();
            skipWhiteSpace();
        }

        @Override // com.alibaba.fastjson.JSONValidator
        public void next() {
            int i = this.pos + 1;
            this.pos = i;
            byte[] bArr = this.bytes;
            if (i < bArr.length) {
                this.f12203ch = (char) bArr[i];
            } else {
                this.f12203ch = (char) 0;
                this.eof = true;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:172:0x0173, code lost:
    
        if (r0 <= '9') goto L186;
     */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0183  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean any() {
        /*
            Method dump skipped, instructions count: 532
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.JSONValidator.any():boolean");
    }

    public static JSONValidator from(String str) {
        return new UTF16Validator(str);
    }

    public static JSONValidator fromUtf8(byte[] bArr) {
        return new UTF8Validator(bArr);
    }

    public static final boolean isWhiteSpace(char c) {
        return c == ' ' || c == '\t' || c == '\r' || c == '\n' || c == '\f' || c == '\b';
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
    }

    public void fieldName() {
        next();
        while (true) {
            char c = this.f12203ch;
            if (c == '\\') {
                next();
                if (this.f12203ch == 'u') {
                    next();
                    next();
                    next();
                    next();
                    next();
                } else {
                    next();
                }
            } else {
                if (c == '\"') {
                    next();
                    return;
                }
                next();
            }
        }
    }

    public Type getType() {
        if (this.type == null) {
            validate();
        }
        return this.type;
    }

    public boolean isSupportMultiValue() {
        return this.supportMultiValue;
    }

    public abstract void next();

    public void setSupportMultiValue(boolean z) {
        this.supportMultiValue = z;
    }

    public void skipWhiteSpace() {
        while (isWhiteSpace(this.f12203ch)) {
            next();
        }
    }

    public boolean string() {
        next();
        while (!this.eof) {
            char c = this.f12203ch;
            if (c == '\\') {
                next();
                if (this.f12203ch == 'u') {
                    next();
                    next();
                    next();
                    next();
                    next();
                } else {
                    next();
                }
            } else {
                if (c == '\"') {
                    next();
                    return true;
                }
                next();
            }
        }
        return false;
    }

    public boolean validate() {
        while (any()) {
            this.count++;
            if (this.eof) {
                return true;
            }
            if (!this.supportMultiValue) {
                return false;
            }
            skipWhiteSpace();
            if (this.eof) {
                return true;
            }
        }
        return false;
    }

    public static JSONValidator from(Reader reader) {
        return new ReaderValidator(reader);
    }

    public static JSONValidator fromUtf8(InputStream inputStream) {
        return new UTF8InputStreamValidator(inputStream);
    }
}
