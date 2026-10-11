package net.p110sf.saxon.value;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import net.p110sf.saxon.str.BMPString;
import net.p110sf.saxon.str.UnicodeBuilder;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.AtomicType;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ConversionResult;
import net.p110sf.saxon.type.ValidationFailure;
import org.mortbay.util.MultiPartWriter;

/* loaded from: classes11.dex */
public class GMonthDayValue extends GDateValue {

    /* renamed from: f */
    public static final Pattern f102886f = Pattern.compile("--([0-9][0-9]-[0-9][0-9])(Z|[+-][0-9][0-9]:[0-9][0-9])?");

    public GMonthDayValue() {
    }

    public static ConversionResult makeGMonthDayValue(UnicodeString unicodeString) {
        Matcher matcher = f102886f.matcher(Whitespace.trim(unicodeString).toString());
        if (!matcher.matches()) {
            return new ValidationFailure("Cannot convert '" + unicodeString + "' to a gMonthDay");
        }
        GMonthDayValue gMonthDayValue = new GMonthDayValue();
        String group = matcher.group(1);
        String group2 = matcher.group(2);
        StringBuilder sb = new StringBuilder();
        sb.append("2000-");
        sb.append(group);
        if (group2 == null) {
            group2 = "";
        }
        sb.append(group2);
        String sb2 = sb.toString();
        gMonthDayValue.typeLabel = BuiltInAtomicType.G_MONTH_DAY;
        return GDateValue.setLexicalValue(gMonthDayValue, BMPString.m63877of(sb2), true);
    }

    @Override // net.p110sf.saxon.value.CalendarValue
    public CalendarValue add(DurationValue durationValue) throws XPathException {
        XPathException xPathException = new XPathException("Cannot add a duration to an xs:gMonthDay");
        xPathException.setErrorCode("XPTY0004");
        throw xPathException;
    }

    @Override // net.p110sf.saxon.value.CalendarValue
    public CalendarValue adjustTimezone(int i) {
        DateTimeValue adjustTimezone = toDateTime().adjustTimezone(i);
        return new GMonthDayValue(adjustTimezone.getMonth(), adjustTimezone.getDay(), adjustTimezone.getTimezoneInMinutes());
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public AtomicValue copyAsSubType(AtomicType atomicType) {
        GMonthDayValue gMonthDayValue = new GMonthDayValue(this.month, this.day, getTimezoneInMinutes());
        gMonthDayValue.typeLabel = atomicType;
        return gMonthDayValue;
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public UnicodeString getPrimitiveStringValue() {
        UnicodeBuilder unicodeBuilder = new UnicodeBuilder(16);
        unicodeBuilder.appendLatin(MultiPartWriter.f115320h);
        CalendarValue.appendTwoDigits(unicodeBuilder, this.month);
        unicodeBuilder.append('-');
        CalendarValue.appendTwoDigits(unicodeBuilder, this.day);
        if (hasTimezone()) {
            appendTimezone(unicodeBuilder);
        }
        return unicodeBuilder.toUnicodeString();
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public BuiltInAtomicType getPrimitiveType() {
        return BuiltInAtomicType.G_MONTH_DAY;
    }

    public GMonthDayValue(byte b, byte b2, int i) {
        this(b, b2, i, BuiltInAtomicType.G_MONTH_DAY);
    }

    public GMonthDayValue(byte b, byte b2, int i, AtomicType atomicType) {
        this.year = 2000;
        this.month = b;
        this.day = b2;
        setTimezoneInMinutes(i);
        this.typeLabel = atomicType;
    }
}
