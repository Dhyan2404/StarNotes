package com.sun.imageio.plugins.jpeg;

import androidx.exifinterface.media.ExifInterface;
import java.io.IOException;
import javax.imageio.IIOException;
import javax.imageio.stream.ImageInputStream;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes9.dex */
public class JPEGBuffer {
    ImageInputStream iis;
    private boolean debug = false;
    final int BUFFER_SIZE = 4096;
    byte[] buf = new byte[4096];
    int bufAvail = 0;
    int bufPtr = 0;

    public JPEGBuffer(ImageInputStream imageInputStream) {
        this.iis = imageInputStream;
    }

    public long getStreamPosition() throws IOException {
        return this.iis.getStreamPosition() - this.bufAvail;
    }

    public void loadBuf(int i) throws IOException {
        if (this.debug) {
            System.out.print("loadbuf called with ");
            System.out.print("count " + i + ", ");
            System.out.println("bufAvail " + this.bufAvail + ", ");
        }
        if (i != 0) {
            if (this.bufAvail >= i) {
                return;
            }
        } else if (this.bufAvail == 4096) {
            return;
        }
        int i2 = this.bufAvail;
        if (i2 > 0 && i2 < 4096) {
            byte[] bArr = this.buf;
            System.arraycopy(bArr, this.bufPtr, bArr, 0, i2);
        }
        ImageInputStream imageInputStream = this.iis;
        byte[] bArr2 = this.buf;
        int i3 = this.bufAvail;
        int read = imageInputStream.read(bArr2, i3, bArr2.length - i3);
        if (this.debug) {
            System.out.println("iis.read returned " + read);
        }
        if (read != -1) {
            this.bufAvail += read;
        }
        this.bufPtr = 0;
        if (this.bufAvail < Math.min(4096, i)) {
            throw new IIOException("Image Format Error");
        }
    }

    public void print(int i) {
        System.out.print("buffer has ");
        System.out.print(this.bufAvail);
        System.out.println(" bytes available");
        int i2 = this.bufAvail;
        if (i2 < i) {
            i = i2;
        }
        int i3 = this.bufPtr;
        while (i > 0) {
            int i4 = i3 + 1;
            int i5 = this.buf[i3] & 255;
            System.out.print(" " + Integer.toHexString(i5));
            i += -1;
            i3 = i4;
        }
        System.out.println();
    }

    public void pushBack() throws IOException {
        ImageInputStream imageInputStream = this.iis;
        imageInputStream.seek(imageInputStream.getStreamPosition() - this.bufAvail);
        this.bufAvail = 0;
        this.bufPtr = 0;
    }

    public void readData(byte[] bArr) throws IOException {
        int length = bArr.length;
        int i = this.bufAvail;
        int i2 = 0;
        if (i >= length) {
            System.arraycopy(this.buf, this.bufPtr, bArr, 0, length);
            this.bufAvail -= length;
            this.bufPtr += length;
            return;
        }
        if (i > 0) {
            System.arraycopy(this.buf, this.bufPtr, bArr, 0, i);
            int i3 = this.bufAvail;
            length -= i3;
            this.bufAvail = 0;
            this.bufPtr = 0;
            i2 = i3;
        }
        if (this.iis.read(bArr, i2, length) != length) {
            throw new IIOException("Image format Error");
        }
    }

    public boolean scanForFF(JPEGImageReader jPEGImageReader) throws IOException {
        boolean z = false;
        while (true) {
            boolean z2 = z;
            while (!z) {
                while (true) {
                    int i = this.bufAvail;
                    if (i <= 0) {
                        break;
                    }
                    byte[] bArr = this.buf;
                    int i2 = this.bufPtr;
                    this.bufPtr = i2 + 1;
                    if ((bArr[i2] & 255) == 255) {
                        this.bufAvail = i - 1;
                        z = true;
                        break;
                    }
                    this.bufAvail = i - 1;
                }
                loadBuf(0);
                if (z) {
                    while (true) {
                        int i3 = this.bufAvail;
                        if (i3 <= 0) {
                            break;
                        }
                        byte[] bArr2 = this.buf;
                        int i4 = this.bufPtr;
                        if ((bArr2[i4] & 255) != 255) {
                            break;
                        }
                        this.bufPtr = i4 + 1;
                        this.bufAvail = i3 - 1;
                    }
                }
                if (this.bufAvail == 0) {
                    break;
                }
            }
            return z2;
            this.buf[0] = ExifInterface.f7165I1;
            this.bufAvail = 1;
            this.bufPtr = 0;
            z = true;
        }
    }

    public void skipData(int i) throws IOException {
        int i2 = this.bufAvail;
        if (i2 >= i) {
            this.bufAvail = i2 - i;
            this.bufPtr += i;
            return;
        }
        if (i2 > 0) {
            i -= i2;
            this.bufAvail = 0;
            this.bufPtr = 0;
        }
        if (this.iis.skipBytes(i) != i) {
            throw new IIOException("Image format Error");
        }
    }
}
