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
public class GYearValue extends GDateValue {

    /* renamed from: f */
    public static final Pattern f102889f = Pattern.compile("(-?[0-9]+)(Z|[+-][0-9][0-9]:[0-9][0-9])?");

    public GYearValue() {
    }

    public static ConversionResult makeGYearValue(UnicodeString unicodeString, ConversionRules conversionRules) {
        GYearValue gYearValue = new GYearValue();
        Matcher matcher = f102889f.matcher(Whitespace.trim(unicodeString).toString());
        if (!matcher.matches()) {
            return new ValidationFailure("Cannot convert '" + unicodeString + "' to a gYear");
        }
        String group = matcher.group(1);
        String group2 = matcher.group(2);
        StringBuilder sb = new StringBuilder();
        sb.append(group);
        sb.append("-01-01");
        if (group2 == null) {
            group2 = "";
        }
        sb.append(group2);
        String sb2 = sb.toString();
        gYearValue.typeLabel = BuiltInAtomicType.G_YEAR;
        return GDateValue.setLexicalValue(gYearValue, BMPString.m63877of(sb2), conversionRules.isAllowYearZero());
    }

    @Override // net.p110sf.saxon.value.CalendarValue
    public CalendarValue add(DurationValue durationValue) throws XPathException {
        XPathException xPathException = new XPathException("Cannot add a duration to an xs:gYear");
        xPathException.setErrorCode("XPTY0004");
        throw xPathException;
    }

    @Override // net.p110sf.saxon.value.CalendarValue
    public CalendarValue adjustTimezone(int i) {
        DateTimeValue adjustTimezone = toDateTime().adjustTimezone(i);
        return new GYearValue(adjustTimezone.getYear(), adjustTimezone.getTimezoneInMinutes(), this.hasNoYearZero);
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public AtomicValue copyAsSubType(AtomicType atomicType) {
        GYearValue gYearValue = new GYearValue(this.year, getTimezoneInMinutes(), true);
        gYearValue.typeLabel = atomicType;
        return gYearValue;
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
        if (hasTimezone()) {
            appendTimezone(unicodeBuilder);
        }
        return unicodeBuilder.toUnicodeString();
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public BuiltInAtomicType getPrimitiveType() {
        return BuiltInAtomicType.G_YEAR;
    }

    public GYearValue(int i, int i2, boolean z) {
        this(i, i2, BuiltInAtomicType.G_YEAR);
        this.hasNoYearZero = z;
    }

    public GYearValue(int i, int i2, AtomicType atomicType) {
        this.year = i;
        this.month = (byte) 1;
        this.day = (byte) 1;
        setTimezoneInMinutes(i2);
        this.typeLabel = atomicType;
    }
}
