package net.p110sf.saxon.value;

import java.util.regex.Pattern;
import net.p110sf.saxon.p111z.IntIterator;
import net.p110sf.saxon.regex.ARegularExpression;
import net.p110sf.saxon.str.EmptyUnicodeString;
import net.p110sf.saxon.str.StringTool;
import net.p110sf.saxon.str.StringView;
import net.p110sf.saxon.str.UnicodeBuilder;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.str.WhitespaceString;
import net.p110sf.saxon.tree.iter.AtomicIterator;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public class Whitespace {
    public static final int ALL = 2;
    public static final int COLLAPSE = 2;
    public static final int IGNORABLE = 1;
    public static final int NONE = 0;
    public static final int PRESERVE = 0;
    public static final int REPLACE = 1;
    public static final int TRIM = 3;
    public static final int UNSPECIFIED = 3;
    public static final int XSLT = 4;

    /* renamed from: a */
    public static final ARegularExpression f102939a = ARegularExpression.compile(StringTool.fromLatin1("[ \\n\\r\\t]+"), "");

    /* renamed from: b */
    public static final Pattern f102940b = Pattern.compile("[ \\n\\r\\t]");

    /* renamed from: c */
    public static final Pattern f102941c = Pattern.compile("[ \\n\\r\\t]+");

    /* renamed from: d */
    public static final boolean[] f102942d = {false, false, false, false, false, false, false, false, false, true, true, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true};

    /* loaded from: classes11.dex */
    public enum TokenCategory {
        INITIAL_WHITESPACE,
        SEPARATOR_WHITESPACE,
        FINAL_WHITESPACE,
        CONTENT
    }

    /* renamed from: net.sf.saxon.value.Whitespace$a */
    /* loaded from: classes11.dex */
    public static /* synthetic */ class C18575a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f102945a;

        static {
            int[] iArr = new int[TokenCategory.values().length];
            f102945a = iArr;
            try {
                iArr[TokenCategory.CONTENT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f102945a[TokenCategory.SEPARATOR_WHITESPACE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    @FunctionalInterface
    /* renamed from: net.sf.saxon.value.Whitespace$b */
    /* loaded from: classes11.dex */
    public interface InterfaceC18576b {
        /* renamed from: a */
        void mo64693a(int i, int i2, TokenCategory tokenCategory);
    }

    public static UnicodeString applyWhitespaceNormalization(int i, UnicodeString unicodeString) {
        if (i == 0) {
            return unicodeString;
        }
        if (i != 1) {
            if (i == 2) {
                return collapseWhitespace(unicodeString);
            }
            if (i == 3) {
                return trim(unicodeString);
            }
            throw new IllegalArgumentException("Unknown whitespace facet value");
        }
        UnicodeBuilder unicodeBuilder = new UnicodeBuilder(unicodeString.length32());
        IntIterator codePoints = unicodeString.codePoints();
        while (codePoints.hasNext()) {
            int next = codePoints.next();
            if (next == 9 || next == 10 || next == 13) {
                unicodeBuilder.append(' ');
            } else {
                unicodeBuilder.append(next);
            }
        }
        return unicodeBuilder.toUnicodeString();
    }

    public static UnicodeString collapse(final UnicodeString unicodeString) {
        final UnicodeBuilder unicodeBuilder = new UnicodeBuilder(unicodeString.length32());
        m64692i(unicodeString.codePoints(), new InterfaceC18576b() { // from class: net.sf.saxon.value.d
            @Override // net.p110sf.saxon.value.Whitespace.InterfaceC18576b
            /* renamed from: a */
            public final void mo64693a(int i, int i2, Whitespace.TokenCategory tokenCategory) {
                Whitespace.m64688e(UnicodeBuilder.this, unicodeString, i, i2, tokenCategory);
            }
        });
        return unicodeBuilder.toUnicodeString();
    }

    public static UnicodeString collapseWhitespace(UnicodeString unicodeString) {
        if (!containsWhitespace(unicodeString.codePoints())) {
            return unicodeString;
        }
        long trimmedEnd = trimmedEnd(unicodeString);
        UnicodeBuilder unicodeBuilder = new UnicodeBuilder(unicodeString.length32());
        boolean z = true;
        for (long j = 0; j < trimmedEnd; j++) {
            int codePointAt = unicodeString.codePointAt(j);
            if (codePointAt != 9 && codePointAt != 10 && codePointAt != 13 && codePointAt != 32) {
                unicodeBuilder.append(codePointAt);
                z = false;
            } else if (!z) {
                unicodeBuilder.append(32);
                z = true;
            }
        }
        return unicodeBuilder.toUnicodeString();
    }

    public static boolean containsWhitespace(IntIterator intIterator) {
        while (intIterator.hasNext()) {
            int next = intIterator.next();
            if (next <= 32 && f102942d[next]) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: e */
    public static /* synthetic */ void m64688e(UnicodeBuilder unicodeBuilder, UnicodeString unicodeString, int i, int i2, TokenCategory tokenCategory) {
        int i3 = C18575a.f102945a[tokenCategory.ordinal()];
        if (i3 == 1) {
            unicodeBuilder.accept(unicodeString.substring(i, i2));
        } else {
            if (i3 != 2) {
                return;
            }
            unicodeBuilder.append(' ');
        }
    }

    /* renamed from: f */
    public static /* synthetic */ void m64689f(StringBuilder sb, CharSequence charSequence, int i, int i2, TokenCategory tokenCategory) {
        int i3 = C18575a.f102945a[tokenCategory.ordinal()];
        if (i3 == 1) {
            sb.append(charSequence.subSequence(i, i2));
        } else {
            if (i3 != 2) {
                return;
            }
            sb.append(' ');
        }
    }

    /* renamed from: g */
    public static /* synthetic */ void m64690g(UnicodeBuilder unicodeBuilder, UnicodeString unicodeString, int i, int i2, TokenCategory tokenCategory) {
        int i3 = C18575a.f102945a[tokenCategory.ordinal()];
        if (i3 == 1) {
            unicodeBuilder.accept(unicodeString.substring(i, i2));
        } else {
            if (i3 != 2) {
                return;
            }
            while (i < i2) {
                unicodeBuilder.append(' ');
                i++;
            }
        }
    }

    /* renamed from: h */
    public static /* synthetic */ void m64691h(StringBuilder sb, CharSequence charSequence, int i, int i2, TokenCategory tokenCategory) {
        int i3 = C18575a.f102945a[tokenCategory.ordinal()];
        if (i3 == 1) {
            sb.append(charSequence.subSequence(i, i2));
        } else {
            if (i3 != 2) {
                return;
            }
            while (i < i2) {
                sb.append(' ');
                i++;
            }
        }
    }

    /* renamed from: i */
    public static void m64692i(IntIterator intIterator, InterfaceC18576b interfaceC18576b) {
        TokenCategory tokenCategory = TokenCategory.INITIAL_WHITESPACE;
        int i = 0;
        int i2 = 0;
        while (intIterator.hasNext()) {
            if (!isWhite(intIterator.next())) {
                TokenCategory tokenCategory2 = TokenCategory.CONTENT;
                if (tokenCategory != tokenCategory2) {
                    if (i > 0) {
                        interfaceC18576b.mo64693a(i2, i, tokenCategory);
                    }
                    i2 = i;
                    tokenCategory = tokenCategory2;
                }
            } else if (tokenCategory == TokenCategory.CONTENT) {
                interfaceC18576b.mo64693a(i2, i, tokenCategory);
                tokenCategory = TokenCategory.SEPARATOR_WHITESPACE;
                i2 = i;
            }
            i++;
        }
        if (i > i2) {
            if (tokenCategory == TokenCategory.SEPARATOR_WHITESPACE) {
                interfaceC18576b.mo64693a(i2, i, TokenCategory.FINAL_WHITESPACE);
            } else {
                interfaceC18576b.mo64693a(i2, i, tokenCategory);
            }
        }
    }

    public static boolean isAllWhite(UnicodeString unicodeString) {
        if (unicodeString instanceof WhitespaceString) {
            return true;
        }
        IntIterator codePoints = unicodeString.codePoints();
        while (codePoints.hasNext()) {
            if (!isWhite(codePoints.next())) {
                return false;
            }
        }
        return true;
    }

    public static boolean isWhite(int i) {
        return i <= 32 && f102942d[i];
    }

    public static UnicodeString normalize(final UnicodeString unicodeString) {
        final UnicodeBuilder unicodeBuilder = new UnicodeBuilder(unicodeString.length32());
        m64692i(unicodeString.codePoints(), new InterfaceC18576b() { // from class: net.sf.saxon.value.b
            @Override // net.p110sf.saxon.value.Whitespace.InterfaceC18576b
            /* renamed from: a */
            public final void mo64693a(int i, int i2, Whitespace.TokenCategory tokenCategory) {
                Whitespace.m64690g(UnicodeBuilder.this, unicodeString, i, i2, tokenCategory);
            }
        });
        return unicodeBuilder.toUnicodeString();
    }

    public static UnicodeString normalizeWhitespace(UnicodeString unicodeString) {
        UnicodeBuilder unicodeBuilder = new UnicodeBuilder(unicodeString.length32());
        IntIterator codePoints = unicodeString.codePoints();
        while (codePoints.hasNext()) {
            int next = codePoints.next();
            if (next == 9 || next == 10 || next == 13) {
                unicodeBuilder.append(' ');
            } else {
                unicodeBuilder.append(next);
            }
        }
        return unicodeBuilder.toUnicodeString();
    }

    public static String removeAllWhitespace(String str) {
        return f102940b.matcher(str).replaceAll("");
    }

    public static UnicodeString removeLeadingWhitespace(UnicodeString unicodeString) {
        long trimmedStart = trimmedStart(unicodeString);
        return trimmedStart < 0 ? EmptyUnicodeString.getInstance() : unicodeString.substring(trimmedStart);
    }

    public static UnicodeString trim(UnicodeString unicodeString) {
        long trimmedStart = trimmedStart(unicodeString);
        if (trimmedStart == -1) {
            return EmptyUnicodeString.getInstance();
        }
        long trimmedEnd = trimmedEnd(unicodeString);
        return (trimmedStart == 0 && trimmedEnd == unicodeString.length()) ? unicodeString : unicodeString.substring(trimmedStart, trimmedEnd);
    }

    public static long trimmedEnd(UnicodeString unicodeString) {
        long length = unicodeString.length();
        do {
            length--;
            if (length < 0) {
                return 0L;
            }
        } while (isWhite(unicodeString.codePointAt(length)));
        return length + 1;
    }

    public static long trimmedStart(UnicodeString unicodeString) {
        long length = unicodeString.length();
        int i = 0;
        while (true) {
            long j = i;
            if (j >= length) {
                return -1L;
            }
            if (!isWhite(unicodeString.codePointAt(j))) {
                return j;
            }
            i++;
        }
    }

    /* loaded from: classes11.dex */
    public static class Tokenizer implements AtomicIterator {

        /* renamed from: e */
        public final UnicodeString f102943e;

        /* renamed from: f */
        public long f102944f = 0;

        public Tokenizer(String str) {
            this.f102943e = StringView.tidy(str);
        }

        @Override // net.p110sf.saxon.tree.iter.AtomicIterator, net.p110sf.saxon.om.SequenceIterator
        public StringValue next() {
            long j = this.f102944f;
            long length = this.f102943e.length();
            while (j < length && Whitespace.isWhite(this.f102943e.codePointAt(j))) {
                j++;
            }
            if (j >= length) {
                return null;
            }
            long j2 = j;
            while (j2 < length && !Whitespace.isWhite(this.f102943e.codePointAt(j2))) {
                j2++;
            }
            this.f102944f = j2;
            return new StringValue(this.f102943e.substring(j, j2));
        }

        public Tokenizer(UnicodeString unicodeString) {
            this.f102943e = unicodeString.tidy();
        }
    }

    public static String collapse(final CharSequence charSequence) {
        final StringBuilder sb = new StringBuilder(charSequence.length());
        m64692i(StringTool.codePoints(charSequence), new InterfaceC18576b() { // from class: net.sf.saxon.value.a
            @Override // net.p110sf.saxon.value.Whitespace.InterfaceC18576b
            /* renamed from: a */
            public final void mo64693a(int i, int i2, Whitespace.TokenCategory tokenCategory) {
                Whitespace.m64689f(sb, charSequence, i, i2, tokenCategory);
            }
        });
        return sb.toString();
    }

    public static String normalize(final CharSequence charSequence) {
        final StringBuilder sb = new StringBuilder(charSequence.length());
        m64692i(StringTool.codePoints(charSequence), new InterfaceC18576b() { // from class: net.sf.saxon.value.c
            @Override // net.p110sf.saxon.value.Whitespace.InterfaceC18576b
            /* renamed from: a */
            public final void mo64693a(int i, int i2, Whitespace.TokenCategory tokenCategory) {
                Whitespace.m64691h(sb, charSequence, i, i2, tokenCategory);
            }
        });
        return sb.toString();
    }

    public static String trim(String str) {
        int i;
        if (str == null) {
            return null;
        }
        int length = str.length();
        int i2 = 0;
        while (true) {
            i = -1;
            if (i2 >= length) {
                i2 = -1;
                break;
            }
            if (!isWhite(str.charAt(i2))) {
                break;
            }
            i2++;
        }
        if (i2 == -1) {
            return "";
        }
        int i3 = length - 1;
        while (true) {
            if (i3 < i2) {
                break;
            }
            if (!isWhite(str.charAt(i3))) {
                i = i3;
                break;
            }
            i3--;
        }
        return (i2 == 0 && i == str.length()) ? str : str.substring(i2, i + 1);
    }

    public static String collapseWhitespace(String str) {
        return !containsWhitespace(StringTool.codePoints(str)) ? str : trim(f102941c.matcher(str).replaceAll(" "));
    }
}
