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

/* loaded from: classes11.dex */
public class GDayValue extends GDateValue {

    /* renamed from: f */
    public static final Pattern f102885f = Pattern.compile("---([0-9][0-9])(Z|[+-][0-9][0-9]:[0-9][0-9])?");

    public GDayValue() {
    }

    public static ConversionResult makeGDayValue(UnicodeString unicodeString) {
        Matcher matcher = f102885f.matcher(Whitespace.trim(unicodeString).toString());
        if (!matcher.matches()) {
            return new ValidationFailure("Cannot convert '" + unicodeString + "' to a gDay");
        }
        GDayValue gDayValue = new GDayValue();
        String group = matcher.group(1);
        String group2 = matcher.group(2);
        StringBuilder sb = new StringBuilder();
        sb.append("2000-01-");
        sb.append(group);
        if (group2 == null) {
            group2 = "";
        }
        sb.append(group2);
        String sb2 = sb.toString();
        gDayValue.typeLabel = BuiltInAtomicType.G_DAY;
        return GDateValue.setLexicalValue(gDayValue, BMPString.m63877of(sb2), true);
    }

    @Override // net.p110sf.saxon.value.CalendarValue
    public CalendarValue add(DurationValue durationValue) throws XPathException {
        XPathException xPathException = new XPathException("Cannot add a duration to an xs:gDay");
        xPathException.setErrorCode("XPTY0004");
        throw xPathException;
    }

    @Override // net.p110sf.saxon.value.CalendarValue
    public CalendarValue adjustTimezone(int i) {
        DateTimeValue adjustTimezone = toDateTime().adjustTimezone(i);
        return new GDayValue(adjustTimezone.getDay(), adjustTimezone.getTimezoneInMinutes());
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public AtomicValue copyAsSubType(AtomicType atomicType) {
        GDayValue gDayValue = new GDayValue(this.day, getTimezoneInMinutes());
        gDayValue.typeLabel = atomicType;
        return gDayValue;
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public UnicodeString getPrimitiveStringValue() {
        UnicodeBuilder unicodeBuilder = new UnicodeBuilder(16);
        unicodeBuilder.appendLatin("---");
        CalendarValue.appendTwoDigits(unicodeBuilder, this.day);
        if (hasTimezone()) {
            appendTimezone(unicodeBuilder);
        }
        return unicodeBuilder.toUnicodeString();
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public BuiltInAtomicType getPrimitiveType() {
        return BuiltInAtomicType.G_DAY;
    }

    public GDayValue(byte b, int i) {
        this(b, i, BuiltInAtomicType.G_DAY);
    }

    public GDayValue(byte b, int i, AtomicType atomicType) {
        this.year = 2000;
        this.month = (byte) 1;
        this.day = b;
        setTimezoneInMinutes(i);
        this.typeLabel = atomicType;
    }
}
