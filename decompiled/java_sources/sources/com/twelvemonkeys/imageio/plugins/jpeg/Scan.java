package com.twelvemonkeys.imageio.plugins.jpeg;

import com.sunia.HTREnginev2.sdm;
import com.twelvemonkeys.imageio.stream.SubImageInputStream;
import java.io.DataInput;
import java.io.IOException;
import java.util.Arrays;
import javax.imageio.IIOException;
import javax.imageio.stream.ImageInputStream;

/* loaded from: classes10.dex */
public final class Scan extends sdm {

    /* renamed from: b */
    public final int f94097b;

    /* renamed from: c */
    public final int f94098c;

    /* renamed from: d */
    public final int f94099d;

    /* renamed from: e */
    public final int f94100e;

    /* renamed from: f */
    public final Component[] f94101f;

    /* loaded from: classes10.dex */
    public static final class Component {

        /* renamed from: a */
        public final int f94102a;

        /* renamed from: b */
        public final int f94103b;

        /* renamed from: c */
        public final int f94104c;

        public Component(int i, int i2, int i3) {
            this.f94102a = i;
            this.f94103b = i2;
            this.f94104c = i3;
        }

        public String toString() {
            return String.format("scanCompSel: %d, acTabSel: %d, dcTabSel: %d", Integer.valueOf(this.f94102a), Integer.valueOf(this.f94103b), Integer.valueOf(this.f94104c));
        }
    }

    public Scan(Component[] componentArr, int i, int i2, int i3, int i4) {
        super(65498);
        this.f94101f = componentArr;
        this.f94097b = i;
        this.f94098c = i2;
        this.f94099d = i3;
        this.f94100e = i4;
    }

    /* renamed from: b */
    public static Scan m60555b(DataInput dataInput, int i) throws IOException {
        int readUnsignedByte = dataInput.readUnsignedByte();
        int i2 = (readUnsignedByte * 2) + 6;
        if (i2 != i) {
            throw new IIOException(String.format("Unexpected SOS length: %d != %d", Integer.valueOf(i), Integer.valueOf(i2)));
        }
        Component[] componentArr = new Component[readUnsignedByte];
        for (int i3 = 0; i3 < readUnsignedByte; i3++) {
            int readUnsignedByte2 = dataInput.readUnsignedByte();
            int readUnsignedByte3 = dataInput.readUnsignedByte();
            componentArr[i3] = new Component(readUnsignedByte2, readUnsignedByte3 & 15, readUnsignedByte3 >> 4);
        }
        int readUnsignedByte4 = dataInput.readUnsignedByte();
        int readUnsignedByte5 = dataInput.readUnsignedByte();
        int readUnsignedByte6 = dataInput.readUnsignedByte();
        return new Scan(componentArr, readUnsignedByte4, readUnsignedByte5, readUnsignedByte6 >> 4, readUnsignedByte6 & 15);
    }

    /* renamed from: c */
    public static Scan m60556c(ImageInputStream imageInputStream) throws IOException {
        int readUnsignedShort = imageInputStream.readUnsignedShort();
        return m60555b(new SubImageInputStream(imageInputStream, readUnsignedShort), readUnsignedShort);
    }

    public String toString() {
        return String.format("SOS[spectralSelStart: %d, spectralSelEnd: %d, approxHigh: %d, approxLow: %d, components: %s]", Integer.valueOf(this.f94097b), Integer.valueOf(this.f94098c), Integer.valueOf(this.f94099d), Integer.valueOf(this.f94100e), Arrays.toString(this.f94101f));
    }
}
