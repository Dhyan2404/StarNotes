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
public final class CharEscaperBuilder {

    /* renamed from: b */
    public int f34651b = -1;

    /* renamed from: a */
    public final Map<Character, String> f34650a = new HashMap();

    @CanIgnoreReturnValue
    public CharEscaperBuilder addEscape(char c, String str) {
        this.f34650a.put(Character.valueOf(c), (String) Preconditions.checkNotNull(str));
        if (c > this.f34651b) {
            this.f34651b = c;
        }
        return this;
    }

    @CanIgnoreReturnValue
    public CharEscaperBuilder addEscapes(char[] cArr, String str) {
        Preconditions.checkNotNull(str);
        for (char c : cArr) {
            addEscape(c, str);
        }
        return this;
    }

    public char[][] toArray() {
        char[][] cArr = new char[this.f34651b + 1];
        for (Map.Entry<Character, String> entry : this.f34650a.entrySet()) {
            cArr[entry.getKey().charValue()] = entry.getValue().toCharArray();
        }
        return cArr;
    }

    public Escaper toEscaper() {
        return new C6132a(toArray());
    }

    /* renamed from: com.google.common.escape.CharEscaperBuilder$a */
    /* loaded from: classes6.dex */
    public static class C6132a extends CharEscaper {

        /* renamed from: c */
        public final char[][] f34652c;

        /* renamed from: d */
        public final int f34653d;

        public C6132a(char[][] cArr) {
            this.f34652c = cArr;
            this.f34653d = cArr.length;
        }

        @Override // com.google.common.escape.CharEscaper, com.google.common.escape.Escaper
        public String escape(String str) {
            int length = str.length();
            for (int i = 0; i < length; i++) {
                char charAt = str.charAt(i);
                char[][] cArr = this.f34652c;
                if (charAt < cArr.length && cArr[charAt] != null) {
                    return escapeSlow(str, i);
                }
            }
            return str;
        }

        @Override // com.google.common.escape.CharEscaper
        @CheckForNull
        public char[] escape(char c) {
            if (c < this.f34653d) {
                return this.f34652c[c];
            }
            return null;
        }
    }
}
