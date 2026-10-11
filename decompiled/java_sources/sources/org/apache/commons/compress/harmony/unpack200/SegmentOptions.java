package org.apache.commons.compress.harmony.unpack200;

import org.apache.commons.compress.harmony.pack200.Pack200Exception;

/* loaded from: classes12.dex */
public class SegmentOptions {

    /* renamed from: b */
    public static final int f107088b = 32;

    /* renamed from: c */
    public static final int f107089c = 4;

    /* renamed from: d */
    public static final int f107090d = 512;

    /* renamed from: e */
    public static final int f107091e = 1024;

    /* renamed from: f */
    public static final int f107092f = 2;

    /* renamed from: g */
    public static final int f107093g = 1024;

    /* renamed from: h */
    public static final int f107094h = 16;

    /* renamed from: i */
    public static final int f107095i = 64;

    /* renamed from: j */
    public static final int f107096j = 128;

    /* renamed from: k */
    public static final int f107097k = 256;

    /* renamed from: l */
    public static final int f107098l = 2048;

    /* renamed from: m */
    public static final int f107099m = 1;

    /* renamed from: n */
    public static final int f107100n = -8184;

    /* renamed from: a */
    public final int f107101a;

    public SegmentOptions(int i) throws Pack200Exception {
        if ((i & f107100n) != 0) {
            throw new Pack200Exception("Some unused flags are non-zero");
        }
        this.f107101a = i;
    }

    public boolean hasAllCodeFlags() {
        return (this.f107101a & 4) != 0;
    }

    public boolean hasArchiveFileCounts() {
        return (this.f107101a & 16) != 0;
    }

    public boolean hasCPNumberCounts() {
        return (this.f107101a & 2) != 0;
    }

    public boolean hasClassFlagsHi() {
        return (this.f107101a & 512) != 0;
    }

    public boolean hasCodeFlagsHi() {
        return (this.f107101a & 1024) != 0;
    }

    public boolean hasFieldFlagsHi() {
        return (this.f107101a & 1024) != 0;
    }

    public boolean hasFileModtime() {
        return (this.f107101a & 64) != 0;
    }

    public boolean hasFileOptions() {
        return (this.f107101a & 128) != 0;
    }

    public boolean hasFileSizeHi() {
        return (this.f107101a & 256) != 0;
    }

    public boolean hasMethodFlagsHi() {
        return (this.f107101a & 2048) != 0;
    }

    public boolean hasSpecialFormats() {
        return (this.f107101a & 1) != 0;
    }

    public boolean shouldDeflate() {
        return (this.f107101a & 32) != 0;
    }
}
