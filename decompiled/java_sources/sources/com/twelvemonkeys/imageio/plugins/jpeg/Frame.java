package com.twelvemonkeys.imageio.plugins.jpeg;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.sunia.HTREnginev2.sdm;
import com.twelvemonkeys.imageio.stream.SubImageInputStream;
import java.io.DataInput;
import java.io.IOException;
import java.util.Arrays;
import javax.imageio.IIOException;
import javax.imageio.stream.ImageInputStream;

/* loaded from: classes10.dex */
public final class Frame extends sdm {

    /* renamed from: b */
    public final int f94070b;

    /* renamed from: c */
    public final int f94071c;

    /* renamed from: d */
    public final int f94072d;

    /* renamed from: e */
    public final Component[] f94073e;

    /* loaded from: classes10.dex */
    public static final class Component {

        /* renamed from: a */
        public final int f94074a;

        /* renamed from: b */
        public final int f94075b;

        /* renamed from: c */
        public final int f94076c;

        /* renamed from: d */
        public final int f94077d;

        public Component(int i, int i2, int i3, int i4) {
            this.f94074a = i;
            this.f94075b = i2;
            this.f94076c = i3;
            this.f94077d = i4;
        }

        public String toString() {
            Object valueOf;
            int i = this.f94074a;
            if ((i < 97 || i > 122) && (i < 65 || i > 90)) {
                valueOf = Integer.valueOf(i);
            } else {
                valueOf = CloudStorageConstants.SINGLE_QUOTES + ((char) this.f94074a) + CloudStorageConstants.SINGLE_QUOTES;
            }
            return String.format("id: %s, sub: %d/%d, sel: %d", valueOf, Integer.valueOf(this.f94075b), Integer.valueOf(this.f94076c), Integer.valueOf(this.f94077d));
        }
    }

    public Frame(int i, int i2, int i3, int i4, Component[] componentArr) {
        super(i);
        this.f94070b = i2;
        this.f94071c = i3;
        this.f94072d = i4;
        this.f94073e = componentArr;
    }

    /* renamed from: e */
    public static Frame m60501e(int i, DataInput dataInput, int i2) throws IOException {
        int readUnsignedByte = dataInput.readUnsignedByte();
        int readUnsignedShort = dataInput.readUnsignedShort();
        int readUnsignedShort2 = dataInput.readUnsignedShort();
        int readUnsignedByte2 = dataInput.readUnsignedByte();
        int i3 = (readUnsignedByte2 * 3) + 8;
        if (i2 != i3) {
            throw new IIOException(String.format("Unexpected SOF length: %d != %d", Integer.valueOf(i2), Integer.valueOf(i3)));
        }
        Component[] componentArr = new Component[readUnsignedByte2];
        for (int i4 = 0; i4 < readUnsignedByte2; i4++) {
            int readUnsignedByte3 = dataInput.readUnsignedByte();
            int readUnsignedByte4 = dataInput.readUnsignedByte();
            componentArr[i4] = new Component(readUnsignedByte3, (readUnsignedByte4 & 240) >> 4, readUnsignedByte4 & 15, dataInput.readUnsignedByte());
        }
        return new Frame(i, readUnsignedByte, readUnsignedShort, readUnsignedShort2, componentArr);
    }

    /* renamed from: f */
    public static Frame m60502f(int i, ImageInputStream imageInputStream) throws IOException {
        int readUnsignedShort = imageInputStream.readUnsignedShort();
        return m60501e(i, new SubImageInputStream(imageInputStream, readUnsignedShort), readUnsignedShort);
    }

    /* renamed from: b */
    public int m60503b() {
        return this.f94073e.length;
    }

    /* renamed from: c */
    public Component m60504c(int i) {
        for (Component component : this.f94073e) {
            if (component.f94074a == i) {
                return component;
            }
        }
        throw new IllegalArgumentException(String.format("No such component id: %d", Integer.valueOf(i)));
    }

    /* renamed from: d */
    public int m60505d() {
        return this.f84044a & 63;
    }

    public String toString() {
        return String.format("SOF%d[%04x, precision: %d, lines: %d, samples/line: %d, components: %s]", Integer.valueOf(m60505d()), Integer.valueOf(this.f84044a), Integer.valueOf(this.f94070b), Integer.valueOf(this.f94071c), Integer.valueOf(this.f94072d), Arrays.toString(this.f94073e));
    }
}
