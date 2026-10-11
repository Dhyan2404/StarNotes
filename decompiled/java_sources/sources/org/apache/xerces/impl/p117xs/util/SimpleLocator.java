package org.apache.xerces.impl.p117xs.util;

import org.apache.xerces.xni.XMLLocator;

/* loaded from: classes13.dex */
public final class SimpleLocator implements XMLLocator {

    /* renamed from: a */
    public String f113236a;

    /* renamed from: b */
    public String f113237b;

    /* renamed from: c */
    public int f113238c;

    /* renamed from: d */
    public int f113239d;

    /* renamed from: e */
    public int f113240e;

    public SimpleLocator() {
    }

    @Override // org.apache.xerces.xni.XMLLocator
    public String getBaseSystemId() {
        return null;
    }

    @Override // org.apache.xerces.xni.XMLLocator
    public int getCharacterOffset() {
        return this.f113240e;
    }

    @Override // org.apache.xerces.xni.XMLLocator
    public int getColumnNumber() {
        return this.f113239d;
    }

    @Override // org.apache.xerces.xni.XMLLocator
    public String getEncoding() {
        return null;
    }

    @Override // org.apache.xerces.xni.XMLLocator
    public String getExpandedSystemId() {
        return this.f113237b;
    }

    @Override // org.apache.xerces.xni.XMLLocator
    public int getLineNumber() {
        return this.f113238c;
    }

    @Override // org.apache.xerces.xni.XMLLocator
    public String getLiteralSystemId() {
        return this.f113236a;
    }

    @Override // org.apache.xerces.xni.XMLLocator
    public String getPublicId() {
        return null;
    }

    @Override // org.apache.xerces.xni.XMLLocator
    public String getXMLVersion() {
        return null;
    }

    public void setBaseSystemId(String str) {
    }

    public void setCharacterOffset(int i) {
        this.f113240e = i;
    }

    public void setColumnNumber(int i) {
        this.f113239d = i;
    }

    public void setExpandedSystemId(String str) {
        this.f113237b = str;
    }

    public void setLineNumber(int i) {
        this.f113238c = i;
    }

    public void setLiteralSystemId(String str) {
        this.f113236a = str;
    }

    public void setPublicId(String str) {
    }

    public void setValues(String str, String str2, int i, int i2) {
        setValues(str, str2, i, i2, -1);
    }

    public SimpleLocator(String str, String str2, int i, int i2) {
        this(str, str2, i, i2, -1);
    }

    public void setValues(String str, String str2, int i, int i2, int i3) {
        this.f113238c = i;
        this.f113239d = i2;
        this.f113236a = str;
        this.f113237b = str2;
        this.f113240e = i3;
    }

    public SimpleLocator(String str, String str2, int i, int i2, int i3) {
        this.f113238c = i;
        this.f113239d = i2;
        this.f113236a = str;
        this.f113237b = str2;
        this.f113240e = i3;
    }
}
