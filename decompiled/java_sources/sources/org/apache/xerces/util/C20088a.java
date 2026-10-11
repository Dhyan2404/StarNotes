package org.apache.xerces.util;

import org.apache.xerces.xni.XMLLocator;

/* renamed from: org.apache.xerces.util.a */
/* loaded from: classes13.dex */
public class C20088a implements XMLLocator {

    /* renamed from: a */
    public final /* synthetic */ String f113535a;

    /* renamed from: b */
    public final /* synthetic */ String f113536b;

    /* renamed from: c */
    public final /* synthetic */ int f113537c;

    /* renamed from: d */
    public final /* synthetic */ int f113538d;

    public C20088a(String str, String str2, int i, int i2) {
        this.f113535a = str;
        this.f113536b = str2;
        this.f113537c = i;
        this.f113538d = i2;
    }

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
        return this.f113537c;
    }

    @Override // org.apache.xerces.xni.XMLLocator
    public String getEncoding() {
        return null;
    }

    @Override // org.apache.xerces.xni.XMLLocator
    public String getExpandedSystemId() {
        return this.f113536b;
    }

    @Override // org.apache.xerces.xni.XMLLocator
    public int getLineNumber() {
        return this.f113538d;
    }

    @Override // org.apache.xerces.xni.XMLLocator
    public String getLiteralSystemId() {
        return null;
    }

    @Override // org.apache.xerces.xni.XMLLocator
    public String getPublicId() {
        return this.f113535a;
    }

    @Override // org.apache.xerces.xni.XMLLocator
    public String getXMLVersion() {
        return null;
    }
}
