package com.google.gson.stream;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.gson.FormattingStyle;
import com.google.gson.Strictness;
import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Arrays;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.regex.Pattern;
import org.apache.commons.math3.dfp.Dfp;

/* loaded from: classes6.dex */
public class JsonWriter implements Closeable, Flushable {

    /* renamed from: p */
    public static final Pattern f36342p = Pattern.compile("-?(?:0|[1-9][0-9]*)(?:\\.[0-9]+)?(?:[eE][-+]?[0-9]+)?");

    /* renamed from: q */
    public static final String[] f36343q = new String[128];

    /* renamed from: r */
    public static final String[] f36344r;

    /* renamed from: e */
    public final Writer f36345e;

    /* renamed from: f */
    public int[] f36346f = new int[32];

    /* renamed from: g */
    public int f36347g = 0;

    /* renamed from: h */
    public FormattingStyle f36348h;

    /* renamed from: i */
    public String f36349i;

    /* renamed from: j */
    public String f36350j;

    /* renamed from: k */
    public boolean f36351k;

    /* renamed from: l */
    public Strictness f36352l;

    /* renamed from: m */
    public boolean f36353m;

    /* renamed from: n */
    public String f36354n;

    /* renamed from: o */
    public boolean f36355o;

    static {
        for (int i = 0; i <= 31; i++) {
            f36343q[i] = String.format("\\u%04x", Integer.valueOf(i));
        }
        String[] strArr = f36343q;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
        String[] strArr2 = (String[]) strArr.clone();
        f36344r = strArr2;
        strArr2[60] = "\\u003c";
        strArr2[62] = "\\u003e";
        strArr2[38] = "\\u0026";
        strArr2[61] = "\\u003d";
        strArr2[39] = "\\u0027";
    }

    public JsonWriter(Writer writer) {
        m28405f0(6);
        this.f36352l = Strictness.LEGACY_STRICT;
        this.f36355o = true;
        Objects.requireNonNull(writer, "out == null");
        this.f36345e = writer;
        setFormattingStyle(FormattingStyle.COMPACT);
    }

    /* renamed from: H */
    public static boolean m28400H(Class<? extends Number> cls) {
        return cls == Integer.class || cls == Long.class || cls == Double.class || cls == Float.class || cls == Byte.class || cls == Short.class || cls == BigDecimal.class || cls == BigInteger.class || cls == AtomicInteger.class || cls == AtomicLong.class;
    }

    /* renamed from: I */
    public final void m28401I() throws IOException {
        if (this.f36351k) {
            return;
        }
        this.f36345e.write(this.f36348h.getNewline());
        int i = this.f36347g;
        for (int i2 = 1; i2 < i; i2++) {
            this.f36345e.write(this.f36348h.getIndent());
        }
    }

    @CanIgnoreReturnValue
    /* renamed from: M */
    public final JsonWriter m28402M(int i, char c) throws IOException {
        m28409j();
        m28405f0(i);
        this.f36345e.write(c);
        return this;
    }

    @CanIgnoreReturnValue
    public JsonWriter beginArray() throws IOException {
        m28408i0();
        return m28402M(1, '[');
    }

    @CanIgnoreReturnValue
    public JsonWriter beginObject() throws IOException {
        m28408i0();
        return m28402M(3, '{');
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f36345e.close();
        int i = this.f36347g;
        if (i > 1 || (i == 1 && this.f36346f[i - 1] != 7)) {
            throw new IOException("Incomplete document");
        }
        this.f36347g = 0;
    }

    /* renamed from: e0 */
    public final int m28403e0() {
        int i = this.f36347g;
        if (i != 0) {
            return this.f36346f[i - 1];
        }
        throw new IllegalStateException("JsonWriter is closed.");
    }

    @CanIgnoreReturnValue
    public JsonWriter endArray() throws IOException {
        return m28410w(1, 2, ']');
    }

    @CanIgnoreReturnValue
    public JsonWriter endObject() throws IOException {
        return m28410w(3, 5, '}');
    }

    /* renamed from: f */
    public final void m28404f() throws IOException {
        int m28403e0 = m28403e0();
        if (m28403e0 == 5) {
            this.f36345e.write(this.f36350j);
        } else if (m28403e0 != 3) {
            throw new IllegalStateException("Nesting problem.");
        }
        m28401I();
        m28406g0(4);
    }

    /* renamed from: f0 */
    public final void m28405f0(int i) {
        int i2 = this.f36347g;
        int[] iArr = this.f36346f;
        if (i2 == iArr.length) {
            this.f36346f = Arrays.copyOf(iArr, i2 * 2);
        }
        int[] iArr2 = this.f36346f;
        int i3 = this.f36347g;
        this.f36347g = i3 + 1;
        iArr2[i3] = i;
    }

    public void flush() throws IOException {
        if (this.f36347g == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
        this.f36345e.flush();
    }

    /* renamed from: g0 */
    public final void m28406g0(int i) {
        this.f36346f[this.f36347g - 1] = i;
    }

    public final FormattingStyle getFormattingStyle() {
        return this.f36348h;
    }

    public final boolean getSerializeNulls() {
        return this.f36355o;
    }

    public final Strictness getStrictness() {
        return this.f36352l;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0034  */
    /* renamed from: h0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m28407h0(java.lang.String r9) throws java.io.IOException {
        /*
            r8 = this;
            boolean r0 = r8.f36353m
            if (r0 == 0) goto L7
            java.lang.String[] r0 = com.google.gson.stream.JsonWriter.f36344r
            goto L9
        L7:
            java.lang.String[] r0 = com.google.gson.stream.JsonWriter.f36343q
        L9:
            java.io.Writer r1 = r8.f36345e
            r2 = 34
            r1.write(r2)
            int r1 = r9.length()
            r3 = 0
            r4 = r3
        L16:
            if (r3 >= r1) goto L45
            char r5 = r9.charAt(r3)
            r6 = 128(0x80, float:1.794E-43)
            if (r5 >= r6) goto L25
            r5 = r0[r5]
            if (r5 != 0) goto L32
            goto L42
        L25:
            r6 = 8232(0x2028, float:1.1535E-41)
            if (r5 != r6) goto L2c
            java.lang.String r5 = "\\u2028"
            goto L32
        L2c:
            r6 = 8233(0x2029, float:1.1537E-41)
            if (r5 != r6) goto L42
            java.lang.String r5 = "\\u2029"
        L32:
            if (r4 >= r3) goto L3b
            java.io.Writer r6 = r8.f36345e
            int r7 = r3 - r4
            r6.write(r9, r4, r7)
        L3b:
            java.io.Writer r4 = r8.f36345e
            r4.write(r5)
            int r4 = r3 + 1
        L42:
            int r3 = r3 + 1
            goto L16
        L45:
            if (r4 >= r1) goto L4d
            java.io.Writer r0 = r8.f36345e
            int r1 = r1 - r4
            r0.write(r9, r4, r1)
        L4d:
            java.io.Writer r8 = r8.f36345e
            r8.write(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.stream.JsonWriter.m28407h0(java.lang.String):void");
    }

    /* renamed from: i0 */
    public final void m28408i0() throws IOException {
        if (this.f36354n != null) {
            m28404f();
            m28407h0(this.f36354n);
            this.f36354n = null;
        }
    }

    public final boolean isHtmlSafe() {
        return this.f36353m;
    }

    public boolean isLenient() {
        return this.f36352l == Strictness.LENIENT;
    }

    /* renamed from: j */
    public final void m28409j() throws IOException {
        int m28403e0 = m28403e0();
        if (m28403e0 == 1) {
            m28406g0(2);
            m28401I();
            return;
        }
        if (m28403e0 == 2) {
            this.f36345e.append((CharSequence) this.f36350j);
            m28401I();
        } else {
            if (m28403e0 == 4) {
                this.f36345e.append((CharSequence) this.f36349i);
                m28406g0(5);
                return;
            }
            if (m28403e0 != 6) {
                if (m28403e0 != 7) {
                    throw new IllegalStateException("Nesting problem.");
                }
                if (this.f36352l != Strictness.LENIENT) {
                    throw new IllegalStateException("JSON must have only one top-level value.");
                }
            }
            m28406g0(7);
        }
    }

    @CanIgnoreReturnValue
    public JsonWriter jsonValue(String str) throws IOException {
        if (str == null) {
            return nullValue();
        }
        m28408i0();
        m28409j();
        this.f36345e.append((CharSequence) str);
        return this;
    }

    @CanIgnoreReturnValue
    public JsonWriter name(String str) throws IOException {
        Objects.requireNonNull(str, "name == null");
        if (this.f36354n != null) {
            throw new IllegalStateException("Already wrote a name, expecting a value.");
        }
        int m28403e0 = m28403e0();
        if (m28403e0 != 3 && m28403e0 != 5) {
            throw new IllegalStateException("Please begin an object before writing a name.");
        }
        this.f36354n = str;
        return this;
    }

    @CanIgnoreReturnValue
    public JsonWriter nullValue() throws IOException {
        if (this.f36354n != null) {
            if (!this.f36355o) {
                this.f36354n = null;
                return this;
            }
            m28408i0();
        }
        m28409j();
        this.f36345e.write("null");
        return this;
    }

    public final void setFormattingStyle(FormattingStyle formattingStyle) {
        Objects.requireNonNull(formattingStyle);
        this.f36348h = formattingStyle;
        this.f36350j = ",";
        if (formattingStyle.usesSpaceAfterSeparators()) {
            this.f36349i = ": ";
            if (this.f36348h.getNewline().isEmpty()) {
                this.f36350j = ", ";
            }
        } else {
            this.f36349i = ":";
        }
        this.f36351k = this.f36348h.getNewline().isEmpty() && this.f36348h.getIndent().isEmpty();
    }

    public final void setHtmlSafe(boolean z) {
        this.f36353m = z;
    }

    public final void setIndent(String str) {
        if (str.isEmpty()) {
            setFormattingStyle(FormattingStyle.COMPACT);
        } else {
            setFormattingStyle(FormattingStyle.PRETTY.withIndent(str));
        }
    }

    @Deprecated
    public final void setLenient(boolean z) {
        setStrictness(z ? Strictness.LENIENT : Strictness.LEGACY_STRICT);
    }

    public final void setSerializeNulls(boolean z) {
        this.f36355o = z;
    }

    public final void setStrictness(Strictness strictness) {
        Objects.requireNonNull(strictness);
        this.f36352l = strictness;
    }

    @CanIgnoreReturnValue
    public JsonWriter value(String str) throws IOException {
        if (str == null) {
            return nullValue();
        }
        m28408i0();
        m28409j();
        m28407h0(str);
        return this;
    }

    @CanIgnoreReturnValue
    /* renamed from: w */
    public final JsonWriter m28410w(int i, int i2, char c) throws IOException {
        int m28403e0 = m28403e0();
        if (m28403e0 != i2 && m28403e0 != i) {
            throw new IllegalStateException("Nesting problem.");
        }
        if (this.f36354n != null) {
            throw new IllegalStateException("Dangling name: " + this.f36354n);
        }
        this.f36347g--;
        if (m28403e0 == i2) {
            m28401I();
        }
        this.f36345e.write(c);
        return this;
    }

    @CanIgnoreReturnValue
    public JsonWriter value(boolean z) throws IOException {
        m28408i0();
        m28409j();
        this.f36345e.write(z ? "true" : "false");
        return this;
    }

    @CanIgnoreReturnValue
    public JsonWriter value(Boolean bool) throws IOException {
        if (bool == null) {
            return nullValue();
        }
        m28408i0();
        m28409j();
        this.f36345e.write(bool.booleanValue() ? "true" : "false");
        return this;
    }

    @CanIgnoreReturnValue
    public JsonWriter value(float f) throws IOException {
        m28408i0();
        if (this.f36352l != Strictness.LENIENT && (Float.isNaN(f) || Float.isInfinite(f))) {
            throw new IllegalArgumentException("Numeric values must be finite, but was " + f);
        }
        m28409j();
        this.f36345e.append((CharSequence) Float.toString(f));
        return this;
    }

    @CanIgnoreReturnValue
    public JsonWriter value(double d) throws IOException {
        m28408i0();
        if (this.f36352l != Strictness.LENIENT && (Double.isNaN(d) || Double.isInfinite(d))) {
            throw new IllegalArgumentException("Numeric values must be finite, but was " + d);
        }
        m28409j();
        this.f36345e.append((CharSequence) Double.toString(d));
        return this;
    }

    @CanIgnoreReturnValue
    public JsonWriter value(long j) throws IOException {
        m28408i0();
        m28409j();
        this.f36345e.write(Long.toString(j));
        return this;
    }

    @CanIgnoreReturnValue
    public JsonWriter value(Number number) throws IOException {
        if (number == null) {
            return nullValue();
        }
        m28408i0();
        String obj = number.toString();
        if (!obj.equals(Dfp.f108008h) && !obj.equals("Infinity") && !obj.equals("NaN")) {
            Class<?> cls = number.getClass();
            if (!m28400H(cls) && !f36342p.matcher(obj).matches()) {
                throw new IllegalArgumentException("String created by " + cls + " is not a valid JSON number: " + obj);
            }
        } else if (this.f36352l != Strictness.LENIENT) {
            throw new IllegalArgumentException("Numeric values must be finite, but was " + obj);
        }
        m28409j();
        this.f36345e.append((CharSequence) obj);
        return this;
    }
}
