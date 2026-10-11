package com.twelvemonkeys.util.regex;

import com.google.android.material.motion.MotionUtils;
import com.google.zxing.datamatrix.encoder.HighLevelEncoder;
import java.io.PrintStream;
import org.apache.xmlbeans.impl.common.NameUtil;

/* loaded from: classes10.dex */
public class WildcardStringParser {
    public static final char[] ALPHABET = {'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', HighLevelEncoder.f38477b, 248, 229, 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'N', 'M', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 198, 216, 197, '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '.', NameUtil.USCORE, '-'};
    public static final char FREE_PASS_CHARACTER = '?';
    public static final char FREE_RANGE_CHARACTER = '*';

    /* renamed from: a */
    public boolean f94397a;

    /* renamed from: b */
    public String f94398b;

    /* renamed from: c */
    public C17014b f94399c;

    /* renamed from: d */
    public int f94400d;

    /* renamed from: e */
    public boolean f94401e;

    /* renamed from: f */
    public PrintStream f94402f;

    /* renamed from: com.twelvemonkeys.util.regex.WildcardStringParser$a */
    /* loaded from: classes10.dex */
    public class C17013a {

        /* renamed from: a */
        public char[] f94403a;

        /* renamed from: b */
        public int f94404b;

        public C17013a(String str) {
            if (str != null) {
                this.f94403a = str.toCharArray();
            }
            this.f94404b = -1;
        }

        /* renamed from: a */
        public boolean m60779a() {
            if (m60782d()) {
                return true;
            }
            int i = 0;
            while (true) {
                char[] cArr = this.f94403a;
                if (i >= cArr.length) {
                    return true;
                }
                if (!WildcardStringParser.isInAlphabet(cArr[i])) {
                    return false;
                }
                i++;
            }
        }

        /* renamed from: b */
        public char m60780b() {
            int i = this.f94404b;
            if (i > -1) {
                char[] cArr = this.f94403a;
                if (i < cArr.length) {
                    return cArr[i];
                }
            }
            System.err.println(getClass().getName() + ": trying to access character outside character array!");
            return ' ';
        }

        /* renamed from: c */
        public char m60781c() {
            int i = this.f94404b;
            if (i > -1) {
                int i2 = i + 1;
                char[] cArr = this.f94403a;
                if (i2 < cArr.length) {
                    return cArr[i + 1];
                }
            }
            System.err.println(getClass().getName() + ": trying to access character outside character array!");
            return ' ';
        }

        /* renamed from: d */
        public boolean m60782d() {
            char[] cArr = this.f94403a;
            return cArr == null || cArr.length == 0;
        }

        /* renamed from: e */
        public int m60783e() {
            return this.f94403a.length;
        }

        /* renamed from: f */
        public boolean m60784f() {
            return this.f94404b == this.f94403a.length - 1;
        }

        public String toString() {
            return new String(this.f94403a);
        }
    }

    /* renamed from: com.twelvemonkeys.util.regex.WildcardStringParser$b */
    /* loaded from: classes10.dex */
    public class C17014b {

        /* renamed from: a */
        public int f94406a;

        /* renamed from: b */
        public char f94407b;

        /* renamed from: c */
        public C17014b f94408c;

        /* renamed from: d */
        public C17014b f94409d;

        /* renamed from: e */
        public C17014b f94410e;

        public C17014b(char c) {
            this.f94407b = c;
        }
    }

    public WildcardStringParser(String str) {
        this(str, false);
    }

    public static boolean isFreePassCharacter(char c) {
        return c == '?';
    }

    public static boolean isFreeRangeCharacter(char c) {
        return c == '*';
    }

    public static boolean isInAlphabet(char c) {
        int i = 0;
        while (true) {
            char[] cArr = ALPHABET;
            if (i >= cArr.length) {
                return false;
            }
            if (c == cArr[i]) {
                return true;
            }
            i++;
        }
    }

    public static boolean isWildcardCharacter(char c) {
        return isFreeRangeCharacter(c) || isFreePassCharacter(c);
    }

    /* renamed from: a */
    public final boolean m60775a() {
        String str = this.f94398b;
        if (str == null || str.length() <= 0) {
            System.err.println("string mask provided are null or empty - aborting!");
            return false;
        }
        C17014b c17014b = new C17014b(this.f94398b.charAt(0));
        c17014b.f94406a = 0;
        c17014b.f94408c = null;
        C17014b c17014b2 = m60776b(c17014b) ? c17014b : null;
        this.f94399c = c17014b;
        c17014b.f94406a = 0;
        int i = 1;
        while (i < this.f94398b.length()) {
            char charAt = this.f94398b.charAt(i);
            if (!isInAlphabet(charAt) && !isWildcardCharacter(charAt)) {
                System.err.println("one or more characters in string mask are not legal characters - aborting!");
                return false;
            }
            c17014b.f94410e = c17014b2;
            C17014b c17014b3 = new C17014b(charAt);
            c17014b3.f94406a = i;
            c17014b3.f94408c = c17014b;
            if (m60776b(c17014b3)) {
                c17014b2 = c17014b3;
            }
            c17014b.f94409d = c17014b3;
            if (c17014b3.f94406a == this.f94398b.length() - 1) {
                c17014b3.f94410e = c17014b2;
            }
            i++;
            c17014b = c17014b3;
        }
        this.f94400d = 0;
        return true;
    }

    /* renamed from: b */
    public final boolean m60776b(C17014b c17014b) {
        if (isFreeRangeCharacter(c17014b.f94407b)) {
            return true;
        }
        return isFreePassCharacter(c17014b.f94407b) && m60777c(c17014b);
    }

    /* renamed from: c */
    public final boolean m60777c(C17014b c17014b) {
        do {
            c17014b = c17014b.f94408c;
            if (c17014b == null) {
                break;
            }
            if (isFreeRangeCharacter(c17014b.f94407b)) {
                return true;
            }
        } while (isFreePassCharacter(c17014b.f94407b));
        return false;
    }

    public Object clone() throws CloneNotSupportedException {
        if (this.f94397a) {
            return new WildcardStringParser(this.f94398b);
        }
        return null;
    }

    /* renamed from: d */
    public final boolean m60778d() {
        for (int i = 0; i < this.f94398b.length(); i++) {
            if (!isFreeRangeCharacter(this.f94398b.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof WildcardStringParser)) {
            return super.equals(obj);
        }
        WildcardStringParser wildcardStringParser = (WildcardStringParser) obj;
        return wildcardStringParser.f94397a == this.f94397a && wildcardStringParser.f94398b == this.f94398b;
    }

    public void finalize() throws Throwable {
    }

    public String getStringMask() {
        return this.f94398b;
    }

    public int hashCode() {
        return super.hashCode();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v55, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r5v13 */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v4, types: [int] */
    public boolean parseString(String str) {
        String str2;
        int i;
        int i2;
        if (this.f94401e) {
            this.f94402f.println("parsing \"" + str + "\"...");
        }
        this.f94400d++;
        boolean z = false;
        if (str == null) {
            if (this.f94401e) {
                this.f94402f.println("string to be parsed is null - rejection!");
            }
            return false;
        }
        C17013a c17013a = new C17013a(str);
        if (!c17013a.m60779a()) {
            if (this.f94401e) {
                this.f94402f.println("one or more characters in string to be parsed are not legal characters - rejection!");
            }
            return false;
        }
        if (!this.f94397a) {
            System.err.println("automaton is not initialized - rejection!");
            return false;
        }
        if (m60778d()) {
            if (this.f94401e) {
                this.f94402f.println("automaton represents a trivial string mask (accepts all strings) - acceptance!");
            }
            return true;
        }
        if (c17013a.m60782d()) {
            if (this.f94401e) {
                this.f94402f.println("string to be parsed is empty and not trivial automaton - rejection!");
            }
            return false;
        }
        char c = c17013a.f94403a[0];
        char c2 = this.f94399c.f94407b;
        if (c != c2 && !isWildcardCharacter(c2)) {
            if (this.f94401e) {
                this.f94402f.println("cannot enter first automaton state - rejection!");
            }
            return false;
        }
        C17014b c17014b = this.f94399c;
        c17013a.f94404b = 0;
        int i3 = 0;
        int i4 = 0;
        boolean z2 = false;
        ?? r5 = isFreePassCharacter(c17014b.f94407b);
        while (i3 < c17013a.m60783e()) {
            if (this.f94401e) {
                this.f94402f.println();
            }
            if (this.f94401e) {
                this.f94402f.println("parsing - index number " + i3 + ", active char: '" + c17013a.m60780b() + "' char string index: " + c17013a.f94404b + " number of chars since last free-range state: " + i4);
            }
            if (this.f94401e) {
                PrintStream printStream = this.f94402f;
                ?? sb = new StringBuilder();
                sb.append("parsing - state: ");
                str2 = "parsing - state: ";
                sb.append(c17014b.f94406a);
                sb.append(" '");
                sb.append(c17014b.f94407b);
                sb.append("' - no of free-pass chars read: ");
                sb.append(r5);
                printStream.println(sb.toString());
            } else {
                str2 = "parsing - state: ";
            }
            if (this.f94401e) {
                this.f94402f.println("parsing - hasPerformedFreeRangeMovement: " + z2);
            }
            if (c17014b.f94409d == null) {
                if (this.f94401e) {
                    this.f94402f.println("parsing - runnerState.nextState == null");
                }
                if (isFreeRangeCharacter(c17014b.f94407b)) {
                    if (!z2) {
                        if (this.f94401e) {
                            this.f94402f.println("no subsequent state (final state) and the state represents '*' - no skipping performed - acceptance!");
                        }
                        return true;
                    }
                    if (c17013a.m60784f()) {
                        if (r5 > i4) {
                            if (!this.f94401e) {
                                return false;
                            }
                            this.f94402f.println("no subsequent state (final state) and the state represents '*' - end of parsing string, but not enough characters read - rejection!");
                            return false;
                        }
                        if (!this.f94401e) {
                            return true;
                        }
                        this.f94402f.println("no subsequent state (final state) and the state represents '*' - end of parsing string and enough characters read - acceptance!");
                        return true;
                    }
                    if (r5 <= i4) {
                        if (!this.f94401e) {
                            return true;
                        }
                        this.f94402f.println("no subsequent state (final state) and the state represents '*' - not the end of parsing string, but enough characters read - acceptance!");
                        return true;
                    }
                    if (this.f94401e) {
                        this.f94402f.println("no subsequent state (final state) and the state represents '*' - not the end of parsing string and not enough characters read - read next character");
                    }
                    c17013a.f94404b++;
                    i2 = r5;
                } else {
                    if (c17013a.m60784f()) {
                        if (!z2 || r5 <= i4) {
                            if (!this.f94401e) {
                                return true;
                            }
                            this.f94402f.println("no subsequent state (final state) and the end of the string to test is reached - acceptance!");
                            return true;
                        }
                        if (!this.f94401e) {
                            return false;
                        }
                        this.f94402f.println("no subsequent state (final state) and skipping has been performed and end of parsing string, but not enough characters read - rejection!");
                        return false;
                    }
                    i = r5;
                    if (this.f94401e) {
                        this.f94402f.println("parsing - escaping process...");
                        i = r5;
                    }
                    i3++;
                    z = false;
                    r5 = i;
                }
            } else {
                if (this.f94401e) {
                    this.f94402f.println("parsing - runnerState.nextState != null");
                }
                i = r5;
                if (isFreeRangeCharacter(c17014b.f94407b)) {
                    C17014b c17014b2 = c17014b.f94409d;
                    int i5 = 0;
                    while (c17014b2 != null && isFreePassCharacter(c17014b2.f94407b)) {
                        z2 = true;
                        C17014b c17014b3 = c17014b2;
                        c17014b2 = c17014b2.f94409d;
                        c17014b = c17014b3;
                        i5++;
                    }
                    if (c17014b.f94409d == null) {
                        if (this.f94401e) {
                            this.f94402f.println();
                        }
                        if (this.f94401e) {
                            this.f94402f.println("parsing - index number " + i3 + ", active char: '" + c17013a.m60780b() + "' char string index: " + c17013a.f94404b + " number of chars since last free-range state: 0");
                        }
                        if (this.f94401e) {
                            this.f94402f.println(str2 + c17014b.f94406a + " '" + c17014b.f94407b + "' - no of free-pass chars read: " + i5);
                        }
                        if (this.f94401e) {
                            this.f94402f.println("parsing - hasPerformedFreeRangeMovement: " + z2);
                        }
                        return z2 && i5 >= 0;
                    }
                    i4 = 0;
                    i = i5;
                }
                if (isFreeRangeCharacter(c17014b.f94409d.f94407b)) {
                    c17014b = c17014b.f94409d;
                    c17013a.f94404b++;
                } else if (isFreePassCharacter(c17014b.f94409d.f94407b)) {
                    c17014b = c17014b.f94409d;
                    c17013a.f94404b++;
                    i2 = i + 1;
                } else if (c17013a.m60784f() || c17014b.f94409d.f94407b != c17013a.m60781c()) {
                    c17014b = c17014b.f94410e;
                    if (c17014b == null) {
                        if (!this.f94401e) {
                            return false;
                        }
                        this.f94402f.println("the next state does not represent the same character as the next character in the string to test, and there are no last-free-range-state - rejection!");
                        return false;
                    }
                    c17013a.f94404b++;
                } else {
                    c17014b = c17014b.f94409d;
                    c17013a.f94404b++;
                }
                i4++;
                i3++;
                z = false;
                r5 = i;
            }
            i4++;
            i = i2;
            i3++;
            z = false;
            r5 = i;
        }
        boolean z3 = z;
        if (this.f94401e) {
            this.f94402f.println("finished reading parsing string and not at any final state - rejection!");
        }
        return z3;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (this.f94397a) {
            sb.append(getClass().getName());
            sb.append(":  String mask ");
            sb.append(this.f94398b);
            sb.append("\n");
            sb.append("\n");
            sb.append("      Automaton: ");
            for (C17014b c17014b = this.f94399c; c17014b != null; c17014b = c17014b.f94409d) {
                sb.append(c17014b.f94406a);
                sb.append(": ");
                sb.append(c17014b.f94407b);
                sb.append(" (");
                C17014b c17014b2 = c17014b.f94410e;
                if (c17014b2 != null) {
                    sb.append(c17014b2.f94406a);
                } else {
                    sb.append("-");
                }
                sb.append(MotionUtils.f31762d);
                if (c17014b.f94409d != null) {
                    sb.append("   -->   ");
                }
            }
            sb.append("\n");
            sb.append("      Format: <state index>: <character> (<last free state>)");
            sb.append("\n");
            sb.append("      Number of strings parsed: " + this.f94400d);
            sb.append("\n");
        } else {
            sb.append(getClass().getName());
            sb.append(":  Not initialized properly!");
            sb.append("\n");
            sb.append("\n");
        }
        return sb.toString();
    }

    public WildcardStringParser(String str, boolean z) {
        this(str, z, System.out);
    }

    public WildcardStringParser(String str, boolean z, PrintStream printStream) {
        this.f94398b = str;
        this.f94401e = z;
        this.f94402f = printStream;
        this.f94397a = m60775a();
    }
}
