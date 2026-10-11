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
public class GMonthValue extends GDateValue {

    /* renamed from: f */
    public static final Pattern f102887f = Pattern.compile("--([0-9][0-9])(Z|[+-][0-9][0-9]:[0-9][0-9])?");

    public GMonthValue() {
    }

    public static ConversionResult makeGMonthValue(UnicodeString unicodeString) {
        GMonthValue gMonthValue = new GMonthValue();
        Matcher matcher = f102887f.matcher(Whitespace.trim(unicodeString).toString());
        if (!matcher.matches()) {
            return new ValidationFailure("Cannot convert '" + unicodeString + "' to a gMonth");
        }
        String group = matcher.group(1);
        String group2 = matcher.group(2);
        StringBuilder sb = new StringBuilder();
        sb.append("2000-");
        sb.append(group);
        sb.append("-01");
        if (group2 == null) {
            group2 = "";
        }
        sb.append(group2);
        String sb2 = sb.toString();
        gMonthValue.typeLabel = BuiltInAtomicType.G_MONTH;
        return GDateValue.setLexicalValue(gMonthValue, BMPString.m63877of(sb2), true);
    }

    @Override // net.p110sf.saxon.value.CalendarValue
    public CalendarValue add(DurationValue durationValue) throws XPathException {
        XPathException xPathException = new XPathException("Cannot add a duration to an xs:gMonth");
        xPathException.setErrorCode("XPTY0004");
        throw xPathException;
    }

    @Override // net.p110sf.saxon.value.CalendarValue
    public CalendarValue adjustTimezone(int i) {
        DateTimeValue adjustTimezone = toDateTime().adjustTimezone(i);
        return new GMonthValue(adjustTimezone.getMonth(), adjustTimezone.getTimezoneInMinutes());
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public AtomicValue copyAsSubType(AtomicType atomicType) {
        GMonthValue gMonthValue = new GMonthValue(this.month, getTimezoneInMinutes());
        gMonthValue.typeLabel = atomicType;
        return gMonthValue;
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public UnicodeString getPrimitiveStringValue() {
        UnicodeBuilder unicodeBuilder = new UnicodeBuilder(16);
        unicodeBuilder.appendLatin(MultiPartWriter.f115320h);
        CalendarValue.appendTwoDigits(unicodeBuilder, this.month);
        if (hasTimezone()) {
            appendTimezone(unicodeBuilder);
        }
        return unicodeBuilder.toUnicodeString();
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public BuiltInAtomicType getPrimitiveType() {
        return BuiltInAtomicType.G_MONTH;
    }

    public GMonthValue(byte b, int i) {
        this(b, i, BuiltInAtomicType.G_MONTH);
    }

    public GMonthValue(byte b, int i, AtomicType atomicType) {
        this.year = 2000;
        this.month = b;
        this.day = (byte) 1;
        setTimezoneInMinutes(i);
        this.typeLabel = atomicType;
    }
}
