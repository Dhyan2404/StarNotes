package com.sunia.HTREnginev2;

import com.twelvemonkeys.imageio.plugins.jpeg.C16962b;
import java.awt.image.BufferedImage;
import java.awt.image.DataBufferByte;
import java.awt.image.DataBufferUShort;
import java.awt.image.Raster;
import java.io.IOException;
import java.util.List;
import javax.imageio.stream.ImageInputStream;

/* loaded from: classes10.dex */
public final class yqi {
    /* renamed from: a */
    public BufferedImage m58473a(List<sdm> list, ImageInputStream imageInputStream) throws IOException {
        C16962b c16962b = new C16962b(list, imageInputStream);
        int[][] m60558b = c16962b.m60558b();
        int m60563g = c16962b.m60563g();
        int m60564h = c16962b.m60564h();
        if (c16962b.m60566j() == 1) {
            int m60567k = c16962b.m60567k();
            if (m60567k == 8) {
                return m58477e(m60558b, m60563g, m60564h);
            }
            if (m60567k == 16) {
                return m58475c(m60558b, m60563g, m60564h);
            }
            throw new IOException("JPEG Lossless with " + c16962b.m60567k() + " bit precision and 1 component cannot be decoded");
        }
        if (c16962b.m60566j() == 3) {
            if (c16962b.m60567k() == 8) {
                return m58476d(m60558b, m60563g, m60564h);
            }
            throw new IOException("JPEG Lossless with " + c16962b.m60567k() + " bit precision and 3 components cannot be decoded");
        }
        throw new IOException("JPEG Lossless with " + c16962b.m60567k() + " bit precision and " + c16962b.m60566j() + " component(s) cannot be decoded");
    }

    /* renamed from: b */
    public Raster m58474b(List<sdm> list, ImageInputStream imageInputStream) throws IOException {
        return m58473a(list, imageInputStream).getRaster();
    }

    /* renamed from: c */
    public final BufferedImage m58475c(int[][] iArr, int i, int i2) {
        BufferedImage bufferedImage = new BufferedImage(i, i2, 11);
        short[] data = ((DataBufferUShort) bufferedImage.getRaster().getDataBuffer()).getData();
        for (int i3 = 0; i3 < data.length; i3++) {
            data[i3] = (short) iArr[0][i3];
        }
        return bufferedImage;
    }

    /* renamed from: d */
    public final BufferedImage m58476d(int[][] iArr, int i, int i2) {
        BufferedImage bufferedImage = new BufferedImage(i, i2, 5);
        byte[] data = ((DataBufferByte) bufferedImage.getRaster().getDataBuffer()).getData();
        for (int i3 = 0; i3 < data.length / 3; i3++) {
            int i4 = i3 * 3;
            data[i4 + 2] = (byte) iArr[0][i3];
            data[i4 + 1] = (byte) iArr[1][i3];
            data[i4] = (byte) iArr[2][i3];
        }
        return bufferedImage;
    }

    /* renamed from: e */
    public final BufferedImage m58477e(int[][] iArr, int i, int i2) {
        BufferedImage bufferedImage = new BufferedImage(i, i2, 10);
        byte[] data = ((DataBufferByte) bufferedImage.getRaster().getDataBuffer()).getData();
        for (int i3 = 0; i3 < data.length; i3++) {
            data[i3] = (byte) iArr[0][i3];
        }
        return bufferedImage;
    }
}
