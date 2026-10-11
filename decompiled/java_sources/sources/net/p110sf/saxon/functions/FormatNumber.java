package net.p110sf.saxon.functions;

import java.math.BigDecimal;
import java.util.Arrays;
import java.util.function.Function;
import net.p110sf.saxon.expr.ArithmeticExpression;
import net.p110sf.saxon.expr.Callable;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.StringLiteral;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.functions.FormatNumber;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.s9api.HostLanguage;
import net.p110sf.saxon.str.StringTool;
import net.p110sf.saxon.str.StringView;
import net.p110sf.saxon.trans.DecimalFormatManager;
import net.p110sf.saxon.trans.DecimalSymbols;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.BigDecimalValue;
import net.p110sf.saxon.value.DoubleValue;
import net.p110sf.saxon.value.FloatValue;
import net.p110sf.saxon.value.FloatingPointConverter;
import net.p110sf.saxon.value.Int64Value;
import net.p110sf.saxon.value.IntegerValue;
import net.p110sf.saxon.value.NumericValue;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class FormatNumber extends SystemFunction implements Callable, StatefulSystemFunction {

    /* renamed from: l */
    public static final /* synthetic */ boolean f100228l = false;

    /* renamed from: h */
    public StructuredQName f100229h;

    /* renamed from: i */
    public String f100230i;

    /* renamed from: j */
    public DecimalSymbols f100231j;

    /* renamed from: k */
    public SubPicture[] f100232k;

    /* loaded from: classes11.dex */
    public static class SubPicture {
        protected int[] fractionalPartGroupingPositions;
        protected boolean isPerMille;
        protected boolean isPercent;
        protected int maxFractionPartSize;
        protected int minFractionPartSize;
        protected int minWholePartSize;
        protected String prefix;
        protected boolean regular;
        protected int scalingFactor;
        protected String suffix;
        protected int[] wholePartGroupingPositions;
        protected int maxWholePartSize = 0;
        protected int minExponentSize = 0;
        protected boolean is31 = true;

        /* JADX WARN: Failed to find 'out' block for switch in B:130:0x01f2. Please report as an issue. */
        /* JADX WARN: Failed to find 'out' block for switch in B:93:0x017f. Please report as an issue. */
        /* JADX WARN: Removed duplicated region for block: B:180:0x02d2  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public SubPicture(int[] r27, net.p110sf.saxon.trans.DecimalSymbols r28) throws net.p110sf.saxon.trans.XPathException {
            /*
                Method dump skipped, instructions count: 886
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: net.sf.saxon.functions.FormatNumber.SubPicture.<init>(int[], net.sf.saxon.trans.DecimalSymbols):void");
        }

        /* JADX WARN: Removed duplicated region for block: B:24:0x00a1  */
        /* JADX WARN: Removed duplicated region for block: B:36:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:39:0x0099  */
        /* JADX WARN: Removed duplicated region for block: B:41:0x006f  */
        /* JADX WARN: Removed duplicated region for block: B:7:0x003e  */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void m63012a(java.math.BigDecimal r8, java.lang.StringBuilder r9) {
            /*
                r7 = this;
                int r0 = r7.minExponentSize
                r1 = 0
                if (r0 != 0) goto Le
                int r0 = r7.maxFractionPartSize
                java.math.RoundingMode r2 = java.math.RoundingMode.HALF_EVEN
                java.math.BigDecimal r8 = r8.setScale(r0, r2)
                goto L2d
            Le:
                int r0 = r8.signum()
                if (r0 == 0) goto L2d
                int r0 = r8.precision()
                int r2 = r8.scale()
                int r0 = r0 - r2
                int r2 = r7.scalingFactor
                int r0 = r0 - r2
                java.math.BigDecimal r8 = r8.movePointLeft(r0)
                int r2 = r7.maxFractionPartSize
                java.math.RoundingMode r3 = java.math.RoundingMode.HALF_EVEN
                java.math.BigDecimal r8 = r8.setScale(r2, r3)
                goto L2e
            L2d:
                r0 = r1
            L2e:
                net.p110sf.saxon.value.BigDecimalValue.decimalToString(r8, r9)
                java.lang.String r8 = "."
                int r8 = r9.indexOf(r8)
                r2 = 46
                r3 = 48
                r4 = 1
                if (r8 < 0) goto L6f
                int r5 = r7.maxFractionPartSize
                int r6 = r7.minFractionPartSize
                int r5 = r5 - r6
            L43:
                if (r5 <= 0) goto L5b
                int r6 = r9.length()
                int r6 = r6 - r4
                char r6 = r9.charAt(r6)
                if (r6 != r3) goto L5b
                int r6 = r9.length()
                int r6 = r6 - r4
                r9.setLength(r6)
                int r5 = r5 + (-1)
                goto L43
            L5b:
                int r5 = r9.length()
                int r5 = r5 - r4
                char r5 = r9.charAt(r5)
                if (r5 != r2) goto L85
                int r2 = r9.length()
                int r2 = r2 - r4
                r9.setLength(r2)
                goto L85
            L6f:
                int r8 = r9.length()
                int r5 = r7.minFractionPartSize
                if (r5 <= 0) goto L85
                r9.append(r2)
                r2 = r1
            L7b:
                int r5 = r7.minFractionPartSize
                if (r2 >= r5) goto L85
                r9.append(r3)
                int r2 = r2 + 1
                goto L7b
            L85:
                int r2 = r7.minWholePartSize
                if (r2 != 0) goto L95
                if (r8 != r4) goto L95
                char r2 = r9.charAt(r1)
                if (r2 != r3) goto L95
                r9.deleteCharAt(r1)
                goto L9d
            L95:
                int r2 = r7.minWholePartSize
                if (r2 <= r8) goto L9d
                int r2 = r2 - r8
                net.p110sf.saxon.str.StringTool.prependRepeated(r9, r3, r2)
            L9d:
                int r8 = r7.minExponentSize
                if (r8 == 0) goto Ld8
                r8 = 101(0x65, float:1.42E-43)
                r9.append(r8)
                double r5 = (double) r0
                net.sf.saxon.type.ConversionResult r8 = net.p110sf.saxon.value.IntegerValue.fromDouble(r5)
                net.sf.saxon.value.IntegerValue r8 = (net.p110sf.saxon.value.IntegerValue) r8
                net.sf.saxon.str.UnicodeString r8 = r8.getUnicodeStringValue()
                java.lang.String r8 = r8.toString()
                char r0 = r8.charAt(r1)
                r2 = 45
                if (r0 != r2) goto Lc4
                r9.append(r2)
                java.lang.String r8 = r8.substring(r4)
            Lc4:
                int r0 = r8.length()
                int r7 = r7.minExponentSize
                if (r0 >= r7) goto Ld5
                int r7 = r7 - r0
            Lcd:
                if (r1 >= r7) goto Ld5
                r9.append(r3)
                int r1 = r1 + 1
                goto Lcd
            Ld5:
                r9.append(r8)
            Ld8:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: net.sf.saxon.functions.FormatNumber.SubPicture.m63012a(java.math.BigDecimal, java.lang.StringBuilder):void");
        }

        /* renamed from: b */
        public final void m63013b(NumericValue numericValue, StringBuilder sb) {
            if (this.minWholePartSize != 0 || numericValue.compareTo(0L) != 0) {
                sb.append(numericValue.getUnicodeStringValue());
                int length = this.minWholePartSize - sb.length();
                if (length > 0) {
                    StringTool.prependRepeated(sb, '0', length);
                }
            }
            if (this.minFractionPartSize != 0) {
                sb.append('.');
                for (int i = 0; i < this.minFractionPartSize; i++) {
                    sb.append('0');
                }
            }
        }

        public String format(NumericValue numericValue, DecimalSymbols decimalSymbols, String str) {
            int i;
            int indexOf;
            if (numericValue.isNaN()) {
                return decimalSymbols.getNaN();
            }
            int i2 = this.isPercent ? 100 : this.isPerMille ? 1000 : 1;
            if (i2 != 1) {
                try {
                    numericValue = (NumericValue) ArithmeticExpression.compute(numericValue, 2, new Int64Value(i2), null);
                } catch (XPathException unused) {
                    numericValue = new DoubleValue(Double.POSITIVE_INFINITY);
                }
            }
            boolean z = numericValue instanceof DoubleValue;
            if ((z || (numericValue instanceof FloatValue)) && Double.isInfinite(numericValue.getDoubleValue())) {
                return str + this.prefix + decimalSymbols.getInfinity() + this.suffix;
            }
            StringBuilder sb = new StringBuilder(16);
            if (z || (numericValue instanceof FloatValue)) {
                m63012a(FormatNumber.adjustToDecimal(numericValue.getDoubleValue(), 2), sb);
            } else if (numericValue instanceof IntegerValue) {
                if (this.minExponentSize != 0) {
                    m63012a(((IntegerValue) numericValue).getDecimalValue(), sb);
                } else {
                    m63013b(numericValue, sb);
                }
            } else if (numericValue instanceof BigDecimalValue) {
                m63012a(((BigDecimalValue) numericValue).getDecimalValue(), sb);
            }
            String sb2 = sb.toString();
            int[] expand = StringTool.expand(StringView.m63901of(sb2));
            int length = expand.length;
            int indexOf2 = sb2.indexOf(46);
            if (indexOf2 == -1) {
                indexOf2 = sb2.length();
            } else {
                expand[indexOf2] = decimalSymbols.getDecimalSeparator();
                if (this.maxFractionPartSize == 0) {
                    length--;
                }
            }
            if (decimalSymbols.getZeroDigit() != 48) {
                int zeroDigit = decimalSymbols.getZeroDigit();
                for (int i3 = 0; i3 < length; i3++) {
                    int i4 = expand[i3];
                    if (i4 >= 48 && i4 <= 57) {
                        expand[i3] = (i4 - 48) + zeroDigit;
                    }
                }
            }
            if (decimalSymbols.getExponentSeparator() != 101 && (indexOf = sb2.indexOf(101)) != -1) {
                expand[indexOf] = decimalSymbols.getExponentSeparator();
            }
            int[] iArr = this.wholePartGroupingPositions;
            if (iArr != null) {
                if (this.regular) {
                    int i5 = iArr[0];
                    int i6 = indexOf2 - i5;
                    while (i6 > 0) {
                        expand = FormatNumber.m63008h(expand, length, decimalSymbols.getGroupingSeparator(), i6);
                        i6 -= i5;
                        length++;
                    }
                } else {
                    for (int i7 : iArr) {
                        int i8 = indexOf2 - i7;
                        if (i8 > 0) {
                            expand = FormatNumber.m63008h(expand, length, decimalSymbols.getGroupingSeparator(), i8);
                            length++;
                        }
                    }
                }
            }
            if (this.fractionalPartGroupingPositions != null) {
                int i9 = 0;
                while (true) {
                    int[] iArr2 = this.fractionalPartGroupingPositions;
                    if (i9 >= iArr2.length || (i = indexOf2 + 1 + iArr2[i9] + i9) >= length) {
                        break;
                    }
                    expand = FormatNumber.m63008h(expand, length, decimalSymbols.getGroupingSeparator(), i);
                    i9++;
                    length++;
                }
            }
            StringBuilder sb3 = new StringBuilder(this.prefix.length() + str.length() + this.suffix.length() + length);
            sb3.append(str);
            sb3.append(this.prefix);
            for (int i10 = 0; i10 < length; i10++) {
                sb3.appendCodePoint(expand[i10]);
            }
            sb3.append(this.suffix);
            return sb3.toString();
        }
    }

    public static BigDecimal adjustToDecimal(double d, int i) {
        BigDecimal bigDecimal;
        BigDecimal bigDecimal2;
        String str = i == 1 ? "00000" : "000000000";
        String str2 = i == 1 ? "99999" : "999999999";
        BigDecimal valueOf = BigDecimal.valueOf(d);
        StringBuilder sb = new StringBuilder(16);
        BigDecimalValue.decimalToString(valueOf, sb);
        String sb2 = sb.toString();
        int i2 = sb2.charAt(0) == '-' ? 1 : 0;
        int indexOf = sb2.indexOf(".");
        int lastIndexOf = sb2.lastIndexOf(str);
        if (lastIndexOf <= 0) {
            int indexOf2 = sb2.indexOf(str2);
            if (indexOf2 < 0) {
                bigDecimal = null;
            } else if (indexOf2 == i2) {
                StringBuilder sb3 = new StringBuilder(sb2.length() + 1);
                if (i2 == 1) {
                    sb3.append('-');
                }
                sb3.append('1');
                while (i2 < sb2.length()) {
                    sb3.append(sb2.charAt(i2) == '.' ? '.' : '0');
                    i2++;
                }
                bigDecimal = new BigDecimal(sb3.toString());
            } else {
                while (indexOf2 >= 0 && (sb2.charAt(indexOf2) == '9' || sb2.charAt(indexOf2) == '.')) {
                    indexOf2--;
                }
                if (indexOf2 < 0 || sb2.charAt(indexOf2) == '-') {
                    return valueOf;
                }
                if (indexOf < 0 || indexOf2 < indexOf) {
                    StringBuilder sb4 = new StringBuilder(sb2.length());
                    sb4.append(sb2.substring(0, indexOf2));
                    sb4.append((char) (sb2.charAt(indexOf2) + 1));
                    while (indexOf2 < sb2.length()) {
                        sb4.append(sb2.charAt(indexOf2) == '.' ? '.' : '0');
                        indexOf2++;
                    }
                    bigDecimal2 = new BigDecimal(sb4.toString());
                    bigDecimal = bigDecimal2;
                } else {
                    bigDecimal = new BigDecimal(sb2.substring(0, indexOf2) + ((char) (sb2.charAt(indexOf2) + 1)));
                }
            }
        } else if (indexOf < 0 || lastIndexOf < indexOf) {
            StringBuilder sb5 = new StringBuilder(sb2.length());
            sb5.append(sb2.substring(0, lastIndexOf));
            while (lastIndexOf < sb2.length()) {
                sb5.append(sb2.charAt(lastIndexOf) == '.' ? '.' : '0');
                lastIndexOf++;
            }
            bigDecimal2 = new BigDecimal(sb5.toString());
            bigDecimal = bigDecimal2;
        } else {
            bigDecimal = new BigDecimal(sb2.substring(0, lastIndexOf));
        }
        return (bigDecimal == null || (i != 1 ? bigDecimal.doubleValue() != d : ((double) bigDecimal.floatValue()) != d)) ? valueOf : bigDecimal;
    }

    /* renamed from: e */
    public static String m63005e(NumericValue numericValue, SubPicture[] subPictureArr, DecimalSymbols decimalSymbols) {
        SubPicture subPicture;
        int signum = numericValue.signum();
        if (signum == 0 && numericValue.isNegativeZero()) {
            signum = -1;
        }
        String str = "";
        if (signum < 0) {
            numericValue = numericValue.negate();
            subPicture = subPictureArr[1];
            if (subPicture == null) {
                subPicture = subPictureArr[0];
                str = m63011k(decimalSymbols.getMinusSign());
            }
        } else {
            subPicture = subPictureArr[0];
        }
        return subPicture.format(numericValue, decimalSymbols, str);
    }

    /* renamed from: f */
    public static SubPicture[] m63006f(String str, DecimalSymbols decimalSymbols) throws XPathException {
        int[] expand = StringTool.expand(StringView.m63901of(str));
        SubPicture[] subPictureArr = new SubPicture[2];
        if (expand.length == 0) {
            XPathException xPathException = new XPathException("format-number() picture is zero-length");
            xPathException.setErrorCode("FODF1310");
            throw xPathException;
        }
        int i = -1;
        for (int i2 = 0; i2 < expand.length; i2++) {
            if (expand[i2] == decimalSymbols.getPatternSeparator()) {
                if (i2 == 0) {
                    m63007g("first subpicture is zero-length");
                } else if (i >= 0) {
                    m63007g("more than one pattern separator");
                } else if (i == expand.length - 1) {
                    m63007g("second subpicture is zero-length");
                }
                i = i2;
            }
        }
        if (i < 0) {
            subPictureArr[0] = makeSubPicture(expand, decimalSymbols);
            subPictureArr[1] = null;
        } else {
            int[] iArr = new int[i];
            System.arraycopy(expand, 0, iArr, 0, i);
            int[] iArr2 = new int[(expand.length - i) - 1];
            System.arraycopy(expand, i + 1, iArr2, 0, (expand.length - i) - 1);
            subPictureArr[0] = makeSubPicture(iArr, decimalSymbols);
            subPictureArr[1] = makeSubPicture(iArr2, decimalSymbols);
        }
        return subPictureArr;
    }

    public static String formatExponential(DoubleValue doubleValue) {
        try {
            DecimalSymbols decimalSymbols = new DecimalSymbols(HostLanguage.XSLT, 31);
            decimalSymbols.setInfinity(FloatingPointConverter.f102870b);
            return m63005e(doubleValue, m63006f("0.0##########################e0", decimalSymbols), decimalSymbols);
        } catch (XPathException unused) {
            return doubleValue.getStringValue();
        }
    }

    /* renamed from: g */
    public static void m63007g(String str) throws XPathException {
        throw new XPathException("format-number picture: " + str, "FODF1310");
    }

    public static Function<Double, String> getFormatter(String str) throws XPathException {
        final DecimalSymbols decimalSymbols = new DecimalSymbols(HostLanguage.XSLT, 30);
        final SubPicture[] m63006f = m63006f(str, decimalSymbols);
        return new Function() { // from class: com.sunia.HTREnginev2.gtg
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                String m63010j;
                m63010j = FormatNumber.m63010j(m63006f, decimalSymbols, (Double) obj);
                return m63010j;
            }
        };
    }

    /* renamed from: h */
    public static int[] m63008h(int[] iArr, int i, int i2, int i3) {
        if (i + 1 > iArr.length) {
            iArr = Arrays.copyOf(iArr, i + 10);
        }
        System.arraycopy(iArr, i3, iArr, i3 + 1, i - i3);
        iArr[i3] = i2;
        return iArr;
    }

    /* renamed from: i */
    public static boolean m63009i(int i, int i2) {
        return i >= i2 && i < i2 + 10;
    }

    /* renamed from: j */
    public static /* synthetic */ String m63010j(SubPicture[] subPictureArr, DecimalSymbols decimalSymbols, Double d) {
        return m63005e(new DoubleValue(d.doubleValue()), subPictureArr, decimalSymbols);
    }

    /* renamed from: k */
    public static String m63011k(int i) {
        StringBuilder sb = new StringBuilder();
        sb.appendCodePoint(i);
        return sb.toString();
    }

    public static SubPicture makeSubPicture(int[] iArr, DecimalSymbols decimalSymbols) throws XPathException {
        return new SubPicture(iArr, decimalSymbols);
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public Expression fixArguments(Expression... expressionArr) throws XPathException {
        if (!(expressionArr[1] instanceof Literal)) {
            return null;
        }
        if (expressionArr.length != 2 && !(expressionArr[2] instanceof StringLiteral)) {
            return null;
        }
        DecimalFormatManager decimalFormatManager = getRetainedStaticContext().getDecimalFormatManager();
        this.f100230i = ((StringLiteral) expressionArr[1]).stringify();
        if (expressionArr.length == 3 && !Literal.isEmptySequence(expressionArr[2])) {
            try {
                this.f100229h = StructuredQName.fromLexicalQName(((StringLiteral) expressionArr[2]).stringify(), false, true, getRetainedStaticContext());
            } catch (XPathException e) {
                XPathException xPathException = new XPathException("Invalid decimal format name. " + e.getMessage());
                xPathException.setErrorCode("FODF1280");
                throw xPathException;
            }
        }
        StructuredQName structuredQName = this.f100229h;
        if (structuredQName == null) {
            this.f100231j = decimalFormatManager.getDefaultDecimalFormat();
        } else {
            DecimalSymbols namedDecimalFormat = decimalFormatManager.getNamedDecimalFormat(structuredQName);
            this.f100231j = namedDecimalFormat;
            if (namedDecimalFormat == null) {
                throw new XPathException("Decimal format " + this.f100229h.getDisplayName() + " has not been defined", "FODF1280");
            }
        }
        this.f100232k = m63006f(this.f100230i, this.f100231j);
        return null;
    }

    public DecimalSymbols getNamedDecimalFormat(DecimalFormatManager decimalFormatManager, String str) throws XPathException {
        try {
            DecimalSymbols namedDecimalFormat = decimalFormatManager.getNamedDecimalFormat(StructuredQName.fromLexicalQName(str, false, true, getRetainedStaticContext()));
            if (namedDecimalFormat != null) {
                return namedDecimalFormat;
            }
            XPathException xPathException = new XPathException("format-number function: decimal-format '" + str + "' is not defined");
            xPathException.setErrorCode("FODF1280");
            throw xPathException;
        } catch (XPathException e) {
            XPathException xPathException2 = new XPathException("Invalid decimal format name. " + e.getMessage());
            xPathException2.setErrorCode("FODF1280");
            throw xPathException2;
        }
    }

    @Override // net.p110sf.saxon.expr.Callable
    public StringValue call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        DecimalSymbols namedDecimalFormat;
        int length = sequenceArr.length;
        DecimalFormatManager decimalFormatManager = getRetainedStaticContext().getDecimalFormatManager();
        Item item = (AtomicValue) sequenceArr[0].head();
        if (item == null) {
            item = DoubleValue.NaN;
        }
        NumericValue numericValue = (NumericValue) item;
        if (this.f100230i != null) {
            return new StringValue(m63005e(numericValue, this.f100232k, this.f100231j));
        }
        if (length == 2) {
            namedDecimalFormat = decimalFormatManager.getDefaultDecimalFormat();
        } else {
            Item head = sequenceArr[2].head();
            if (head == null) {
                namedDecimalFormat = decimalFormatManager.getDefaultDecimalFormat();
            } else {
                namedDecimalFormat = getNamedDecimalFormat(decimalFormatManager, head.getUnicodeStringValue().toString());
            }
        }
        return new StringValue(m63005e(numericValue, m63006f(sequenceArr[1].head().getUnicodeStringValue().toString(), namedDecimalFormat), namedDecimalFormat));
    }

    @Override // net.p110sf.saxon.functions.StatefulSystemFunction
    public FormatNumber copy() {
        FormatNumber formatNumber = (FormatNumber) SystemFunction.makeFunction(getFunctionName().getLocalPart(), getRetainedStaticContext(), getArity());
        formatNumber.f100229h = this.f100229h;
        formatNumber.f100230i = this.f100230i;
        formatNumber.f100231j = this.f100231j;
        formatNumber.f100232k = this.f100232k;
        return formatNumber;
    }
}
