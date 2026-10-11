package org.apache.xerces.util;

import org.apache.xerces.xni.XMLLocator;

/* loaded from: classes13.dex */
public final class XMLLocatorWrapper implements XMLLocator {

    /* renamed from: a */
    public XMLLocator f113534a = null;

    @Override // org.apache.xerces.xni.XMLLocator
    public String getBaseSystemId() {
        XMLLocator xMLLocator = this.f113534a;
        if (xMLLocator != null) {
            return xMLLocator.getBaseSystemId();
        }
        return null;
    }

    @Override // org.apache.xerces.xni.XMLLocator
    public int getCharacterOffset() {
        XMLLocator xMLLocator = this.f113534a;
        if (xMLLocator != null) {
            return xMLLocator.getCharacterOffset();
        }
        return -1;
    }

    @Override // org.apache.xerces.xni.XMLLocator
    public int getColumnNumber() {
        XMLLocator xMLLocator = this.f113534a;
        if (xMLLocator != null) {
            return xMLLocator.getColumnNumber();
        }
        return -1;
    }

    @Override // org.apache.xerces.xni.XMLLocator
    public String getEncoding() {
        XMLLocator xMLLocator = this.f113534a;
        if (xMLLocator != null) {
            return xMLLocator.getEncoding();
        }
        return null;
    }

    @Override // org.apache.xerces.xni.XMLLocator
    public String getExpandedSystemId() {
        XMLLocator xMLLocator = this.f113534a;
        if (xMLLocator != null) {
            return xMLLocator.getExpandedSystemId();
        }
        return null;
    }

    @Override // org.apache.xerces.xni.XMLLocator
    public int getLineNumber() {
        XMLLocator xMLLocator = this.f113534a;
        if (xMLLocator != null) {
            return xMLLocator.getLineNumber();
        }
        return -1;
    }

    @Override // org.apache.xerces.xni.XMLLocator
    public String getLiteralSystemId() {
        XMLLocator xMLLocator = this.f113534a;
        if (xMLLocator != null) {
            return xMLLocator.getLiteralSystemId();
        }
        return null;
    }

    public XMLLocator getLocator() {
        return this.f113534a;
    }

    @Override // org.apache.xerces.xni.XMLLocator
    public String getPublicId() {
        XMLLocator xMLLocator = this.f113534a;
        if (xMLLocator != null) {
            return xMLLocator.getPublicId();
        }
        return null;
    }

    @Override // org.apache.xerces.xni.XMLLocator
    public String getXMLVersion() {
        XMLLocator xMLLocator = this.f113534a;
        if (xMLLocator != null) {
            return xMLLocator.getXMLVersion();
        }
        return null;
    }

    public void setLocator(XMLLocator xMLLocator) {
        this.f113534a = xMLLocator;
    }
}
