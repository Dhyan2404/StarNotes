package com.google.android.gms.common.server.response;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.C4649C;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.common.util.JsonUtils;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Map;
import java.util.Stack;

@ShowFirstParty
@KeepForSdk
/* loaded from: classes5.dex */
public class FastParser<T extends FastJsonResponse> {

    /* renamed from: g */
    public static final char[] f29443g = {'u', 'l', 'l'};

    /* renamed from: h */
    public static final char[] f29444h = {'r', 'u', 'e'};

    /* renamed from: i */
    public static final char[] f29445i = {'r', 'u', 'e', '\"'};

    /* renamed from: j */
    public static final char[] f29446j = {'a', 'l', 's', 'e'};

    /* renamed from: k */
    public static final char[] f29447k = {'a', 'l', 's', 'e', '\"'};

    /* renamed from: l */
    public static final char[] f29448l = {'\n'};

    /* renamed from: m */
    public static final InterfaceC5080i f29449m = new C5072a();

    /* renamed from: n */
    public static final InterfaceC5080i f29450n = new C5073b();

    /* renamed from: o */
    public static final InterfaceC5080i f29451o = new C5074c();

    /* renamed from: p */
    public static final InterfaceC5080i f29452p = new C5075d();

    /* renamed from: q */
    public static final InterfaceC5080i f29453q = new C5076e();

    /* renamed from: r */
    public static final InterfaceC5080i f29454r = new C5077f();

    /* renamed from: s */
    public static final InterfaceC5080i f29455s = new C5078g();

    /* renamed from: t */
    public static final InterfaceC5080i f29456t = new C5079h();

    /* renamed from: a */
    public final char[] f29457a = new char[1];

    /* renamed from: b */
    public final char[] f29458b = new char[32];

    /* renamed from: c */
    public final char[] f29459c = new char[1024];

    /* renamed from: d */
    public final StringBuilder f29460d = new StringBuilder(32);

    /* renamed from: e */
    public final StringBuilder f29461e = new StringBuilder(1024);

    /* renamed from: f */
    public final Stack f29462f = new Stack();

    @ShowFirstParty
    @KeepForSdk
    /* loaded from: classes5.dex */
    public static class ParseException extends Exception {
        public ParseException(@NonNull String str) {
            super(str);
        }

        public ParseException(@NonNull String str, @NonNull Throwable th) {
            super("Error instantiating inner object", th);
        }

        public ParseException(@NonNull Throwable th) {
            super(th);
        }
    }

    /* renamed from: a */
    public static final String m22200a(BufferedReader bufferedReader, char[] cArr, StringBuilder sb, @Nullable char[] cArr2) throws ParseException, IOException {
        sb.setLength(0);
        bufferedReader.mark(cArr.length);
        boolean z = false;
        boolean z2 = false;
        loop0: while (true) {
            int read = bufferedReader.read(cArr);
            if (read == -1) {
                throw new ParseException("Unexpected EOF while parsing string");
            }
            int i = 0;
            while (i < read) {
                char c = cArr[i];
                if (!Character.isISOControl(c) || (cArr2 != null && cArr2[0] == c)) {
                    int i2 = i + 1;
                    if (c == '\"') {
                        if (!z) {
                            sb.append(cArr, 0, i);
                            bufferedReader.reset();
                            bufferedReader.skip(i2);
                            return z2 ? JsonUtils.unescapeString(sb.toString()) : sb.toString();
                        }
                    } else if (c == '\\') {
                        z = !z;
                        z2 = true;
                        i = i2;
                    }
                    z = false;
                    i = i2;
                }
            }
            sb.append(cArr, 0, read);
            bufferedReader.mark(cArr.length);
        }
        throw new ParseException("Unexpected control character while reading string");
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:8:0x003b. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:17:0x026f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0253 A[SYNTHETIC] */
    @com.google.errorprone.annotations.ResultIgnorabilityUnspecified
    /* renamed from: A */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m22209A(java.io.BufferedReader r17, com.google.android.gms.common.server.response.FastJsonResponse r18) throws com.google.android.gms.common.server.response.FastParser.ParseException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 666
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.server.response.FastParser.m22209A(java.io.BufferedReader, com.google.android.gms.common.server.response.FastJsonResponse):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0021, code lost:
    
        return r3.f29457a[0];
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0022, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:2:0x0008, code lost:
    
        if (r4.read(r3.f29457a) != (-1)) goto L4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x0012, code lost:
    
        if (java.lang.Character.isWhitespace(r3.f29457a[0]) == false) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x001a, code lost:
    
        if (r4.read(r3.f29457a) != (-1)) goto L14;
     */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final char m22210j(java.io.BufferedReader r4) throws com.google.android.gms.common.server.response.FastParser.ParseException, java.io.IOException {
        /*
            r3 = this;
            char[] r0 = r3.f29457a
            int r0 = r4.read(r0)
            r1 = 0
            r2 = -1
            if (r0 == r2) goto L22
        La:
            char[] r0 = r3.f29457a
            char r0 = r0[r1]
            boolean r0 = java.lang.Character.isWhitespace(r0)
            if (r0 == 0) goto L1d
            char[] r0 = r3.f29457a
            int r0 = r4.read(r0)
            if (r0 != r2) goto La
            goto L22
        L1d:
            char[] r3 = r3.f29457a
            char r3 = r3[r1]
            return r3
        L22:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.server.response.FastParser.m22210j(java.io.BufferedReader):char");
    }

    /* renamed from: k */
    public final double m22211k(BufferedReader bufferedReader) throws ParseException, IOException {
        int m22214n = m22214n(bufferedReader, this.f29459c);
        if (m22214n == 0) {
            return 0.0d;
        }
        return Double.parseDouble(new String(this.f29459c, 0, m22214n));
    }

    /* renamed from: l */
    public final float m22212l(BufferedReader bufferedReader) throws ParseException, IOException {
        int m22214n = m22214n(bufferedReader, this.f29459c);
        if (m22214n == 0) {
            return 0.0f;
        }
        return Float.parseFloat(new String(this.f29459c, 0, m22214n));
    }

    /* renamed from: m */
    public final int m22213m(BufferedReader bufferedReader) throws ParseException, IOException {
        int i;
        int i2;
        int m22214n = m22214n(bufferedReader, this.f29459c);
        if (m22214n == 0) {
            return 0;
        }
        char[] cArr = this.f29459c;
        if (m22214n <= 0) {
            throw new ParseException("No number to parse");
        }
        char c = cArr[0];
        int i3 = c == '-' ? Integer.MIN_VALUE : -2147483647;
        int i4 = c == '-' ? 1 : 0;
        if (i4 < m22214n) {
            i2 = i4 + 1;
            int digit = Character.digit(cArr[i4], 10);
            if (digit < 0) {
                throw new ParseException("Unexpected non-digit character");
            }
            i = -digit;
        } else {
            i = 0;
            i2 = i4;
        }
        while (i2 < m22214n) {
            int i5 = i2 + 1;
            int digit2 = Character.digit(cArr[i2], 10);
            if (digit2 < 0) {
                throw new ParseException("Unexpected non-digit character");
            }
            if (i < -214748364) {
                throw new ParseException("Number too large");
            }
            int i6 = i * 10;
            if (i6 < i3 + digit2) {
                throw new ParseException("Number too large");
            }
            i = i6 - digit2;
            i2 = i5;
        }
        if (i4 == 0) {
            return -i;
        }
        if (i2 > 1) {
            return i;
        }
        throw new ParseException("No digits to parse");
    }

    @ResultIgnorabilityUnspecified
    /* renamed from: n */
    public final int m22214n(BufferedReader bufferedReader, char[] cArr) throws ParseException, IOException {
        int i;
        char m22210j = m22210j(bufferedReader);
        if (m22210j == 0) {
            throw new ParseException("Unexpected EOF");
        }
        if (m22210j == ',') {
            throw new ParseException("Missing value");
        }
        if (m22210j == 'n') {
            m22225y(bufferedReader, f29443g);
            return 0;
        }
        bufferedReader.mark(1024);
        if (m22210j == '\"') {
            i = 0;
            boolean z = false;
            while (i < 1024 && bufferedReader.read(cArr, i, 1) != -1) {
                char c = cArr[i];
                if (Character.isISOControl(c)) {
                    throw new ParseException("Unexpected control character while reading string");
                }
                int i2 = i + 1;
                if (c == '\"') {
                    if (!z) {
                        bufferedReader.reset();
                        bufferedReader.skip(i2);
                        return i;
                    }
                } else if (c == '\\') {
                    z = !z;
                    i = i2;
                }
                z = false;
                i = i2;
            }
        } else {
            cArr[0] = m22210j;
            i = 1;
            while (i < 1024 && bufferedReader.read(cArr, i, 1) != -1) {
                char c2 = cArr[i];
                if (c2 == '}' || c2 == ',' || Character.isWhitespace(c2) || cArr[i] == ']') {
                    bufferedReader.reset();
                    bufferedReader.skip(i - 1);
                    cArr[i] = 0;
                    return i;
                }
                i++;
            }
        }
        if (i == 1024) {
            throw new ParseException("Absurdly long value");
        }
        throw new ParseException("Unexpected EOF");
    }

    /* renamed from: o */
    public final long m22215o(BufferedReader bufferedReader) throws ParseException, IOException {
        long j;
        int i;
        int m22214n = m22214n(bufferedReader, this.f29459c);
        if (m22214n == 0) {
            return 0L;
        }
        char[] cArr = this.f29459c;
        if (m22214n <= 0) {
            throw new ParseException("No number to parse");
        }
        char c = cArr[0];
        long j2 = c == '-' ? Long.MIN_VALUE : C4649C.TIME_UNSET;
        int i2 = c == '-' ? 1 : 0;
        if (i2 < m22214n) {
            i = i2 + 1;
            int digit = Character.digit(cArr[i2], 10);
            if (digit < 0) {
                throw new ParseException("Unexpected non-digit character");
            }
            j = -digit;
        } else {
            j = 0;
            i = i2;
        }
        while (i < m22214n) {
            int i3 = i + 1;
            int digit2 = Character.digit(cArr[i], 10);
            if (digit2 < 0) {
                throw new ParseException("Unexpected non-digit character");
            }
            if (j < -922337203685477580L) {
                throw new ParseException("Number too large");
            }
            long j3 = j * 10;
            long j4 = digit2;
            if (j3 < j2 + j4) {
                throw new ParseException("Number too large");
            }
            j = j3 - j4;
            i = i3;
        }
        if (i2 == 0) {
            return -j;
        }
        if (i > 1) {
            return j;
        }
        throw new ParseException("No digits to parse");
    }

    @Nullable
    /* renamed from: p */
    public final String m22216p(BufferedReader bufferedReader) throws ParseException, IOException {
        return m22217q(bufferedReader, this.f29458b, this.f29460d, null);
    }

    @KeepForSdk
    public void parse(@NonNull InputStream inputStream, @NonNull T t) throws ParseException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream), 1024);
        try {
            try {
                this.f29462f.push(0);
                char m22210j = m22210j(bufferedReader);
                if (m22210j == 0) {
                    throw new ParseException("No data to parse");
                }
                if (m22210j == '[') {
                    this.f29462f.push(5);
                    Map<String, FastJsonResponse.Field<?, ?>> fieldMappings = t.getFieldMappings();
                    if (fieldMappings.size() != 1) {
                        throw new ParseException("Object array response class must have a single Field");
                    }
                    FastJsonResponse.Field<?, ?> value = fieldMappings.entrySet().iterator().next().getValue();
                    t.addConcreteTypeArrayInternal(value, value.zae, m22223w(bufferedReader, value));
                } else {
                    if (m22210j != '{') {
                        throw new ParseException("Unexpected token: " + m22210j);
                    }
                    this.f29462f.push(1);
                    m22209A(bufferedReader, t);
                }
                m22224x(0);
                try {
                    bufferedReader.close();
                } catch (IOException unused) {
                    Log.w("FastParser", "Failed to close reader while parsing.");
                }
            } catch (IOException e) {
                throw new ParseException(e);
            }
        } catch (Throwable th) {
            try {
                bufferedReader.close();
            } catch (IOException unused2) {
                Log.w("FastParser", "Failed to close reader while parsing.");
            }
            throw th;
        }
    }

    @Nullable
    /* renamed from: q */
    public final String m22217q(BufferedReader bufferedReader, char[] cArr, StringBuilder sb, @Nullable char[] cArr2) throws ParseException, IOException {
        char m22210j = m22210j(bufferedReader);
        if (m22210j == '\"') {
            return m22200a(bufferedReader, cArr, sb, cArr2);
        }
        if (m22210j != 'n') {
            throw new ParseException("Expected string");
        }
        m22225y(bufferedReader, f29443g);
        return null;
    }

    @Nullable
    @ResultIgnorabilityUnspecified
    /* renamed from: r */
    public final String m22218r(BufferedReader bufferedReader) throws ParseException, IOException {
        this.f29462f.push(2);
        char m22210j = m22210j(bufferedReader);
        if (m22210j == '\"') {
            this.f29462f.push(3);
            String m22200a = m22200a(bufferedReader, this.f29458b, this.f29460d, null);
            m22224x(3);
            if (m22210j(bufferedReader) == ':') {
                return m22200a;
            }
            throw new ParseException("Expected key/value separator");
        }
        if (m22210j == ']') {
            m22224x(2);
            m22224x(1);
            m22224x(5);
            return null;
        }
        if (m22210j == '}') {
            m22224x(2);
            return null;
        }
        throw new ParseException("Unexpected token: " + m22210j);
    }

    @Nullable
    /* renamed from: s */
    public final String m22219s(BufferedReader bufferedReader) throws ParseException, IOException {
        bufferedReader.mark(1024);
        char m22210j = m22210j(bufferedReader);
        int i = 1;
        if (m22210j == '\"') {
            if (bufferedReader.read(this.f29457a) == -1) {
                throw new ParseException("Unexpected EOF while parsing string");
            }
            char c = this.f29457a[0];
            boolean z = false;
            do {
                if (c == '\"') {
                    if (z) {
                        c = '\"';
                        z = true;
                    }
                }
                z = c == '\\' ? !z : false;
                if (bufferedReader.read(this.f29457a) == -1) {
                    throw new ParseException("Unexpected EOF while parsing string");
                }
                c = this.f29457a[0];
            } while (!Character.isISOControl(c));
            throw new ParseException("Unexpected control character while reading string");
        }
        if (m22210j == ',') {
            throw new ParseException("Missing value");
        }
        if (m22210j == '[') {
            this.f29462f.push(5);
            bufferedReader.mark(32);
            if (m22210j(bufferedReader) == ']') {
                m22224x(5);
            } else {
                bufferedReader.reset();
                boolean z2 = false;
                boolean z3 = false;
                while (i > 0) {
                    char m22210j2 = m22210j(bufferedReader);
                    if (m22210j2 == 0) {
                        throw new ParseException("Unexpected EOF while parsing array");
                    }
                    if (Character.isISOControl(m22210j2)) {
                        throw new ParseException("Unexpected control character while reading array");
                    }
                    if (m22210j2 == '\"') {
                        if (!z3) {
                            z2 = !z2;
                        }
                        m22210j2 = '\"';
                    }
                    if (m22210j2 == '[') {
                        if (!z2) {
                            i++;
                        }
                        m22210j2 = '[';
                    }
                    if (m22210j2 == ']' && !z2) {
                        i--;
                    }
                    z3 = (m22210j2 == '\\' && z2) ? !z3 : false;
                }
                m22224x(5);
            }
        } else if (m22210j != '{') {
            bufferedReader.reset();
            m22214n(bufferedReader, this.f29459c);
        } else {
            this.f29462f.push(1);
            bufferedReader.mark(32);
            char m22210j3 = m22210j(bufferedReader);
            if (m22210j3 == '}') {
                m22224x(1);
            } else {
                if (m22210j3 != '\"') {
                    throw new ParseException("Unexpected token " + m22210j3);
                }
                bufferedReader.reset();
                m22218r(bufferedReader);
                do {
                } while (m22219s(bufferedReader) != null);
                m22224x(1);
            }
        }
        char m22210j4 = m22210j(bufferedReader);
        if (m22210j4 == ',') {
            m22224x(2);
            return m22218r(bufferedReader);
        }
        if (m22210j4 == '}') {
            m22224x(2);
            return null;
        }
        throw new ParseException("Unexpected token " + m22210j4);
    }

    @Nullable
    /* renamed from: t */
    public final BigDecimal m22220t(BufferedReader bufferedReader) throws ParseException, IOException {
        int m22214n = m22214n(bufferedReader, this.f29459c);
        if (m22214n == 0) {
            return null;
        }
        return new BigDecimal(new String(this.f29459c, 0, m22214n));
    }

    @Nullable
    /* renamed from: u */
    public final BigInteger m22221u(BufferedReader bufferedReader) throws ParseException, IOException {
        int m22214n = m22214n(bufferedReader, this.f29459c);
        if (m22214n == 0) {
            return null;
        }
        return new BigInteger(new String(this.f29459c, 0, m22214n));
    }

    @Nullable
    /* renamed from: v */
    public final ArrayList m22222v(BufferedReader bufferedReader, InterfaceC5080i interfaceC5080i) throws ParseException, IOException {
        char m22210j = m22210j(bufferedReader);
        if (m22210j == 'n') {
            m22225y(bufferedReader, f29443g);
            return null;
        }
        if (m22210j != '[') {
            throw new ParseException("Expected start of array");
        }
        this.f29462f.push(5);
        ArrayList arrayList = new ArrayList();
        while (true) {
            bufferedReader.mark(1024);
            char m22210j2 = m22210j(bufferedReader);
            if (m22210j2 == 0) {
                throw new ParseException("Unexpected EOF");
            }
            if (m22210j2 != ',') {
                if (m22210j2 == ']') {
                    m22224x(5);
                    return arrayList;
                }
                bufferedReader.reset();
                arrayList.add(interfaceC5080i.mo22227a(this, bufferedReader));
            }
        }
    }

    @Nullable
    /* renamed from: w */
    public final ArrayList m22223w(BufferedReader bufferedReader, FastJsonResponse.Field field) throws ParseException, IOException {
        ArrayList arrayList = new ArrayList();
        char m22210j = m22210j(bufferedReader);
        if (m22210j == ']') {
            m22224x(5);
            return arrayList;
        }
        if (m22210j == 'n') {
            m22225y(bufferedReader, f29443g);
            m22224x(5);
            return null;
        }
        if (m22210j != '{') {
            throw new ParseException("Unexpected token: " + m22210j);
        }
        this.f29462f.push(1);
        while (true) {
            try {
                FastJsonResponse zad = field.zad();
                if (!m22209A(bufferedReader, zad)) {
                    return arrayList;
                }
                arrayList.add(zad);
                char m22210j2 = m22210j(bufferedReader);
                if (m22210j2 != ',') {
                    if (m22210j2 == ']') {
                        m22224x(5);
                        return arrayList;
                    }
                    throw new ParseException("Unexpected token: " + m22210j2);
                }
                if (m22210j(bufferedReader) != '{') {
                    throw new ParseException("Expected start of next object in array");
                }
                this.f29462f.push(1);
            } catch (IllegalAccessException e) {
                throw new ParseException("Error instantiating inner object", e);
            } catch (InstantiationException e2) {
                throw new ParseException("Error instantiating inner object", e2);
            }
        }
    }

    /* renamed from: x */
    public final void m22224x(int i) throws ParseException {
        if (this.f29462f.isEmpty()) {
            throw new ParseException("Expected state " + i + " but had empty stack");
        }
        int intValue = ((Integer) this.f29462f.pop()).intValue();
        if (intValue == i) {
            return;
        }
        throw new ParseException("Expected state " + i + " but had " + intValue);
    }

    /* renamed from: y */
    public final void m22225y(BufferedReader bufferedReader, char[] cArr) throws ParseException, IOException {
        int i = 0;
        while (true) {
            int length = cArr.length;
            if (i >= length) {
                return;
            }
            int read = bufferedReader.read(this.f29458b, 0, length - i);
            if (read == -1) {
                throw new ParseException("Unexpected EOF");
            }
            for (int i2 = 0; i2 < read; i2++) {
                if (cArr[i2 + i] != this.f29458b[i2]) {
                    throw new ParseException("Unexpected character");
                }
            }
            i += read;
        }
    }

    /* renamed from: z */
    public final boolean m22226z(BufferedReader bufferedReader, boolean z) throws ParseException, IOException {
        char m22210j = m22210j(bufferedReader);
        if (m22210j == '\"') {
            if (z) {
                throw new ParseException("No boolean value found in string");
            }
            return m22226z(bufferedReader, true);
        }
        if (m22210j == 'f') {
            m22225y(bufferedReader, z ? f29447k : f29446j);
            return false;
        }
        if (m22210j == 'n') {
            m22225y(bufferedReader, f29443g);
            return false;
        }
        if (m22210j == 't') {
            m22225y(bufferedReader, z ? f29445i : f29444h);
            return true;
        }
        throw new ParseException("Unexpected token: " + m22210j);
    }
}
