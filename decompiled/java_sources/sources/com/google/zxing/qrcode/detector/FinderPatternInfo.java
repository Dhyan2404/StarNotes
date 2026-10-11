package com.google.zxing.qrcode.detector;

/* loaded from: classes4.dex */
public final class FinderPatternInfo {

    /* renamed from: a */
    public final FinderPattern f38775a;

    /* renamed from: b */
    public final FinderPattern f38776b;

    /* renamed from: c */
    public final FinderPattern f38777c;

    public FinderPatternInfo(FinderPattern[] finderPatternArr) {
        this.f38775a = finderPatternArr[0];
        this.f38776b = finderPatternArr[1];
        this.f38777c = finderPatternArr[2];
    }

    public FinderPattern getBottomLeft() {
        return this.f38775a;
    }

    public FinderPattern getTopLeft() {
        return this.f38776b;
    }

    public FinderPattern getTopRight() {
        return this.f38777c;
    }
}
