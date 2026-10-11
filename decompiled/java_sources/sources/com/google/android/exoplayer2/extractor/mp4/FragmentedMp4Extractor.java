package com.google.android.exoplayer2.extractor.mp4;

import android.util.Pair;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import com.alibaba.fastjson2.JSONB;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.audio.Ac4Util;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.extractor.CeaUtil;
import com.google.android.exoplayer2.extractor.ChunkIndex;
import com.google.android.exoplayer2.extractor.Extractor;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.ExtractorsFactory;
import com.google.android.exoplayer2.extractor.GaplessInfoHolder;
import com.google.android.exoplayer2.extractor.PositionHolder;
import com.google.android.exoplayer2.extractor.SeekMap;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.extractor.mp4.AbstractC4745a;
import com.google.android.exoplayer2.extractor.mp4.FragmentedMp4Extractor;
import com.google.android.exoplayer2.extractor.mp4.Track;
import com.google.android.exoplayer2.metadata.emsg.EventMessage;
import com.google.android.exoplayer2.metadata.emsg.EventMessageEncoder;
import com.google.android.exoplayer2.upstream.DataReader;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.NalUnitUtil;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.TimestampAdjuster;
import com.google.android.exoplayer2.util.Util;
import com.google.common.base.Function;
import com.sunia.HTREnginev2.cvm;
import com.sunia.HTREnginev2.f0f;
import com.sunia.HTREnginev2.vkn;
import com.sunia.HTREnginev2.ykn;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.UUID;

/* loaded from: classes5.dex */
public class FragmentedMp4Extractor implements Extractor {
    public static final int FLAG_ENABLE_EMSG_TRACK = 4;
    public static final int FLAG_WORKAROUND_EVERY_VIDEO_FRAME_IS_SYNC_FRAME = 1;
    public static final int FLAG_WORKAROUND_IGNORE_EDIT_LISTS = 16;
    public static final int FLAG_WORKAROUND_IGNORE_TFDT_BOX = 2;

    /* renamed from: I */
    public static final String f23943I = "FragmentedMp4Extractor";

    /* renamed from: J */
    public static final int f23944J = 1936025959;

    /* renamed from: M */
    public static final int f23947M = 100;

    /* renamed from: N */
    public static final int f23948N = 0;

    /* renamed from: O */
    public static final int f23949O = 1;

    /* renamed from: P */
    public static final int f23950P = 2;

    /* renamed from: Q */
    public static final int f23951Q = 3;

    /* renamed from: R */
    public static final int f23952R = 4;

    /* renamed from: A */
    public int f23953A;

    /* renamed from: B */
    public int f23954B;

    /* renamed from: C */
    public int f23955C;

    /* renamed from: D */
    public boolean f23956D;

    /* renamed from: E */
    public ExtractorOutput f23957E;

    /* renamed from: F */
    public TrackOutput[] f23958F;

    /* renamed from: G */
    public TrackOutput[] f23959G;

    /* renamed from: H */
    public boolean f23960H;

    /* renamed from: a */
    public final int f23961a;

    /* renamed from: b */
    @Nullable
    public final Track f23962b;

    /* renamed from: c */
    public final List<Format> f23963c;

    /* renamed from: d */
    public final SparseArray<C4742b> f23964d;

    /* renamed from: e */
    public final ParsableByteArray f23965e;

    /* renamed from: f */
    public final ParsableByteArray f23966f;

    /* renamed from: g */
    public final ParsableByteArray f23967g;

    /* renamed from: h */
    public final byte[] f23968h;

    /* renamed from: i */
    public final ParsableByteArray f23969i;

    /* renamed from: j */
    @Nullable
    public final TimestampAdjuster f23970j;

    /* renamed from: k */
    public final EventMessageEncoder f23971k;

    /* renamed from: l */
    public final ParsableByteArray f23972l;

    /* renamed from: m */
    public final ArrayDeque<AbstractC4745a.a> f23973m;

    /* renamed from: n */
    public final ArrayDeque<C4741a> f23974n;

    /* renamed from: o */
    @Nullable
    public final TrackOutput f23975o;

    /* renamed from: p */
    public int f23976p;

    /* renamed from: q */
    public int f23977q;

    /* renamed from: r */
    public long f23978r;

    /* renamed from: s */
    public int f23979s;

    /* renamed from: t */
    @Nullable
    public ParsableByteArray f23980t;

    /* renamed from: u */
    public long f23981u;

    /* renamed from: v */
    public int f23982v;

    /* renamed from: w */
    public long f23983w;

    /* renamed from: x */
    public long f23984x;

    /* renamed from: y */
    public long f23985y;

    /* renamed from: z */
    @Nullable
    public C4742b f23986z;
    public static final ExtractorsFactory FACTORY = new ExtractorsFactory() { // from class: com.sunia.HTREnginev2.kvg
        @Override // com.google.android.exoplayer2.extractor.ExtractorsFactory
        public final Extractor[] createExtractors() {
            Extractor[] m18936h;
            m18936h = FragmentedMp4Extractor.m18936h();
            return m18936h;
        }
    };

    /* renamed from: K */
    public static final byte[] f23945K = {-94, 57, 79, 82, 90, -101, 79, 20, -94, JSONB.Constants.BC_INT32_SHORT_ZERO, 108, 66, JSONB.Constants.BC_STR_UTF16LE, 100, -115, -12};

    /* renamed from: L */
    public static final Format f23946L = new Format.Builder().setSampleMimeType(MimeTypes.APPLICATION_EMSG).build();

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes5.dex */
    public @interface Flags {
    }

    /* renamed from: com.google.android.exoplayer2.extractor.mp4.FragmentedMp4Extractor$a */
    /* loaded from: classes5.dex */
    public static final class C4741a {

        /* renamed from: a */
        public final long f23987a;

        /* renamed from: b */
        public final boolean f23988b;

        /* renamed from: c */
        public final int f23989c;

        public C4741a(long j, boolean z, int i) {
            this.f23987a = j;
            this.f23988b = z;
            this.f23989c = i;
        }
    }

    /* renamed from: com.google.android.exoplayer2.extractor.mp4.FragmentedMp4Extractor$b */
    /* loaded from: classes5.dex */
    public static final class C4742b {

        /* renamed from: m */
        public static final int f23990m = 8;

        /* renamed from: a */
        public final TrackOutput f23991a;

        /* renamed from: d */
        public ykn f23994d;

        /* renamed from: e */
        public f0f f23995e;

        /* renamed from: f */
        public int f23996f;

        /* renamed from: g */
        public int f23997g;

        /* renamed from: h */
        public int f23998h;

        /* renamed from: i */
        public int f23999i;

        /* renamed from: l */
        public boolean f24002l;

        /* renamed from: b */
        public final vkn f23992b = new vkn();

        /* renamed from: c */
        public final ParsableByteArray f23993c = new ParsableByteArray();

        /* renamed from: j */
        public final ParsableByteArray f24000j = new ParsableByteArray(1);

        /* renamed from: k */
        public final ParsableByteArray f24001k = new ParsableByteArray();

        public C4742b(TrackOutput trackOutput, ykn yknVar, f0f f0fVar) {
            this.f23991a = trackOutput;
            this.f23994d = yknVar;
            this.f23995e = f0fVar;
            m18972j(yknVar, f0fVar);
        }

        /* renamed from: c */
        public int m18965c() {
            int i = !this.f24002l ? this.f23994d.f90841g[this.f23996f] : this.f23992b.f87642k[this.f23996f] ? 1 : 0;
            return m18969g() != null ? i | 1073741824 : i;
        }

        /* renamed from: d */
        public long m18966d() {
            return !this.f24002l ? this.f23994d.f90837c[this.f23996f] : this.f23992b.f87638g[this.f23998h];
        }

        /* renamed from: e */
        public long m18967e() {
            return !this.f24002l ? this.f23994d.f90840f[this.f23996f] : this.f23992b.m57840c(this.f23996f);
        }

        /* renamed from: f */
        public int m18968f() {
            return !this.f24002l ? this.f23994d.f90838d[this.f23996f] : this.f23992b.f87640i[this.f23996f];
        }

        @Nullable
        /* renamed from: g */
        public TrackEncryptionBox m18969g() {
            if (!this.f24002l) {
                return null;
            }
            int i = ((f0f) Util.castNonNull(this.f23992b.f87632a)).f69518a;
            TrackEncryptionBox trackEncryptionBox = this.f23992b.f87645n;
            if (trackEncryptionBox == null) {
                trackEncryptionBox = this.f23994d.f90835a.getSampleDescriptionEncryptionBox(i);
            }
            if (trackEncryptionBox == null || !trackEncryptionBox.isEncrypted) {
                return null;
            }
            return trackEncryptionBox;
        }

        /* renamed from: h */
        public boolean m18970h() {
            this.f23996f++;
            if (!this.f24002l) {
                return false;
            }
            int i = this.f23997g + 1;
            this.f23997g = i;
            int[] iArr = this.f23992b.f87639h;
            int i2 = this.f23998h;
            if (i != iArr[i2]) {
                return true;
            }
            this.f23998h = i2 + 1;
            this.f23997g = 0;
            return false;
        }

        /* renamed from: i */
        public int m18971i(int i, int i2) {
            ParsableByteArray parsableByteArray;
            TrackEncryptionBox m18969g = m18969g();
            if (m18969g == null) {
                return 0;
            }
            int i3 = m18969g.perSampleIvSize;
            if (i3 != 0) {
                parsableByteArray = this.f23992b.f87646o;
            } else {
                byte[] bArr = (byte[]) Util.castNonNull(m18969g.defaultInitializationVector);
                this.f24001k.reset(bArr, bArr.length);
                ParsableByteArray parsableByteArray2 = this.f24001k;
                i3 = bArr.length;
                parsableByteArray = parsableByteArray2;
            }
            boolean m57844g = this.f23992b.m57844g(this.f23996f);
            boolean z = m57844g || i2 != 0;
            this.f24000j.getData()[0] = (byte) ((z ? 128 : 0) | i3);
            this.f24000j.setPosition(0);
            this.f23991a.sampleData(this.f24000j, 1, 1);
            this.f23991a.sampleData(parsableByteArray, i3, 1);
            if (!z) {
                return i3 + 1;
            }
            if (!m57844g) {
                this.f23993c.reset(8);
                byte[] data = this.f23993c.getData();
                data[0] = 0;
                data[1] = 1;
                data[2] = (byte) ((i2 >> 8) & 255);
                data[3] = (byte) (i2 & 255);
                data[4] = (byte) ((i >> 24) & 255);
                data[5] = (byte) ((i >> 16) & 255);
                data[6] = (byte) ((i >> 8) & 255);
                data[7] = (byte) (i & 255);
                this.f23991a.sampleData(this.f23993c, 8, 1);
                return i3 + 1 + 8;
            }
            ParsableByteArray parsableByteArray3 = this.f23992b.f87646o;
            int readUnsignedShort = parsableByteArray3.readUnsignedShort();
            parsableByteArray3.skipBytes(-2);
            int i4 = (readUnsignedShort * 6) + 2;
            if (i2 != 0) {
                this.f23993c.reset(i4);
                byte[] data2 = this.f23993c.getData();
                parsableByteArray3.readBytes(data2, 0, i4);
                int i5 = (((data2[2] & 255) << 8) | (data2[3] & 255)) + i2;
                data2[2] = (byte) ((i5 >> 8) & 255);
                data2[3] = (byte) (i5 & 255);
                parsableByteArray3 = this.f23993c;
            }
            this.f23991a.sampleData(parsableByteArray3, i4, 1);
            return i3 + 1 + i4;
        }

        /* renamed from: j */
        public void m18972j(ykn yknVar, f0f f0fVar) {
            this.f23994d = yknVar;
            this.f23995e = f0fVar;
            this.f23991a.format(yknVar.f90835a.format);
            m18973k();
        }

        /* renamed from: k */
        public void m18973k() {
            this.f23992b.m57843f();
            this.f23996f = 0;
            this.f23998h = 0;
            this.f23997g = 0;
            this.f23999i = 0;
            this.f24002l = false;
        }

        /* renamed from: l */
        public void m18974l(long j) {
            int i = this.f23996f;
            while (true) {
                vkn vknVar = this.f23992b;
                if (i >= vknVar.f87637f || vknVar.m57840c(i) >= j) {
                    return;
                }
                if (this.f23992b.f87642k[i]) {
                    this.f23999i = i;
                }
                i++;
            }
        }

        /* renamed from: m */
        public void m18975m() {
            TrackEncryptionBox m18969g = m18969g();
            if (m18969g == null) {
                return;
            }
            ParsableByteArray parsableByteArray = this.f23992b.f87646o;
            int i = m18969g.perSampleIvSize;
            if (i != 0) {
                parsableByteArray.skipBytes(i);
            }
            if (this.f23992b.m57844g(this.f23996f)) {
                parsableByteArray.skipBytes(parsableByteArray.readUnsignedShort() * 6);
            }
        }

        /* renamed from: n */
        public void m18976n(DrmInitData drmInitData) {
            TrackEncryptionBox sampleDescriptionEncryptionBox = this.f23994d.f90835a.getSampleDescriptionEncryptionBox(((f0f) Util.castNonNull(this.f23992b.f87632a)).f69518a);
            this.f23991a.format(this.f23994d.f90835a.format.buildUpon().setDrmInitData(drmInitData.copyWithSchemeType(sampleDescriptionEncryptionBox != null ? sampleDescriptionEncryptionBox.schemeType : null)).build());
        }
    }

    public FragmentedMp4Extractor() {
        this(0);
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00af  */
    /* renamed from: A */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m18927A(com.google.android.exoplayer2.extractor.mp4.FragmentedMp4Extractor.C4742b r33, int r34, int r35, com.google.android.exoplayer2.util.ParsableByteArray r36, int r37) throws com.google.android.exoplayer2.ParserException {
        /*
            Method dump skipped, instructions count: 317
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.mp4.FragmentedMp4Extractor.m18927A(com.google.android.exoplayer2.extractor.mp4.FragmentedMp4Extractor$b, int, int, com.google.android.exoplayer2.util.ParsableByteArray, int):int");
    }

    /* renamed from: B */
    public static void m18928B(AbstractC4745a.a aVar, C4742b c4742b, int i) throws ParserException {
        List<AbstractC4745a.b> list = aVar.f24181D1;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            AbstractC4745a.b bVar = list.get(i4);
            if (bVar.f24179a == 1953658222) {
                ParsableByteArray parsableByteArray = bVar.f24183C1;
                parsableByteArray.setPosition(12);
                int readUnsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
                if (readUnsignedIntToInt > 0) {
                    i3 += readUnsignedIntToInt;
                    i2++;
                }
            }
        }
        c4742b.f23998h = 0;
        c4742b.f23997g = 0;
        c4742b.f23996f = 0;
        c4742b.f23992b.m57842e(i2, i3);
        int i5 = 0;
        int i6 = 0;
        for (int i7 = 0; i7 < size; i7++) {
            AbstractC4745a.b bVar2 = list.get(i7);
            if (bVar2.f24179a == 1953658222) {
                i6 = m18927A(c4742b, i5, i, bVar2.f24183C1, i6);
                i5++;
            }
        }
    }

    /* renamed from: C */
    public static void m18929C(ParsableByteArray parsableByteArray, vkn vknVar, byte[] bArr) throws ParserException {
        parsableByteArray.setPosition(8);
        parsableByteArray.readBytes(bArr, 0, 16);
        if (Arrays.equals(bArr, f23945K)) {
            m18942t(parsableByteArray, 16, vknVar);
        }
    }

    /* renamed from: I */
    public static boolean m18930I(int i) {
        return i == 1836019574 || i == 1953653099 || i == 1835297121 || i == 1835626086 || i == 1937007212 || i == 1836019558 || i == 1953653094 || i == 1836475768 || i == 1701082227;
    }

    /* renamed from: J */
    public static boolean m18931J(int i) {
        return i == 1751411826 || i == 1835296868 || i == 1836476516 || i == 1936286840 || i == 1937011556 || i == 1937011827 || i == 1668576371 || i == 1937011555 || i == 1937011578 || i == 1937013298 || i == 1937007471 || i == 1668232756 || i == 1937011571 || i == 1952867444 || i == 1952868452 || i == 1953196132 || i == 1953654136 || i == 1953658222 || i == 1886614376 || i == 1935763834 || i == 1935763823 || i == 1936027235 || i == 1970628964 || i == 1935828848 || i == 1936158820 || i == 1701606260 || i == 1835362404 || i == 1701671783;
    }

    /* renamed from: b */
    public static int m18933b(int i) throws ParserException {
        if (i >= 0) {
            return i;
        }
        StringBuilder sb = new StringBuilder(38);
        sb.append("Unexpected negative value: ");
        sb.append(i);
        throw ParserException.createForMalformedContainer(sb.toString(), null);
    }

    @Nullable
    /* renamed from: e */
    public static DrmInitData m18934e(List<AbstractC4745a.b> list) {
        int size = list.size();
        ArrayList arrayList = null;
        for (int i = 0; i < size; i++) {
            AbstractC4745a.b bVar = list.get(i);
            if (bVar.f24179a == 1886614376) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                byte[] data = bVar.f24183C1.getData();
                UUID parseUuid = PsshAtomUtil.parseUuid(data);
                if (parseUuid == null) {
                    Log.m21493w(f23943I, "Skipped pssh atom (failed to extract uuid)");
                } else {
                    arrayList.add(new DrmInitData.SchemeData(parseUuid, "video/mp4", data));
                }
            }
        }
        if (arrayList == null) {
            return null;
        }
        return new DrmInitData(arrayList);
    }

    @Nullable
    /* renamed from: f */
    public static C4742b m18935f(SparseArray<C4742b> sparseArray) {
        int size = sparseArray.size();
        C4742b c4742b = null;
        long j = Long.MAX_VALUE;
        for (int i = 0; i < size; i++) {
            C4742b valueAt = sparseArray.valueAt(i);
            if ((valueAt.f24002l || valueAt.f23996f != valueAt.f23994d.f90836b) && (!valueAt.f24002l || valueAt.f23998h != valueAt.f23992b.f87636e)) {
                long m18966d = valueAt.m18966d();
                if (m18966d < j) {
                    c4742b = valueAt;
                    j = m18966d;
                }
            }
        }
        return c4742b;
    }

    /* renamed from: h */
    public static /* synthetic */ Extractor[] m18936h() {
        return new Extractor[]{new FragmentedMp4Extractor()};
    }

    /* renamed from: o */
    public static long m18937o(ParsableByteArray parsableByteArray) {
        parsableByteArray.setPosition(8);
        return AbstractC4745a.m19007c(parsableByteArray.readInt()) == 0 ? parsableByteArray.readUnsignedInt() : parsableByteArray.readUnsignedLongToLong();
    }

    /* renamed from: p */
    public static void m18938p(AbstractC4745a.a aVar, SparseArray<C4742b> sparseArray, boolean z, int i, byte[] bArr) throws ParserException {
        int size = aVar.f24182E1.size();
        for (int i2 = 0; i2 < size; i2++) {
            AbstractC4745a.a aVar2 = aVar.f24182E1.get(i2);
            if (aVar2.f24179a == 1953653094) {
                m18947y(aVar2, sparseArray, z, i, bArr);
            }
        }
    }

    /* renamed from: q */
    public static void m18939q(ParsableByteArray parsableByteArray, vkn vknVar) throws ParserException {
        parsableByteArray.setPosition(8);
        int readInt = parsableByteArray.readInt();
        if ((AbstractC4745a.m19006b(readInt) & 1) == 1) {
            parsableByteArray.skipBytes(8);
        }
        int readUnsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
        if (readUnsignedIntToInt == 1) {
            vknVar.f87635d += AbstractC4745a.m19007c(readInt) == 0 ? parsableByteArray.readUnsignedInt() : parsableByteArray.readUnsignedLongToLong();
        } else {
            StringBuilder sb = new StringBuilder(40);
            sb.append("Unexpected saio entry count: ");
            sb.append(readUnsignedIntToInt);
            throw ParserException.createForMalformedContainer(sb.toString(), null);
        }
    }

    /* renamed from: r */
    public static void m18940r(TrackEncryptionBox trackEncryptionBox, ParsableByteArray parsableByteArray, vkn vknVar) throws ParserException {
        int i;
        int i2 = trackEncryptionBox.perSampleIvSize;
        parsableByteArray.setPosition(8);
        if ((AbstractC4745a.m19006b(parsableByteArray.readInt()) & 1) == 1) {
            parsableByteArray.skipBytes(8);
        }
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        int readUnsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
        int i3 = vknVar.f87637f;
        if (readUnsignedIntToInt > i3) {
            StringBuilder sb = new StringBuilder(78);
            sb.append("Saiz sample count ");
            sb.append(readUnsignedIntToInt);
            sb.append(" is greater than fragment sample count");
            sb.append(i3);
            throw ParserException.createForMalformedContainer(sb.toString(), null);
        }
        if (readUnsignedByte == 0) {
            boolean[] zArr = vknVar.f87644m;
            i = 0;
            for (int i4 = 0; i4 < readUnsignedIntToInt; i4++) {
                int readUnsignedByte2 = parsableByteArray.readUnsignedByte();
                i += readUnsignedByte2;
                zArr[i4] = readUnsignedByte2 > i2;
            }
        } else {
            i = (readUnsignedByte * readUnsignedIntToInt) + 0;
            Arrays.fill(vknVar.f87644m, 0, readUnsignedIntToInt, readUnsignedByte > i2);
        }
        Arrays.fill(vknVar.f87644m, readUnsignedIntToInt, vknVar.f87637f, false);
        if (i > 0) {
            vknVar.m57841d(i);
        }
    }

    /* renamed from: s */
    public static void m18941s(AbstractC4745a.a aVar, @Nullable String str, vkn vknVar) throws ParserException {
        byte[] bArr = null;
        ParsableByteArray parsableByteArray = null;
        ParsableByteArray parsableByteArray2 = null;
        for (int i = 0; i < aVar.f24181D1.size(); i++) {
            AbstractC4745a.b bVar = aVar.f24181D1.get(i);
            ParsableByteArray parsableByteArray3 = bVar.f24183C1;
            int i2 = bVar.f24179a;
            if (i2 == 1935828848) {
                parsableByteArray3.setPosition(12);
                if (parsableByteArray3.readInt() == 1936025959) {
                    parsableByteArray = parsableByteArray3;
                }
            } else if (i2 == 1936158820) {
                parsableByteArray3.setPosition(12);
                if (parsableByteArray3.readInt() == 1936025959) {
                    parsableByteArray2 = parsableByteArray3;
                }
            }
        }
        if (parsableByteArray == null || parsableByteArray2 == null) {
            return;
        }
        parsableByteArray.setPosition(8);
        int m19007c = AbstractC4745a.m19007c(parsableByteArray.readInt());
        parsableByteArray.skipBytes(4);
        if (m19007c == 1) {
            parsableByteArray.skipBytes(4);
        }
        if (parsableByteArray.readInt() != 1) {
            throw ParserException.createForUnsupportedContainerFeature("Entry count in sbgp != 1 (unsupported).");
        }
        parsableByteArray2.setPosition(8);
        int m19007c2 = AbstractC4745a.m19007c(parsableByteArray2.readInt());
        parsableByteArray2.skipBytes(4);
        if (m19007c2 == 1) {
            if (parsableByteArray2.readUnsignedInt() == 0) {
                throw ParserException.createForUnsupportedContainerFeature("Variable length description in sgpd found (unsupported)");
            }
        } else if (m19007c2 >= 2) {
            parsableByteArray2.skipBytes(4);
        }
        if (parsableByteArray2.readUnsignedInt() != 1) {
            throw ParserException.createForUnsupportedContainerFeature("Entry count in sgpd != 1 (unsupported).");
        }
        parsableByteArray2.skipBytes(1);
        int readUnsignedByte = parsableByteArray2.readUnsignedByte();
        int i3 = (readUnsignedByte & 240) >> 4;
        int i4 = readUnsignedByte & 15;
        boolean z = parsableByteArray2.readUnsignedByte() == 1;
        if (z) {
            int readUnsignedByte2 = parsableByteArray2.readUnsignedByte();
            byte[] bArr2 = new byte[16];
            parsableByteArray2.readBytes(bArr2, 0, 16);
            if (readUnsignedByte2 == 0) {
                int readUnsignedByte3 = parsableByteArray2.readUnsignedByte();
                bArr = new byte[readUnsignedByte3];
                parsableByteArray2.readBytes(bArr, 0, readUnsignedByte3);
            }
            vknVar.f87643l = true;
            vknVar.f87645n = new TrackEncryptionBox(z, str, readUnsignedByte2, bArr2, i3, i4, bArr);
        }
    }

    /* renamed from: t */
    public static void m18942t(ParsableByteArray parsableByteArray, int i, vkn vknVar) throws ParserException {
        parsableByteArray.setPosition(i + 8);
        int m19006b = AbstractC4745a.m19006b(parsableByteArray.readInt());
        if ((m19006b & 1) != 0) {
            throw ParserException.createForUnsupportedContainerFeature("Overriding TrackEncryptionBox parameters is unsupported.");
        }
        boolean z = (m19006b & 2) != 0;
        int readUnsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
        if (readUnsignedIntToInt == 0) {
            Arrays.fill(vknVar.f87644m, 0, vknVar.f87637f, false);
            return;
        }
        int i2 = vknVar.f87637f;
        if (readUnsignedIntToInt == i2) {
            Arrays.fill(vknVar.f87644m, 0, readUnsignedIntToInt, z);
            vknVar.m57841d(parsableByteArray.bytesLeft());
            vknVar.m57839b(parsableByteArray);
        } else {
            StringBuilder sb = new StringBuilder(80);
            sb.append("Senc sample count ");
            sb.append(readUnsignedIntToInt);
            sb.append(" is different from fragment sample count");
            sb.append(i2);
            throw ParserException.createForMalformedContainer(sb.toString(), null);
        }
    }

    /* renamed from: u */
    public static void m18943u(ParsableByteArray parsableByteArray, vkn vknVar) throws ParserException {
        m18942t(parsableByteArray, 0, vknVar);
    }

    /* renamed from: v */
    public static Pair<Long, ChunkIndex> m18944v(ParsableByteArray parsableByteArray, long j) throws ParserException {
        long readUnsignedLongToLong;
        long readUnsignedLongToLong2;
        parsableByteArray.setPosition(8);
        int m19007c = AbstractC4745a.m19007c(parsableByteArray.readInt());
        parsableByteArray.skipBytes(4);
        long readUnsignedInt = parsableByteArray.readUnsignedInt();
        if (m19007c == 0) {
            readUnsignedLongToLong = parsableByteArray.readUnsignedInt();
            readUnsignedLongToLong2 = parsableByteArray.readUnsignedInt();
        } else {
            readUnsignedLongToLong = parsableByteArray.readUnsignedLongToLong();
            readUnsignedLongToLong2 = parsableByteArray.readUnsignedLongToLong();
        }
        long j2 = readUnsignedLongToLong;
        long j3 = j + readUnsignedLongToLong2;
        long scaleLargeTimestamp = Util.scaleLargeTimestamp(j2, 1000000L, readUnsignedInt);
        parsableByteArray.skipBytes(2);
        int readUnsignedShort = parsableByteArray.readUnsignedShort();
        int[] iArr = new int[readUnsignedShort];
        long[] jArr = new long[readUnsignedShort];
        long[] jArr2 = new long[readUnsignedShort];
        long[] jArr3 = new long[readUnsignedShort];
        long j4 = scaleLargeTimestamp;
        int i = 0;
        long j5 = j2;
        while (i < readUnsignedShort) {
            int readInt = parsableByteArray.readInt();
            if ((readInt & Integer.MIN_VALUE) != 0) {
                throw ParserException.createForMalformedContainer("Unhandled indirect reference", null);
            }
            long readUnsignedInt2 = parsableByteArray.readUnsignedInt();
            iArr[i] = readInt & Integer.MAX_VALUE;
            jArr[i] = j3;
            jArr3[i] = j4;
            long j6 = j5 + readUnsignedInt2;
            long[] jArr4 = jArr2;
            long[] jArr5 = jArr3;
            int i2 = readUnsignedShort;
            long scaleLargeTimestamp2 = Util.scaleLargeTimestamp(j6, 1000000L, readUnsignedInt);
            jArr4[i] = scaleLargeTimestamp2 - jArr5[i];
            parsableByteArray.skipBytes(4);
            j3 += r1[i];
            i++;
            iArr = iArr;
            jArr3 = jArr5;
            jArr2 = jArr4;
            jArr = jArr;
            readUnsignedShort = i2;
            j5 = j6;
            j4 = scaleLargeTimestamp2;
        }
        return Pair.create(Long.valueOf(scaleLargeTimestamp), new ChunkIndex(iArr, jArr, jArr2, jArr3));
    }

    /* renamed from: w */
    public static long m18945w(ParsableByteArray parsableByteArray) {
        parsableByteArray.setPosition(8);
        return AbstractC4745a.m19007c(parsableByteArray.readInt()) == 1 ? parsableByteArray.readUnsignedLongToLong() : parsableByteArray.readUnsignedInt();
    }

    @Nullable
    /* renamed from: x */
    public static C4742b m18946x(ParsableByteArray parsableByteArray, SparseArray<C4742b> sparseArray, boolean z) {
        parsableByteArray.setPosition(8);
        int m19006b = AbstractC4745a.m19006b(parsableByteArray.readInt());
        C4742b valueAt = z ? sparseArray.valueAt(0) : sparseArray.get(parsableByteArray.readInt());
        if (valueAt == null) {
            return null;
        }
        if ((m19006b & 1) != 0) {
            long readUnsignedLongToLong = parsableByteArray.readUnsignedLongToLong();
            vkn vknVar = valueAt.f23992b;
            vknVar.f87634c = readUnsignedLongToLong;
            vknVar.f87635d = readUnsignedLongToLong;
        }
        f0f f0fVar = valueAt.f23995e;
        valueAt.f23992b.f87632a = new f0f((m19006b & 2) != 0 ? parsableByteArray.readInt() - 1 : f0fVar.f69518a, (m19006b & 8) != 0 ? parsableByteArray.readInt() : f0fVar.f69519b, (m19006b & 16) != 0 ? parsableByteArray.readInt() : f0fVar.f69520c, (m19006b & 32) != 0 ? parsableByteArray.readInt() : f0fVar.f69521d);
        return valueAt;
    }

    /* renamed from: y */
    public static void m18947y(AbstractC4745a.a aVar, SparseArray<C4742b> sparseArray, boolean z, int i, byte[] bArr) throws ParserException {
        C4742b m18946x = m18946x(((AbstractC4745a.b) Assertions.checkNotNull(aVar.m19012h(AbstractC4745a.f24105b0))).f24183C1, sparseArray, z);
        if (m18946x == null) {
            return;
        }
        vkn vknVar = m18946x.f23992b;
        long j = vknVar.f87648q;
        boolean z2 = vknVar.f87649r;
        m18946x.m18973k();
        m18946x.f24002l = true;
        AbstractC4745a.b m19012h = aVar.m19012h(AbstractC4745a.f24102a0);
        if (m19012h == null || (i & 2) != 0) {
            vknVar.f87648q = j;
            vknVar.f87649r = z2;
        } else {
            vknVar.f87648q = m18945w(m19012h.f24183C1);
            vknVar.f87649r = true;
        }
        m18928B(aVar, m18946x, i);
        TrackEncryptionBox sampleDescriptionEncryptionBox = m18946x.f23994d.f90835a.getSampleDescriptionEncryptionBox(((f0f) Assertions.checkNotNull(vknVar.f87632a)).f69518a);
        AbstractC4745a.b m19012h2 = aVar.m19012h(AbstractC4745a.f24061F0);
        if (m19012h2 != null) {
            m18940r((TrackEncryptionBox) Assertions.checkNotNull(sampleDescriptionEncryptionBox), m19012h2.f24183C1, vknVar);
        }
        AbstractC4745a.b m19012h3 = aVar.m19012h(AbstractC4745a.f24063G0);
        if (m19012h3 != null) {
            m18939q(m19012h3.f24183C1, vknVar);
        }
        AbstractC4745a.b m19012h4 = aVar.m19012h(AbstractC4745a.f24071K0);
        if (m19012h4 != null) {
            m18943u(m19012h4.f24183C1, vknVar);
        }
        m18941s(aVar, sampleDescriptionEncryptionBox != null ? sampleDescriptionEncryptionBox.schemeType : null, vknVar);
        int size = aVar.f24181D1.size();
        for (int i2 = 0; i2 < size; i2++) {
            AbstractC4745a.b bVar = aVar.f24181D1.get(i2);
            if (bVar.f24179a == 1970628964) {
                m18929C(bVar.f24183C1, vknVar, bArr);
            }
        }
    }

    /* renamed from: z */
    public static Pair<Integer, f0f> m18948z(ParsableByteArray parsableByteArray) {
        parsableByteArray.setPosition(12);
        return Pair.create(Integer.valueOf(parsableByteArray.readInt()), new f0f(parsableByteArray.readInt() - 1, parsableByteArray.readInt(), parsableByteArray.readInt(), parsableByteArray.readInt()));
    }

    /* renamed from: D */
    public final void m18949D(long j) throws ParserException {
        while (!this.f23973m.isEmpty() && this.f23973m.peek().f24180C1 == j) {
            m18957i(this.f23973m.pop());
        }
        m18954c();
    }

    /* renamed from: E */
    public final boolean m18950E(ExtractorInput extractorInput) throws IOException {
        if (this.f23979s == 0) {
            if (!extractorInput.readFully(this.f23972l.getData(), 0, 8, true)) {
                return false;
            }
            this.f23979s = 8;
            this.f23972l.setPosition(0);
            this.f23978r = this.f23972l.readUnsignedInt();
            this.f23977q = this.f23972l.readInt();
        }
        long j = this.f23978r;
        if (j == 1) {
            extractorInput.readFully(this.f23972l.getData(), 8, 8);
            this.f23979s += 8;
            this.f23978r = this.f23972l.readUnsignedLongToLong();
        } else if (j == 0) {
            long length = extractorInput.getLength();
            if (length == -1 && !this.f23973m.isEmpty()) {
                length = this.f23973m.peek().f24180C1;
            }
            if (length != -1) {
                this.f23978r = (length - extractorInput.getPosition()) + this.f23979s;
            }
        }
        if (this.f23978r < this.f23979s) {
            throw ParserException.createForUnsupportedContainerFeature("Atom size less than header length (unsupported).");
        }
        long position = extractorInput.getPosition() - this.f23979s;
        int i = this.f23977q;
        if ((i == 1836019558 || i == 1835295092) && !this.f23960H) {
            this.f23957E.seekMap(new SeekMap.Unseekable(this.f23984x, position));
            this.f23960H = true;
        }
        if (this.f23977q == 1836019558) {
            int size = this.f23964d.size();
            for (int i2 = 0; i2 < size; i2++) {
                vkn vknVar = this.f23964d.valueAt(i2).f23992b;
                vknVar.f87633b = position;
                vknVar.f87635d = position;
                vknVar.f87634c = position;
            }
        }
        int i3 = this.f23977q;
        if (i3 == 1835295092) {
            this.f23986z = null;
            this.f23981u = position + this.f23978r;
            this.f23976p = 2;
            return true;
        }
        if (m18930I(i3)) {
            long position2 = (extractorInput.getPosition() + this.f23978r) - 8;
            this.f23973m.push(new AbstractC4745a.a(this.f23977q, position2));
            if (this.f23978r == this.f23979s) {
                m18949D(position2);
            } else {
                m18954c();
            }
        } else if (m18931J(this.f23977q)) {
            if (this.f23979s != 8) {
                throw ParserException.createForUnsupportedContainerFeature("Leaf atom defines extended atom size (unsupported).");
            }
            long j2 = this.f23978r;
            if (j2 > 2147483647L) {
                throw ParserException.createForUnsupportedContainerFeature("Leaf atom with length > 2147483647 (unsupported).");
            }
            ParsableByteArray parsableByteArray = new ParsableByteArray((int) j2);
            System.arraycopy(this.f23972l.getData(), 0, parsableByteArray.getData(), 0, 8);
            this.f23980t = parsableByteArray;
            this.f23976p = 1;
        } else {
            if (this.f23978r > 2147483647L) {
                throw ParserException.createForUnsupportedContainerFeature("Skipping atom with length > 2147483647 (unsupported).");
            }
            this.f23980t = null;
            this.f23976p = 1;
        }
        return true;
    }

    /* renamed from: F */
    public final void m18951F(ExtractorInput extractorInput) throws IOException {
        int i = ((int) this.f23978r) - this.f23979s;
        ParsableByteArray parsableByteArray = this.f23980t;
        if (parsableByteArray != null) {
            extractorInput.readFully(parsableByteArray.getData(), 8, i);
            m18959k(new AbstractC4745a.b(this.f23977q, parsableByteArray), extractorInput.getPosition());
        } else {
            extractorInput.skipFully(i);
        }
        m18949D(extractorInput.getPosition());
    }

    /* renamed from: G */
    public final void m18952G(ExtractorInput extractorInput) throws IOException {
        int size = this.f23964d.size();
        long j = Long.MAX_VALUE;
        C4742b c4742b = null;
        for (int i = 0; i < size; i++) {
            vkn vknVar = this.f23964d.valueAt(i).f23992b;
            if (vknVar.f87647p) {
                long j2 = vknVar.f87635d;
                if (j2 < j) {
                    c4742b = this.f23964d.valueAt(i);
                    j = j2;
                }
            }
        }
        if (c4742b == null) {
            this.f23976p = 3;
            return;
        }
        int position = (int) (j - extractorInput.getPosition());
        if (position < 0) {
            throw ParserException.createForMalformedContainer("Offset to encryption data was negative.", null);
        }
        extractorInput.skipFully(position);
        c4742b.f23992b.m57838a(extractorInput);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: H */
    public final boolean m18953H(ExtractorInput extractorInput) throws IOException {
        int sampleData;
        C4742b c4742b = this.f23986z;
        Throwable th = null;
        if (c4742b == null) {
            c4742b = m18935f(this.f23964d);
            if (c4742b == null) {
                int position = (int) (this.f23981u - extractorInput.getPosition());
                if (position < 0) {
                    throw ParserException.createForMalformedContainer("Offset to end of mdat was negative.", null);
                }
                extractorInput.skipFully(position);
                m18954c();
                return false;
            }
            int m18966d = (int) (c4742b.m18966d() - extractorInput.getPosition());
            if (m18966d < 0) {
                Log.m21493w(f23943I, "Ignoring negative offset to sample data.");
                m18966d = 0;
            }
            extractorInput.skipFully(m18966d);
            this.f23986z = c4742b;
        }
        int i = 4;
        int i2 = 1;
        if (this.f23976p == 3) {
            int m18968f = c4742b.m18968f();
            this.f23953A = m18968f;
            if (c4742b.f23996f < c4742b.f23999i) {
                extractorInput.skipFully(m18968f);
                c4742b.m18975m();
                if (!c4742b.m18970h()) {
                    this.f23986z = null;
                }
                this.f23976p = 3;
                return true;
            }
            if (c4742b.f23994d.f90835a.sampleTransformation == 1) {
                this.f23953A = m18968f - 8;
                extractorInput.skipFully(8);
            }
            if (MimeTypes.AUDIO_AC4.equals(c4742b.f23994d.f90835a.format.sampleMimeType)) {
                this.f23954B = c4742b.m18971i(this.f23953A, 7);
                Ac4Util.getAc4SampleHeader(this.f23953A, this.f23969i);
                c4742b.f23991a.sampleData(this.f23969i, 7);
                this.f23954B += 7;
            } else {
                this.f23954B = c4742b.m18971i(this.f23953A, 0);
            }
            this.f23953A += this.f23954B;
            this.f23976p = 4;
            this.f23955C = 0;
        }
        Track track = c4742b.f23994d.f90835a;
        TrackOutput trackOutput = c4742b.f23991a;
        long m18967e = c4742b.m18967e();
        TimestampAdjuster timestampAdjuster = this.f23970j;
        if (timestampAdjuster != null) {
            m18967e = timestampAdjuster.adjustSampleTimestamp(m18967e);
        }
        long j = m18967e;
        if (track.nalUnitLengthFieldLength == 0) {
            while (true) {
                int i3 = this.f23954B;
                int i4 = this.f23953A;
                if (i3 >= i4) {
                    break;
                }
                this.f23954B += trackOutput.sampleData((DataReader) extractorInput, i4 - i3, false);
            }
        } else {
            byte[] data = this.f23966f.getData();
            data[0] = 0;
            data[1] = 0;
            data[2] = 0;
            int i5 = track.nalUnitLengthFieldLength;
            int i6 = i5 + 1;
            int i7 = 4 - i5;
            while (this.f23954B < this.f23953A) {
                int i8 = this.f23955C;
                if (i8 == 0) {
                    extractorInput.readFully(data, i7, i6);
                    this.f23966f.setPosition(0);
                    int readInt = this.f23966f.readInt();
                    if (readInt < i2) {
                        throw ParserException.createForMalformedContainer("Invalid NAL length", th);
                    }
                    this.f23955C = readInt - 1;
                    this.f23965e.setPosition(0);
                    trackOutput.sampleData(this.f23965e, i);
                    trackOutput.sampleData(this.f23966f, i2);
                    this.f23956D = (this.f23959G.length <= 0 || !NalUnitUtil.isNalUnitSei(track.format.sampleMimeType, data[i])) ? 0 : i2;
                    this.f23954B += 5;
                    this.f23953A += i7;
                } else {
                    if (this.f23956D) {
                        this.f23967g.reset(i8);
                        extractorInput.readFully(this.f23967g.getData(), 0, this.f23955C);
                        trackOutput.sampleData(this.f23967g, this.f23955C);
                        sampleData = this.f23955C;
                        int unescapeStream = NalUnitUtil.unescapeStream(this.f23967g.getData(), this.f23967g.limit());
                        this.f23967g.setPosition(MimeTypes.VIDEO_H265.equals(track.format.sampleMimeType) ? 1 : 0);
                        this.f23967g.setLimit(unescapeStream);
                        CeaUtil.consume(j, this.f23967g, this.f23959G);
                    } else {
                        sampleData = trackOutput.sampleData((DataReader) extractorInput, i8, false);
                    }
                    this.f23954B += sampleData;
                    this.f23955C -= sampleData;
                    th = null;
                    i = 4;
                    i2 = 1;
                }
            }
        }
        int m18965c = c4742b.m18965c();
        TrackEncryptionBox m18969g = c4742b.m18969g();
        trackOutput.sampleMetadata(j, m18965c, this.f23953A, 0, m18969g != null ? m18969g.cryptoData : null);
        m18962n(j);
        if (!c4742b.m18970h()) {
            this.f23986z = null;
        }
        this.f23976p = 3;
        return true;
    }

    /* renamed from: c */
    public final void m18954c() {
        this.f23976p = 0;
        this.f23979s = 0;
    }

    /* renamed from: d */
    public final f0f m18955d(SparseArray<f0f> sparseArray, int i) {
        return sparseArray.size() == 1 ? sparseArray.valueAt(0) : (f0f) Assertions.checkNotNull(sparseArray.get(i));
    }

    /* renamed from: g */
    public final void m18956g() {
        int i;
        TrackOutput[] trackOutputArr = new TrackOutput[2];
        this.f23958F = trackOutputArr;
        TrackOutput trackOutput = this.f23975o;
        int i2 = 0;
        if (trackOutput != null) {
            trackOutputArr[0] = trackOutput;
            i = 1;
        } else {
            i = 0;
        }
        int i3 = 100;
        if ((this.f23961a & 4) != 0) {
            trackOutputArr[i] = this.f23957E.track(100, 5);
            i3 = 101;
            i++;
        }
        TrackOutput[] trackOutputArr2 = (TrackOutput[]) Util.nullSafeArrayCopy(this.f23958F, i);
        this.f23958F = trackOutputArr2;
        for (TrackOutput trackOutput2 : trackOutputArr2) {
            trackOutput2.format(f23946L);
        }
        this.f23959G = new TrackOutput[this.f23963c.size()];
        while (i2 < this.f23959G.length) {
            TrackOutput track = this.f23957E.track(i3, 3);
            track.format(this.f23963c.get(i2));
            this.f23959G[i2] = track;
            i2++;
            i3++;
        }
    }

    /* renamed from: i */
    public final void m18957i(AbstractC4745a.a aVar) throws ParserException {
        int i = aVar.f24179a;
        if (i == 1836019574) {
            m18961m(aVar);
        } else if (i == 1836019558) {
            m18960l(aVar);
        } else {
            if (this.f23973m.isEmpty()) {
                return;
            }
            this.f23973m.peek().m19008d(aVar);
        }
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void init(ExtractorOutput extractorOutput) {
        this.f23957E = extractorOutput;
        m18954c();
        m18956g();
        Track track = this.f23962b;
        if (track != null) {
            this.f23964d.put(0, new C4742b(extractorOutput.track(0, track.type), new ykn(this.f23962b, new long[0], new int[0], 0, new long[0], new int[0], 0L), new f0f(0, 0, 0, 0)));
            this.f23957E.endTracks();
        }
    }

    /* renamed from: j */
    public final void m18958j(ParsableByteArray parsableByteArray) {
        long scaleLargeTimestamp;
        String str;
        long scaleLargeTimestamp2;
        String str2;
        long readUnsignedInt;
        long j;
        if (this.f23958F.length == 0) {
            return;
        }
        parsableByteArray.setPosition(8);
        int m19007c = AbstractC4745a.m19007c(parsableByteArray.readInt());
        if (m19007c == 0) {
            String str3 = (String) Assertions.checkNotNull(parsableByteArray.readNullTerminatedString());
            String str4 = (String) Assertions.checkNotNull(parsableByteArray.readNullTerminatedString());
            long readUnsignedInt2 = parsableByteArray.readUnsignedInt();
            scaleLargeTimestamp = Util.scaleLargeTimestamp(parsableByteArray.readUnsignedInt(), 1000000L, readUnsignedInt2);
            long j2 = this.f23985y;
            long j3 = j2 != C4649C.TIME_UNSET ? j2 + scaleLargeTimestamp : -9223372036854775807L;
            str = str3;
            scaleLargeTimestamp2 = Util.scaleLargeTimestamp(parsableByteArray.readUnsignedInt(), 1000L, readUnsignedInt2);
            str2 = str4;
            readUnsignedInt = parsableByteArray.readUnsignedInt();
            j = j3;
        } else {
            if (m19007c != 1) {
                StringBuilder sb = new StringBuilder(46);
                sb.append("Skipping unsupported emsg version: ");
                sb.append(m19007c);
                Log.m21493w(f23943I, sb.toString());
                return;
            }
            long readUnsignedInt3 = parsableByteArray.readUnsignedInt();
            j = Util.scaleLargeTimestamp(parsableByteArray.readUnsignedLongToLong(), 1000000L, readUnsignedInt3);
            long scaleLargeTimestamp3 = Util.scaleLargeTimestamp(parsableByteArray.readUnsignedInt(), 1000L, readUnsignedInt3);
            long readUnsignedInt4 = parsableByteArray.readUnsignedInt();
            str = (String) Assertions.checkNotNull(parsableByteArray.readNullTerminatedString());
            scaleLargeTimestamp2 = scaleLargeTimestamp3;
            readUnsignedInt = readUnsignedInt4;
            str2 = (String) Assertions.checkNotNull(parsableByteArray.readNullTerminatedString());
            scaleLargeTimestamp = -9223372036854775807L;
        }
        byte[] bArr = new byte[parsableByteArray.bytesLeft()];
        parsableByteArray.readBytes(bArr, 0, parsableByteArray.bytesLeft());
        ParsableByteArray parsableByteArray2 = new ParsableByteArray(this.f23971k.encode(new EventMessage(str, str2, scaleLargeTimestamp2, readUnsignedInt, bArr)));
        int bytesLeft = parsableByteArray2.bytesLeft();
        for (TrackOutput trackOutput : this.f23958F) {
            parsableByteArray2.setPosition(0);
            trackOutput.sampleData(parsableByteArray2, bytesLeft);
        }
        if (j == C4649C.TIME_UNSET) {
            this.f23974n.addLast(new C4741a(scaleLargeTimestamp, true, bytesLeft));
            this.f23982v += bytesLeft;
            return;
        }
        if (!this.f23974n.isEmpty()) {
            this.f23974n.addLast(new C4741a(j, false, bytesLeft));
            this.f23982v += bytesLeft;
            return;
        }
        TimestampAdjuster timestampAdjuster = this.f23970j;
        if (timestampAdjuster != null) {
            j = timestampAdjuster.adjustSampleTimestamp(j);
        }
        for (TrackOutput trackOutput2 : this.f23958F) {
            trackOutput2.sampleMetadata(j, 1, bytesLeft, 0, null);
        }
    }

    /* renamed from: k */
    public final void m18959k(AbstractC4745a.b bVar, long j) throws ParserException {
        if (!this.f23973m.isEmpty()) {
            this.f23973m.peek().m19009e(bVar);
            return;
        }
        int i = bVar.f24179a;
        if (i != 1936286840) {
            if (i == 1701671783) {
                m18958j(bVar.f24183C1);
            }
        } else {
            Pair<Long, ChunkIndex> m18944v = m18944v(bVar.f24183C1, j);
            this.f23985y = ((Long) m18944v.first).longValue();
            this.f23957E.seekMap((SeekMap) m18944v.second);
            this.f23960H = true;
        }
    }

    /* renamed from: l */
    public final void m18960l(AbstractC4745a.a aVar) throws ParserException {
        m18938p(aVar, this.f23964d, this.f23962b != null, this.f23961a, this.f23968h);
        DrmInitData m18934e = m18934e(aVar.f24181D1);
        if (m18934e != null) {
            int size = this.f23964d.size();
            for (int i = 0; i < size; i++) {
                this.f23964d.valueAt(i).m18976n(m18934e);
            }
        }
        if (this.f23983w != C4649C.TIME_UNSET) {
            int size2 = this.f23964d.size();
            for (int i2 = 0; i2 < size2; i2++) {
                this.f23964d.valueAt(i2).m18974l(this.f23983w);
            }
            this.f23983w = C4649C.TIME_UNSET;
        }
    }

    /* renamed from: m */
    public final void m18961m(AbstractC4745a.a aVar) throws ParserException {
        int i = 0;
        Assertions.checkState(this.f23962b == null, "Unexpected moov box.");
        DrmInitData m18934e = m18934e(aVar.f24181D1);
        AbstractC4745a.a aVar2 = (AbstractC4745a.a) Assertions.checkNotNull(aVar.m19011g(AbstractC4745a.f24147p0));
        SparseArray<f0f> sparseArray = new SparseArray<>();
        int size = aVar2.f24181D1.size();
        long j = -9223372036854775807L;
        for (int i2 = 0; i2 < size; i2++) {
            AbstractC4745a.b bVar = aVar2.f24181D1.get(i2);
            int i3 = bVar.f24179a;
            if (i3 == 1953654136) {
                Pair<Integer, f0f> m18948z = m18948z(bVar.f24183C1);
                sparseArray.put(((Integer) m18948z.first).intValue(), (f0f) m18948z.second);
            } else if (i3 == 1835362404) {
                j = m18937o(bVar.f24183C1);
            }
        }
        List<ykn> m19013A = C4746b.m19013A(aVar, new GaplessInfoHolder(), j, m18934e, (this.f23961a & 16) != 0, false, new Function() { // from class: com.sunia.HTREnginev2.jvg
            @Override // com.google.common.base.Function, java.util.function.Function
            public final Object apply(Object obj) {
                return FragmentedMp4Extractor.this.modifyTrack((Track) obj);
            }
        });
        int size2 = m19013A.size();
        if (this.f23964d.size() != 0) {
            Assertions.checkState(this.f23964d.size() == size2);
            while (i < size2) {
                ykn yknVar = m19013A.get(i);
                Track track = yknVar.f90835a;
                this.f23964d.get(track.f24046id).m18972j(yknVar, m18955d(sparseArray, track.f24046id));
                i++;
            }
            return;
        }
        while (i < size2) {
            ykn yknVar2 = m19013A.get(i);
            Track track2 = yknVar2.f90835a;
            this.f23964d.put(track2.f24046id, new C4742b(this.f23957E.track(i, track2.type), yknVar2, m18955d(sparseArray, track2.f24046id)));
            this.f23984x = Math.max(this.f23984x, track2.durationUs);
            i++;
        }
        this.f23957E.endTracks();
    }

    @Nullable
    public Track modifyTrack(@Nullable Track track) {
        return track;
    }

    /* renamed from: n */
    public final void m18962n(long j) {
        while (!this.f23974n.isEmpty()) {
            C4741a removeFirst = this.f23974n.removeFirst();
            this.f23982v -= removeFirst.f23989c;
            long j2 = removeFirst.f23987a;
            if (removeFirst.f23988b) {
                j2 += j;
            }
            TimestampAdjuster timestampAdjuster = this.f23970j;
            if (timestampAdjuster != null) {
                j2 = timestampAdjuster.adjustSampleTimestamp(j2);
            }
            for (TrackOutput trackOutput : this.f23958F) {
                trackOutput.sampleMetadata(j2, 1, removeFirst.f23989c, this.f23982v, null);
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public int read(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        while (true) {
            int i = this.f23976p;
            if (i != 0) {
                if (i == 1) {
                    m18951F(extractorInput);
                } else if (i == 2) {
                    m18952G(extractorInput);
                } else if (m18953H(extractorInput)) {
                    return 0;
                }
            } else if (!m18950E(extractorInput)) {
                return -1;
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void release() {
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void seek(long j, long j2) {
        int size = this.f23964d.size();
        for (int i = 0; i < size; i++) {
            this.f23964d.valueAt(i).m18973k();
        }
        this.f23974n.clear();
        this.f23982v = 0;
        this.f23983w = j2;
        this.f23973m.clear();
        m18954c();
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public boolean sniff(ExtractorInput extractorInput) throws IOException {
        return cvm.m53526b(extractorInput);
    }

    public FragmentedMp4Extractor(int i) {
        this(i, null);
    }

    public FragmentedMp4Extractor(int i, @Nullable TimestampAdjuster timestampAdjuster) {
        this(i, timestampAdjuster, null, Collections.emptyList());
    }

    public FragmentedMp4Extractor(int i, @Nullable TimestampAdjuster timestampAdjuster, @Nullable Track track) {
        this(i, timestampAdjuster, track, Collections.emptyList());
    }

    public FragmentedMp4Extractor(int i, @Nullable TimestampAdjuster timestampAdjuster, @Nullable Track track, List<Format> list) {
        this(i, timestampAdjuster, track, list, null);
    }

    public FragmentedMp4Extractor(int i, @Nullable TimestampAdjuster timestampAdjuster, @Nullable Track track, List<Format> list, @Nullable TrackOutput trackOutput) {
        this.f23961a = i;
        this.f23970j = timestampAdjuster;
        this.f23962b = track;
        this.f23963c = Collections.unmodifiableList(list);
        this.f23975o = trackOutput;
        this.f23971k = new EventMessageEncoder();
        this.f23972l = new ParsableByteArray(16);
        this.f23965e = new ParsableByteArray(NalUnitUtil.NAL_START_CODE);
        this.f23966f = new ParsableByteArray(5);
        this.f23967g = new ParsableByteArray();
        byte[] bArr = new byte[16];
        this.f23968h = bArr;
        this.f23969i = new ParsableByteArray(bArr);
        this.f23973m = new ArrayDeque<>();
        this.f23974n = new ArrayDeque<>();
        this.f23964d = new SparseArray<>();
        this.f23984x = C4649C.TIME_UNSET;
        this.f23983w = C4649C.TIME_UNSET;
        this.f23985y = C4649C.TIME_UNSET;
        this.f23957E = ExtractorOutput.PLACEHOLDER;
        this.f23958F = new TrackOutput[0];
        this.f23959G = new TrackOutput[0];
    }
}
