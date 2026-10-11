package org.apache.xerces.stax;

import javax.xml.stream.Location;

/* loaded from: classes13.dex */
public final class EmptyLocation implements Location {

    /* renamed from: e */
    public static final EmptyLocation f113435e = new EmptyLocation();

    public static EmptyLocation getInstance() {
        return f113435e;
    }

    @Override // javax.xml.stream.Location
    public int getCharacterOffset() {
        return -1;
    }

    @Override // javax.xml.stream.Location
    public int getColumnNumber() {
        return -1;
    }

    @Override // javax.xml.stream.Location
    public int getLineNumber() {
        return -1;
    }

    @Override // javax.xml.stream.Location
    public String getPublicId() {
        return null;
    }

    @Override // javax.xml.stream.Location
    public String getSystemId() {
        return null;
    }
}
