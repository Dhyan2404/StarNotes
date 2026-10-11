package org.apache.commons.compress.harmony.pack200;

import com.google.common.reflect.ClassPath;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.TimeZone;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.commons.compress.harmony.pack200.Archive;
import org.apache.commons.compress.utils.ExactMath;

/* loaded from: classes12.dex */
public class FileBands extends BandSet {

    /* renamed from: e */
    public final CPUTF8[] f106633e;

    /* renamed from: f */
    public int[] f106634f;

    /* renamed from: g */
    public final int[] f106635g;

    /* renamed from: h */
    public final long[] f106636h;

    /* renamed from: i */
    public final int[] f106637i;

    /* renamed from: j */
    public final byte[][] f106638j;

    /* renamed from: k */
    public final List<Archive.C18890a> f106639k;

    /* renamed from: l */
    public final PackingOptions f106640l;

    /* renamed from: m */
    public final CpBands f106641m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FileBands(CpBands cpBands, SegmentHeader segmentHeader, PackingOptions packingOptions, Archive.C18891b c18891b, int i) {
        super(i, segmentHeader);
        CpBands cpBands2 = cpBands;
        PackingOptions packingOptions2 = packingOptions;
        List<Archive.C18890a> m66857h = c18891b.m66857h();
        this.f106639k = m66857h;
        this.f106640l = packingOptions2;
        this.f106641m = cpBands2;
        int size = m66857h.size();
        this.f106633e = new CPUTF8[size];
        this.f106635g = new int[size];
        this.f106636h = new long[size];
        this.f106637i = new int[size];
        this.f106638j = new byte[size];
        int archive_modtime = segmentHeader.getArchive_modtime();
        HashSet hashSet = new HashSet();
        Iterator<Pack200ClassReader> it2 = c18891b.m66856g().iterator();
        while (it2.hasNext()) {
            hashSet.add(it2.next().getClassName());
        }
        CPUTF8 cPUtf8 = cpBands2.getCPUtf8("");
        boolean z = !"keep".equals(packingOptions.getModificationTime());
        int i2 = 0;
        int i3 = Integer.MIN_VALUE;
        int i4 = 0;
        int i5 = 0;
        while (i4 < size) {
            Archive.C18890a c18890a = this.f106639k.get(i4);
            String m66844e = c18890a.m66844e();
            if (!m66844e.endsWith(ClassPath.f35080d) || packingOptions2.isPassFile(m66844e)) {
                this.f106633e[i4] = cpBands2.getCPUtf8(m66844e);
            } else {
                int[] iArr = this.f106637i;
                iArr[i4] = iArr[i4] | 2;
                if (hashSet.contains(m66844e.substring(i2, m66844e.length() - 6))) {
                    this.f106633e[i4] = cPUtf8;
                } else {
                    this.f106633e[i4] = cpBands2.getCPUtf8(m66844e);
                }
            }
            if (packingOptions.isKeepDeflateHint() && c18890a.m66845f()) {
                int[] iArr2 = this.f106637i;
                iArr2[i4] = iArr2[i4] | 1;
            }
            byte[] m66842c = c18890a.m66842c();
            long[] jArr = this.f106636h;
            long length = m66842c.length;
            jArr[i4] = length;
            i5 = ExactMath.add(i5, length);
            int m66843d = (int) (((c18890a.m66843d() + TimeZone.getDefault().getRawOffset()) / 1000) - archive_modtime);
            this.f106635g[i4] = m66843d;
            i3 = i3;
            if (z && i3 < m66843d) {
                i3 = m66843d;
            }
            this.f106638j[i4] = c18890a.m66842c();
            i4++;
            cpBands2 = cpBands;
            packingOptions2 = packingOptions;
            i2 = 0;
        }
        if (z) {
            Arrays.fill(this.f106635g, i3);
        }
    }

    public void finaliseBands() {
        this.f106634f = new int[this.f106633e.length];
        for (int i = 0; i < this.f106634f.length; i++) {
            if (this.f106633e[i].equals(this.f106641m.getCPUtf8(""))) {
                String m66844e = this.f106639k.get(i).m66844e();
                if (this.f106640l.isPassFile(m66844e)) {
                    this.f106633e[i] = this.f106641m.getCPUtf8(m66844e);
                    int[] iArr = this.f106637i;
                    iArr[i] = iArr[i] & (-3);
                }
            }
            this.f106634f[i] = this.f106633e[i].getIndex();
        }
    }

    /* renamed from: l */
    public final int[] m66943l(byte[][] bArr) {
        int i = 0;
        for (byte[] bArr2 : bArr) {
            i += bArr2.length;
        }
        int[] iArr = new int[i];
        int i2 = 0;
        for (byte[] bArr3 : bArr) {
            int length = bArr3.length;
            int i3 = 0;
            while (i3 < length) {
                iArr[i2] = bArr3[i3] & 255;
                i3++;
                i2++;
            }
        }
        return iArr;
    }

    @Override // org.apache.commons.compress.harmony.pack200.BandSet
    public void pack(OutputStream outputStream) throws IOException, Pack200Exception {
        PackingUtils.log("Writing file bands...");
        int[] iArr = this.f106634f;
        BHSDCodec bHSDCodec = Codec.UNSIGNED5;
        byte[] encodeBandInt = encodeBandInt("file_name", iArr, bHSDCodec);
        outputStream.write(encodeBandInt);
        PackingUtils.log("Wrote " + encodeBandInt.length + " bytes from file_name[" + this.f106634f.length + IteratorUtils.f104924b);
        byte[] encodeFlags = encodeFlags("file_size", this.f106636h, bHSDCodec, bHSDCodec, this.segmentHeader.have_file_size_hi());
        outputStream.write(encodeFlags);
        PackingUtils.log("Wrote " + encodeFlags.length + " bytes from file_size[" + this.f106636h.length + IteratorUtils.f104924b);
        if (this.segmentHeader.have_file_modtime()) {
            byte[] encodeBandInt2 = encodeBandInt("file_modtime", this.f106635g, Codec.DELTA5);
            outputStream.write(encodeBandInt2);
            PackingUtils.log("Wrote " + encodeBandInt2.length + " bytes from file_modtime[" + this.f106635g.length + IteratorUtils.f104924b);
        }
        if (this.segmentHeader.have_file_options()) {
            byte[] encodeBandInt3 = encodeBandInt("file_options", this.f106637i, bHSDCodec);
            outputStream.write(encodeBandInt3);
            PackingUtils.log("Wrote " + encodeBandInt3.length + " bytes from file_options[" + this.f106637i.length + IteratorUtils.f104924b);
        }
        byte[] encodeBandInt4 = encodeBandInt("file_bits", m66943l(this.f106638j), Codec.BYTE1);
        outputStream.write(encodeBandInt4);
        PackingUtils.log("Wrote " + encodeBandInt4.length + " bytes from file_bits[" + this.f106638j.length + IteratorUtils.f104924b);
    }
}
