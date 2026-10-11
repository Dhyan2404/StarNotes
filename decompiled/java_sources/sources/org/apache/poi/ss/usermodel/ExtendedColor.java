package org.apache.poi.ss.usermodel;

import java.util.Locale;

/* loaded from: classes13.dex */
public abstract class ExtendedColor implements Color {
    private static byte applyTint(int i, double d) {
        double d2;
        if (d > 0.0d) {
            double d3 = 1.0d - d;
            d2 = (i * d3) + (255.0d - (d3 * 255.0d));
        } else {
            if (d >= 0.0d) {
                return (byte) i;
            }
            d2 = i * (d + 1.0d);
        }
        return (byte) d2;
    }

    public abstract byte[] getARGB();

    public String getARGBHex() {
        byte[] argb = getARGB();
        if (argb == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (byte b : argb) {
            String hexString = Integer.toHexString(b & 255);
            if (hexString.length() == 1) {
                sb.append('0');
            }
            sb.append(hexString);
        }
        return sb.toString().toUpperCase(Locale.ROOT);
    }

    public abstract short getIndex();

    public abstract byte[] getIndexedRGB();

    public abstract byte[] getRGB();

    public byte[] getRGBOrARGB() {
        byte[] indexedRGB;
        return (!isIndexed() || getIndex() <= 0 || (indexedRGB = getIndexedRGB()) == null) ? getStoredRGB() : indexedRGB;
    }

    public byte[] getRGBWithTint() {
        byte[] storedRGB = getStoredRGB();
        if (storedRGB != null) {
            if (storedRGB.length == 4) {
                byte[] bArr = new byte[3];
                System.arraycopy(storedRGB, 1, bArr, 0, 3);
                storedRGB = bArr;
            }
            double tint = getTint();
            for (int i = 0; i < storedRGB.length; i++) {
                storedRGB[i] = applyTint(storedRGB[i] & 255, tint);
            }
        }
        return storedRGB;
    }

    public abstract byte[] getStoredRGB();

    public abstract int getTheme();

    public abstract double getTint();

    public abstract boolean isAuto();

    public abstract boolean isIndexed();

    public abstract boolean isRGB();

    public abstract boolean isThemed();

    public void setARGBHex(String str) {
        if (str.length() != 6 && str.length() != 8) {
            throw new IllegalArgumentException("Must be of the form 112233 or FFEEDDCC");
        }
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        int i = 0;
        while (i < length) {
            int i2 = i + 1;
            bArr[i] = (byte) Integer.parseInt(str.substring(i * 2, i2 * 2), 16);
            i = i2;
        }
        setRGB(bArr);
    }

    public void setColor(java.awt.Color color) {
        setRGB(new byte[]{(byte) color.getRed(), (byte) color.getGreen(), (byte) color.getBlue()});
    }

    public abstract void setRGB(byte[] bArr);

    public abstract void setTint(double d);
}
