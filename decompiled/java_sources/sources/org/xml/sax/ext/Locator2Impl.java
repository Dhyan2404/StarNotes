package org.xml.sax.ext;

import org.xml.sax.Locator;
import org.xml.sax.helpers.LocatorImpl;

/* loaded from: classes16.dex */
public class Locator2Impl extends LocatorImpl implements Locator2 {
    private String encoding;
    private String version;

    public Locator2Impl() {
    }

    @Override // org.xml.sax.ext.Locator2
    public String getEncoding() {
        return this.encoding;
    }

    @Override // org.xml.sax.ext.Locator2
    public String getXMLVersion() {
        return this.version;
    }

    public void setEncoding(String str) {
        this.encoding = str;
    }

    public void setXMLVersion(String str) {
        this.version = str;
    }

    public Locator2Impl(Locator locator) {
        super(locator);
        if (locator instanceof Locator2) {
            Locator2 locator2 = (Locator2) locator;
            this.version = locator2.getXMLVersion();
            this.encoding = locator2.getEncoding();
        }
    }
}
