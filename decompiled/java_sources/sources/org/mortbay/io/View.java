package org.mortbay.io;

import org.mortbay.io.Buffer;

/* loaded from: classes13.dex */
public class View extends AbstractBuffer {

    /* renamed from: g */
    public Buffer f114475g;

    /* loaded from: classes13.dex */
    public static class CaseInsensitive extends View implements Buffer.CaseInsensitve {
        public CaseInsensitive() {
        }

        @Override // org.mortbay.io.View, org.mortbay.io.AbstractBuffer
        public boolean equals(Object obj) {
            return this == obj || ((obj instanceof Buffer) && ((Buffer) obj).equalsIgnoreCase(this)) || super.equals(obj);
        }

        public CaseInsensitive(Buffer buffer, int i, int i2, int i3, int i4) {
            super(buffer, i, i2, i3, i4);
        }

        public CaseInsensitive(Buffer buffer) {
            super(buffer);
        }
    }

    public View(Buffer buffer, int i, int i2, int i3, int i4) {
        super(2, !buffer.isImmutable());
        this.f114475g = buffer.buffer();
        setPutIndex(i3);
        setGetIndex(i2);
        setMarkIndex(i);
        this._access = i4;
    }

    @Override // org.mortbay.io.Buffer
    public byte[] array() {
        return this.f114475g.array();
    }

    @Override // org.mortbay.io.AbstractBuffer, org.mortbay.io.Buffer
    public Buffer buffer() {
        return this.f114475g.buffer();
    }

    @Override // org.mortbay.io.Buffer
    public int capacity() {
        return this.f114475g.capacity();
    }

    @Override // org.mortbay.io.AbstractBuffer, org.mortbay.io.Buffer
    public void clear() {
        setMarkIndex(-1);
        setGetIndex(0);
        setPutIndex(this.f114475g.getIndex());
        setGetIndex(this.f114475g.getIndex());
    }

    @Override // org.mortbay.io.AbstractBuffer, org.mortbay.io.Buffer
    public void compact() {
    }

    @Override // org.mortbay.io.AbstractBuffer
    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof Buffer) && ((Buffer) obj).equals(this)) || super.equals(obj);
    }

    @Override // org.mortbay.io.AbstractBuffer, org.mortbay.io.Buffer
    public boolean isReadOnly() {
        return this.f114475g.isReadOnly();
    }

    @Override // org.mortbay.io.AbstractBuffer, org.mortbay.io.Buffer
    public boolean isVolatile() {
        return true;
    }

    @Override // org.mortbay.io.Buffer
    public byte peek(int i) {
        return this.f114475g.peek(i);
    }

    @Override // org.mortbay.io.AbstractBuffer, org.mortbay.io.Buffer
    public int poke(int i, Buffer buffer) {
        return this.f114475g.poke(i, buffer);
    }

    @Override // org.mortbay.io.AbstractBuffer
    public String toString() {
        return this.f114475g == null ? "INVALID" : super.toString();
    }

    public void update(Buffer buffer) {
        this._access = 2;
        this.f114475g = buffer.buffer();
        setGetIndex(0);
        setPutIndex(buffer.putIndex());
        setGetIndex(buffer.getIndex());
        setMarkIndex(buffer.markIndex());
        this._access = buffer.isReadOnly() ? 1 : 2;
    }

    @Override // org.mortbay.io.Buffer
    public int peek(int i, byte[] bArr, int i2, int i3) {
        return this.f114475g.peek(i, bArr, i2, i3);
    }

    @Override // org.mortbay.io.Buffer
    public void poke(int i, byte b) {
        this.f114475g.poke(i, b);
    }

    @Override // org.mortbay.io.AbstractBuffer, org.mortbay.io.Buffer
    public Buffer peek(int i, int i2) {
        return this.f114475g.peek(i, i2);
    }

    @Override // org.mortbay.io.AbstractBuffer, org.mortbay.io.Buffer
    public int poke(int i, byte[] bArr, int i2, int i3) {
        return this.f114475g.poke(i, bArr, i2, i3);
    }

    public View(Buffer buffer) {
        super(2, !buffer.isImmutable());
        this.f114475g = buffer.buffer();
        setPutIndex(buffer.putIndex());
        setGetIndex(buffer.getIndex());
        setMarkIndex(buffer.markIndex());
        this._access = buffer.isReadOnly() ? 1 : 2;
    }

    public void update(int i, int i2) {
        int i3 = this._access;
        this._access = 2;
        setGetIndex(0);
        setPutIndex(i2);
        setGetIndex(i);
        setMarkIndex(-1);
        this._access = i3;
    }

    public View() {
        super(2, true);
    }
}
