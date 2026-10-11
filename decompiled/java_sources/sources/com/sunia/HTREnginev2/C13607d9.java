package com.sunia.HTREnginev2;

import com.twelvemonkeys.imageio.metadata.jpeg.JPEG;
import java.io.DataInput;
import java.io.IOException;

/* renamed from: com.sunia.HTREnginev2.d9 */
/* loaded from: classes10.dex */
public final class C13607d9 extends C13767gd {

    /* renamed from: h */
    public static final int f67624h = 0;

    /* renamed from: i */
    public static final int f67625i = 1;

    /* renamed from: j */
    public static final int f67626j = 2;

    /* renamed from: d */
    public final int f67627d;

    /* renamed from: e */
    public final int f67628e;

    /* renamed from: f */
    public final int f67629f;

    /* renamed from: g */
    public final int f67630g;

    public C13607d9(int i, int i2, int i3, int i4) {
        super(JPEG.APP14, "Adobe", new byte[]{65, 100, 111, 98, 101, 0, (byte) i, (byte) (i2 >> 8), (byte) (i2 & 255), (byte) (i3 >> 8), (byte) (i3 & 255), (byte) i4});
        this.f67627d = i;
        this.f67628e = i2;
        this.f67629f = i3;
        this.f67630g = i4;
    }

    /* renamed from: d */
    public static C13607d9 m53607d(DataInput dataInput, int i) throws IOException {
        dataInput.skipBytes(6);
        return new C13607d9(dataInput.readUnsignedByte(), dataInput.readUnsignedShort(), dataInput.readUnsignedShort(), dataInput.readUnsignedByte());
    }

    @Override // com.sunia.HTREnginev2.C13767gd
    public String toString() {
        return String.format("AdobeDCT[ver: %d.%02d, flags: %s %s, transform: %d]", Integer.valueOf(this.f67627d / 100), Integer.valueOf(this.f67627d % 100), Integer.toBinaryString(this.f67628e), Integer.toBinaryString(this.f67629f), Integer.valueOf(this.f67630g));
    }
}
