package com.twelvemonkeys.imageio.metadata.jpeg;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.Serializable;
import java.util.Arrays;

/* loaded from: classes10.dex */
public final class JPEGSegment implements Serializable {
    final byte[] data;

    /* renamed from: id */
    private transient String f94055id;
    private final int length;
    final int marker;

    public JPEGSegment(int i, byte[] bArr, int i2) {
        this.marker = i;
        this.data = bArr;
        this.length = i2;
    }

    public static boolean isAppSegmentMarker(int i) {
        return i >= 65504 && i <= 65519;
    }

    public InputStream data() {
        if (this.data != null) {
            return new ByteArrayInputStream(this.data, offset(), length());
        }
        return null;
    }

    public boolean equals(Object obj) {
        if (obj instanceof JPEGSegment) {
            JPEGSegment jPEGSegment = (JPEGSegment) obj;
            if (jPEGSegment.marker == this.marker && Arrays.equals(jPEGSegment.data, this.data)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        String identifier = identifier();
        return (marker() << 16) | ((identifier != null ? identifier.hashCode() : 0) & 65535);
    }

    public String identifier() {
        if (this.f94055id == null && isAppSegmentMarker(this.marker)) {
            this.f94055id = JPEGSegmentUtil.m60482b(this.data, 0);
        }
        return this.f94055id;
    }

    public int length() {
        byte[] bArr = this.data;
        if (bArr != null) {
            return bArr.length - offset();
        }
        return 0;
    }

    public int marker() {
        return this.marker;
    }

    public int offset() {
        String identifier = identifier();
        if (identifier == null) {
            return 0;
        }
        return identifier.length() + 1;
    }

    public InputStream segmentData() {
        if (this.data != null) {
            return new ByteArrayInputStream(this.data);
        }
        return null;
    }

    public int segmentLength() {
        return this.length;
    }

    public String toString() {
        String identifier = identifier();
        return identifier != null ? String.format("JPEGSegment[%04x/%s size: %d]", Integer.valueOf(this.marker), identifier, Integer.valueOf(segmentLength())) : String.format("JPEGSegment[%04x size: %d]", Integer.valueOf(this.marker), Integer.valueOf(segmentLength()));
    }
}
