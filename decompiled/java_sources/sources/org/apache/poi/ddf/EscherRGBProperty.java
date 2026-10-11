package org.apache.poi.ddf;

/* loaded from: classes12.dex */
public class EscherRGBProperty extends EscherSimpleProperty {
    public EscherRGBProperty(short s, int i) {
        super(s, i);
    }

    public byte getBlue() {
        return (byte) ((getRgbColor() >> 16) & 255);
    }

    public byte getGreen() {
        return (byte) ((getRgbColor() >> 8) & 255);
    }

    public byte getRed() {
        return (byte) (getRgbColor() & 255);
    }

    public int getRgbColor() {
        return getPropertyValue();
    }

    public EscherRGBProperty(EscherPropertyTypes escherPropertyTypes, int i) {
        super(escherPropertyTypes.propNumber, i);
    }
}
