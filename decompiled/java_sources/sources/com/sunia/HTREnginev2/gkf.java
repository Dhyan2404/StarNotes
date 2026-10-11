package com.sunia.HTREnginev2;

import androidx.exifinterface.media.ExifInterface;
import com.alibaba.fastjson2.JSONB;
import com.twelvemonkeys.imageio.color.YCbCrConverter;
import com.twelvemonkeys.imageio.metadata.Directory;
import com.twelvemonkeys.imageio.metadata.Entry;
import com.twelvemonkeys.imageio.plugins.jpeg.JPEGImageReader;
import com.twelvemonkeys.imageio.util.IIOUtil;
import com.twelvemonkeys.lang.Validate;
import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.SequenceInputStream;
import java.lang.ref.SoftReference;
import java.util.Arrays;
import javax.imageio.IIOException;
import javax.imageio.ImageReader;
import javax.imageio.stream.ImageInputStream;
import javax.imageio.stream.MemoryCacheImageInputStream;

/* loaded from: classes10.dex */
public final class gkf extends phn {

    /* renamed from: d */
    public final ImageReader f71118d;

    /* renamed from: e */
    public final Directory f71119e;

    /* renamed from: f */
    public final ImageInputStream f71120f;

    /* renamed from: g */
    public final int f71121g;

    /* renamed from: h */
    public transient SoftReference<BufferedImage> f71122h;

    public gkf(ohn ohnVar, ImageReader imageReader, int i, int i2, Directory directory, ImageInputStream imageInputStream) {
        super(ohnVar, i, i2);
        this.f71118d = (ImageReader) Validate.notNull(imageReader);
        this.f71119e = directory;
        this.f71120f = imageInputStream;
        Entry entryById = directory.getEntryById(259);
        this.f71121g = entryById != null ? ((Number) entryById.getValue()).intValue() : 6;
    }

    @Override // com.sunia.HTREnginev2.phn
    /* renamed from: a */
    public int mo54287a() throws IOException {
        int i = this.f71121g;
        if (i == 1) {
            Entry entryById = this.f71119e.getEntryById(257);
            if (entryById != null) {
                return ((Number) entryById.getValue()).intValue();
            }
            throw new IIOException("Missing dimensions for uncompressed EXIF thumbnail");
        }
        if (i == 6) {
            return m54291j(false).getHeight();
        }
        throw new IIOException("Unsupported EXIF thumbnail compression  (expected 1 or 6): " + this.f71121g);
    }

    @Override // com.sunia.HTREnginev2.phn
    /* renamed from: b */
    public int mo54288b() throws IOException {
        int i = this.f71121g;
        if (i == 1) {
            Entry entryById = this.f71119e.getEntryById(256);
            if (entryById != null) {
                return ((Number) entryById.getValue()).intValue();
            }
            throw new IIOException("Missing dimensions for uncompressed EXIF thumbnail");
        }
        if (i == 6) {
            return m54291j(false).getWidth();
        }
        throw new IIOException("Unsupported EXIF thumbnail compression (expected 1 or 6): " + this.f71121g);
    }

    @Override // com.sunia.HTREnginev2.phn
    /* renamed from: f */
    public BufferedImage mo54289f() throws IOException {
        int i = this.f71121g;
        if (i == 1) {
            m56276e();
            BufferedImage m54292k = m54292k();
            m56275d(100.0f);
            m56274c();
            return m54292k;
        }
        if (i != 6) {
            throw new IIOException("Unsupported EXIF thumbnail compression: " + this.f71121g);
        }
        m56276e();
        BufferedImage m54291j = m54291j(true);
        m56275d(100.0f);
        m56274c();
        return m54291j;
    }

    /* renamed from: i */
    public final BufferedImage m54290i() throws IOException {
        Entry entryById = this.f71119e.getEntryById(513);
        if (entryById == null) {
            throw new IIOException("Missing JPEGInterchangeFormat tag for JPEG compressed EXIF thumbnail");
        }
        this.f71120f.seek(((Number) entryById.getValue()).longValue());
        InputStream createStreamAdapter = IIOUtil.createStreamAdapter(this.f71120f);
        SequenceInputStream sequenceInputStream = new SequenceInputStream(new ByteArrayInputStream(new byte[]{(byte) createStreamAdapter.read(), (byte) createStreamAdapter.read(), -1, ExifInterface.f7159G1, 0, 16, 69, 120, JSONB.Constants.BC_STR_ASCII_FIX_32, 102, 0, 0, 77, 77, 0, 42, 0, 0, 0, 0}), createStreamAdapter);
        try {
            MemoryCacheImageInputStream memoryCacheImageInputStream = new MemoryCacheImageInputStream(sequenceInputStream);
            try {
                BufferedImage m56272g = phn.m56272g(this.f71118d, memoryCacheImageInputStream);
                memoryCacheImageInputStream.close();
                return m56272g;
            } finally {
            }
        } finally {
            sequenceInputStream.close();
        }
    }

    /* renamed from: j */
    public final BufferedImage m54291j(boolean z) throws IOException {
        SoftReference<BufferedImage> softReference = this.f71122h;
        BufferedImage bufferedImage = softReference != null ? softReference.get() : null;
        if (bufferedImage == null) {
            bufferedImage = m54290i();
        }
        this.f71122h = z ? null : new SoftReference<>(bufferedImage);
        return bufferedImage;
    }

    /* renamed from: k */
    public final BufferedImage m54292k() throws IOException {
        Entry entryById = this.f71119e.getEntryById(256);
        Entry entryById2 = this.f71119e.getEntryById(257);
        if (entryById == null || entryById2 == null) {
            throw new IIOException("Missing dimensions for uncompressed EXIF thumbnail");
        }
        Entry entryById3 = this.f71119e.getEntryById(258);
        Entry entryById4 = this.f71119e.getEntryById(277);
        Entry entryById5 = this.f71119e.getEntryById(262);
        int intValue = ((Number) entryById.getValue()).intValue();
        int intValue2 = ((Number) entryById2.getValue()).intValue();
        if (entryById3 != null && !Arrays.equals((int[]) entryById3.getValue(), new int[]{8, 8, 8})) {
            throw new IIOException("Unknown BitsPerSample value for uncompressed EXIF thumbnail (expected [8, 8, 8]): " + entryById3.getValueAsString());
        }
        if (entryById4 != null && ((Integer) entryById4.getValue()).intValue() != 3) {
            throw new IIOException("Unknown SamplesPerPixel value for uncompressed EXIF thumbnail (expected 3): " + entryById4.getValueAsString());
        }
        int intValue3 = entryById5 != null ? ((Number) entryById5.getValue()).intValue() : 2;
        Entry entryById6 = this.f71119e.getEntryById(273);
        if (entryById6 == null) {
            throw new IIOException("Missing StripOffsets tag for uncompressed EXIF thumbnail");
        }
        this.f71120f.seek(((Number) entryById6.getValue()).longValue());
        int i = intValue * intValue2 * 3;
        byte[] m60509I = JPEGImageReader.m60509I(this.f71120f, i);
        if (intValue3 != 2) {
            if (intValue3 != 6) {
                throw new IIOException("Unknown PhotometricInterpretation value for uncompressed EXIF thumbnail (expected 2 or 6): " + intValue3);
            }
            for (int i2 = 0; i2 < i; i2 += 3) {
                YCbCrConverter.convertYCbCr2RGB(m60509I, m60509I, i2);
            }
        }
        return phn.m56273h(m60509I, i, 0, intValue, intValue2);
    }
}
