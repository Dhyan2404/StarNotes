package com.google.common.escape;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.sunia.HTREnginev2.tnf;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.CheckForNull;

@GwtCompatible
@tnf
/* loaded from: classes6.dex */
public final class Escapers {

    /* renamed from: a */
    public static final Escaper f34655a = new C6134a();

    /* loaded from: classes6.dex */
    public static final class Builder {

        /* renamed from: a */
        public final Map<Character, String> f34656a;

        /* renamed from: b */
        public char f34657b;

        /* renamed from: c */
        public char f34658c;

        /* renamed from: d */
        @CheckForNull
        public String f34659d;

        /* renamed from: com.google.common.escape.Escapers$Builder$a */
        /* loaded from: classes6.dex */
        public class C6133a extends ArrayBasedCharEscaper {

            /* renamed from: g */
            @CheckForNull
            public final char[] f34660g;

            public C6133a(Map map, char c, char c2) {
                super((Map<Character, String>) map, c, c2);
                this.f34660g = Builder.this.f34659d != null ? Builder.this.f34659d.toCharArray() : null;
            }

            @Override // com.google.common.escape.ArrayBasedCharEscaper
            @CheckForNull
            public char[] escapeUnsafe(char c) {
                return this.f34660g;
            }
        }

        public /* synthetic */ Builder(C6134a c6134a) {
            this();
        }

        @CanIgnoreReturnValue
        public Builder addEscape(char c, String str) {
            Preconditions.checkNotNull(str);
            this.f34656a.put(Character.valueOf(c), str);
            return this;
        }

        public Escaper build() {
            return new C6133a(this.f34656a, this.f34657b, this.f34658c);
        }

        @CanIgnoreReturnValue
        public Builder setSafeRange(char c, char c2) {
            this.f34657b = c;
            this.f34658c = c2;
            return this;
        }

        @CanIgnoreReturnValue
        public Builder setUnsafeReplacement(String str) {
            this.f34659d = str;
            return this;
        }

        public Builder() {
            this.f34656a = new HashMap();
            this.f34657b = (char) 0;
            this.f34658c = (char) 65535;
            this.f34659d = null;
        }
    }

    /* renamed from: com.google.common.escape.Escapers$a */
    /* loaded from: classes6.dex */
    public class C6134a extends CharEscaper {
        @Override // com.google.common.escape.CharEscaper
        @CheckForNull
        public char[] escape(char c) {
            return null;
        }

        @Override // com.google.common.escape.CharEscaper, com.google.common.escape.Escaper
        public String escape(String str) {
            return (String) Preconditions.checkNotNull(str);
        }
    }

    /* renamed from: com.google.common.escape.Escapers$b */
    /* loaded from: classes6.dex */
    public class C6135b extends UnicodeEscaper {

        /* renamed from: c */
        public final /* synthetic */ CharEscaper f34662c;

        public C6135b(CharEscaper charEscaper) {
            this.f34662c = charEscaper;
        }

        @Override // com.google.common.escape.UnicodeEscaper
        @CheckForNull
        public char[] escape(int i) {
            if (i < 65536) {
                return this.f34662c.escape((char) i);
            }
            char[] cArr = new char[2];
            Character.toChars(i, cArr, 0);
            char[] escape = this.f34662c.escape(cArr[0]);
            char[] escape2 = this.f34662c.escape(cArr[1]);
            if (escape == null && escape2 == null) {
                return null;
            }
            int length = escape != null ? escape.length : 1;
            char[] cArr2 = new char[(escape2 != null ? escape2.length : 1) + length];
            if (escape != null) {
                for (int i2 = 0; i2 < escape.length; i2++) {
                    cArr2[i2] = escape[i2];
                }
            } else {
                cArr2[0] = cArr[0];
            }
            if (escape2 != null) {
                for (int i3 = 0; i3 < escape2.length; i3++) {
                    cArr2[length + i3] = escape2[i3];
                }
            } else {
                cArr2[length] = cArr[1];
            }
            return cArr2;
        }
    }

    /* renamed from: a */
    public static UnicodeEscaper m27027a(Escaper escaper) {
        Preconditions.checkNotNull(escaper);
        if (escaper instanceof UnicodeEscaper) {
            return (UnicodeEscaper) escaper;
        }
        if (escaper instanceof CharEscaper) {
            return m27029c((CharEscaper) escaper);
        }
        String name = escaper.getClass().getName();
        throw new IllegalArgumentException(name.length() != 0 ? "Cannot create a UnicodeEscaper from: ".concat(name) : new String("Cannot create a UnicodeEscaper from: "));
    }

    @CheckForNull
    /* renamed from: b */
    public static String m27028b(@CheckForNull char[] cArr) {
        if (cArr == null) {
            return null;
        }
        return new String(cArr);
    }

    public static Builder builder() {
        return new Builder(null);
    }

    /* renamed from: c */
    public static UnicodeEscaper m27029c(CharEscaper charEscaper) {
        return new C6135b(charEscaper);
    }

    @CheckForNull
    public static String computeReplacement(CharEscaper charEscaper, char c) {
        return m27028b(charEscaper.escape(c));
    }

    public static Escaper nullEscaper() {
        return f34655a;
    }

    @CheckForNull
    public static String computeReplacement(UnicodeEscaper unicodeEscaper, int i) {
        return m27028b(unicodeEscaper.escape(i));
    }
}
