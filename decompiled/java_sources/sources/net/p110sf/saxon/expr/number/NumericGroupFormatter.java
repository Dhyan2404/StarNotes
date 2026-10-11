package net.p110sf.saxon.expr.number;

import net.p110sf.saxon.str.UnicodeString;

/* loaded from: classes11.dex */
public abstract class NumericGroupFormatter {
    protected UnicodeString adjustedPicture;

    public abstract String format(String str);

    public UnicodeString getAdjustedPicture() {
        return this.adjustedPicture;
    }

    public abstract String getSeparator();
}
