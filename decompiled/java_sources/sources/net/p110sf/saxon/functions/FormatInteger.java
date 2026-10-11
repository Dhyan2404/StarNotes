package net.p110sf.saxon.functions;

import java.util.ArrayList;
import java.util.function.Function;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.StringLiteral;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.number.Alphanumeric;
import net.p110sf.saxon.expr.number.IrregularGroupFormatter;
import net.p110sf.saxon.expr.number.NumberFormatter;
import net.p110sf.saxon.expr.number.NumericGroupFormatter;
import net.p110sf.saxon.expr.number.RegularGroupFormatter;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.lib.Numberer;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.p111z.IntHashSet;
import net.p110sf.saxon.p111z.IntIterator;
import net.p110sf.saxon.p111z.IntSet;
import net.p110sf.saxon.regex.ARegularExpression;
import net.p110sf.saxon.regex.RegularExpression;
import net.p110sf.saxon.str.UnicodeBuilder;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.IntegerValue;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class FormatInteger extends SystemFunction implements StatefulSystemFunction {

    /* renamed from: i */
    public static final RegularExpression f100224i = ARegularExpression.compile("((\\d+|\\w+)#+.*)|(#+[^\\d]+)", "");

    /* renamed from: j */
    public static final RegularExpression f100225j = ARegularExpression.compile("([co](\\(.*\\))?)?[at]?", "");

    /* renamed from: k */
    public static final RegularExpression f100226k = ARegularExpression.compile("^((\\p{Nd}|#|[^\\p{N}\\p{L}])+?)$", "");
    public static final String preface = "In the picture string for format-integer, ";

    /* renamed from: h */
    public Function<IntegerValue, String> f100227h = null;

    /* renamed from: c */
    public static UnicodeString m62996c(UnicodeString unicodeString, IntSet intSet) {
        UnicodeBuilder unicodeBuilder = new UnicodeBuilder(unicodeString.length32());
        IntIterator codePoints = unicodeString.codePoints();
        while (codePoints.hasNext()) {
            int next = codePoints.next();
            if (NumberFormatter.isLetterOrDigit(next)) {
                unicodeBuilder.append(next);
            }
        }
        return unicodeBuilder.toUnicodeString();
    }

    /* renamed from: e */
    public static /* synthetic */ String m62997e(Numberer numberer, UnicodeString unicodeString, NumericGroupFormatter numericGroupFormatter, String str, String str2, IntegerValue integerValue) {
        try {
            String format = numberer.format(integerValue.abs().longValue(), unicodeString, numericGroupFormatter, str, str2);
            if (integerValue.signum() >= 0) {
                return format;
            }
            return "-" + format;
        } catch (XPathException e) {
            throw new UncheckedXPathException(e);
        }
    }

    /* renamed from: f */
    public static /* synthetic */ String m62998f(Numberer numberer, UnicodeString unicodeString, String str, String str2, IntegerValue integerValue) {
        try {
            String format = numberer.format(integerValue.abs().longValue(), unicodeString, null, str, str2);
            if (integerValue.signum() >= 0) {
                return format;
            }
            return "-" + format;
        } catch (XPathException e) {
            throw new UncheckedXPathException(e);
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:12:0x003c. Please report as an issue. */
    public static NumericGroupFormatter getPicSeparators(UnicodeString unicodeString) throws XPathException {
        int i;
        IntHashSet intHashSet = new IntHashSet(5);
        ArrayList arrayList = new ArrayList();
        if (f100224i.matches(unicodeString)) {
            throw new XPathException("In the picture string for format-integer, the picture is not valid (it uses '#' where disallowed)", "FODF1310");
        }
        long length = unicodeString.length() - 1;
        int i2 = 1;
        boolean z = true;
        int i3 = 0;
        int i4 = -1;
        int i5 = 0;
        int i6 = 0;
        while (length >= 0) {
            int codePointAt = unicodeString.codePointAt(length);
            int type = Character.getType(codePointAt);
            if (type != i2 && type != 2 && type != 4 && type != 5) {
                switch (type) {
                    case 9:
                        if (i4 == -1) {
                            i4 = Alphanumeric.getDigitFamily(codePointAt);
                        } else if (i4 != Alphanumeric.getDigitFamily(codePointAt)) {
                            throw new XPathException("In the picture string for format-integer, the picture mixes digits from different digit families", "FODF1310");
                        }
                        i3++;
                        length--;
                        i2 = 1;
                    default:
                        if (length == unicodeString.length() - 1) {
                            throw new XPathException("In the picture string for format-integer, the picture cannot end with a separator", "FODF1310");
                        }
                        if (codePointAt == 35) {
                            i3++;
                            if (length != 0) {
                                int type2 = Character.getType(unicodeString.codePointAt(length - 1));
                                if (type2 != 1 && type2 != 2 && type2 != 4 && type2 != 5) {
                                    switch (type2) {
                                    }
                                    length--;
                                    i2 = 1;
                                }
                                throw new XPathException("In the picture string for format-integer, the picture cannot contain alphanumeric character(s) before character '#'", "FODF1310");
                            }
                        } else {
                            if (!intHashSet.add(i3)) {
                                throw new XPathException("In the picture string for format-integer, the picture contains consecutive separators", "FODF1310");
                            }
                            arrayList.add(Integer.valueOf(codePointAt));
                            if (intHashSet.size() == 1) {
                                i6 = i3;
                            } else {
                                if (i3 != intHashSet.size() * i6) {
                                    i = 0;
                                    z = false;
                                } else {
                                    i = 0;
                                }
                                if (((Integer) arrayList.get(i)).intValue() != codePointAt) {
                                    z = false;
                                }
                            }
                            if (length == 0) {
                                throw new XPathException("In the picture string for format-integer, the picture cannot begin with a separator", "FODF1310");
                            }
                            i5 = i3;
                        }
                        break;
                    case 10:
                    case 11:
                        length--;
                        i2 = 1;
                }
            }
            length--;
            i2 = 1;
        }
        if (z && intHashSet.size() >= 1 && (unicodeString.length() - i5) - intHashSet.size() > i6) {
            z = false;
        }
        UnicodeString m62996c = m62996c(unicodeString, intHashSet);
        if (intHashSet.isEmpty()) {
            return new RegularGroupFormatter(0, "", m62996c);
        }
        if (!z) {
            return new IrregularGroupFormatter(intHashSet, arrayList, m62996c);
        }
        if (arrayList.isEmpty()) {
            return new RegularGroupFormatter(0, "", m62996c);
        }
        StringBuilder sb = new StringBuilder(4);
        sb.appendCodePoint(((Integer) arrayList.get(0)).intValue());
        return new RegularGroupFormatter(i6, sb.toString(), m62996c);
    }

    @Override // net.p110sf.saxon.functions.StatefulSystemFunction
    public SystemFunction copy() {
        FormatInteger formatInteger = (FormatInteger) SystemFunction.makeFunction(getFunctionName().getLocalPart(), getRetainedStaticContext(), getArity());
        formatInteger.f100227h = this.f100227h;
        return formatInteger;
    }

    /* renamed from: d */
    public final StringValue m62999d(IntegerValue integerValue, StringValue stringValue, StringValue stringValue2, XPathContext xPathContext) throws XPathException {
        Configuration configuration = xPathContext.getConfiguration();
        if (integerValue == null) {
            return StringValue.EMPTY_STRING;
        }
        Function<IntegerValue, String> function = this.f100227h;
        if (function == null) {
            function = m63000g(configuration.makeNumberer(stringValue2 != null ? stringValue2.getStringValue() : configuration.getDefaultLanguage(), null), stringValue.getStringValue());
        }
        try {
            return new StringValue(function.apply(integerValue));
        } catch (UncheckedXPathException e) {
            throw e.getXPathException();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00a1 A[EDGE_INSN: B:42:0x00a1->B:31:0x00a1 BREAK  A[LOOP:0: B:25:0x0090->B:41:?], SYNTHETIC] */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.function.Function<net.p110sf.saxon.value.IntegerValue, java.lang.String> m63000g(final net.p110sf.saxon.lib.Numberer r13, java.lang.String r14) throws net.p110sf.saxon.trans.XPathException {
        /*
            r12 = this;
            boolean r12 = r14.isEmpty()
            java.lang.String r0 = "FODF1310"
            if (r12 != 0) goto Lcd
            r12 = 59
            int r12 = r14.lastIndexOf(r12)
            r1 = 0
            r2 = 1
            java.lang.String r3 = ""
            if (r12 < 0) goto L4a
            java.lang.String r4 = r14.substring(r1, r12)
            boolean r5 = r4.isEmpty()
            if (r5 != 0) goto L42
            int r5 = r14.length()
            int r5 = r5 - r2
            if (r12 >= r5) goto L2b
            int r12 = r12 + r2
            java.lang.String r12 = r14.substring(r12)
            goto L2c
        L2b:
            r12 = r3
        L2c:
            net.sf.saxon.regex.RegularExpression r14 = net.p110sf.saxon.functions.FormatInteger.f100225j
            net.sf.saxon.str.UnicodeString r5 = net.p110sf.saxon.str.StringView.tidy(r12)
            boolean r14 = r14.matches(r5)
            if (r14 == 0) goto L3a
            r14 = r4
            goto L4b
        L3a:
            net.sf.saxon.trans.XPathException r12 = new net.sf.saxon.trans.XPathException
            java.lang.String r13 = "In the picture string for format-integer, the modifier is invalid"
            r12.<init>(r13, r0)
            throw r12
        L42:
            net.sf.saxon.trans.XPathException r12 = new net.sf.saxon.trans.XPathException
            java.lang.String r13 = "In the picture string for format-integer, the primary format token cannot be empty"
            r12.<init>(r13, r0)
            throw r12
        L4a:
            r12 = r3
        L4b:
            java.lang.String r4 = "o"
            boolean r4 = r12.startsWith(r4)
            java.lang.String r5 = "a"
            boolean r5 = r12.endsWith(r5)
            r6 = 40
            int r6 = r12.indexOf(r6)
            r7 = 41
            int r7 = r12.lastIndexOf(r7)
            if (r6 >= 0) goto L67
            r12 = r3
            goto L6c
        L67:
            int r6 = r6 + r2
            java.lang.String r12 = r12.substring(r6, r7)
        L6c:
            if (r5 == 0) goto L71
            java.lang.String r5 = "alphabetic"
            goto L73
        L71:
            java.lang.String r5 = "traditional"
        L73:
            r10 = r5
            if (r4 == 0) goto L81
            boolean r3 = r3.equals(r12)
            if (r3 == 0) goto L7f
            java.lang.String r3 = "yes"
            goto L81
        L7f:
            r11 = r12
            goto L82
        L81:
            r11 = r3
        L82:
            net.sf.saxon.str.UnicodeString r12 = net.p110sf.saxon.str.StringView.tidy(r14)
            java.lang.String r3 = "Nd"
            net.sf.saxon.regex.charclass.Categories$Category r3 = net.p110sf.saxon.regex.charclass.Categories.getCategory(r3)
            net.sf.saxon.z.IntIterator r4 = r12.codePoints()
        L90:
            boolean r5 = r4.hasNext()
            if (r5 == 0) goto La1
            int r5 = r4.next()
            boolean r5 = r3.test(r5)
            if (r5 == 0) goto L90
            r1 = r2
        La1:
            if (r1 == 0) goto Lc3
            net.sf.saxon.regex.RegularExpression r14 = net.p110sf.saxon.functions.FormatInteger.f100226k
            boolean r14 = r14.matches(r12)
            if (r14 == 0) goto Lbb
            net.sf.saxon.expr.number.NumericGroupFormatter r9 = getPicSeparators(r12)
            net.sf.saxon.str.UnicodeString r8 = r9.getAdjustedPicture()
            com.sunia.HTREnginev2.etg r12 = new com.sunia.HTREnginev2.etg
            r6 = r12
            r7 = r13
            r6.<init>()
            return r12
        Lbb:
            net.sf.saxon.trans.XPathException r12 = new net.sf.saxon.trans.XPathException
            java.lang.String r13 = "In the picture string for format-integer, the primary format token contains a decimal digit but does not meet the rules for a decimal digit pattern"
            r12.<init>(r13, r0)
            throw r12
        Lc3:
            net.sf.saxon.str.UnicodeString r12 = net.p110sf.saxon.str.StringView.tidy(r14)
            com.sunia.HTREnginev2.ftg r14 = new com.sunia.HTREnginev2.ftg
            r14.<init>()
            return r14
        Lcd:
            net.sf.saxon.trans.XPathException r12 = new net.sf.saxon.trans.XPathException
            java.lang.String r13 = "In the picture string for format-integer, the picture cannot be empty"
            r12.<init>(r13, r0)
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.functions.FormatInteger.m63000g(net.sf.saxon.lib.Numberer, java.lang.String):java.util.function.Function");
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public Expression makeOptimizedFunctionCall(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo, Expression... expressionArr) throws XPathException {
        boolean z = expressionArr[1] instanceof Literal;
        if (expressionArr.length == 3 && !(expressionArr[2] instanceof Literal)) {
            z = false;
        }
        if (!z) {
            return super.makeOptimizedFunctionCall(expressionVisitor, contextItemStaticInfo, expressionArr);
        }
        Configuration configuration = expressionVisitor.getConfiguration();
        this.f100227h = m63000g(configuration.makeNumberer(expressionArr.length == 3 ? ((StringLiteral) expressionArr[2]).getGroundedValue().getStringValue() : configuration.getDefaultLanguage(), null), ((StringLiteral) expressionArr[1]).getGroundedValue().getStringValue());
        return super.makeOptimizedFunctionCall(expressionVisitor, contextItemStaticInfo, expressionArr);
    }

    @Override // net.p110sf.saxon.expr.Callable
    public StringValue call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        return m62999d((IntegerValue) sequenceArr[0].head(), (StringValue) sequenceArr[1].head(), sequenceArr.length == 2 ? null : (StringValue) sequenceArr[2].head(), xPathContext);
    }
}
