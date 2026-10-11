package org.apache.commons.compress.harmony.pack200;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes12.dex */
public class PopulationCodec extends Codec {

    /* renamed from: a */
    public final Codec f106729a;

    /* renamed from: b */
    public Codec f106730b;

    /* renamed from: c */
    public final Codec f106731c;

    /* renamed from: d */
    public int f106732d;

    /* renamed from: e */
    public int[] f106733e;

    public PopulationCodec(Codec codec, Codec codec2, Codec codec3) {
        this.f106729a = codec;
        this.f106730b = codec2;
        this.f106731c = codec3;
    }

    @Override // org.apache.commons.compress.harmony.pack200.Codec
    public int decode(InputStream inputStream) throws IOException, Pack200Exception {
        throw new Pack200Exception("Population encoding does not work unless the number of elements are known");
    }

    @Override // org.apache.commons.compress.harmony.pack200.Codec
    public int[] decodeInts(int i, InputStream inputStream) throws IOException, Pack200Exception {
        this.lastBandLength = 0;
        this.f106733e = new int[i];
        int i2 = Integer.MAX_VALUE;
        int i3 = 0;
        int i4 = -1;
        while (true) {
            int decode = this.f106729a.decode(inputStream, i3);
            if (i4 <= -1 || (decode != i2 && decode != i3)) {
                i4++;
                this.f106733e[i4] = decode;
                int abs = Math.abs(i2);
                int abs2 = Math.abs(decode);
                if (abs > abs2) {
                    i2 = decode;
                } else if (abs == abs2) {
                    i2 = abs;
                }
                i3 = decode;
            }
        }
        this.lastBandLength += i4;
        if (this.f106730b == null) {
            if (i4 < 256) {
                this.f106730b = Codec.BYTE1;
            } else {
                int i5 = 1;
                while (true) {
                    i5++;
                    if (i5 >= 5) {
                        break;
                    }
                    BHSDCodec bHSDCodec = new BHSDCodec(i5, 256 - this.f106732d, 0);
                    if (bHSDCodec.encodes(i4)) {
                        this.f106730b = bHSDCodec;
                        break;
                    }
                }
                if (this.f106730b == null) {
                    throw new Pack200Exception("Cannot calculate token codec from " + i4 + CloudStorageConstants.OPERATION_AND + this.f106732d);
                }
            }
        }
        this.lastBandLength += i;
        int[] decodeInts = this.f106730b.decodeInts(i, inputStream);
        int i6 = 0;
        for (int i7 = 0; i7 < i; i7++) {
            int i8 = decodeInts[i7];
            if (i8 == 0) {
                this.lastBandLength++;
                i6 = this.f106731c.decode(inputStream, i6);
                decodeInts[i7] = i6;
            } else {
                decodeInts[i7] = this.f106733e[i8 - 1];
            }
        }
        return decodeInts;
    }

    @Override // org.apache.commons.compress.harmony.pack200.Codec
    public byte[] encode(int i, int i2) throws Pack200Exception {
        throw new Pack200Exception("Population encoding does not work unless the number of elements are known");
    }

    public int[] getFavoured() {
        return this.f106733e;
    }

    public Codec getFavouredCodec() {
        return this.f106729a;
    }

    public Codec getTokenCodec() {
        return this.f106730b;
    }

    public Codec getUnfavouredCodec() {
        return this.f106731c;
    }

    @Override // org.apache.commons.compress.harmony.pack200.Codec
    public int decode(InputStream inputStream, long j) throws IOException, Pack200Exception {
        throw new Pack200Exception("Population encoding does not work unless the number of elements are known");
    }

    @Override // org.apache.commons.compress.harmony.pack200.Codec
    public byte[] encode(int i) throws Pack200Exception {
        throw new Pack200Exception("Population encoding does not work unless the number of elements are known");
    }

    public byte[] encode(int[] iArr, int[] iArr2, int[] iArr3) throws Pack200Exception {
        int length = iArr.length + 1;
        int[] iArr4 = new int[length];
        System.arraycopy(iArr, 0, iArr4, 0, iArr.length);
        iArr4[length - 1] = iArr[iArr.length - 1];
        byte[] encode = this.f106729a.encode(iArr4);
        byte[] encode2 = this.f106730b.encode(iArr2);
        byte[] encode3 = this.f106731c.encode(iArr3);
        byte[] bArr = new byte[encode.length + encode2.length + encode3.length];
        System.arraycopy(encode, 0, bArr, 0, encode.length);
        System.arraycopy(encode2, 0, bArr, encode.length, encode2.length);
        System.arraycopy(encode3, 0, bArr, encode.length + encode2.length, encode3.length);
        return bArr;
    }

    public PopulationCodec(Codec codec, int i, Codec codec2) {
        if (i < 256 && i > 0) {
            this.f106729a = codec;
            this.f106732d = i;
            this.f106731c = codec2;
            return;
        }
        throw new IllegalArgumentException("L must be between 1..255");
    }
}
