package com.google.zxing.qrcode.encoder;

import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import com.google.zxing.qrcode.decoder.Mode;
import com.google.zxing.qrcode.decoder.Version;

/* loaded from: classes4.dex */
public final class QRCode {
    public static final int NUM_MASK_PATTERNS = 8;

    /* renamed from: a */
    public Mode f38784a;

    /* renamed from: b */
    public ErrorCorrectionLevel f38785b;

    /* renamed from: c */
    public Version f38786c;

    /* renamed from: d */
    public int f38787d = -1;

    /* renamed from: e */
    public ByteMatrix f38788e;

    public static boolean isValidMaskPattern(int i) {
        return i >= 0 && i < 8;
    }

    public ErrorCorrectionLevel getECLevel() {
        return this.f38785b;
    }

    public int getMaskPattern() {
        return this.f38787d;
    }

    public ByteMatrix getMatrix() {
        return this.f38788e;
    }

    public Mode getMode() {
        return this.f38784a;
    }

    public Version getVersion() {
        return this.f38786c;
    }

    public void setECLevel(ErrorCorrectionLevel errorCorrectionLevel) {
        this.f38785b = errorCorrectionLevel;
    }

    public void setMaskPattern(int i) {
        this.f38787d = i;
    }

    public void setMatrix(ByteMatrix byteMatrix) {
        this.f38788e = byteMatrix;
    }

    public void setMode(Mode mode) {
        this.f38784a = mode;
    }

    public void setVersion(Version version) {
        this.f38786c = version;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(200);
        sb.append("<<\n");
        sb.append(" mode: ");
        sb.append(this.f38784a);
        sb.append("\n ecLevel: ");
        sb.append(this.f38785b);
        sb.append("\n version: ");
        sb.append(this.f38786c);
        sb.append("\n maskPattern: ");
        sb.append(this.f38787d);
        if (this.f38788e == null) {
            sb.append("\n matrix: null\n");
        } else {
            sb.append("\n matrix:\n");
            sb.append(this.f38788e);
        }
        sb.append(">>\n");
        return sb.toString();
    }
}
