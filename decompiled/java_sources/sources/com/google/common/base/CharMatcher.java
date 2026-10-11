package com.google.common.base;

import com.google.android.material.motion.MotionUtils;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.sunia.HTREnginev2.aof;
import java.util.Arrays;
import java.util.BitSet;

@GwtCompatible(emulated = true)
@aof
/* loaded from: classes6.dex */
public abstract class CharMatcher implements Predicate<Character> {

    /* renamed from: e */
    public static final int f33534e = 65536;

    /* renamed from: com.google.common.base.CharMatcher$a */
    /* loaded from: classes6.dex */
    public class C5612a extends C5638x {

        /* renamed from: g */
        public final /* synthetic */ String f33535g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5612a(CharMatcher charMatcher, CharMatcher charMatcher2, String str) {
            super(charMatcher2);
            this.f33535g = str;
        }

        @Override // com.google.common.base.CharMatcher.C5637w, com.google.common.base.CharMatcher
        public String toString() {
            return this.f33535g;
        }
    }

    /* renamed from: com.google.common.base.CharMatcher$a0 */
    /* loaded from: classes6.dex */
    public static class C5613a0 extends CharMatcher {

        /* renamed from: f */
        public final String f33536f;

        /* renamed from: g */
        public final char[] f33537g;

        /* renamed from: h */
        public final char[] f33538h;

        public C5613a0(String str, char[] cArr, char[] cArr2) {
            this.f33536f = str;
            this.f33537g = cArr;
            this.f33538h = cArr2;
            Preconditions.checkArgument(cArr.length == cArr2.length);
            int i = 0;
            while (i < cArr.length) {
                Preconditions.checkArgument(cArr[i] <= cArr2[i]);
                int i2 = i + 1;
                if (i2 < cArr.length) {
                    Preconditions.checkArgument(cArr2[i] < cArr[i2]);
                }
                i = i2;
            }
        }

        @Override // com.google.common.base.CharMatcher, com.google.common.base.Predicate
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            int binarySearch = Arrays.binarySearch(this.f33537g, c);
            if (binarySearch >= 0) {
                return true;
            }
            int i = (~binarySearch) - 1;
            return i >= 0 && c <= this.f33538h[i];
        }

        @Override // com.google.common.base.CharMatcher, java.util.function.Predicate
        public /* bridge */ /* synthetic */ java.util.function.Predicate negate() {
            return super.negate();
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            return this.f33536f;
        }
    }

    /* renamed from: com.google.common.base.CharMatcher$b */
    /* loaded from: classes6.dex */
    public static final class C5614b extends CharMatcher {

        /* renamed from: f */
        public final CharMatcher f33539f;

        /* renamed from: g */
        public final CharMatcher f33540g;

        public C5614b(CharMatcher charMatcher, CharMatcher charMatcher2) {
            this.f33539f = (CharMatcher) Preconditions.checkNotNull(charMatcher);
            this.f33540g = (CharMatcher) Preconditions.checkNotNull(charMatcher2);
        }

        @Override // com.google.common.base.CharMatcher, com.google.common.base.Predicate
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.common.base.CharMatcher
        @GwtIncompatible
        /* renamed from: g */
        public void mo25775g(BitSet bitSet) {
            BitSet bitSet2 = new BitSet();
            this.f33539f.mo25775g(bitSet2);
            BitSet bitSet3 = new BitSet();
            this.f33540g.mo25775g(bitSet3);
            bitSet2.and(bitSet3);
            bitSet.or(bitSet2);
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            return this.f33539f.matches(c) && this.f33540g.matches(c);
        }

        @Override // com.google.common.base.CharMatcher, java.util.function.Predicate
        public /* bridge */ /* synthetic */ java.util.function.Predicate negate() {
            return super.negate();
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            String valueOf = String.valueOf(this.f33539f);
            String valueOf2 = String.valueOf(this.f33540g);
            StringBuilder sb = new StringBuilder(valueOf.length() + 19 + valueOf2.length());
            sb.append("CharMatcher.and(");
            sb.append(valueOf);
            sb.append(", ");
            sb.append(valueOf2);
            sb.append(MotionUtils.f31762d);
            return sb.toString();
        }
    }

    /* renamed from: com.google.common.base.CharMatcher$b0 */
    /* loaded from: classes6.dex */
    public static final class C5615b0 extends C5613a0 {

        /* renamed from: i */
        public static final C5615b0 f33541i = new C5615b0();

        public C5615b0() {
            super("CharMatcher.singleWidth()", "\u0000־א׳\u0600ݐ\u0e00Ḁ℀ﭐﹰ｡".toCharArray(), "ӹ־ת״ۿݿ\u0e7f₯℺\ufdff\ufeffￜ".toCharArray());
        }
    }

    /* renamed from: com.google.common.base.CharMatcher$c */
    /* loaded from: classes6.dex */
    public static final class C5616c extends AbstractC5636v {

        /* renamed from: g */
        public static final C5616c f33542g = new C5616c();

        public C5616c() {
            super("CharMatcher.any()");
        }

        @Override // com.google.common.base.CharMatcher
        public CharMatcher and(CharMatcher charMatcher) {
            return (CharMatcher) Preconditions.checkNotNull(charMatcher);
        }

        @Override // com.google.common.base.CharMatcher
        public String collapseFrom(CharSequence charSequence, char c) {
            return charSequence.length() == 0 ? "" : String.valueOf(c);
        }

        @Override // com.google.common.base.CharMatcher
        public int countIn(CharSequence charSequence) {
            return charSequence.length();
        }

        @Override // com.google.common.base.CharMatcher
        public int indexIn(CharSequence charSequence) {
            return charSequence.length() == 0 ? -1 : 0;
        }

        @Override // com.google.common.base.CharMatcher
        public int lastIndexIn(CharSequence charSequence) {
            return charSequence.length() - 1;
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            return true;
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matchesAllOf(CharSequence charSequence) {
            Preconditions.checkNotNull(charSequence);
            return true;
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matchesNoneOf(CharSequence charSequence) {
            return charSequence.length() == 0;
        }

        @Override // com.google.common.base.CharMatcher
        /* renamed from: or */
        public CharMatcher mo25776or(CharMatcher charMatcher) {
            Preconditions.checkNotNull(charMatcher);
            return this;
        }

        @Override // com.google.common.base.CharMatcher
        public String removeFrom(CharSequence charSequence) {
            Preconditions.checkNotNull(charSequence);
            return "";
        }

        @Override // com.google.common.base.CharMatcher
        public String replaceFrom(CharSequence charSequence, char c) {
            char[] cArr = new char[charSequence.length()];
            Arrays.fill(cArr, c);
            return new String(cArr);
        }

        @Override // com.google.common.base.CharMatcher
        public String trimFrom(CharSequence charSequence) {
            Preconditions.checkNotNull(charSequence);
            return "";
        }

        @Override // com.google.common.base.CharMatcher
        public int indexIn(CharSequence charSequence, int i) {
            int length = charSequence.length();
            Preconditions.checkPositionIndex(i, length);
            if (i == length) {
                return -1;
            }
            return i;
        }

        @Override // com.google.common.base.CharMatcher.AbstractC5623i, com.google.common.base.CharMatcher, java.util.function.Predicate
        public CharMatcher negate() {
            return CharMatcher.none();
        }

        @Override // com.google.common.base.CharMatcher
        public String replaceFrom(CharSequence charSequence, CharSequence charSequence2) {
            StringBuilder sb = new StringBuilder(charSequence.length() * charSequence2.length());
            for (int i = 0; i < charSequence.length(); i++) {
                sb.append(charSequence2);
            }
            return sb.toString();
        }
    }

    @VisibleForTesting
    /* renamed from: com.google.common.base.CharMatcher$c0 */
    /* loaded from: classes6.dex */
    public static final class C5617c0 extends AbstractC5636v {

        /* renamed from: g */
        public static final String f33543g = "\u2002\u3000\r\u0085\u200a\u2005\u2000\u3000\u2029\u000b\u3000\u2008\u2003\u205f\u3000\u1680\t \u2006\u2001  \f\u2009\u3000\u2004\u3000\u3000\u2028\n \u3000";

        /* renamed from: h */
        public static final int f33544h = 1682554634;

        /* renamed from: i */
        public static final int f33545i = Integer.numberOfLeadingZeros(31);

        /* renamed from: j */
        public static final C5617c0 f33546j = new C5617c0();

        public C5617c0() {
            super("CharMatcher.whitespace()");
        }

        @Override // com.google.common.base.CharMatcher
        @GwtIncompatible
        /* renamed from: g */
        public void mo25775g(BitSet bitSet) {
            for (int i = 0; i < 32; i++) {
                bitSet.set(f33543g.charAt(i));
            }
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            return f33543g.charAt((f33544h * c) >>> f33545i) == c;
        }
    }

    /* renamed from: com.google.common.base.CharMatcher$d */
    /* loaded from: classes6.dex */
    public static final class C5618d extends CharMatcher {

        /* renamed from: f */
        public final char[] f33547f;

        public C5618d(CharSequence charSequence) {
            char[] charArray = charSequence.toString().toCharArray();
            this.f33547f = charArray;
            Arrays.sort(charArray);
        }

        @Override // com.google.common.base.CharMatcher, com.google.common.base.Predicate
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.common.base.CharMatcher
        @GwtIncompatible
        /* renamed from: g */
        public void mo25775g(BitSet bitSet) {
            for (char c : this.f33547f) {
                bitSet.set(c);
            }
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            return Arrays.binarySearch(this.f33547f, c) >= 0;
        }

        @Override // com.google.common.base.CharMatcher, java.util.function.Predicate
        public /* bridge */ /* synthetic */ java.util.function.Predicate negate() {
            return super.negate();
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            StringBuilder sb = new StringBuilder("CharMatcher.anyOf(\"");
            for (char c : this.f33547f) {
                sb.append(CharMatcher.m25771h(c));
            }
            sb.append("\")");
            return sb.toString();
        }
    }

    /* renamed from: com.google.common.base.CharMatcher$e */
    /* loaded from: classes6.dex */
    public static final class C5619e extends AbstractC5636v {

        /* renamed from: g */
        public static final C5619e f33548g = new C5619e();

        public C5619e() {
            super("CharMatcher.ascii()");
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            return c <= 127;
        }
    }

    @GwtIncompatible
    /* renamed from: com.google.common.base.CharMatcher$f */
    /* loaded from: classes6.dex */
    public static final class C5620f extends AbstractC5636v {

        /* renamed from: g */
        public final BitSet f33549g;

        public /* synthetic */ C5620f(BitSet bitSet, String str, C5612a c5612a) {
            this(bitSet, str);
        }

        @Override // com.google.common.base.CharMatcher
        /* renamed from: g */
        public void mo25775g(BitSet bitSet) {
            bitSet.or(this.f33549g);
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            return this.f33549g.get(c);
        }

        public C5620f(BitSet bitSet, String str) {
            super(str);
            this.f33549g = bitSet.length() + 64 < bitSet.size() ? (BitSet) bitSet.clone() : bitSet;
        }
    }

    /* renamed from: com.google.common.base.CharMatcher$g */
    /* loaded from: classes6.dex */
    public static final class C5621g extends CharMatcher {

        /* renamed from: f */
        public static final CharMatcher f33550f = new C5621g();

        @Override // com.google.common.base.CharMatcher, com.google.common.base.Predicate
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            if (c != ' ' && c != 133 && c != 5760) {
                if (c == 8199) {
                    return false;
                }
                if (c != 8287 && c != 12288 && c != 8232 && c != 8233) {
                    switch (c) {
                        case '\t':
                        case '\n':
                        case 11:
                        case '\f':
                        case '\r':
                            break;
                        default:
                            return c >= 8192 && c <= 8202;
                    }
                }
            }
            return true;
        }

        @Override // com.google.common.base.CharMatcher, java.util.function.Predicate
        public /* bridge */ /* synthetic */ java.util.function.Predicate negate() {
            return super.negate();
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            return "CharMatcher.breakingWhitespace()";
        }
    }

    /* renamed from: com.google.common.base.CharMatcher$h */
    /* loaded from: classes6.dex */
    public static final class C5622h extends C5613a0 {

        /* renamed from: i */
        public static final String f33551i = "0٠۰߀०০੦૦୦௦౦೦൦෦๐໐༠၀႐០᠐᥆᧐᪀᪐᭐᮰᱀᱐꘠꣐꤀꧐꧰꩐꯰０";

        /* renamed from: j */
        public static final C5622h f33552j = new C5622h();

        public C5622h() {
            super("CharMatcher.digit()", m25778j(), m25777i());
        }

        /* renamed from: i */
        public static char[] m25777i() {
            char[] cArr = new char[37];
            for (int i = 0; i < 37; i++) {
                cArr[i] = (char) (f33551i.charAt(i) + '\t');
            }
            return cArr;
        }

        /* renamed from: j */
        public static char[] m25778j() {
            return f33551i.toCharArray();
        }
    }

    /* renamed from: com.google.common.base.CharMatcher$i */
    /* loaded from: classes6.dex */
    public static abstract class AbstractC5623i extends CharMatcher {
        @Override // com.google.common.base.CharMatcher, com.google.common.base.Predicate
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.common.base.CharMatcher
        public final CharMatcher precomputed() {
            return this;
        }

        @Override // com.google.common.base.CharMatcher, java.util.function.Predicate
        public CharMatcher negate() {
            return new C5638x(this);
        }
    }

    /* renamed from: com.google.common.base.CharMatcher$j */
    /* loaded from: classes6.dex */
    public static final class C5624j extends CharMatcher {

        /* renamed from: f */
        public final Predicate<? super Character> f33553f;

        public C5624j(Predicate<? super Character> predicate) {
            this.f33553f = (Predicate) Preconditions.checkNotNull(predicate);
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            return this.f33553f.apply(Character.valueOf(c));
        }

        @Override // com.google.common.base.CharMatcher, java.util.function.Predicate
        public /* bridge */ /* synthetic */ java.util.function.Predicate negate() {
            return super.negate();
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            String valueOf = String.valueOf(this.f33553f);
            StringBuilder sb = new StringBuilder(valueOf.length() + 26);
            sb.append("CharMatcher.forPredicate(");
            sb.append(valueOf);
            sb.append(MotionUtils.f31762d);
            return sb.toString();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.common.base.CharMatcher, com.google.common.base.Predicate
        public boolean apply(Character ch) {
            return this.f33553f.apply(Preconditions.checkNotNull(ch));
        }
    }

    /* renamed from: com.google.common.base.CharMatcher$k */
    /* loaded from: classes6.dex */
    public static final class C5625k extends AbstractC5623i {

        /* renamed from: f */
        public final char f33554f;

        /* renamed from: g */
        public final char f33555g;

        public C5625k(char c, char c2) {
            Preconditions.checkArgument(c2 >= c);
            this.f33554f = c;
            this.f33555g = c2;
        }

        @Override // com.google.common.base.CharMatcher
        @GwtIncompatible
        /* renamed from: g */
        public void mo25775g(BitSet bitSet) {
            bitSet.set(this.f33554f, this.f33555g + 1);
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            return this.f33554f <= c && c <= this.f33555g;
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            String m25771h = CharMatcher.m25771h(this.f33554f);
            String m25771h2 = CharMatcher.m25771h(this.f33555g);
            StringBuilder sb = new StringBuilder(String.valueOf(m25771h).length() + 27 + String.valueOf(m25771h2).length());
            sb.append("CharMatcher.inRange('");
            sb.append(m25771h);
            sb.append("', '");
            sb.append(m25771h2);
            sb.append("')");
            return sb.toString();
        }
    }

    /* renamed from: com.google.common.base.CharMatcher$l */
    /* loaded from: classes6.dex */
    public static final class C5626l extends C5613a0 {

        /* renamed from: i */
        public static final String f33556i = "\u0000\u007f\u00ad\u0600\u061c\u06dd\u070f\u0890\u08e2\u1680\u180e\u2000\u2028\u205f\u2066\u3000\ud800\ufeff\ufff9";

        /* renamed from: j */
        public static final String f33557j = "  \u00ad\u0605\u061c\u06dd\u070f\u0891\u08e2\u1680\u180e\u200f \u2064\u206f\u3000\uf8ff\ufeff\ufffb";

        /* renamed from: k */
        public static final C5626l f33558k = new C5626l();

        public C5626l() {
            super("CharMatcher.invisible()", f33556i.toCharArray(), f33557j.toCharArray());
        }
    }

    /* renamed from: com.google.common.base.CharMatcher$m */
    /* loaded from: classes6.dex */
    public static final class C5627m extends AbstractC5623i {

        /* renamed from: f */
        public final char f33559f;

        public C5627m(char c) {
            this.f33559f = c;
        }

        @Override // com.google.common.base.CharMatcher
        public CharMatcher and(CharMatcher charMatcher) {
            return charMatcher.matches(this.f33559f) ? this : CharMatcher.none();
        }

        @Override // com.google.common.base.CharMatcher
        @GwtIncompatible
        /* renamed from: g */
        public void mo25775g(BitSet bitSet) {
            bitSet.set(this.f33559f);
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            return c == this.f33559f;
        }

        @Override // com.google.common.base.CharMatcher
        /* renamed from: or */
        public CharMatcher mo25776or(CharMatcher charMatcher) {
            return charMatcher.matches(this.f33559f) ? charMatcher : super.mo25776or(charMatcher);
        }

        @Override // com.google.common.base.CharMatcher
        public String replaceFrom(CharSequence charSequence, char c) {
            return charSequence.toString().replace(this.f33559f, c);
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            String m25771h = CharMatcher.m25771h(this.f33559f);
            StringBuilder sb = new StringBuilder(String.valueOf(m25771h).length() + 18);
            sb.append("CharMatcher.is('");
            sb.append(m25771h);
            sb.append("')");
            return sb.toString();
        }

        @Override // com.google.common.base.CharMatcher.AbstractC5623i, com.google.common.base.CharMatcher, java.util.function.Predicate
        public CharMatcher negate() {
            return CharMatcher.isNot(this.f33559f);
        }
    }

    /* renamed from: com.google.common.base.CharMatcher$n */
    /* loaded from: classes6.dex */
    public static final class C5628n extends AbstractC5623i {

        /* renamed from: f */
        public final char f33560f;

        /* renamed from: g */
        public final char f33561g;

        public C5628n(char c, char c2) {
            this.f33560f = c;
            this.f33561g = c2;
        }

        @Override // com.google.common.base.CharMatcher
        @GwtIncompatible
        /* renamed from: g */
        public void mo25775g(BitSet bitSet) {
            bitSet.set(this.f33560f);
            bitSet.set(this.f33561g);
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            return c == this.f33560f || c == this.f33561g;
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            String m25771h = CharMatcher.m25771h(this.f33560f);
            String m25771h2 = CharMatcher.m25771h(this.f33561g);
            StringBuilder sb = new StringBuilder(String.valueOf(m25771h).length() + 21 + String.valueOf(m25771h2).length());
            sb.append("CharMatcher.anyOf(\"");
            sb.append(m25771h);
            sb.append(m25771h2);
            sb.append("\")");
            return sb.toString();
        }
    }

    /* renamed from: com.google.common.base.CharMatcher$o */
    /* loaded from: classes6.dex */
    public static final class C5629o extends AbstractC5623i {

        /* renamed from: f */
        public final char f33562f;

        public C5629o(char c) {
            this.f33562f = c;
        }

        @Override // com.google.common.base.CharMatcher
        public CharMatcher and(CharMatcher charMatcher) {
            return charMatcher.matches(this.f33562f) ? super.and(charMatcher) : charMatcher;
        }

        @Override // com.google.common.base.CharMatcher
        @GwtIncompatible
        /* renamed from: g */
        public void mo25775g(BitSet bitSet) {
            bitSet.set(0, this.f33562f);
            bitSet.set(this.f33562f + 1, 65536);
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            return c != this.f33562f;
        }

        @Override // com.google.common.base.CharMatcher
        /* renamed from: or */
        public CharMatcher mo25776or(CharMatcher charMatcher) {
            return charMatcher.matches(this.f33562f) ? CharMatcher.any() : this;
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            String m25771h = CharMatcher.m25771h(this.f33562f);
            StringBuilder sb = new StringBuilder(String.valueOf(m25771h).length() + 21);
            sb.append("CharMatcher.isNot('");
            sb.append(m25771h);
            sb.append("')");
            return sb.toString();
        }

        @Override // com.google.common.base.CharMatcher.AbstractC5623i, com.google.common.base.CharMatcher, java.util.function.Predicate
        public CharMatcher negate() {
            return CharMatcher.m25772is(this.f33562f);
        }
    }

    /* renamed from: com.google.common.base.CharMatcher$p */
    /* loaded from: classes6.dex */
    public static final class C5630p extends CharMatcher {

        /* renamed from: f */
        public static final C5630p f33563f = new C5630p();

        @Override // com.google.common.base.CharMatcher, com.google.common.base.Predicate
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            return Character.isDigit(c);
        }

        @Override // com.google.common.base.CharMatcher, java.util.function.Predicate
        public /* bridge */ /* synthetic */ java.util.function.Predicate negate() {
            return super.negate();
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            return "CharMatcher.javaDigit()";
        }
    }

    /* renamed from: com.google.common.base.CharMatcher$q */
    /* loaded from: classes6.dex */
    public static final class C5631q extends AbstractC5636v {

        /* renamed from: g */
        public static final C5631q f33564g = new C5631q();

        public C5631q() {
            super("CharMatcher.javaIsoControl()");
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            return c <= 31 || (c >= 127 && c <= 159);
        }
    }

    /* renamed from: com.google.common.base.CharMatcher$r */
    /* loaded from: classes6.dex */
    public static final class C5632r extends CharMatcher {

        /* renamed from: f */
        public static final C5632r f33565f = new C5632r();

        @Override // com.google.common.base.CharMatcher, com.google.common.base.Predicate
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            return Character.isLetter(c);
        }

        @Override // com.google.common.base.CharMatcher, java.util.function.Predicate
        public /* bridge */ /* synthetic */ java.util.function.Predicate negate() {
            return super.negate();
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            return "CharMatcher.javaLetter()";
        }
    }

    /* renamed from: com.google.common.base.CharMatcher$s */
    /* loaded from: classes6.dex */
    public static final class C5633s extends CharMatcher {

        /* renamed from: f */
        public static final C5633s f33566f = new C5633s();

        @Override // com.google.common.base.CharMatcher, com.google.common.base.Predicate
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            return Character.isLetterOrDigit(c);
        }

        @Override // com.google.common.base.CharMatcher, java.util.function.Predicate
        public /* bridge */ /* synthetic */ java.util.function.Predicate negate() {
            return super.negate();
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            return "CharMatcher.javaLetterOrDigit()";
        }
    }

    /* renamed from: com.google.common.base.CharMatcher$t */
    /* loaded from: classes6.dex */
    public static final class C5634t extends CharMatcher {

        /* renamed from: f */
        public static final C5634t f33567f = new C5634t();

        @Override // com.google.common.base.CharMatcher, com.google.common.base.Predicate
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            return Character.isLowerCase(c);
        }

        @Override // com.google.common.base.CharMatcher, java.util.function.Predicate
        public /* bridge */ /* synthetic */ java.util.function.Predicate negate() {
            return super.negate();
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            return "CharMatcher.javaLowerCase()";
        }
    }

    /* renamed from: com.google.common.base.CharMatcher$u */
    /* loaded from: classes6.dex */
    public static final class C5635u extends CharMatcher {

        /* renamed from: f */
        public static final C5635u f33568f = new C5635u();

        @Override // com.google.common.base.CharMatcher, com.google.common.base.Predicate
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            return Character.isUpperCase(c);
        }

        @Override // com.google.common.base.CharMatcher, java.util.function.Predicate
        public /* bridge */ /* synthetic */ java.util.function.Predicate negate() {
            return super.negate();
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            return "CharMatcher.javaUpperCase()";
        }
    }

    /* renamed from: com.google.common.base.CharMatcher$v */
    /* loaded from: classes6.dex */
    public static abstract class AbstractC5636v extends AbstractC5623i {

        /* renamed from: f */
        public final String f33569f;

        public AbstractC5636v(String str) {
            this.f33569f = (String) Preconditions.checkNotNull(str);
        }

        @Override // com.google.common.base.CharMatcher
        public final String toString() {
            return this.f33569f;
        }
    }

    /* renamed from: com.google.common.base.CharMatcher$w */
    /* loaded from: classes6.dex */
    public static class C5637w extends CharMatcher {

        /* renamed from: f */
        public final CharMatcher f33570f;

        public C5637w(CharMatcher charMatcher) {
            this.f33570f = (CharMatcher) Preconditions.checkNotNull(charMatcher);
        }

        @Override // com.google.common.base.CharMatcher, com.google.common.base.Predicate
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.common.base.CharMatcher
        public int countIn(CharSequence charSequence) {
            return charSequence.length() - this.f33570f.countIn(charSequence);
        }

        @Override // com.google.common.base.CharMatcher
        @GwtIncompatible
        /* renamed from: g */
        public void mo25775g(BitSet bitSet) {
            BitSet bitSet2 = new BitSet();
            this.f33570f.mo25775g(bitSet2);
            bitSet2.flip(0, 65536);
            bitSet.or(bitSet2);
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            return !this.f33570f.matches(c);
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matchesAllOf(CharSequence charSequence) {
            return this.f33570f.matchesNoneOf(charSequence);
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matchesNoneOf(CharSequence charSequence) {
            return this.f33570f.matchesAllOf(charSequence);
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            String valueOf = String.valueOf(this.f33570f);
            StringBuilder sb = new StringBuilder(valueOf.length() + 9);
            sb.append(valueOf);
            sb.append(".negate()");
            return sb.toString();
        }

        @Override // com.google.common.base.CharMatcher, java.util.function.Predicate
        public CharMatcher negate() {
            return this.f33570f;
        }
    }

    /* renamed from: com.google.common.base.CharMatcher$x */
    /* loaded from: classes6.dex */
    public static class C5638x extends C5637w {
        public C5638x(CharMatcher charMatcher) {
            super(charMatcher);
        }

        @Override // com.google.common.base.CharMatcher
        public final CharMatcher precomputed() {
            return this;
        }
    }

    /* renamed from: com.google.common.base.CharMatcher$y */
    /* loaded from: classes6.dex */
    public static final class C5639y extends AbstractC5636v {

        /* renamed from: g */
        public static final C5639y f33571g = new C5639y();

        public C5639y() {
            super("CharMatcher.none()");
        }

        @Override // com.google.common.base.CharMatcher
        public CharMatcher and(CharMatcher charMatcher) {
            Preconditions.checkNotNull(charMatcher);
            return this;
        }

        @Override // com.google.common.base.CharMatcher
        public String collapseFrom(CharSequence charSequence, char c) {
            return charSequence.toString();
        }

        @Override // com.google.common.base.CharMatcher
        public int countIn(CharSequence charSequence) {
            Preconditions.checkNotNull(charSequence);
            return 0;
        }

        @Override // com.google.common.base.CharMatcher
        public int indexIn(CharSequence charSequence) {
            Preconditions.checkNotNull(charSequence);
            return -1;
        }

        @Override // com.google.common.base.CharMatcher
        public int lastIndexIn(CharSequence charSequence) {
            Preconditions.checkNotNull(charSequence);
            return -1;
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            return false;
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matchesAllOf(CharSequence charSequence) {
            return charSequence.length() == 0;
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matchesNoneOf(CharSequence charSequence) {
            Preconditions.checkNotNull(charSequence);
            return true;
        }

        @Override // com.google.common.base.CharMatcher
        /* renamed from: or */
        public CharMatcher mo25776or(CharMatcher charMatcher) {
            return (CharMatcher) Preconditions.checkNotNull(charMatcher);
        }

        @Override // com.google.common.base.CharMatcher
        public String removeFrom(CharSequence charSequence) {
            return charSequence.toString();
        }

        @Override // com.google.common.base.CharMatcher
        public String replaceFrom(CharSequence charSequence, char c) {
            return charSequence.toString();
        }

        @Override // com.google.common.base.CharMatcher
        public String trimFrom(CharSequence charSequence) {
            return charSequence.toString();
        }

        @Override // com.google.common.base.CharMatcher
        public String trimLeadingFrom(CharSequence charSequence) {
            return charSequence.toString();
        }

        @Override // com.google.common.base.CharMatcher
        public String trimTrailingFrom(CharSequence charSequence) {
            return charSequence.toString();
        }

        @Override // com.google.common.base.CharMatcher
        public int indexIn(CharSequence charSequence, int i) {
            Preconditions.checkPositionIndex(i, charSequence.length());
            return -1;
        }

        @Override // com.google.common.base.CharMatcher.AbstractC5623i, com.google.common.base.CharMatcher, java.util.function.Predicate
        public CharMatcher negate() {
            return CharMatcher.any();
        }

        @Override // com.google.common.base.CharMatcher
        public String replaceFrom(CharSequence charSequence, CharSequence charSequence2) {
            Preconditions.checkNotNull(charSequence2);
            return charSequence.toString();
        }
    }

    /* renamed from: com.google.common.base.CharMatcher$z */
    /* loaded from: classes6.dex */
    public static final class C5640z extends CharMatcher {

        /* renamed from: f */
        public final CharMatcher f33572f;

        /* renamed from: g */
        public final CharMatcher f33573g;

        public C5640z(CharMatcher charMatcher, CharMatcher charMatcher2) {
            this.f33572f = (CharMatcher) Preconditions.checkNotNull(charMatcher);
            this.f33573g = (CharMatcher) Preconditions.checkNotNull(charMatcher2);
        }

        @Override // com.google.common.base.CharMatcher, com.google.common.base.Predicate
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.common.base.CharMatcher
        @GwtIncompatible
        /* renamed from: g */
        public void mo25775g(BitSet bitSet) {
            this.f33572f.mo25775g(bitSet);
            this.f33573g.mo25775g(bitSet);
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            return this.f33572f.matches(c) || this.f33573g.matches(c);
        }

        @Override // com.google.common.base.CharMatcher, java.util.function.Predicate
        public /* bridge */ /* synthetic */ java.util.function.Predicate negate() {
            return super.negate();
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            String valueOf = String.valueOf(this.f33572f);
            String valueOf2 = String.valueOf(this.f33573g);
            StringBuilder sb = new StringBuilder(valueOf.length() + 18 + valueOf2.length());
            sb.append("CharMatcher.or(");
            sb.append(valueOf);
            sb.append(", ");
            sb.append(valueOf2);
            sb.append(MotionUtils.f31762d);
            return sb.toString();
        }
    }

    public static CharMatcher any() {
        return C5616c.f33542g;
    }

    public static CharMatcher anyOf(CharSequence charSequence) {
        int length = charSequence.length();
        return length != 0 ? length != 1 ? length != 2 ? new C5618d(charSequence) : m25768c(charSequence.charAt(0), charSequence.charAt(1)) : m25772is(charSequence.charAt(0)) : none();
    }

    public static CharMatcher ascii() {
        return C5619e.f33548g;
    }

    public static CharMatcher breakingWhitespace() {
        return C5621g.f33550f;
    }

    /* renamed from: c */
    public static C5628n m25768c(char c, char c2) {
        return new C5628n(c, c2);
    }

    @GwtIncompatible
    /* renamed from: d */
    public static boolean m25769d(int i, int i2) {
        return i <= 1023 && i2 > (i * 4) * 16;
    }

    @Deprecated
    public static CharMatcher digit() {
        return C5622h.f33552j;
    }

    @GwtIncompatible
    /* renamed from: f */
    public static CharMatcher m25770f(int i, BitSet bitSet, String str) {
        if (i == 0) {
            return none();
        }
        if (i == 1) {
            return m25772is((char) bitSet.nextSetBit(0));
        }
        if (i != 2) {
            return m25769d(i, bitSet.length()) ? C5674b.m25872k(bitSet, str) : new C5620f(bitSet, str, null);
        }
        char nextSetBit = (char) bitSet.nextSetBit(0);
        return m25768c(nextSetBit, (char) bitSet.nextSetBit(nextSetBit + 1));
    }

    public static CharMatcher forPredicate(Predicate<? super Character> predicate) {
        return predicate instanceof CharMatcher ? (CharMatcher) predicate : new C5624j(predicate);
    }

    /* renamed from: h */
    public static String m25771h(char c) {
        char[] cArr = {'\\', 'u', 0, 0, 0, 0};
        for (int i = 0; i < 4; i++) {
            cArr[5 - i] = "0123456789ABCDEF".charAt(c & 15);
            c = (char) (c >> 4);
        }
        return String.copyValueOf(cArr);
    }

    public static CharMatcher inRange(char c, char c2) {
        return new C5625k(c, c2);
    }

    @Deprecated
    public static CharMatcher invisible() {
        return C5626l.f33558k;
    }

    /* renamed from: is */
    public static CharMatcher m25772is(char c) {
        return new C5627m(c);
    }

    public static CharMatcher isNot(char c) {
        return new C5629o(c);
    }

    @Deprecated
    public static CharMatcher javaDigit() {
        return C5630p.f33563f;
    }

    public static CharMatcher javaIsoControl() {
        return C5631q.f33564g;
    }

    @Deprecated
    public static CharMatcher javaLetter() {
        return C5632r.f33565f;
    }

    @Deprecated
    public static CharMatcher javaLetterOrDigit() {
        return C5633s.f33566f;
    }

    @Deprecated
    public static CharMatcher javaLowerCase() {
        return C5634t.f33567f;
    }

    @Deprecated
    public static CharMatcher javaUpperCase() {
        return C5635u.f33568f;
    }

    public static CharMatcher none() {
        return C5639y.f33571g;
    }

    public static CharMatcher noneOf(CharSequence charSequence) {
        return anyOf(charSequence).negate();
    }

    @Deprecated
    public static CharMatcher singleWidth() {
        return C5615b0.f33541i;
    }

    public static CharMatcher whitespace() {
        return C5617c0.f33546j;
    }

    public CharMatcher and(CharMatcher charMatcher) {
        return new C5614b(this, charMatcher);
    }

    /* renamed from: b */
    public final String m25773b(CharSequence charSequence, int i, int i2, char c, StringBuilder sb, boolean z) {
        while (i < i2) {
            char charAt = charSequence.charAt(i);
            if (!matches(charAt)) {
                sb.append(charAt);
                z = false;
            } else if (!z) {
                sb.append(c);
                z = true;
            }
            i++;
        }
        return sb.toString();
    }

    public String collapseFrom(CharSequence charSequence, char c) {
        int length = charSequence.length();
        int i = 0;
        while (i < length) {
            char charAt = charSequence.charAt(i);
            if (matches(charAt)) {
                if (charAt != c || (i != length - 1 && matches(charSequence.charAt(i + 1)))) {
                    StringBuilder sb = new StringBuilder(length);
                    sb.append(charSequence, 0, i);
                    sb.append(c);
                    return m25773b(charSequence, i + 1, length, c, sb, true);
                }
                i++;
            }
            i++;
        }
        return charSequence.toString();
    }

    public int countIn(CharSequence charSequence) {
        int i = 0;
        for (int i2 = 0; i2 < charSequence.length(); i2++) {
            if (matches(charSequence.charAt(i2))) {
                i++;
            }
        }
        return i;
    }

    @GwtIncompatible
    /* renamed from: e */
    public CharMatcher m25774e() {
        BitSet bitSet = new BitSet();
        mo25775g(bitSet);
        int cardinality = bitSet.cardinality();
        if (cardinality * 2 <= 65536) {
            return m25770f(cardinality, bitSet, toString());
        }
        bitSet.flip(0, 65536);
        int i = 65536 - cardinality;
        String charMatcher = toString();
        return new C5612a(this, m25770f(i, bitSet, charMatcher.endsWith(".negate()") ? charMatcher.substring(0, charMatcher.length() - 9) : ".negate()".length() != 0 ? charMatcher.concat(".negate()") : new String(charMatcher)), charMatcher);
    }

    @GwtIncompatible
    /* renamed from: g */
    public void mo25775g(BitSet bitSet) {
        for (int i = 65535; i >= 0; i--) {
            if (matches((char) i)) {
                bitSet.set(i);
            }
        }
    }

    public int indexIn(CharSequence charSequence) {
        return indexIn(charSequence, 0);
    }

    public int lastIndexIn(CharSequence charSequence) {
        for (int length = charSequence.length() - 1; length >= 0; length--) {
            if (matches(charSequence.charAt(length))) {
                return length;
            }
        }
        return -1;
    }

    public abstract boolean matches(char c);

    public boolean matchesAllOf(CharSequence charSequence) {
        for (int length = charSequence.length() - 1; length >= 0; length--) {
            if (!matches(charSequence.charAt(length))) {
                return false;
            }
        }
        return true;
    }

    public boolean matchesAnyOf(CharSequence charSequence) {
        return !matchesNoneOf(charSequence);
    }

    public boolean matchesNoneOf(CharSequence charSequence) {
        return indexIn(charSequence) == -1;
    }

    /* renamed from: or */
    public CharMatcher mo25776or(CharMatcher charMatcher) {
        return new C5640z(this, charMatcher);
    }

    public CharMatcher precomputed() {
        return C5673a.m25867j(this);
    }

    public String removeFrom(CharSequence charSequence) {
        String charSequence2 = charSequence.toString();
        int indexIn = indexIn(charSequence2);
        if (indexIn == -1) {
            return charSequence2;
        }
        char[] charArray = charSequence2.toCharArray();
        int i = 1;
        while (true) {
            indexIn++;
            while (indexIn != charArray.length) {
                if (matches(charArray[indexIn])) {
                    break;
                }
                charArray[indexIn - i] = charArray[indexIn];
                indexIn++;
            }
            return new String(charArray, 0, indexIn - i);
            i++;
        }
    }

    public String replaceFrom(CharSequence charSequence, char c) {
        String charSequence2 = charSequence.toString();
        int indexIn = indexIn(charSequence2);
        if (indexIn == -1) {
            return charSequence2;
        }
        char[] charArray = charSequence2.toCharArray();
        charArray[indexIn] = c;
        while (true) {
            indexIn++;
            if (indexIn < charArray.length) {
                if (matches(charArray[indexIn])) {
                    charArray[indexIn] = c;
                }
            } else {
                return new String(charArray);
            }
        }
    }

    public String retainFrom(CharSequence charSequence) {
        return negate().removeFrom(charSequence);
    }

    public String toString() {
        return super.toString();
    }

    public String trimAndCollapseFrom(CharSequence charSequence, char c) {
        int length = charSequence.length();
        int i = length - 1;
        int i2 = 0;
        while (i2 < length && matches(charSequence.charAt(i2))) {
            i2++;
        }
        int i3 = i;
        while (i3 > i2 && matches(charSequence.charAt(i3))) {
            i3--;
        }
        if (i2 == 0 && i3 == i) {
            return collapseFrom(charSequence, c);
        }
        int i4 = i3 + 1;
        return m25773b(charSequence, i2, i4, c, new StringBuilder(i4 - i2), false);
    }

    public String trimFrom(CharSequence charSequence) {
        int length = charSequence.length();
        int i = 0;
        while (i < length && matches(charSequence.charAt(i))) {
            i++;
        }
        int i2 = length - 1;
        while (i2 > i && matches(charSequence.charAt(i2))) {
            i2--;
        }
        return charSequence.subSequence(i, i2 + 1).toString();
    }

    public String trimLeadingFrom(CharSequence charSequence) {
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            if (!matches(charSequence.charAt(i))) {
                return charSequence.subSequence(i, length).toString();
            }
        }
        return "";
    }

    public String trimTrailingFrom(CharSequence charSequence) {
        for (int length = charSequence.length() - 1; length >= 0; length--) {
            if (!matches(charSequence.charAt(length))) {
                return charSequence.subSequence(0, length + 1).toString();
            }
        }
        return "";
    }

    @Override // com.google.common.base.Predicate
    @Deprecated
    public boolean apply(Character ch) {
        return matches(ch.charValue());
    }

    public int indexIn(CharSequence charSequence, int i) {
        int length = charSequence.length();
        Preconditions.checkPositionIndex(i, length);
        while (i < length) {
            if (matches(charSequence.charAt(i))) {
                return i;
            }
            i++;
        }
        return -1;
    }

    @Override // java.util.function.Predicate
    public CharMatcher negate() {
        return new C5637w(this);
    }

    public String replaceFrom(CharSequence charSequence, CharSequence charSequence2) {
        int length = charSequence2.length();
        if (length == 0) {
            return removeFrom(charSequence);
        }
        int i = 0;
        if (length == 1) {
            return replaceFrom(charSequence, charSequence2.charAt(0));
        }
        String charSequence3 = charSequence.toString();
        int indexIn = indexIn(charSequence3);
        if (indexIn == -1) {
            return charSequence3;
        }
        int length2 = charSequence3.length();
        StringBuilder sb = new StringBuilder(((length2 * 3) / 2) + 16);
        do {
            sb.append((CharSequence) charSequence3, i, indexIn);
            sb.append(charSequence2);
            i = indexIn + 1;
            indexIn = indexIn(charSequence3, i);
        } while (indexIn != -1);
        sb.append((CharSequence) charSequence3, i, length2);
        return sb.toString();
    }
}
