package net.p110sf.saxon.regex;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;

/* loaded from: classes11.dex */
public class REFlags {

    /* renamed from: a */
    public boolean f101233a;

    /* renamed from: b */
    public boolean f101234b;

    /* renamed from: c */
    public boolean f101235c;

    /* renamed from: d */
    public boolean f101236d;

    /* renamed from: e */
    public boolean f101237e;

    /* renamed from: f */
    public boolean f101238f;

    /* renamed from: g */
    public boolean f101239g;

    /* renamed from: h */
    public boolean f101240h;

    /* renamed from: i */
    public boolean f101241i;

    /* renamed from: j */
    public boolean f101242j;

    public REFlags(String str, String str2) {
        this.f101242j = false;
        if (!str2.equals("XSD10") && str2.contains("XSD11")) {
            this.f101242j = !str2.contains("XP");
            this.f101240h = true;
        }
        if (str2.contains("XP20")) {
            this.f101238f = true;
        } else if (str2.contains("XP30") || str2.contains("XP31")) {
            this.f101238f = true;
            this.f101239g = true;
        }
        int indexOf = str.indexOf(59);
        int length = indexOf >= 0 ? indexOf : str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (charAt == 'i') {
                this.f101233a = true;
            } else if (charAt == 'm') {
                this.f101234b = true;
            } else if (charAt == 'q') {
                this.f101237e = true;
                if (!this.f101239g) {
                    throw new RESyntaxException("'q' flag requires XPath 3.0 to be enabled");
                }
            } else if (charAt == 's') {
                this.f101235c = true;
            } else {
                if (charAt != 'x') {
                    throw new RESyntaxException("Unrecognized flag '" + charAt + CloudStorageConstants.SINGLE_QUOTES);
                }
                this.f101236d = true;
            }
        }
        for (int i2 = indexOf + 1; i2 < str.length(); i2++) {
            char charAt2 = str.charAt(i2);
            if (charAt2 == 'K') {
                this.f101242j = false;
            } else if (charAt2 == 'g') {
                this.f101241i = true;
            } else if (charAt2 == 'k') {
                this.f101242j = true;
            }
        }
    }

    public boolean isAllowUnknownBlockNames() {
        return this.f101242j;
    }

    public boolean isAllowWhitespace() {
        return this.f101236d;
    }

    public boolean isAllowsXPath20Extensions() {
        return this.f101238f;
    }

    public boolean isAllowsXPath30Extensions() {
        return this.f101239g;
    }

    public boolean isAllowsXSD11Syntax() {
        return this.f101240h;
    }

    public boolean isCaseIndependent() {
        return this.f101233a;
    }

    public boolean isDebug() {
        return this.f101241i;
    }

    public boolean isLiteral() {
        return this.f101237e;
    }

    public boolean isMultiLine() {
        return this.f101234b;
    }

    public boolean isSingleLine() {
        return this.f101235c;
    }

    public void setAllowUnknownBlockNames(boolean z) {
        this.f101242j = z;
    }

    public void setDebug(boolean z) {
        this.f101241i = z;
    }
}
