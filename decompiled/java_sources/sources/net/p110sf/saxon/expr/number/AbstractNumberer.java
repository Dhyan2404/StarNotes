package net.p110sf.saxon.expr.number;

import androidx.core.net.MailTo;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.Locale;
import net.p110sf.saxon.lib.Numberer;
import net.p110sf.saxon.str.EmptyUnicodeString;
import net.p110sf.saxon.str.StringTool;
import net.p110sf.saxon.str.UnicodeString;

/* loaded from: classes11.dex */
public abstract class AbstractNumberer implements Numberer {
    public static final int LOWER_CASE = 1;
    public static final int TITLE_CASE = 2;
    public static final int UPPER_CASE = 0;
    protected static final String cyrillicLower = "абвгдежзиклмнопрссуфхцчшщыэюя";
    protected static final String cyrillicUpper = "АБВГДЕЖЗИКЛМНОПРССУФХЦЧШЩЫЭЮЯ";
    protected static final String greekLower = "αβγδεζηθικλμνξοπρςστυφχψω";
    protected static final String greekUpper = "ΑΒΓΔΕΖΗΘΙΚΛΜΝΞΟΠΡ\u03a2ΣΤΥΦΧΨΩ";
    protected static final String hebrew = "אבגדהוזחטיכלמנסעפצקרשת";
    protected static final String hiraganaA = "あいうえおかきくけこさしすせそたちつてとなにぬねのはひふへほまみむめもやゆよらりるれろわをん";
    protected static final String hiraganaI = "いろはにほへとちりぬるをわかよたれそつねならむうゐのおくやまけふこえてあさきゆめみしゑひもせす";
    protected static final String katakanaA = "アイウエオカキクケコサシスセソタチツテトナニヌネノハヒフヘホマミムメモヤユヨラリルレロワヲン";
    protected static final String katakanaI = "イロハニホヘトチリヌルヲワカヨタレソツネナラムウヰノオクヤマケフコエテアサキユメミシヱヒモセス";
    protected static final String latinLower = "abcdefghijklmnopqrstuvwxyz";
    protected static final String latinUpper = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";

    /* renamed from: a */
    public String f99878a;

    /* renamed from: b */
    public String f99879b;
    protected static final int[] westernDigits = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57};

    /* renamed from: c */
    public static final String[] f99873c = {"", "m", "mm", "mmm", "mmmm", "mmmmm", "mmmmmm", "mmmmmmm", "mmmmmmmm", "mmmmmmmmm"};

    /* renamed from: d */
    public static final String[] f99874d = {"", "c", MailTo.f5527e, "ccc", "cd", "d", "dc", "dcc", "dccc", "cm"};

    /* renamed from: e */
    public static final String[] f99875e = {"", "x", "xx", "xxx", "xl", "l", "lx", "lxx", "lxxx", "xc"};

    /* renamed from: f */
    public static final String[] f99876f = {"", "i", "ii", "iii", "iv", "v", "vi", "vii", "viii", "ix"};

    /* renamed from: g */
    public static final int[] f99877g = {12295, 19968, 20108, 19977, 22235, 20116, 20845, 19971, 20843, 20061};

    /* renamed from: a */
    public static void m62800a(int i, StringBuilder sb, boolean z) {
        if (i == 0) {
            return;
        }
        if (i <= 9) {
            if (i == 1 && z) {
                return;
            }
            sb.appendCodePoint(f99877g[i]);
            return;
        }
        if (i == 10) {
            sb.appendCodePoint(21313);
            return;
        }
        if (i <= 99) {
            m62800a(i / 10, sb, true);
            sb.appendCodePoint(21313);
            m62800a(i % 10, sb, false);
        } else if (i <= 999) {
            m62800a(i / 100, sb, true);
            sb.appendCodePoint(30334);
            m62800a(i % 100, sb, false);
        } else if (i <= 9999) {
            m62800a(i / 1000, sb, true);
            sb.appendCodePoint(21315);
            m62800a(i % 1000, sb, false);
        }
    }

    public static String convertDigitSystem(long j, int[] iArr, int i) {
        StringBuilder sb = new StringBuilder(16);
        int length = iArr.length;
        StringBuilder sb2 = new StringBuilder(16);
        int i2 = 0;
        while (j > 0) {
            long j2 = length;
            StringTool.prependWideChar(sb2, iArr[(int) (j % j2)]);
            i2++;
            j /= j2;
        }
        for (int i3 = 0; i3 < i - i2; i3++) {
            sb.appendCodePoint(iArr[0]);
        }
        sb.append((CharSequence) sb2);
        return sb.toString();
    }

    public static String toRoman(long j) {
        if (j <= 0 || j > 9999) {
            return "" + j;
        }
        StringBuilder sb = new StringBuilder();
        int i = (int) j;
        sb.append(f99873c[i / 1000]);
        sb.append(f99874d[(i / 100) % 10]);
        sb.append(f99875e[(i / 10) % 10]);
        sb.append(f99876f[i % 10]);
        return sb.toString();
    }

    public void alphaDefault(long j, char c, StringBuilder sb) {
        int i = c;
        while (true) {
            int i2 = i + 1;
            if (!Character.isLetterOrDigit((char) i2)) {
                sb.append(toAlpha(j, c, i));
                return;
            }
            i = i2;
        }
    }

    /* renamed from: b */
    public final String m62801b(long j, int[] iArr, int i, NumericGroupFormatter numericGroupFormatter) {
        String convertDigitSystem = convertDigitSystem(j, iArr, i);
        return numericGroupFormatter == null ? convertDigitSystem : numericGroupFormatter.format(convertDigitSystem);
    }

    @Override // net.p110sf.saxon.lib.Numberer
    public abstract String dayName(int i, int i2, int i3);

    @Override // net.p110sf.saxon.lib.Numberer
    public Locale defaultedLocale() {
        return null;
    }

    @Override // net.p110sf.saxon.lib.Numberer
    public final String format(long j, UnicodeString unicodeString, int i, String str, String str2, String str3) {
        return format(j, unicodeString, new RegularGroupFormatter(i, str, EmptyUnicodeString.getInstance()), str2, str3);
    }

    @Override // net.p110sf.saxon.lib.Numberer
    public String getCalendarName(String str) {
        return str.equals("AD") ? "Gregorian" : str;
    }

    @Override // net.p110sf.saxon.lib.Numberer
    public String getCountry() {
        return this.f99878a;
    }

    @Override // net.p110sf.saxon.lib.Numberer
    public String getEraName(int i) {
        return i > 0 ? "AD" : "BC";
    }

    public String getLanguage() {
        return this.f99879b;
    }

    @Override // net.p110sf.saxon.lib.Numberer
    public String getOrdinalSuffixForDateTime(String str) {
        return "yes";
    }

    @Override // net.p110sf.saxon.lib.Numberer
    public String halfDayName(int i, int i2, int i3) {
        return (i == 0 && i3 >= 8 && "gb".equals(this.f99878a)) ? "Midnight" : i < 720 ? i3 != 1 ? (i3 == 2 || i3 == 3) ? "Am" : "A.M." : "A" : (i == 720 && i3 >= 8 && "gb".equals(this.f99878a)) ? "Noon" : i3 != 1 ? (i3 == 2 || i3 == 3) ? "Pm" : "P.M." : "P";
    }

    @Override // net.p110sf.saxon.lib.Numberer
    public abstract String monthName(int i, int i2, int i3);

    public String ordinalSuffix(String str, long j) {
        return "";
    }

    @Override // net.p110sf.saxon.lib.Numberer
    public void setCountry(String str) {
        this.f99878a = str;
    }

    public void setLanguage(String str) {
        this.f99879b = str;
    }

    public String toAlpha(long j, int i, int i2) {
        if (j <= 0) {
            return "" + j;
        }
        long j2 = j - 1;
        long j3 = (i2 - i) + 1;
        char c = (char) ((j2 % j3) + i);
        if (j > j3) {
            return toAlpha(j2 / j3, i, i2) + c;
        }
        return "" + c;
    }

    public String toAlphaSequence(long j, String str) {
        if (j <= 0) {
            return "" + j;
        }
        long j2 = j - 1;
        long length = str.length();
        char charAt = str.charAt((int) (j2 % length));
        if (j > length) {
            return toAlphaSequence(j2 / length, str) + charAt;
        }
        return "" + charAt;
    }

    public String toJapanese(long j) {
        StringBuilder sb = new StringBuilder(16);
        if (j == 0) {
            sb.appendCodePoint(12295);
        } else if (j <= 9999) {
            m62800a((int) j, sb, false);
        } else {
            sb.append("" + j);
        }
        return sb.toString();
    }

    public abstract String toOrdinalWords(String str, long j, int i);

    public abstract String toWords(long j);

    public String toWords(long j, int i) {
        String words;
        if (j == 0) {
            words = zero();
        } else {
            words = toWords(j);
        }
        if (i != 0) {
            return i != 1 ? words : words.toLowerCase();
        }
        return words.toUpperCase();
    }

    public String zero() {
        return "Zero";
    }

    @Override // net.p110sf.saxon.lib.Numberer
    public String format(long j, UnicodeString unicodeString, NumericGroupFormatter numericGroupFormatter, String str, String str2) {
        if (j < 0) {
            return "" + j;
        }
        if (unicodeString != null && unicodeString.length() != 0) {
            int length32 = unicodeString.length32();
            StringBuilder sb = new StringBuilder(16);
            int codePointAt = unicodeString.codePointAt(0L);
            StringBuilder sb2 = new StringBuilder(2);
            int i = 1;
            switch (codePointAt) {
                case 48:
                case 49:
                    sb.append(m62801b(j, westernDigits, length32, numericGroupFormatter));
                    if (str2 != null && !str2.isEmpty()) {
                        sb.append(ordinalSuffix(str2, j));
                        break;
                    }
                    break;
                case 65:
                    return j == 0 ? "0" : toAlphaSequence(j, "ABCDEFGHIJKLMNOPQRSTUVWXYZ");
                case 73:
                    if (j == 0) {
                        return "0";
                    }
                    if (str != null && !str.isEmpty() && !str.equals(Constants.ATTRVAL_TRADITIONAL)) {
                        alphaDefault(j, 'I', sb);
                        break;
                    } else {
                        return toRoman(j).toUpperCase();
                    }
                case 87:
                case 119:
                    if (length32 != 1) {
                        i = 2;
                    } else if (codePointAt == 87) {
                        i = 0;
                    }
                    if (str2 != null && !str2.isEmpty()) {
                        return toOrdinalWords(str2, j, i);
                    }
                    return toWords(j, i);
                case 97:
                    return j == 0 ? "0" : toAlphaSequence(j, latinLower);
                case 105:
                    if (j == 0) {
                        return "0";
                    }
                    if (str != null && !str.isEmpty() && !str.equals(Constants.ATTRVAL_TRADITIONAL)) {
                        alphaDefault(j, 'i', sb);
                        break;
                    } else {
                        return toRoman(j);
                    }
                    break;
                case 913:
                    return j == 0 ? "0" : toAlphaSequence(j, greekUpper);
                case 945:
                    return j == 0 ? "0" : toAlphaSequence(j, greekLower);
                case 1040:
                    return j == 0 ? "0" : toAlphaSequence(j, cyrillicUpper);
                case 1072:
                    return j == 0 ? "0" : toAlphaSequence(j, cyrillicLower);
                case 1488:
                    return j == 0 ? "0" : toAlphaSequence(j, hebrew);
                case 9312:
                    if (j == 0) {
                        return "⓪";
                    }
                    if (j > 20 && j <= 35) {
                        return "" + ((char) ((12881 + j) - 21));
                    }
                    if (j > 35 && j <= 50) {
                        return "" + ((char) ((12977 + j) - 36));
                    }
                    if (j > 50) {
                        return "" + j;
                    }
                    return "" + ((char) ((9312 + j) - 1));
                case 9332:
                    if (j != 0 && j <= 20) {
                        return "" + ((char) ((9332 + j) - 1));
                    }
                    return "" + j;
                case 9352:
                    if (j == 0) {
                        return "🄀";
                    }
                    if (j > 20) {
                        return "" + j;
                    }
                    return "" + ((char) ((9352 + j) - 1));
                case 9461:
                    if (j != 0 && j <= 10) {
                        return "" + ((char) ((9461 + j) - 1));
                    }
                    return "" + j;
                case 10102:
                    if (j == 0) {
                        return "⓿";
                    }
                    if (j > 10 && j <= 20) {
                        return "" + ((char) ((9451 + j) - 11));
                    }
                    if (j > 20) {
                        return "" + j;
                    }
                    return "" + ((char) ((10102 + j) - 1));
                case 10112:
                    if (j == 0) {
                        return "🄋";
                    }
                    if (j > 10) {
                        return "" + j;
                    }
                    return "" + ((char) ((10112 + j) - 1));
                case 10122:
                    if (j == 0) {
                        return "🄌";
                    }
                    if (j > 10) {
                        return "" + j;
                    }
                    return "" + ((char) ((10122 + j) - 1));
                case 12354:
                    return j == 0 ? "0" : toAlphaSequence(j, hiraganaA);
                case 12356:
                    return j == 0 ? "0" : toAlphaSequence(j, hiraganaI);
                case 12450:
                    return j == 0 ? "0" : toAlphaSequence(j, katakanaA);
                case 12452:
                    return j == 0 ? "0" : toAlphaSequence(j, katakanaI);
                case 12832:
                    if (j != 0 && j <= 10) {
                        return "" + ((char) ((12832 + j) - 1));
                    }
                    return "" + j;
                case 12928:
                    if (j != 0 && j <= 10) {
                        return "" + ((char) ((12928 + j) - 1));
                    }
                    return "" + j;
                case 19968:
                    return toJapanese(j);
                case 65799:
                    if (j != 0 && j <= 10) {
                        sb2.appendCodePoint((((int) j) + 65799) - 1);
                        return sb2.toString();
                    }
                    return "" + j;
                case 69216:
                    if (j != 0 && j <= 10) {
                        sb2.appendCodePoint((((int) j) + 69216) - 1);
                        return sb2.toString();
                    }
                    return "" + j;
                case 69714:
                    if (j != 0 && j <= 10) {
                        sb2.appendCodePoint((((int) j) + 69714) - 1);
                        return sb2.toString();
                    }
                    return "" + j;
                case 119648:
                    if (j != 0 && j < 10) {
                        sb2.appendCodePoint((((int) j) + 119648) - 1);
                        return sb2.toString();
                    }
                    return "" + j;
                case 127234:
                    if (j == 0) {
                        sb2.appendCodePoint(127233);
                        return sb2.toString();
                    }
                    if (j >= 10) {
                        return "" + j;
                    }
                    sb2.appendCodePoint((((int) j) + 127234) - 1);
                    return sb2.toString();
                default:
                    int digitValue = Alphanumeric.getDigitValue(codePointAt);
                    if (digitValue >= 0) {
                        int i2 = codePointAt - digitValue;
                        int[] iArr = new int[10];
                        for (int i3 = 0; i3 <= 9; i3++) {
                            iArr[i3] = i2 + i3;
                        }
                        return m62801b(j, iArr, length32, numericGroupFormatter);
                    }
                    if (codePointAt < 4352) {
                        char c = (char) codePointAt;
                        if (Character.isLetter(c) && j > 0) {
                            alphaDefault(j, c, sb);
                            break;
                        }
                    }
                    sb.append(m62801b(j, westernDigits, length32, numericGroupFormatter));
                    if (str2 != null && !str2.isEmpty()) {
                        sb.append(ordinalSuffix(str2, j));
                        break;
                    }
                    break;
            }
            return sb.toString();
        }
        return "" + j;
    }
}
