package org.apache.xerces.stax;

import javax.xml.stream.Location;

/* loaded from: classes13.dex */
public class ImmutableLocation implements Location {

    /* renamed from: e */
    public final int f113436e;

    /* renamed from: f */
    public final int f113437f;

    /* renamed from: g */
    public final int f113438g;

    /* renamed from: h */
    public final String f113439h;

    /* renamed from: i */
    public final String f113440i;

    public ImmutableLocation(int i, int i2, int i3, String str, String str2) {
        this.f113436e = i;
        this.f113437f = i2;
        this.f113438g = i3;
        this.f113439h = str;
        this.f113440i = str2;
    }

    @Override // javax.xml.stream.Location
    public int getCharacterOffset() {
        return this.f113436e;
    }

    @Override // javax.xml.stream.Location
    public int getColumnNumber() {
        return this.f113437f;
    }

    @Override // javax.xml.stream.Location
    public int getLineNumber() {
        return this.f113438g;
    }

    @Override // javax.xml.stream.Location
    public String getPublicId() {
        return this.f113439h;
    }

    @Override // javax.xml.stream.Location
    public String getSystemId() {
        return this.f113440i;
    }

    public ImmutableLocation(Location location) {
        this(location.getCharacterOffset(), location.getColumnNumber(), location.getLineNumber(), location.getPublicId(), location.getSystemId());
    }
}
