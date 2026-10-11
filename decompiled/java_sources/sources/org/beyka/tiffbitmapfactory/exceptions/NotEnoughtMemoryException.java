package org.beyka.tiffbitmapfactory.exceptions;

/* loaded from: classes13.dex */
public class NotEnoughtMemoryException extends RuntimeException {
    private int availableMemory;
    private int needMemory;

    public NotEnoughtMemoryException(int i, int i2) {
        super("Available memory is not enought to decode image. Available " + i + " bytes. Need " + i2 + " bytes.");
        this.availableMemory = i;
        this.needMemory = i2;
    }

    public int getAvailableMemory() {
        return this.availableMemory;
    }

    public int getNeedMemory() {
        return this.needMemory;
    }
}
