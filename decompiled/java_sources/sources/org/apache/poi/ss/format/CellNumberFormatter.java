package org.apache.poi.ss.format;

import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.text.FieldPosition;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Formatter;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Locale;
import java.util.Set;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.util.LocaleUtil;

/* loaded from: classes13.dex */
public class CellNumberFormatter extends CellFormatter {
    private static final Logger LOG = LogManager.getLogger((Class<?>) CellNumberFormatter.class);
    private final CellFormatter SIMPLE_NUMBER;
    private final Special afterFractional;
    private final Special afterInteger;
    private final DecimalFormat decimalFmt;
    private final Special decimalPoint;
    private final String denominatorFmt;
    private final List<Special> denominatorSpecials;
    private final String desc;
    private final Special exponent;
    private final List<Special> exponentDigitSpecials;
    private final List<Special> exponentSpecials;
    private final List<Special> fractionalSpecials;
    private final boolean improperFraction;
    private final List<Special> integerSpecials;
    private final int maxDenominator;
    private final Special numerator;
    private final String numeratorFmt;
    private final List<Special> numeratorSpecials;
    private final String printfFmt;
    private final double scale;
    private final boolean showGroupingSeparator;
    private final Special slash;
    private final List<Special> specials;

    /* loaded from: classes13.dex */
    public static class GeneralNumberFormatter extends CellFormatter {
        @Override // org.apache.poi.ss.format.CellFormatter
        public void formatValue(StringBuffer stringBuffer, Object obj) {
            if (obj == null) {
                return;
            }
            (obj instanceof Number ? ((Number) obj).doubleValue() % 1.0d == 0.0d ? new CellNumberFormatter(this.locale, "#") : new CellNumberFormatter(this.locale, "#.#") : CellTextFormatter.SIMPLE_TEXT).formatValue(stringBuffer, obj);
        }

        @Override // org.apache.poi.ss.format.CellFormatter
        public void simpleValue(StringBuffer stringBuffer, Object obj) {
            formatValue(stringBuffer, obj);
        }

        private GeneralNumberFormatter(Locale locale) {
            super(locale, "General");
        }
    }

    /* loaded from: classes13.dex */
    public static class Special {

        /* renamed from: ch */
        final char f111520ch;
        int pos;

        public Special(char c, int i) {
            this.f111520ch = c;
            this.pos = i;
        }

        public String toString() {
            return CloudStorageConstants.SINGLE_QUOTES + this.f111520ch + "' @ " + this.pos;
        }
    }

    public CellNumberFormatter(String str) {
        this(LocaleUtil.getUserLocale(), str);
    }

    private int calculateIntegerPartWidth() {
        Special next;
        Iterator<Special> it2 = this.specials.iterator();
        int i = 0;
        while (it2.hasNext() && (next = it2.next()) != this.afterInteger) {
            if (isDigitFmt(next)) {
                i++;
            }
        }
        return i;
    }

    private static CellNumberStringMod deleteMod(Special special, boolean z, Special special2, boolean z2) {
        return new CellNumberStringMod(special, z, special2, z2);
    }

    private int fractionalEnd() {
        Special special = this.afterFractional;
        List<Special> list = this.specials;
        return special == null ? list.size() : list.indexOf(special);
    }

    private DecimalFormatSymbols getDecimalFormatSymbols() {
        return DecimalFormatSymbols.getInstance(this.locale);
    }

    private static boolean hasChar(char c, List<Special> list) {
        Iterator<Special> it2 = list.iterator();
        while (it2.hasNext()) {
            if (it2.next().f111520ch == c) {
                return true;
            }
        }
        return false;
    }

    private static CellNumberStringMod insertMod(Special special, CharSequence charSequence, int i) {
        return new CellNumberStringMod(special, charSequence, i);
    }

    private int integerEnd() {
        Special special = this.afterInteger;
        List<Special> list = this.specials;
        return special == null ? list.size() : list.indexOf(special);
    }

    private static boolean interpretIntegerCommas(StringBuffer stringBuffer, List<Special> list, Special special, int i, int i2, double[] dArr) {
        ListIterator<Special> listIterator = list.listIterator(i);
        int i3 = 0;
        boolean z = true;
        boolean z2 = false;
        while (listIterator.hasPrevious()) {
            if (listIterator.previous().f111520ch != ',') {
                z = false;
            } else if (z) {
                dArr[0] = dArr[0] / 1000.0d;
            } else {
                z2 = true;
            }
        }
        if (special != null) {
            ListIterator<Special> listIterator2 = list.listIterator(i2);
            while (listIterator2.hasPrevious() && listIterator2.previous().f111520ch == ',') {
                dArr[0] = dArr[0] / 1000.0d;
            }
        }
        ListIterator<Special> listIterator3 = list.listIterator();
        while (listIterator3.hasNext()) {
            Special next = listIterator3.next();
            next.pos -= i3;
            if (next.f111520ch == ',') {
                i3++;
                listIterator3.remove();
                stringBuffer.deleteCharAt(next.pos);
            }
        }
        return z2;
    }

    private static int interpretPrecision(Special special, List<Special> list) {
        int indexOf = list.indexOf(special);
        int i = 0;
        if (indexOf != -1) {
            ListIterator<Special> listIterator = list.listIterator(indexOf + 1);
            while (listIterator.hasNext() && isDigitFmt(listIterator.next())) {
                i++;
            }
        }
        return i;
    }

    private static boolean isDigitFmt(Special special) {
        char c = special.f111520ch;
        return c == '0' || c == '?' || c == '#';
    }

    private static Special lastSpecial(List<Special> list) {
        return list.get(list.size() - 1);
    }

    private String localiseFormat(String str) {
        DecimalFormatSymbols decimalFormatSymbols = getDecimalFormatSymbols();
        return (!str.contains(",") || decimalFormatSymbols.getGroupingSeparator() == ',') ? (!str.contains(".") || decimalFormatSymbols.getDecimalSeparator() == '.') ? str : str.replace('.', decimalFormatSymbols.getDecimalSeparator()) : (!str.contains(".") || decimalFormatSymbols.getDecimalSeparator() == '.') ? str.replace(',', decimalFormatSymbols.getGroupingSeparator()) : replaceLast(str, "\\.", "[DECIMAL_SEPARATOR]").replace(',', decimalFormatSymbols.getGroupingSeparator()).replace("[DECIMAL_SEPARATOR]", Character.toString(decimalFormatSymbols.getDecimalSeparator()));
    }

    private static int maxValue(List<Special> list) {
        return Math.toIntExact(Math.round(Math.pow(10.0d, list.size()) - 1.0d));
    }

    private static void placeZeros(StringBuffer stringBuffer, List<Special> list) {
        Iterator<Special> it2 = list.iterator();
        while (it2.hasNext()) {
            if (isDigitFmt(it2.next())) {
                stringBuffer.append('0');
            }
        }
    }

    private static String replaceLast(String str, String str2, String str3) {
        return str.replaceFirst("(?s)(.*)" + str2, "$1" + str3);
    }

    private static CellNumberStringMod replaceMod(Special special, boolean z, Special special2, boolean z2, char c) {
        return new CellNumberStringMod(special, z, special2, z2, c);
    }

    private static String singleNumberFormat(List<Special> list) {
        return "%0" + list.size() + "d";
    }

    private List<Special> specialsFor(int i, int i2) {
        if (i >= this.specials.size()) {
            return Collections.emptyList();
        }
        int i3 = i2 + i;
        ListIterator<Special> listIterator = this.specials.listIterator(i3);
        Special next = listIterator.next();
        while (listIterator.hasNext()) {
            Special next2 = listIterator.next();
            if (!isDigitFmt(next2) || next2.pos - next.pos > 1) {
                break;
            }
            i3++;
            next = next2;
        }
        return this.specials.subList(i, i3 + 1);
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x00f3 A[Catch: RuntimeException -> 0x0122, TryCatch #0 {RuntimeException -> 0x0122, blocks: (B:55:0x00cd, B:57:0x00d1, B:60:0x00da, B:44:0x00ef, B:46:0x00f3, B:47:0x0103, B:43:0x00ea), top: B:54:0x00cd }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0102  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void writeFraction(double r17, java.lang.StringBuffer r19, double r20, java.lang.StringBuffer r22, java.util.Set<org.apache.poi.ss.format.CellNumberStringMod> r23) {
        /*
            Method dump skipped, instructions count: 307
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.ss.format.CellNumberFormatter.writeFraction(double, java.lang.StringBuffer, double, java.lang.StringBuffer, java.util.Set):void");
    }

    private void writeFractional(StringBuffer stringBuffer, StringBuffer stringBuffer2) {
        char c;
        if (this.fractionalSpecials.isEmpty()) {
            return;
        }
        int indexOf = stringBuffer.indexOf(Character.toString(getDecimalFormatSymbols().getDecimalSeparator())) + 1;
        int indexOf2 = this.exponent != null ? stringBuffer.indexOf("e") : stringBuffer.length();
        do {
            indexOf2--;
            if (indexOf2 <= indexOf) {
                break;
            }
        } while (stringBuffer.charAt(indexOf2) == '0');
        for (Special special : this.fractionalSpecials) {
            char charAt = stringBuffer.charAt(indexOf);
            if (charAt != '0' || (c = special.f111520ch) == '0' || indexOf < indexOf2) {
                stringBuffer2.setCharAt(special.pos, charAt);
            } else if (c == '?') {
                stringBuffer2.setCharAt(special.pos, ' ');
            }
            indexOf++;
        }
    }

    private void writeInteger(StringBuffer stringBuffer, StringBuffer stringBuffer2, List<Special> list, Set<CellNumberStringMod> set, boolean z) {
        boolean z2;
        Special special;
        char c;
        char charAt;
        DecimalFormatSymbols decimalFormatSymbols = getDecimalFormatSymbols();
        String ch = Character.toString(decimalFormatSymbols.getDecimalSeparator());
        String ch2 = Character.toString(decimalFormatSymbols.getGroupingSeparator());
        int indexOf = stringBuffer.indexOf(ch) - 1;
        if (indexOf < 0) {
            indexOf = ((this.exponent == null || list != this.integerSpecials) ? stringBuffer.length() : stringBuffer.indexOf("E")) - 1;
        }
        int i = 0;
        while (i < indexOf && ((charAt = stringBuffer.charAt(i)) == '0' || charAt == decimalFormatSymbols.getGroupingSeparator())) {
            i++;
        }
        ListIterator<Special> listIterator = list.listIterator(list.size());
        Special special2 = null;
        int i2 = 0;
        while (listIterator.hasPrevious()) {
            char charAt2 = indexOf >= 0 ? stringBuffer.charAt(indexOf) : '0';
            Special previous = listIterator.previous();
            boolean z3 = z && i2 > 0 && i2 % 3 == 0;
            if (charAt2 != '0' || (c = previous.f111520ch) == '0' || c == '?' || indexOf >= i) {
                z2 = previous.f111520ch == '?' && indexOf < i;
                int i3 = previous.pos;
                if (z2) {
                    charAt2 = ' ';
                }
                stringBuffer2.setCharAt(i3, charAt2);
                special = previous;
            } else {
                special = special2;
                z2 = false;
            }
            if (z3) {
                set.add(insertMod(previous, z2 ? " " : ch2, 2));
            }
            i2++;
            indexOf--;
            special2 = special;
        }
        if (indexOf >= 0) {
            int i4 = indexOf + 1;
            StringBuffer stringBuffer3 = new StringBuffer(stringBuffer.substring(0, i4));
            if (z) {
                while (i4 > 0) {
                    if (i2 > 0 && i2 % 3 == 0) {
                        stringBuffer3.insert(i4, ch2);
                    }
                    i2++;
                    i4--;
                }
            }
            set.add(insertMod(special2, stringBuffer3, 1));
        }
    }

    private void writeScientific(double d, StringBuffer stringBuffer, Set<CellNumberStringMod> set) {
        StringBuffer stringBuffer2 = new StringBuffer();
        FieldPosition fieldPosition = new FieldPosition(1);
        this.decimalFmt.format(d, stringBuffer2, fieldPosition);
        writeInteger(stringBuffer2, stringBuffer, this.integerSpecials, set, this.showGroupingSeparator);
        writeFractional(stringBuffer2, stringBuffer);
        int endIndex = fieldPosition.getEndIndex() + 1;
        char charAt = stringBuffer2.charAt(endIndex);
        if (charAt != '-') {
            stringBuffer2.insert(endIndex, PhoneNumberUtil.f36455s);
            charAt = '+';
        }
        Special next = this.exponentSpecials.listIterator(1).next();
        char c = next.f111520ch;
        if (charAt == '-' || c == '+') {
            set.add(replaceMod(next, true, next, true, charAt));
        } else {
            set.add(deleteMod(next, true, next, true));
        }
        writeInteger(new StringBuffer(stringBuffer2.substring(endIndex + 1)), stringBuffer, this.exponentDigitSpecials, set, false);
    }

    private void writeSingleInteger(String str, int i, StringBuffer stringBuffer, List<Special> list, Set<CellNumberStringMod> set) {
        StringBuffer stringBuffer2 = new StringBuffer();
        Formatter formatter = new Formatter(stringBuffer2, this.locale);
        try {
            formatter.format(this.locale, str, Integer.valueOf(i));
            formatter.close();
            writeInteger(stringBuffer2, stringBuffer, list, set, false);
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    formatter.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01b3  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0057  */
    @Override // org.apache.poi.ss.format.CellFormatter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void formatValue(java.lang.StringBuffer r19, java.lang.Object r20) {
        /*
            Method dump skipped, instructions count: 485
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.ss.format.CellNumberFormatter.formatValue(java.lang.StringBuffer, java.lang.Object):void");
    }

    @Override // org.apache.poi.ss.format.CellFormatter
    public void simpleValue(StringBuffer stringBuffer, Object obj) {
        this.SIMPLE_NUMBER.formatValue(stringBuffer, obj);
    }

    public CellNumberFormatter(Locale locale, String str) {
        super(locale, str);
        int i;
        ArrayList arrayList = new ArrayList();
        this.specials = arrayList;
        ArrayList arrayList2 = new ArrayList();
        this.integerSpecials = arrayList2;
        ArrayList arrayList3 = new ArrayList();
        this.fractionalSpecials = arrayList3;
        ArrayList arrayList4 = new ArrayList();
        this.numeratorSpecials = arrayList4;
        ArrayList arrayList5 = new ArrayList();
        this.denominatorSpecials = arrayList5;
        ArrayList arrayList6 = new ArrayList();
        this.exponentSpecials = arrayList6;
        ArrayList arrayList7 = new ArrayList();
        this.exponentDigitSpecials = arrayList7;
        this.SIMPLE_NUMBER = new GeneralNumberFormatter(this.locale);
        CellNumberPartHandler cellNumberPartHandler = new CellNumberPartHandler();
        StringBuffer parseFormat = CellFormatPart.parseFormat(str, CellFormatType.NUMBER, cellNumberPartHandler);
        Special exponent = cellNumberPartHandler.getExponent();
        this.exponent = exponent;
        arrayList.addAll(cellNumberPartHandler.getSpecials());
        this.improperFraction = cellNumberPartHandler.isImproperFraction();
        if ((cellNumberPartHandler.getDecimalPoint() != null || cellNumberPartHandler.getExponent() != null) && cellNumberPartHandler.getSlash() != null) {
            this.slash = null;
            this.numerator = null;
        } else {
            this.slash = cellNumberPartHandler.getSlash();
            this.numerator = cellNumberPartHandler.getNumerator();
        }
        int interpretPrecision = interpretPrecision(cellNumberPartHandler.getDecimalPoint(), arrayList);
        if (cellNumberPartHandler.getDecimalPoint() != null) {
            int i2 = interpretPrecision + 1;
            if (interpretPrecision == 0) {
                arrayList.remove(cellNumberPartHandler.getDecimalPoint());
                this.decimalPoint = null;
            } else {
                this.decimalPoint = cellNumberPartHandler.getDecimalPoint();
            }
            i = i2;
        } else {
            this.decimalPoint = null;
            i = 0;
        }
        Special special = this.decimalPoint;
        if (special != null) {
            this.afterInteger = special;
        } else if (exponent != null) {
            this.afterInteger = exponent;
        } else {
            Special special2 = this.numerator;
            if (special2 != null) {
                this.afterInteger = special2;
            } else {
                this.afterInteger = null;
            }
        }
        if (exponent != null) {
            this.afterFractional = exponent;
        } else {
            Special special3 = this.numerator;
            if (special3 != null) {
                this.afterFractional = special3;
            } else {
                this.afterFractional = null;
            }
        }
        double[] dArr = {cellNumberPartHandler.getScale()};
        this.showGroupingSeparator = interpretIntegerCommas(parseFormat, arrayList, this.decimalPoint, integerEnd(), fractionalEnd(), dArr);
        if (exponent == null) {
            this.scale = dArr[0];
        } else {
            this.scale = 1.0d;
        }
        if (interpretPrecision != 0) {
            arrayList3.addAll(arrayList.subList(arrayList.indexOf(this.decimalPoint) + 1, fractionalEnd()));
        }
        if (exponent != null) {
            int indexOf = arrayList.indexOf(exponent);
            arrayList6.addAll(specialsFor(indexOf, 2));
            arrayList7.addAll(specialsFor(indexOf + 2));
        }
        if (this.slash != null) {
            Special special4 = this.numerator;
            if (special4 != null) {
                arrayList4.addAll(specialsFor(arrayList.indexOf(special4)));
            }
            arrayList5.addAll(specialsFor(arrayList.indexOf(this.slash) + 1));
            if (arrayList5.isEmpty()) {
                arrayList4.clear();
                this.maxDenominator = 1;
                this.numeratorFmt = null;
                this.denominatorFmt = null;
            } else {
                this.maxDenominator = maxValue(arrayList5);
                this.numeratorFmt = singleNumberFormat(arrayList4);
                this.denominatorFmt = singleNumberFormat(arrayList5);
            }
        } else {
            this.maxDenominator = 1;
            this.numeratorFmt = null;
            this.denominatorFmt = null;
        }
        arrayList2.addAll(arrayList.subList(0, integerEnd()));
        if (exponent == null) {
            int calculateIntegerPartWidth = calculateIntegerPartWidth() + i;
            if (calculateIntegerPartWidth == 0) {
                this.printfFmt = "";
            } else {
                this.printfFmt = "%0" + calculateIntegerPartWidth + '.' + interpretPrecision + C6997f.f39671c;
            }
            this.decimalFmt = null;
        } else {
            StringBuffer stringBuffer = new StringBuffer();
            boolean z = true;
            if (arrayList2.size() == 1) {
                stringBuffer.append("0");
                z = false;
            } else {
                Iterator it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    if (isDigitFmt((Special) it2.next())) {
                        stringBuffer.append(z ? '#' : '0');
                        z = false;
                    }
                }
            }
            if (!this.fractionalSpecials.isEmpty()) {
                stringBuffer.append('.');
                Iterator<Special> it3 = this.fractionalSpecials.iterator();
                while (it3.hasNext()) {
                    if (isDigitFmt(it3.next())) {
                        if (!z) {
                            stringBuffer.append('0');
                        }
                        z = false;
                    }
                }
            }
            stringBuffer.append('E');
            List<Special> list = this.exponentSpecials;
            placeZeros(stringBuffer, list.subList(2, list.size()));
            this.decimalFmt = new DecimalFormat(stringBuffer.toString(), getDecimalFormatSymbols());
            this.printfFmt = null;
        }
        this.desc = parseFormat.toString();
    }

    private static boolean hasChar(char c, List<Special> list, List<Special> list2) {
        return hasChar(c, list) || hasChar(c, list2);
    }

    private static boolean hasChar(char c, List<Special> list, List<Special> list2, List<Special> list3) {
        return hasChar(c, list) || hasChar(c, list2) || hasChar(c, list3);
    }

    private List<Special> specialsFor(int i) {
        return specialsFor(i, 0);
    }
}
