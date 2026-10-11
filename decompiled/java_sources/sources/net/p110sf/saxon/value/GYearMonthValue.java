package net.p110sf.saxon.value;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import net.p110sf.saxon.lib.ConversionRules;
import net.p110sf.saxon.str.BMPString;
import net.p110sf.saxon.str.UnicodeBuilder;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.AtomicType;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ConversionResult;
import net.p110sf.saxon.type.ValidationFailure;

/* loaded from: classes11.dex */
public class GYearMonthValue extends GDateValue {

    /* renamed from: f */
    public static final Pattern f102888f = Pattern.compile("(-?[0-9]+-[0-9][0-9])(Z|[+-][0-9][0-9]:[0-9][0-9])?");

    public GYearMonthValue() {
    }

    public static ConversionResult makeGYearMonthValue(UnicodeString unicodeString, ConversionRules conversionRules) {
        Matcher matcher = f102888f.matcher(Whitespace.trim(unicodeString).toString());
        if (!matcher.matches()) {
            return new ValidationFailure("Cannot convert '" + unicodeString + "' to a gYearMonth");
        }
        GYearMonthValue gYearMonthValue = new GYearMonthValue();
        String group = matcher.group(1);
        String group2 = matcher.group(2);
        StringBuilder sb = new StringBuilder();
        sb.append(group);
        sb.append("-01");
        if (group2 == null) {
            group2 = "";
        }
        sb.append(group2);
        String sb2 = sb.toString();
        gYearMonthValue.typeLabel = BuiltInAtomicType.G_YEAR_MONTH;
        return GDateValue.setLexicalValue(gYearMonthValue, BMPString.m63877of(sb2), conversionRules.isAllowYearZero());
    }

    @Override // net.p110sf.saxon.value.CalendarValue
    public CalendarValue add(DurationValue durationValue) throws XPathException {
        XPathException xPathException = new XPathException("Cannot add a duration to an xs:gYearMonth");
        xPathException.setErrorCode("XPTY0004");
        throw xPathException;
    }

    @Override // net.p110sf.saxon.value.CalendarValue
    public CalendarValue adjustTimezone(int i) {
        DateTimeValue adjustTimezone = toDateTime().adjustTimezone(i);
        return new GYearMonthValue(adjustTimezone.getYear(), adjustTimezone.getMonth(), adjustTimezone.getTimezoneInMinutes(), this.hasNoYearZero);
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public AtomicValue copyAsSubType(AtomicType atomicType) {
        GYearMonthValue gYearMonthValue = new GYearMonthValue(this.year, this.month, getTimezoneInMinutes(), this.hasNoYearZero);
        gYearMonthValue.typeLabel = atomicType;
        return gYearMonthValue;
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public UnicodeString getPrimitiveStringValue() {
        int i;
        UnicodeBuilder unicodeBuilder = new UnicodeBuilder(16);
        int i2 = this.year;
        if (i2 <= 0 && (i2 = (-i2) + (this.hasNoYearZero ? 1 : 0)) != 0) {
            unicodeBuilder.append('-');
        }
        if (i2 > 9999) {
            i = (i2 + "").length();
        } else {
            i = 4;
        }
        CalendarValue.appendString(unicodeBuilder, i2, i);
        unicodeBuilder.append('-');
        CalendarValue.appendTwoDigits(unicodeBuilder, this.month);
        if (hasTimezone()) {
            appendTimezone(unicodeBuilder);
        }
        return unicodeBuilder.toUnicodeString();
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public BuiltInAtomicType getPrimitiveType() {
        return BuiltInAtomicType.G_YEAR_MONTH;
    }

    public GYearMonthValue(int i, byte b, int i2, boolean z) {
        this(i, b, i2, BuiltInAtomicType.G_YEAR_MONTH);
        this.hasNoYearZero = z;
    }

    public GYearMonthValue(int i, byte b, int i2, AtomicType atomicType) {
        this.year = i;
        this.month = b;
        this.day = (byte) 1;
        setTimezoneInMinutes(i2);
        this.typeLabel = atomicType;
    }
}
