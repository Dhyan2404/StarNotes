package com.google.android.exoplayer2.metadata.id3;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.MetadataInputBuffer;
import com.google.android.exoplayer2.metadata.SimpleMetadataDecoder;
import com.google.android.exoplayer2.metadata.id3.Id3Decoder;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.ParsableBitArray;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;
import com.google.common.base.Ascii;
import com.onyx.android.sdk.base.utils.FileExtensionUtils;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;

/* loaded from: classes5.dex */
public final class Id3Decoder extends SimpleMetadataDecoder {
    public static final int ID3_HEADER_LENGTH = 10;
    public static final int ID3_TAG = 4801587;
    public static final FramePredicate NO_FRAMES_PREDICATE = new FramePredicate() { // from class: com.sunia.HTREnginev2.jgi
        @Override // com.google.android.exoplayer2.metadata.id3.Id3Decoder.FramePredicate
        public final boolean evaluate(int i, int i2, int i3, int i4, int i5) {
            boolean m19387w;
            m19387w = Id3Decoder.m19387w(i, i2, i3, i4, i5);
            return m19387w;
        }
    };

    /* renamed from: b */
    public static final String f24885b = "Id3Decoder";

    /* renamed from: c */
    public static final int f24886c = 128;

    /* renamed from: d */
    public static final int f24887d = 64;

    /* renamed from: e */
    public static final int f24888e = 32;

    /* renamed from: f */
    public static final int f24889f = 8;

    /* renamed from: g */
    public static final int f24890g = 4;

    /* renamed from: h */
    public static final int f24891h = 64;

    /* renamed from: i */
    public static final int f24892i = 2;

    /* renamed from: j */
    public static final int f24893j = 1;

    /* renamed from: k */
    public static final int f24894k = 0;

    /* renamed from: l */
    public static final int f24895l = 1;

    /* renamed from: m */
    public static final int f24896m = 2;

    /* renamed from: n */
    public static final int f24897n = 3;

    /* renamed from: a */
    @Nullable
    public final FramePredicate f24898a;

    /* loaded from: classes5.dex */
    public interface FramePredicate {
        boolean evaluate(int i, int i2, int i3, int i4, int i5);
    }

    /* renamed from: com.google.android.exoplayer2.metadata.id3.Id3Decoder$a */
    /* loaded from: classes5.dex */
    public static final class C4783a {

        /* renamed from: a */
        public final int f24899a;

        /* renamed from: b */
        public final boolean f24900b;

        /* renamed from: c */
        public final int f24901c;

        public C4783a(int i, boolean z, int i2) {
            this.f24899a = i;
            this.f24900b = z;
            this.f24901c = i2;
        }
    }

    public Id3Decoder() {
        this(null);
    }

    /* renamed from: b */
    public static byte[] m19366b(byte[] bArr, int i, int i2) {
        return i2 <= i ? Util.EMPTY_BYTE_ARRAY : Arrays.copyOfRange(bArr, i, i2);
    }

    /* renamed from: c */
    public static ApicFrame m19367c(ParsableByteArray parsableByteArray, int i, int i2) throws UnsupportedEncodingException {
        int m19386v;
        String str;
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        String m19383s = m19383s(readUnsignedByte);
        int i3 = i - 1;
        byte[] bArr = new byte[i3];
        parsableByteArray.readBytes(bArr, 0, i3);
        if (i2 == 2) {
            String valueOf = String.valueOf(Ascii.toLowerCase(new String(bArr, 0, 3, "ISO-8859-1")));
            str = valueOf.length() != 0 ? FileExtensionUtils.IMAGE_PREFIX.concat(valueOf) : new String(FileExtensionUtils.IMAGE_PREFIX);
            if ("image/jpg".equals(str)) {
                str = "image/jpeg";
            }
            m19386v = 2;
        } else {
            m19386v = m19386v(bArr, 0);
            String lowerCase = Ascii.toLowerCase(new String(bArr, 0, m19386v, "ISO-8859-1"));
            if (lowerCase.indexOf(47) == -1) {
                if (lowerCase.length() != 0) {
                    str = FileExtensionUtils.IMAGE_PREFIX.concat(lowerCase);
                } else {
                    lowerCase = new String(FileExtensionUtils.IMAGE_PREFIX);
                }
            }
            str = lowerCase;
        }
        int i4 = bArr[m19386v + 1] & 255;
        int i5 = m19386v + 2;
        int m19385u = m19385u(bArr, i5, readUnsignedByte);
        return new ApicFrame(str, new String(bArr, i5, m19385u - i5, m19383s), i4, m19366b(bArr, m19385u + m19382r(readUnsignedByte), i3));
    }

    /* renamed from: d */
    public static BinaryFrame m19368d(ParsableByteArray parsableByteArray, int i, String str) {
        byte[] bArr = new byte[i];
        parsableByteArray.readBytes(bArr, 0, i);
        return new BinaryFrame(str, bArr);
    }

    /* renamed from: e */
    public static ChapterFrame m19369e(ParsableByteArray parsableByteArray, int i, int i2, boolean z, int i3, @Nullable FramePredicate framePredicate) throws UnsupportedEncodingException {
        int position = parsableByteArray.getPosition();
        int m19386v = m19386v(parsableByteArray.getData(), position);
        String str = new String(parsableByteArray.getData(), position, m19386v - position, "ISO-8859-1");
        parsableByteArray.setPosition(m19386v + 1);
        int readInt = parsableByteArray.readInt();
        int readInt2 = parsableByteArray.readInt();
        long readUnsignedInt = parsableByteArray.readUnsignedInt();
        long j = readUnsignedInt == 4294967295L ? -1L : readUnsignedInt;
        long readUnsignedInt2 = parsableByteArray.readUnsignedInt();
        long j2 = readUnsignedInt2 == 4294967295L ? -1L : readUnsignedInt2;
        ArrayList arrayList = new ArrayList();
        int i4 = position + i;
        while (parsableByteArray.getPosition() < i4) {
            Id3Frame m19372h = m19372h(i2, parsableByteArray, z, i3, framePredicate);
            if (m19372h != null) {
                arrayList.add(m19372h);
            }
        }
        return new ChapterFrame(str, readInt, readInt2, j, j2, (Id3Frame[]) arrayList.toArray(new Id3Frame[0]));
    }

    /* renamed from: f */
    public static ChapterTocFrame m19370f(ParsableByteArray parsableByteArray, int i, int i2, boolean z, int i3, @Nullable FramePredicate framePredicate) throws UnsupportedEncodingException {
        int position = parsableByteArray.getPosition();
        int m19386v = m19386v(parsableByteArray.getData(), position);
        String str = new String(parsableByteArray.getData(), position, m19386v - position, "ISO-8859-1");
        parsableByteArray.setPosition(m19386v + 1);
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        boolean z2 = (readUnsignedByte & 2) != 0;
        boolean z3 = (readUnsignedByte & 1) != 0;
        int readUnsignedByte2 = parsableByteArray.readUnsignedByte();
        String[] strArr = new String[readUnsignedByte2];
        for (int i4 = 0; i4 < readUnsignedByte2; i4++) {
            int position2 = parsableByteArray.getPosition();
            int m19386v2 = m19386v(parsableByteArray.getData(), position2);
            strArr[i4] = new String(parsableByteArray.getData(), position2, m19386v2 - position2, "ISO-8859-1");
            parsableByteArray.setPosition(m19386v2 + 1);
        }
        ArrayList arrayList = new ArrayList();
        int i5 = position + i;
        while (parsableByteArray.getPosition() < i5) {
            Id3Frame m19372h = m19372h(i2, parsableByteArray, z, i3, framePredicate);
            if (m19372h != null) {
                arrayList.add(m19372h);
            }
        }
        return new ChapterTocFrame(str, z2, z3, strArr, (Id3Frame[]) arrayList.toArray(new Id3Frame[0]));
    }

    @Nullable
    /* renamed from: g */
    public static CommentFrame m19371g(ParsableByteArray parsableByteArray, int i) throws UnsupportedEncodingException {
        if (i < 4) {
            return null;
        }
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        String m19383s = m19383s(readUnsignedByte);
        byte[] bArr = new byte[3];
        parsableByteArray.readBytes(bArr, 0, 3);
        String str = new String(bArr, 0, 3);
        int i2 = i - 4;
        byte[] bArr2 = new byte[i2];
        parsableByteArray.readBytes(bArr2, 0, i2);
        int m19385u = m19385u(bArr2, 0, readUnsignedByte);
        String str2 = new String(bArr2, 0, m19385u, m19383s);
        int m19382r = m19385u + m19382r(readUnsignedByte);
        return new CommentFrame(str, str2, m19377m(bArr2, m19382r, m19385u(bArr2, m19382r, readUnsignedByte), m19383s));
    }

    /* JADX WARN: Code restructure failed: missing block: B:127:0x0190, code lost:
    
        if (r13 == 67) goto L132;
     */
    @androidx.annotation.Nullable
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.exoplayer2.metadata.id3.Id3Frame m19372h(int r19, com.google.android.exoplayer2.util.ParsableByteArray r20, boolean r21, int r22, @androidx.annotation.Nullable com.google.android.exoplayer2.metadata.id3.Id3Decoder.FramePredicate r23) {
        /*
            Method dump skipped, instructions count: 568
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.metadata.id3.Id3Decoder.m19372h(int, com.google.android.exoplayer2.util.ParsableByteArray, boolean, int, com.google.android.exoplayer2.metadata.id3.Id3Decoder$FramePredicate):com.google.android.exoplayer2.metadata.id3.Id3Frame");
    }

    /* renamed from: i */
    public static GeobFrame m19373i(ParsableByteArray parsableByteArray, int i) throws UnsupportedEncodingException {
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        String m19383s = m19383s(readUnsignedByte);
        int i2 = i - 1;
        byte[] bArr = new byte[i2];
        parsableByteArray.readBytes(bArr, 0, i2);
        int m19386v = m19386v(bArr, 0);
        String str = new String(bArr, 0, m19386v, "ISO-8859-1");
        int i3 = m19386v + 1;
        int m19385u = m19385u(bArr, i3, readUnsignedByte);
        String m19377m = m19377m(bArr, i3, m19385u, m19383s);
        int m19382r = m19385u + m19382r(readUnsignedByte);
        int m19385u2 = m19385u(bArr, m19382r, readUnsignedByte);
        return new GeobFrame(str, m19377m, m19377m(bArr, m19382r, m19385u2, m19383s), m19366b(bArr, m19385u2 + m19382r(readUnsignedByte), i2));
    }

    @Nullable
    /* renamed from: j */
    public static C4783a m19374j(ParsableByteArray parsableByteArray) {
        if (parsableByteArray.bytesLeft() < 10) {
            Log.m21493w(f24885b, "Data too short to be an ID3 tag");
            return null;
        }
        int readUnsignedInt24 = parsableByteArray.readUnsignedInt24();
        if (readUnsignedInt24 != 4801587) {
            String valueOf = String.valueOf(String.format("%06X", Integer.valueOf(readUnsignedInt24)));
            Log.m21493w(f24885b, valueOf.length() != 0 ? "Unexpected first three bytes of ID3 tag header: 0x".concat(valueOf) : new String("Unexpected first three bytes of ID3 tag header: 0x"));
            return null;
        }
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        parsableByteArray.skipBytes(1);
        int readUnsignedByte2 = parsableByteArray.readUnsignedByte();
        int readSynchSafeInt = parsableByteArray.readSynchSafeInt();
        if (readUnsignedByte == 2) {
            if ((readUnsignedByte2 & 64) != 0) {
                Log.m21493w(f24885b, "Skipped ID3 tag with majorVersion=2 and undefined compression scheme");
                return null;
            }
        } else if (readUnsignedByte == 3) {
            if ((readUnsignedByte2 & 64) != 0) {
                int readInt = parsableByteArray.readInt();
                parsableByteArray.skipBytes(readInt);
                readSynchSafeInt -= readInt + 4;
            }
        } else {
            if (readUnsignedByte != 4) {
                StringBuilder sb = new StringBuilder(57);
                sb.append("Skipped ID3 tag with unsupported majorVersion=");
                sb.append(readUnsignedByte);
                Log.m21493w(f24885b, sb.toString());
                return null;
            }
            if ((readUnsignedByte2 & 64) != 0) {
                int readSynchSafeInt2 = parsableByteArray.readSynchSafeInt();
                parsableByteArray.skipBytes(readSynchSafeInt2 - 4);
                readSynchSafeInt -= readSynchSafeInt2;
            }
            if ((readUnsignedByte2 & 16) != 0) {
                readSynchSafeInt -= 10;
            }
        }
        return new C4783a(readUnsignedByte, readUnsignedByte < 4 && (readUnsignedByte2 & 128) != 0, readSynchSafeInt);
    }

    /* renamed from: k */
    public static MlltFrame m19375k(ParsableByteArray parsableByteArray, int i) {
        int readUnsignedShort = parsableByteArray.readUnsignedShort();
        int readUnsignedInt24 = parsableByteArray.readUnsignedInt24();
        int readUnsignedInt242 = parsableByteArray.readUnsignedInt24();
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        int readUnsignedByte2 = parsableByteArray.readUnsignedByte();
        ParsableBitArray parsableBitArray = new ParsableBitArray();
        parsableBitArray.reset(parsableByteArray);
        int i2 = ((i - 10) * 8) / (readUnsignedByte + readUnsignedByte2);
        int[] iArr = new int[i2];
        int[] iArr2 = new int[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            int readBits = parsableBitArray.readBits(readUnsignedByte);
            int readBits2 = parsableBitArray.readBits(readUnsignedByte2);
            iArr[i3] = readBits;
            iArr2[i3] = readBits2;
        }
        return new MlltFrame(readUnsignedShort, readUnsignedInt24, readUnsignedInt242, iArr, iArr2);
    }

    /* renamed from: l */
    public static PrivFrame m19376l(ParsableByteArray parsableByteArray, int i) throws UnsupportedEncodingException {
        byte[] bArr = new byte[i];
        parsableByteArray.readBytes(bArr, 0, i);
        int m19386v = m19386v(bArr, 0);
        return new PrivFrame(new String(bArr, 0, m19386v, "ISO-8859-1"), m19366b(bArr, m19386v + 1, i));
    }

    /* renamed from: m */
    public static String m19377m(byte[] bArr, int i, int i2, String str) throws UnsupportedEncodingException {
        return (i2 <= i || i2 > bArr.length) ? "" : new String(bArr, i, i2 - i, str);
    }

    @Nullable
    /* renamed from: n */
    public static TextInformationFrame m19378n(ParsableByteArray parsableByteArray, int i, String str) throws UnsupportedEncodingException {
        if (i < 1) {
            return null;
        }
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        String m19383s = m19383s(readUnsignedByte);
        int i2 = i - 1;
        byte[] bArr = new byte[i2];
        parsableByteArray.readBytes(bArr, 0, i2);
        return new TextInformationFrame(str, null, new String(bArr, 0, m19385u(bArr, 0, readUnsignedByte), m19383s));
    }

    @Nullable
    /* renamed from: o */
    public static TextInformationFrame m19379o(ParsableByteArray parsableByteArray, int i) throws UnsupportedEncodingException {
        if (i < 1) {
            return null;
        }
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        String m19383s = m19383s(readUnsignedByte);
        int i2 = i - 1;
        byte[] bArr = new byte[i2];
        parsableByteArray.readBytes(bArr, 0, i2);
        int m19385u = m19385u(bArr, 0, readUnsignedByte);
        String str = new String(bArr, 0, m19385u, m19383s);
        int m19382r = m19385u + m19382r(readUnsignedByte);
        return new TextInformationFrame("TXXX", str, m19377m(bArr, m19382r, m19385u(bArr, m19382r, readUnsignedByte), m19383s));
    }

    /* renamed from: p */
    public static UrlLinkFrame m19380p(ParsableByteArray parsableByteArray, int i, String str) throws UnsupportedEncodingException {
        byte[] bArr = new byte[i];
        parsableByteArray.readBytes(bArr, 0, i);
        return new UrlLinkFrame(str, null, new String(bArr, 0, m19386v(bArr, 0), "ISO-8859-1"));
    }

    @Nullable
    /* renamed from: q */
    public static UrlLinkFrame m19381q(ParsableByteArray parsableByteArray, int i) throws UnsupportedEncodingException {
        if (i < 1) {
            return null;
        }
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        String m19383s = m19383s(readUnsignedByte);
        int i2 = i - 1;
        byte[] bArr = new byte[i2];
        parsableByteArray.readBytes(bArr, 0, i2);
        int m19385u = m19385u(bArr, 0, readUnsignedByte);
        String str = new String(bArr, 0, m19385u, m19383s);
        int m19382r = m19385u + m19382r(readUnsignedByte);
        return new UrlLinkFrame("WXXX", str, m19377m(bArr, m19382r, m19386v(bArr, m19382r), "ISO-8859-1"));
    }

    /* renamed from: r */
    public static int m19382r(int i) {
        return (i == 0 || i == 3) ? 1 : 2;
    }

    /* renamed from: s */
    public static String m19383s(int i) {
        return i != 1 ? i != 2 ? i != 3 ? "ISO-8859-1" : "UTF-8" : "UTF-16BE" : "UTF-16";
    }

    /* renamed from: t */
    public static String m19384t(int i, int i2, int i3, int i4, int i5) {
        return i == 2 ? String.format(Locale.US, "%c%c%c", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4)) : String.format(Locale.US, "%c%c%c%c", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5));
    }

    /* renamed from: u */
    public static int m19385u(byte[] bArr, int i, int i2) {
        int m19386v = m19386v(bArr, i);
        if (i2 == 0 || i2 == 3) {
            return m19386v;
        }
        while (m19386v < bArr.length - 1) {
            if ((m19386v - i) % 2 == 0 && bArr[m19386v + 1] == 0) {
                return m19386v;
            }
            m19386v = m19386v(bArr, m19386v + 1);
        }
        return bArr.length;
    }

    /* renamed from: v */
    public static int m19386v(byte[] bArr, int i) {
        while (i < bArr.length) {
            if (bArr[i] == 0) {
                return i;
            }
            i++;
        }
        return bArr.length;
    }

    /* renamed from: w */
    public static /* synthetic */ boolean m19387w(int i, int i2, int i3, int i4, int i5) {
        return false;
    }

    /* renamed from: x */
    public static int m19388x(ParsableByteArray parsableByteArray, int i) {
        byte[] data = parsableByteArray.getData();
        int position = parsableByteArray.getPosition();
        int i2 = position;
        while (true) {
            int i3 = i2 + 1;
            if (i3 >= position + i) {
                return i;
            }
            if ((data[i2] & 255) == 255 && data[i3] == 0) {
                System.arraycopy(data, i2 + 2, data, i3, (i - (i2 - position)) - 2);
                i--;
            }
            i2 = i3;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0076, code lost:
    
        if ((r10 & 1) != 0) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0079, code lost:
    
        r4 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0086, code lost:
    
        if ((r10 & 128) != 0) goto L43;
     */
    /* renamed from: y */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m19389y(com.google.android.exoplayer2.util.ParsableByteArray r18, int r19, int r20, boolean r21) {
        /*
            r1 = r18
            r0 = r19
            int r2 = r18.getPosition()
        L8:
            int r3 = r18.bytesLeft()     // Catch: java.lang.Throwable -> Laf
            r4 = 1
            r5 = r20
            if (r3 < r5) goto Lab
            r3 = 3
            r6 = 0
            if (r0 < r3) goto L22
            int r7 = r18.readInt()     // Catch: java.lang.Throwable -> Laf
            long r8 = r18.readUnsignedInt()     // Catch: java.lang.Throwable -> Laf
            int r10 = r18.readUnsignedShort()     // Catch: java.lang.Throwable -> Laf
            goto L2c
        L22:
            int r7 = r18.readUnsignedInt24()     // Catch: java.lang.Throwable -> Laf
            int r8 = r18.readUnsignedInt24()     // Catch: java.lang.Throwable -> Laf
            long r8 = (long) r8
            r10 = r6
        L2c:
            r11 = 0
            if (r7 != 0) goto L3a
            int r7 = (r8 > r11 ? 1 : (r8 == r11 ? 0 : -1))
            if (r7 != 0) goto L3a
            if (r10 != 0) goto L3a
            r1.setPosition(r2)
            return r4
        L3a:
            r7 = 4
            if (r0 != r7) goto L6b
            if (r21 != 0) goto L6b
            r13 = 8421504(0x808080, double:4.160776E-317)
            long r13 = r13 & r8
            int r11 = (r13 > r11 ? 1 : (r13 == r11 ? 0 : -1))
            if (r11 == 0) goto L4b
            r1.setPosition(r2)
            return r6
        L4b:
            r11 = 255(0xff, double:1.26E-321)
            long r13 = r8 & r11
            r15 = 8
            long r15 = r8 >> r15
            long r15 = r15 & r11
            r17 = 7
            long r15 = r15 << r17
            long r13 = r13 | r15
            r15 = 16
            long r15 = r8 >> r15
            long r15 = r15 & r11
            r17 = 14
            long r15 = r15 << r17
            long r13 = r13 | r15
            r15 = 24
            long r8 = r8 >> r15
            long r8 = r8 & r11
            r11 = 21
            long r8 = r8 << r11
            long r8 = r8 | r13
        L6b:
            if (r0 != r7) goto L7b
            r3 = r10 & 64
            if (r3 == 0) goto L73
            r3 = r4
            goto L74
        L73:
            r3 = r6
        L74:
            r7 = r10 & 1
            if (r7 == 0) goto L79
            goto L8b
        L79:
            r4 = r6
            goto L8b
        L7b:
            if (r0 != r3) goto L89
            r3 = r10 & 32
            if (r3 == 0) goto L83
            r3 = r4
            goto L84
        L83:
            r3 = r6
        L84:
            r7 = r10 & 128(0x80, float:1.794E-43)
            if (r7 == 0) goto L79
            goto L8b
        L89:
            r3 = r6
            r4 = r3
        L8b:
            if (r4 == 0) goto L8f
            int r3 = r3 + 4
        L8f:
            long r3 = (long) r3
            int r3 = (r8 > r3 ? 1 : (r8 == r3 ? 0 : -1))
            if (r3 >= 0) goto L98
            r1.setPosition(r2)
            return r6
        L98:
            int r3 = r18.bytesLeft()     // Catch: java.lang.Throwable -> Laf
            long r3 = (long) r3
            int r3 = (r3 > r8 ? 1 : (r3 == r8 ? 0 : -1))
            if (r3 >= 0) goto La5
            r1.setPosition(r2)
            return r6
        La5:
            int r3 = (int) r8
            r1.skipBytes(r3)     // Catch: java.lang.Throwable -> Laf
            goto L8
        Lab:
            r1.setPosition(r2)
            return r4
        Laf:
            r0 = move-exception
            r1.setPosition(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.metadata.id3.Id3Decoder.m19389y(com.google.android.exoplayer2.util.ParsableByteArray, int, int, boolean):boolean");
    }

    @Override // com.google.android.exoplayer2.metadata.SimpleMetadataDecoder
    @Nullable
    public Metadata decode(MetadataInputBuffer metadataInputBuffer, ByteBuffer byteBuffer) {
        return decode(byteBuffer.array(), byteBuffer.limit());
    }

    public Id3Decoder(@Nullable FramePredicate framePredicate) {
        this.f24898a = framePredicate;
    }

    @Nullable
    public Metadata decode(byte[] bArr, int i) {
        ArrayList arrayList = new ArrayList();
        ParsableByteArray parsableByteArray = new ParsableByteArray(bArr, i);
        C4783a m19374j = m19374j(parsableByteArray);
        if (m19374j == null) {
            return null;
        }
        int position = parsableByteArray.getPosition();
        int i2 = m19374j.f24899a == 2 ? 6 : 10;
        int i3 = m19374j.f24901c;
        if (m19374j.f24900b) {
            i3 = m19388x(parsableByteArray, m19374j.f24901c);
        }
        parsableByteArray.setLimit(position + i3);
        boolean z = false;
        if (!m19389y(parsableByteArray, m19374j.f24899a, i2, false)) {
            if (m19374j.f24899a != 4 || !m19389y(parsableByteArray, 4, i2, true)) {
                int i4 = m19374j.f24899a;
                StringBuilder sb = new StringBuilder(56);
                sb.append("Failed to validate ID3 tag with majorVersion=");
                sb.append(i4);
                Log.m21493w(f24885b, sb.toString());
                return null;
            }
            z = true;
        }
        while (parsableByteArray.bytesLeft() >= i2) {
            Id3Frame m19372h = m19372h(m19374j.f24899a, parsableByteArray, z, i2, this.f24898a);
            if (m19372h != null) {
                arrayList.add(m19372h);
            }
        }
        return new Metadata(arrayList);
    }
}
