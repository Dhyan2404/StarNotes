package org.apache.xerces.util;

import org.apache.xerces.xni.XMLLocator;
import org.xml.sax.Locator;
import org.xml.sax.ext.Locator2;

/* loaded from: classes13.dex */
public final class SAXLocatorWrapper implements XMLLocator {

    /* renamed from: a */
    public Locator f113507a = null;

    /* renamed from: b */
    public Locator2 f113508b = null;

    @Override // org.apache.xerces.xni.XMLLocator
    public String getBaseSystemId() {
        return null;
    }

    @Override // org.apache.xerces.xni.XMLLocator
    public int getCharacterOffset() {
        return -1;
    }

    @Override // org.apache.xerces.xni.XMLLocator
    public int getColumnNumber() {
        Locator locator = this.f113507a;
        if (locator != null) {
            return locator.getColumnNumber();
        }
        return -1;
    }

    @Override // org.apache.xerces.xni.XMLLocator
    public String getEncoding() {
        Locator2 locator2 = this.f113508b;
        if (locator2 != null) {
            return locator2.getEncoding();
        }
        return null;
    }

    @Override // org.apache.xerces.xni.XMLLocator
    public String getExpandedSystemId() {
        return getLiteralSystemId();
    }

    @Override // org.apache.xerces.xni.XMLLocator
    public int getLineNumber() {
        Locator locator = this.f113507a;
        if (locator != null) {
            return locator.getLineNumber();
        }
        return -1;
    }

    @Override // org.apache.xerces.xni.XMLLocator
    public String getLiteralSystemId() {
        Locator locator = this.f113507a;
        if (locator != null) {
            return locator.getSystemId();
        }
        return null;
    }

    public Locator getLocator() {
        return this.f113507a;
    }

    @Override // org.apache.xerces.xni.XMLLocator
    public String getPublicId() {
        Locator locator = this.f113507a;
        if (locator != null) {
            return locator.getPublicId();
        }
        return null;
    }

    @Override // org.apache.xerces.xni.XMLLocator
    public String getXMLVersion() {
        Locator2 locator2 = this.f113508b;
        if (locator2 != null) {
            return locator2.getXMLVersion();
        }
        return null;
    }

    public void setLocator(Locator locator) {
        this.f113507a = locator;
        if ((locator instanceof Locator2) || locator == null) {
            this.f113508b = (Locator2) locator;
        }
    }
}
