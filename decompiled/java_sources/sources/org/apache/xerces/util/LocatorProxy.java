package org.apache.xerces.util;

import org.apache.xerces.xni.XMLLocator;
import org.xml.sax.ext.Locator2;

/* loaded from: classes13.dex */
public class LocatorProxy implements Locator2 {

    /* renamed from: e */
    public final XMLLocator f113500e;

    public LocatorProxy(XMLLocator xMLLocator) {
        this.f113500e = xMLLocator;
    }

    @Override // org.xml.sax.Locator
    public int getColumnNumber() {
        return this.f113500e.getColumnNumber();
    }

    @Override // org.xml.sax.ext.Locator2
    public String getEncoding() {
        return this.f113500e.getEncoding();
    }

    @Override // org.xml.sax.Locator
    public int getLineNumber() {
        return this.f113500e.getLineNumber();
    }

    @Override // org.xml.sax.Locator
    public String getPublicId() {
        return this.f113500e.getPublicId();
    }

    @Override // org.xml.sax.Locator
    public String getSystemId() {
        return this.f113500e.getExpandedSystemId();
    }

    @Override // org.xml.sax.ext.Locator2
    public String getXMLVersion() {
        return this.f113500e.getXMLVersion();
    }
}
