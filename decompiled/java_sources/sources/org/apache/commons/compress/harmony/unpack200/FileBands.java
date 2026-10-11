package org.apache.commons.compress.harmony.unpack200;

import java.io.IOException;
import java.io.InputStream;
import org.apache.commons.compress.harmony.pack200.BHSDCodec;
import org.apache.commons.compress.harmony.pack200.Codec;
import org.apache.commons.compress.harmony.pack200.Pack200Exception;

/* loaded from: classes12.dex */
public class FileBands extends BandSet {

    /* renamed from: a */
    public byte[][] f106950a;

    /* renamed from: b */
    public int[] f106951b;

    /* renamed from: c */
    public String[] f106952c;

    /* renamed from: d */
    public int[] f106953d;

    /* renamed from: e */
    public long[] f106954e;

    /* renamed from: f */
    public final String[] f106955f;

    /* renamed from: g */
    public InputStream f106956g;

    public FileBands(Segment segment) {
        super(segment);
        this.f106955f = segment.getCpBands().getCpUTF8();
    }

    public byte[][] getFileBits() {
        return this.f106950a;
    }

    public int[] getFileModtime() {
        return this.f106951b;
    }

    public String[] getFileName() {
        return this.f106952c;
    }

    public int[] getFileOptions() {
        return this.f106953d;
    }

    public long[] getFileSize() {
        return this.f106954e;
    }

    public void processFileBits() throws IOException, Pack200Exception {
        int numberOfFiles = this.header.getNumberOfFiles();
        this.f106950a = new byte[numberOfFiles];
        for (int i = 0; i < numberOfFiles; i++) {
            int i2 = (int) this.f106954e[i];
            byte[] bArr = new byte[i2];
            this.f106950a[i] = bArr;
            int read = this.f106956g.read(bArr);
            if (i2 != 0 && read < i2) {
                throw new Pack200Exception("Expected to read " + i2 + " bytes but read " + read);
            }
        }
    }

    @Override // org.apache.commons.compress.harmony.unpack200.BandSet
    public void read(InputStream inputStream) throws IOException, Pack200Exception {
        int numberOfFiles = this.header.getNumberOfFiles();
        SegmentOptions options = this.header.getOptions();
        BHSDCodec bHSDCodec = Codec.UNSIGNED5;
        this.f106952c = parseReferences("file_name", inputStream, bHSDCodec, numberOfFiles, this.f106955f);
        this.f106954e = parseFlags("file_size", inputStream, numberOfFiles, bHSDCodec, options.hasFileSizeHi());
        if (options.hasFileModtime()) {
            this.f106951b = decodeBandInt("file_modtime", inputStream, Codec.DELTA5, numberOfFiles);
        } else {
            this.f106951b = new int[numberOfFiles];
        }
        if (options.hasFileOptions()) {
            this.f106953d = decodeBandInt("file_options", inputStream, bHSDCodec, numberOfFiles);
        } else {
            this.f106953d = new int[numberOfFiles];
        }
        this.f106956g = inputStream;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.BandSet
    public void unpack() {
    }
}
