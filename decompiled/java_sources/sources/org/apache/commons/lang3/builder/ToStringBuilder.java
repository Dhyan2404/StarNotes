package org.apache.commons.lang3.builder;

import org.apache.commons.lang3.ObjectUtils;
import org.apache.commons.lang3.Validate;

/* loaded from: classes12.dex */
public class ToStringBuilder implements Builder<String> {

    /* renamed from: h */
    public static volatile ToStringStyle f107479h = ToStringStyle.DEFAULT_STYLE;

    /* renamed from: e */
    public final StringBuffer f107480e;

    /* renamed from: f */
    public final Object f107481f;

    /* renamed from: g */
    public final ToStringStyle f107482g;

    public ToStringBuilder(Object obj) {
        this(obj, null, null);
    }

    public static ToStringStyle getDefaultStyle() {
        return f107479h;
    }

    public static String reflectionToString(Object obj) {
        return ReflectionToStringBuilder.toString(obj);
    }

    public static void setDefaultStyle(ToStringStyle toStringStyle) {
        Validate.isTrue(toStringStyle != null, "The style must not be null", new Object[0]);
        f107479h = toStringStyle;
    }

    public ToStringBuilder append(boolean z) {
        this.f107482g.append(this.f107480e, (String) null, z);
        return this;
    }

    public ToStringBuilder appendAsObjectToString(Object obj) {
        ObjectUtils.identityToString(getStringBuffer(), obj);
        return this;
    }

    public ToStringBuilder appendSuper(String str) {
        if (str != null) {
            this.f107482g.appendSuper(this.f107480e, str);
        }
        return this;
    }

    public ToStringBuilder appendToString(String str) {
        if (str != null) {
            this.f107482g.appendToString(this.f107480e, str);
        }
        return this;
    }

    public Object getObject() {
        return this.f107481f;
    }

    public StringBuffer getStringBuffer() {
        return this.f107480e;
    }

    public ToStringStyle getStyle() {
        return this.f107482g;
    }

    public String toString() {
        if (getObject() == null) {
            getStringBuffer().append(getStyle().getNullText());
        } else {
            this.f107482g.appendEnd(getStringBuffer(), getObject());
        }
        return getStringBuffer().toString();
    }

    public ToStringBuilder(Object obj, ToStringStyle toStringStyle) {
        this(obj, toStringStyle, null);
    }

    public static String reflectionToString(Object obj, ToStringStyle toStringStyle) {
        return ReflectionToStringBuilder.toString(obj, toStringStyle);
    }

    public ToStringBuilder append(boolean[] zArr) {
        this.f107482g.append(this.f107480e, (String) null, zArr, (Boolean) null);
        return this;
    }

    @Override // org.apache.commons.lang3.builder.Builder
    public String build() {
        return toString();
    }

    public ToStringBuilder(Object obj, ToStringStyle toStringStyle, StringBuffer stringBuffer) {
        toStringStyle = toStringStyle == null ? getDefaultStyle() : toStringStyle;
        stringBuffer = stringBuffer == null ? new StringBuffer(512) : stringBuffer;
        this.f107480e = stringBuffer;
        this.f107482g = toStringStyle;
        this.f107481f = obj;
        toStringStyle.appendStart(stringBuffer, obj);
    }

    public static String reflectionToString(Object obj, ToStringStyle toStringStyle, boolean z) {
        return ReflectionToStringBuilder.toString(obj, toStringStyle, z, false, null);
    }

    public ToStringBuilder append(byte b) {
        this.f107482g.append(this.f107480e, (String) null, b);
        return this;
    }

    public static <T> String reflectionToString(T t, ToStringStyle toStringStyle, boolean z, Class<? super T> cls) {
        return ReflectionToStringBuilder.toString(t, toStringStyle, z, false, cls);
    }

    public ToStringBuilder append(byte[] bArr) {
        this.f107482g.append(this.f107480e, (String) null, bArr, (Boolean) null);
        return this;
    }

    public ToStringBuilder append(char c) {
        this.f107482g.append(this.f107480e, (String) null, c);
        return this;
    }

    public ToStringBuilder append(char[] cArr) {
        this.f107482g.append(this.f107480e, (String) null, cArr, (Boolean) null);
        return this;
    }

    public ToStringBuilder append(double d) {
        this.f107482g.append(this.f107480e, (String) null, d);
        return this;
    }

    public ToStringBuilder append(double[] dArr) {
        this.f107482g.append(this.f107480e, (String) null, dArr, (Boolean) null);
        return this;
    }

    public ToStringBuilder append(float f) {
        this.f107482g.append(this.f107480e, (String) null, f);
        return this;
    }

    public ToStringBuilder append(float[] fArr) {
        this.f107482g.append(this.f107480e, (String) null, fArr, (Boolean) null);
        return this;
    }

    public ToStringBuilder append(int i) {
        this.f107482g.append(this.f107480e, (String) null, i);
        return this;
    }

    public ToStringBuilder append(int[] iArr) {
        this.f107482g.append(this.f107480e, (String) null, iArr, (Boolean) null);
        return this;
    }

    public ToStringBuilder append(long j) {
        this.f107482g.append(this.f107480e, (String) null, j);
        return this;
    }

    public ToStringBuilder append(long[] jArr) {
        this.f107482g.append(this.f107480e, (String) null, jArr, (Boolean) null);
        return this;
    }

    public ToStringBuilder append(Object obj) {
        this.f107482g.append(this.f107480e, (String) null, obj, (Boolean) null);
        return this;
    }

    public ToStringBuilder append(Object[] objArr) {
        this.f107482g.append(this.f107480e, (String) null, objArr, (Boolean) null);
        return this;
    }

    public ToStringBuilder append(short s) {
        this.f107482g.append(this.f107480e, (String) null, s);
        return this;
    }

    public ToStringBuilder append(short[] sArr) {
        this.f107482g.append(this.f107480e, (String) null, sArr, (Boolean) null);
        return this;
    }

    public ToStringBuilder append(String str, boolean z) {
        this.f107482g.append(this.f107480e, str, z);
        return this;
    }

    public ToStringBuilder append(String str, boolean[] zArr) {
        this.f107482g.append(this.f107480e, str, zArr, (Boolean) null);
        return this;
    }

    public ToStringBuilder append(String str, boolean[] zArr, boolean z) {
        this.f107482g.append(this.f107480e, str, zArr, Boolean.valueOf(z));
        return this;
    }

    public ToStringBuilder append(String str, byte b) {
        this.f107482g.append(this.f107480e, str, b);
        return this;
    }

    public ToStringBuilder append(String str, byte[] bArr) {
        this.f107482g.append(this.f107480e, str, bArr, (Boolean) null);
        return this;
    }

    public ToStringBuilder append(String str, byte[] bArr, boolean z) {
        this.f107482g.append(this.f107480e, str, bArr, Boolean.valueOf(z));
        return this;
    }

    public ToStringBuilder append(String str, char c) {
        this.f107482g.append(this.f107480e, str, c);
        return this;
    }

    public ToStringBuilder append(String str, char[] cArr) {
        this.f107482g.append(this.f107480e, str, cArr, (Boolean) null);
        return this;
    }

    public ToStringBuilder append(String str, char[] cArr, boolean z) {
        this.f107482g.append(this.f107480e, str, cArr, Boolean.valueOf(z));
        return this;
    }

    public ToStringBuilder append(String str, double d) {
        this.f107482g.append(this.f107480e, str, d);
        return this;
    }

    public ToStringBuilder append(String str, double[] dArr) {
        this.f107482g.append(this.f107480e, str, dArr, (Boolean) null);
        return this;
    }

    public ToStringBuilder append(String str, double[] dArr, boolean z) {
        this.f107482g.append(this.f107480e, str, dArr, Boolean.valueOf(z));
        return this;
    }

    public ToStringBuilder append(String str, float f) {
        this.f107482g.append(this.f107480e, str, f);
        return this;
    }

    public ToStringBuilder append(String str, float[] fArr) {
        this.f107482g.append(this.f107480e, str, fArr, (Boolean) null);
        return this;
    }

    public ToStringBuilder append(String str, float[] fArr, boolean z) {
        this.f107482g.append(this.f107480e, str, fArr, Boolean.valueOf(z));
        return this;
    }

    public ToStringBuilder append(String str, int i) {
        this.f107482g.append(this.f107480e, str, i);
        return this;
    }

    public ToStringBuilder append(String str, int[] iArr) {
        this.f107482g.append(this.f107480e, str, iArr, (Boolean) null);
        return this;
    }

    public ToStringBuilder append(String str, int[] iArr, boolean z) {
        this.f107482g.append(this.f107480e, str, iArr, Boolean.valueOf(z));
        return this;
    }

    public ToStringBuilder append(String str, long j) {
        this.f107482g.append(this.f107480e, str, j);
        return this;
    }

    public ToStringBuilder append(String str, long[] jArr) {
        this.f107482g.append(this.f107480e, str, jArr, (Boolean) null);
        return this;
    }

    public ToStringBuilder append(String str, long[] jArr, boolean z) {
        this.f107482g.append(this.f107480e, str, jArr, Boolean.valueOf(z));
        return this;
    }

    public ToStringBuilder append(String str, Object obj) {
        this.f107482g.append(this.f107480e, str, obj, (Boolean) null);
        return this;
    }

    public ToStringBuilder append(String str, Object obj, boolean z) {
        this.f107482g.append(this.f107480e, str, obj, Boolean.valueOf(z));
        return this;
    }

    public ToStringBuilder append(String str, Object[] objArr) {
        this.f107482g.append(this.f107480e, str, objArr, (Boolean) null);
        return this;
    }

    public ToStringBuilder append(String str, Object[] objArr, boolean z) {
        this.f107482g.append(this.f107480e, str, objArr, Boolean.valueOf(z));
        return this;
    }

    public ToStringBuilder append(String str, short s) {
        this.f107482g.append(this.f107480e, str, s);
        return this;
    }

    public ToStringBuilder append(String str, short[] sArr) {
        this.f107482g.append(this.f107480e, str, sArr, (Boolean) null);
        return this;
    }

    public ToStringBuilder append(String str, short[] sArr, boolean z) {
        this.f107482g.append(this.f107480e, str, sArr, Boolean.valueOf(z));
        return this;
    }
}
