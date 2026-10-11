package com.google.zxing;

import com.google.zxing.common.BitArray;
import com.google.zxing.common.BitMatrix;

/* loaded from: classes4.dex */
public final class BinaryBitmap {

    /* renamed from: a */
    public final Binarizer f38196a;

    /* renamed from: b */
    public BitMatrix f38197b;

    public BinaryBitmap(Binarizer binarizer) {
        if (binarizer == null) {
            throw new IllegalArgumentException("Binarizer must be non-null.");
        }
        this.f38196a = binarizer;
    }

    public BinaryBitmap crop(int i, int i2, int i3, int i4) {
        return new BinaryBitmap(this.f38196a.createBinarizer(this.f38196a.getLuminanceSource().crop(i, i2, i3, i4)));
    }

    public BitMatrix getBlackMatrix() throws NotFoundException {
        if (this.f38197b == null) {
            this.f38197b = this.f38196a.getBlackMatrix();
        }
        return this.f38197b;
    }

    public BitArray getBlackRow(int i, BitArray bitArray) throws NotFoundException {
        return this.f38196a.getBlackRow(i, bitArray);
    }

    public int getHeight() {
        return this.f38196a.getHeight();
    }

    public int getWidth() {
        return this.f38196a.getWidth();
    }

    public boolean isCropSupported() {
        return this.f38196a.getLuminanceSource().isCropSupported();
    }

    public boolean isRotateSupported() {
        return this.f38196a.getLuminanceSource().isRotateSupported();
    }

    public BinaryBitmap rotateCounterClockwise() {
        return new BinaryBitmap(this.f38196a.createBinarizer(this.f38196a.getLuminanceSource().rotateCounterClockwise()));
    }

    public BinaryBitmap rotateCounterClockwise45() {
        return new BinaryBitmap(this.f38196a.createBinarizer(this.f38196a.getLuminanceSource().rotateCounterClockwise45()));
    }

    public String toString() {
        try {
            return getBlackMatrix().toString();
        } catch (NotFoundException unused) {
            return "";
        }
    }
}
