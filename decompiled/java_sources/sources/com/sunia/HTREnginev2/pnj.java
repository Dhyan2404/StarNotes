package com.sunia.HTREnginev2;

import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.GaplessInfoHolder;
import com.google.android.exoplayer2.extractor.mp4.AbstractC4745a;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.id3.ApicFrame;
import com.google.android.exoplayer2.metadata.id3.CommentFrame;
import com.google.android.exoplayer2.metadata.id3.Id3Frame;
import com.google.android.exoplayer2.metadata.id3.InternalFrame;
import com.google.android.exoplayer2.metadata.id3.TextInformationFrame;
import com.google.android.exoplayer2.metadata.mp4.MdtaMetadataEntry;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.onyx.android.sdk.ocr.data.constant.OcrValues;

/* loaded from: classes5.dex */
public final class pnj {

    /* renamed from: A */
    public static final int f81000A = 1885823344;

    /* renamed from: B */
    public static final int f81001B = 1936683886;

    /* renamed from: C */
    public static final int f81002C = 1953919848;

    /* renamed from: D */
    public static final int f81003D = 757935405;

    /* renamed from: E */
    public static final int f81004E = 3;

    /* renamed from: F */
    @VisibleForTesting
    public static final String[] f81005F = {"Blues", "Classic Rock", "Country", "Dance", "Disco", "Funk", "Grunge", "Hip-Hop", "Jazz", "Metal", "New Age", "Oldies", "Other", "Pop", "R&B", "Rap", "Reggae", "Rock", "Techno", "Industrial", "Alternative", "Ska", "Death Metal", "Pranks", "Soundtrack", "Euro-Techno", "Ambient", "Trip-Hop", "Vocal", "Jazz+Funk", "Fusion", "Trance", "Classical", "Instrumental", "Acid", "House", "Game", "Sound Clip", "Gospel", "Noise", "AlternRock", "Bass", "Soul", "Punk", "Space", "Meditative", "Instrumental Pop", "Instrumental Rock", "Ethnic", "Gothic", "Darkwave", "Techno-Industrial", "Electronic", "Pop-Folk", "Eurodance", "Dream", "Southern Rock", "Comedy", "Cult", "Gangsta", "Top 40", "Christian Rap", "Pop/Funk", "Jungle", "Native American", "Cabaret", "New Wave", "Psychadelic", "Rave", "Showtunes", "Trailer", "Lo-Fi", "Tribal", "Acid Punk", "Acid Jazz", "Polka", "Retro", "Musical", "Rock & Roll", "Hard Rock", "Folk", "Folk-Rock", "National Folk", "Swing", "Fast Fusion", "Bebob", OcrValues.LANG_LATIN, "Revival", "Celtic", "Bluegrass", "Avantgarde", "Gothic Rock", "Progressive Rock", "Psychedelic Rock", "Symphonic Rock", "Slow Rock", "Big Band", "Chorus", "Easy Listening", "Acoustic", "Humour", "Speech", "Chanson", "Opera", "Chamber Music", "Sonata", "Symphony", "Booty Bass", "Primus", "Porn Groove", "Satire", "Slow Jam", "Club", "Tango", "Samba", "Folklore", "Ballad", "Power Ballad", "Rhythmic Soul", "Freestyle", "Duet", "Punk Rock", "Drum Solo", "A capella", "Euro-House", "Dance Hall", "Goa", "Drum & Bass", "Club-House", "Hardcore", "Terror", "Indie", "BritPop", "Afro-Punk", "Polsk Punk", "Beat", "Christian Gangsta Rap", "Heavy Metal", "Black Metal", "Crossover", "Contemporary Christian", "Christian Rock", "Merengue", "Salsa", "Thrash Metal", "Anime", "Jpop", "Synthpop", "Abstract", "Art Rock", "Baroque", "Bhangra", "Big beat", "Breakbeat", "Chillout", "Downtempo", "Dub", "EBM", "Eclectic", "Electro", "Electroclash", "Emo", "Experimental", "Garage", "Global", "IDM", "Illbient", "Industro-Goth", "Jam Band", "Krautrock", "Leftfield", "Lounge", "Math Rock", "New Romantic", "Nu-Breakz", "Post-Punk", "Post-Rock", "Psytrance", "Shoegaze", "Space Rock", "Trop Rock", "World Music", "Neoclassical", "Audiobook", "Audio theatre", "Neue Deutsche Welle", "Podcast", "Indie-Rock", "G-Funk", "Dubstep", "Garage Rock", "Psybient"};

    /* renamed from: G */
    public static final int f81006G = 169;

    /* renamed from: H */
    public static final int f81007H = 253;

    /* renamed from: a */
    public static final String f81008a = "MetadataUtil";

    /* renamed from: b */
    public static final int f81009b = 7233901;

    /* renamed from: c */
    public static final int f81010c = 7631467;

    /* renamed from: d */
    public static final int f81011d = 6516084;

    /* renamed from: e */
    public static final int f81012e = 6578553;

    /* renamed from: f */
    public static final int f81013f = 4280916;

    /* renamed from: g */
    public static final int f81014g = 7630703;

    /* renamed from: h */
    public static final int f81015h = 6384738;

    /* renamed from: i */
    public static final int f81016i = 6516589;

    /* renamed from: j */
    public static final int f81017j = 7828084;

    /* renamed from: k */
    public static final int f81018k = 7108978;

    /* renamed from: l */
    public static final int f81019l = 6776174;

    /* renamed from: m */
    public static final int f81020m = 1668249202;

    /* renamed from: n */
    public static final int f81021n = 1735291493;

    /* renamed from: o */
    public static final int f81022o = 6779504;

    /* renamed from: p */
    public static final int f81023p = 1684632427;

    /* renamed from: q */
    public static final int f81024q = 1953655662;

    /* renamed from: r */
    public static final int f81025r = 1953329263;

    /* renamed from: s */
    public static final int f81026s = 1668311404;

    /* renamed from: t */
    public static final int f81027t = 1631670868;

    /* renamed from: u */
    public static final int f81028u = 1936682605;

    /* renamed from: v */
    public static final int f81029v = 1936679276;

    /* renamed from: w */
    public static final int f81030w = 1936679282;

    /* renamed from: x */
    public static final int f81031x = 1936679265;

    /* renamed from: y */
    public static final int f81032y = 1936679791;

    /* renamed from: z */
    public static final int f81033z = 1920233063;

    @Nullable
    /* renamed from: a */
    public static CommentFrame m56337a(int i, ParsableByteArray parsableByteArray) {
        int readInt = parsableByteArray.readInt();
        if (parsableByteArray.readInt() == 1684108385) {
            parsableByteArray.skipBytes(8);
            String readNullTerminatedString = parsableByteArray.readNullTerminatedString(readInt - 16);
            return new CommentFrame(C4649C.LANGUAGE_UNDETERMINED, readNullTerminatedString, readNullTerminatedString);
        }
        String valueOf = String.valueOf(AbstractC4745a.m19005a(i));
        Log.m21493w(f81008a, valueOf.length() != 0 ? "Failed to parse comment attribute: ".concat(valueOf) : new String("Failed to parse comment attribute: "));
        return null;
    }

    @Nullable
    /* renamed from: b */
    public static ApicFrame m56338b(ParsableByteArray parsableByteArray) {
        int readInt = parsableByteArray.readInt();
        if (parsableByteArray.readInt() != 1684108385) {
            Log.m21493w(f81008a, "Failed to parse cover art attribute");
            return null;
        }
        int m19006b = AbstractC4745a.m19006b(parsableByteArray.readInt());
        String str = m19006b == 13 ? "image/jpeg" : m19006b == 14 ? "image/png" : null;
        if (str == null) {
            StringBuilder sb = new StringBuilder(41);
            sb.append("Unrecognized cover art flags: ");
            sb.append(m19006b);
            Log.m21493w(f81008a, sb.toString());
            return null;
        }
        parsableByteArray.skipBytes(4);
        int i = readInt - 16;
        byte[] bArr = new byte[i];
        parsableByteArray.readBytes(bArr, 0, i);
        return new ApicFrame(str, null, 3, bArr);
    }

    @Nullable
    /* renamed from: c */
    public static Metadata.Entry m56339c(ParsableByteArray parsableByteArray) {
        int position = parsableByteArray.getPosition() + parsableByteArray.readInt();
        int readInt = parsableByteArray.readInt();
        int i = (readInt >> 24) & 255;
        try {
            if (i == 169 || i == 253) {
                int i2 = 16777215 & readInt;
                if (i2 == 6516084) {
                    return m56337a(readInt, parsableByteArray);
                }
                if (i2 == 7233901 || i2 == 7631467) {
                    return m56344h(readInt, "TIT2", parsableByteArray);
                }
                if (i2 == 6516589 || i2 == 7828084) {
                    return m56344h(readInt, "TCOM", parsableByteArray);
                }
                if (i2 == 6578553) {
                    return m56344h(readInt, "TDRC", parsableByteArray);
                }
                if (i2 == 4280916) {
                    return m56344h(readInt, "TPE1", parsableByteArray);
                }
                if (i2 == 7630703) {
                    return m56344h(readInt, "TSSE", parsableByteArray);
                }
                if (i2 == 6384738) {
                    return m56344h(readInt, "TALB", parsableByteArray);
                }
                if (i2 == 7108978) {
                    return m56344h(readInt, "USLT", parsableByteArray);
                }
                if (i2 == 6776174) {
                    return m56344h(readInt, "TCON", parsableByteArray);
                }
                if (i2 == 6779504) {
                    return m56344h(readInt, "TIT1", parsableByteArray);
                }
            } else {
                if (readInt == 1735291493) {
                    return m56343g(parsableByteArray);
                }
                if (readInt == 1684632427) {
                    return m56340d(readInt, "TPOS", parsableByteArray);
                }
                if (readInt == 1953655662) {
                    return m56340d(readInt, "TRCK", parsableByteArray);
                }
                if (readInt == 1953329263) {
                    return m56345i(readInt, "TBPM", parsableByteArray, true, false);
                }
                if (readInt == 1668311404) {
                    return m56345i(readInt, "TCMP", parsableByteArray, true, true);
                }
                if (readInt == 1668249202) {
                    return m56338b(parsableByteArray);
                }
                if (readInt == 1631670868) {
                    return m56344h(readInt, "TPE2", parsableByteArray);
                }
                if (readInt == 1936682605) {
                    return m56344h(readInt, "TSOT", parsableByteArray);
                }
                if (readInt == 1936679276) {
                    return m56344h(readInt, "TSO2", parsableByteArray);
                }
                if (readInt == 1936679282) {
                    return m56344h(readInt, "TSOA", parsableByteArray);
                }
                if (readInt == 1936679265) {
                    return m56344h(readInt, "TSOP", parsableByteArray);
                }
                if (readInt == 1936679791) {
                    return m56344h(readInt, "TSOC", parsableByteArray);
                }
                if (readInt == 1920233063) {
                    return m56345i(readInt, "ITUNESADVISORY", parsableByteArray, false, false);
                }
                if (readInt == 1885823344) {
                    return m56345i(readInt, "ITUNESGAPLESS", parsableByteArray, false, true);
                }
                if (readInt == 1936683886) {
                    return m56344h(readInt, "TVSHOWSORT", parsableByteArray);
                }
                if (readInt == 1953919848) {
                    return m56344h(readInt, "TVSHOW", parsableByteArray);
                }
                if (readInt == 757935405) {
                    return m56341e(parsableByteArray, position);
                }
            }
            String valueOf = String.valueOf(AbstractC4745a.m19005a(readInt));
            Log.m21487d(f81008a, valueOf.length() != 0 ? "Skipped unknown metadata entry: ".concat(valueOf) : new String("Skipped unknown metadata entry: "));
            parsableByteArray.setPosition(position);
            return null;
        } finally {
            parsableByteArray.setPosition(position);
        }
    }

    @Nullable
    /* renamed from: d */
    public static TextInformationFrame m56340d(int i, String str, ParsableByteArray parsableByteArray) {
        int readInt = parsableByteArray.readInt();
        if (parsableByteArray.readInt() == 1684108385 && readInt >= 22) {
            parsableByteArray.skipBytes(10);
            int readUnsignedShort = parsableByteArray.readUnsignedShort();
            if (readUnsignedShort > 0) {
                StringBuilder sb = new StringBuilder(11);
                sb.append(readUnsignedShort);
                String sb2 = sb.toString();
                int readUnsignedShort2 = parsableByteArray.readUnsignedShort();
                if (readUnsignedShort2 > 0) {
                    String valueOf = String.valueOf(sb2);
                    StringBuilder sb3 = new StringBuilder(valueOf.length() + 12);
                    sb3.append(valueOf);
                    sb3.append("/");
                    sb3.append(readUnsignedShort2);
                    sb2 = sb3.toString();
                }
                return new TextInformationFrame(str, null, sb2);
            }
        }
        String valueOf2 = String.valueOf(AbstractC4745a.m19005a(i));
        Log.m21493w(f81008a, valueOf2.length() != 0 ? "Failed to parse index/count attribute: ".concat(valueOf2) : new String("Failed to parse index/count attribute: "));
        return null;
    }

    @Nullable
    /* renamed from: e */
    public static Id3Frame m56341e(ParsableByteArray parsableByteArray, int i) {
        String str = null;
        String str2 = null;
        int i2 = -1;
        int i3 = -1;
        while (parsableByteArray.getPosition() < i) {
            int position = parsableByteArray.getPosition();
            int readInt = parsableByteArray.readInt();
            int readInt2 = parsableByteArray.readInt();
            parsableByteArray.skipBytes(4);
            if (readInt2 == 1835360622) {
                str = parsableByteArray.readNullTerminatedString(readInt - 12);
            } else if (readInt2 == 1851878757) {
                str2 = parsableByteArray.readNullTerminatedString(readInt - 12);
            } else {
                if (readInt2 == 1684108385) {
                    i2 = position;
                    i3 = readInt;
                }
                parsableByteArray.skipBytes(readInt - 12);
            }
        }
        if (str == null || str2 == null || i2 == -1) {
            return null;
        }
        parsableByteArray.setPosition(i2);
        parsableByteArray.skipBytes(16);
        return new InternalFrame(str, str2, parsableByteArray.readNullTerminatedString(i3 - 16));
    }

    @Nullable
    /* renamed from: f */
    public static MdtaMetadataEntry m56342f(ParsableByteArray parsableByteArray, int i, String str) {
        while (true) {
            int position = parsableByteArray.getPosition();
            if (position >= i) {
                return null;
            }
            int readInt = parsableByteArray.readInt();
            if (parsableByteArray.readInt() == 1684108385) {
                int readInt2 = parsableByteArray.readInt();
                int readInt3 = parsableByteArray.readInt();
                int i2 = readInt - 16;
                byte[] bArr = new byte[i2];
                parsableByteArray.readBytes(bArr, 0, i2);
                return new MdtaMetadataEntry(str, bArr, readInt3, readInt2);
            }
            parsableByteArray.setPosition(position + readInt);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001c  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    @androidx.annotation.Nullable
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.exoplayer2.metadata.id3.TextInformationFrame m56343g(com.google.android.exoplayer2.util.ParsableByteArray r3) {
        /*
            int r3 = m56346j(r3)
            r0 = 0
            if (r3 <= 0) goto L11
            java.lang.String[] r1 = com.sunia.HTREnginev2.pnj.f81005F
            int r2 = r1.length
            if (r3 > r2) goto L11
            int r3 = r3 + (-1)
            r3 = r1[r3]
            goto L12
        L11:
            r3 = r0
        L12:
            if (r3 == 0) goto L1c
            com.google.android.exoplayer2.metadata.id3.TextInformationFrame r1 = new com.google.android.exoplayer2.metadata.id3.TextInformationFrame
            java.lang.String r2 = "TCON"
            r1.<init>(r2, r0, r3)
            return r1
        L1c:
            java.lang.String r3 = "MetadataUtil"
            java.lang.String r1 = "Failed to parse standard genre code"
            com.google.android.exoplayer2.util.Log.m21493w(r3, r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.pnj.m56343g(com.google.android.exoplayer2.util.ParsableByteArray):com.google.android.exoplayer2.metadata.id3.TextInformationFrame");
    }

    @Nullable
    /* renamed from: h */
    public static TextInformationFrame m56344h(int i, String str, ParsableByteArray parsableByteArray) {
        int readInt = parsableByteArray.readInt();
        if (parsableByteArray.readInt() == 1684108385) {
            parsableByteArray.skipBytes(8);
            return new TextInformationFrame(str, null, parsableByteArray.readNullTerminatedString(readInt - 16));
        }
        String valueOf = String.valueOf(AbstractC4745a.m19005a(i));
        Log.m21493w(f81008a, valueOf.length() != 0 ? "Failed to parse text attribute: ".concat(valueOf) : new String("Failed to parse text attribute: "));
        return null;
    }

    @Nullable
    /* renamed from: i */
    public static Id3Frame m56345i(int i, String str, ParsableByteArray parsableByteArray, boolean z, boolean z2) {
        int m56346j = m56346j(parsableByteArray);
        if (z2) {
            m56346j = Math.min(1, m56346j);
        }
        if (m56346j >= 0) {
            return z ? new TextInformationFrame(str, null, Integer.toString(m56346j)) : new CommentFrame(C4649C.LANGUAGE_UNDETERMINED, str, Integer.toString(m56346j));
        }
        String valueOf = String.valueOf(AbstractC4745a.m19005a(i));
        Log.m21493w(f81008a, valueOf.length() != 0 ? "Failed to parse uint8 attribute: ".concat(valueOf) : new String("Failed to parse uint8 attribute: "));
        return null;
    }

    /* renamed from: j */
    public static int m56346j(ParsableByteArray parsableByteArray) {
        parsableByteArray.skipBytes(4);
        if (parsableByteArray.readInt() == 1684108385) {
            parsableByteArray.skipBytes(8);
            return parsableByteArray.readUnsignedByte();
        }
        Log.m21493w(f81008a, "Failed to parse uint8 attribute value");
        return -1;
    }

    /* renamed from: k */
    public static void m56347k(int i, GaplessInfoHolder gaplessInfoHolder, Format.Builder builder) {
        if (i == 1 && gaplessInfoHolder.hasGaplessInfo()) {
            builder.setEncoderDelay(gaplessInfoHolder.encoderDelay).setEncoderPadding(gaplessInfoHolder.encoderPadding);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:3:0x000b, code lost:
    
        if (r6 != null) goto L19;
     */
    /* renamed from: l */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m56348l(int r5, @androidx.annotation.Nullable com.google.android.exoplayer2.metadata.Metadata r6, @androidx.annotation.Nullable com.google.android.exoplayer2.metadata.Metadata r7, com.google.android.exoplayer2.Format.Builder r8, com.google.android.exoplayer2.metadata.Metadata... r9) {
        /*
            com.google.android.exoplayer2.metadata.Metadata r0 = new com.google.android.exoplayer2.metadata.Metadata
            r1 = 0
            com.google.android.exoplayer2.metadata.Metadata$Entry[] r2 = new com.google.android.exoplayer2.metadata.Metadata.Entry[r1]
            r0.<init>(r2)
            r2 = 1
            if (r5 != r2) goto Le
            if (r6 == 0) goto L3c
            goto L3d
        Le:
            r6 = 2
            if (r5 != r6) goto L3c
            if (r7 == 0) goto L3c
            r5 = r1
        L14:
            int r6 = r7.length()
            if (r5 >= r6) goto L3c
            com.google.android.exoplayer2.metadata.Metadata$Entry r6 = r7.get(r5)
            boolean r3 = r6 instanceof com.google.android.exoplayer2.metadata.mp4.MdtaMetadataEntry
            if (r3 == 0) goto L39
            com.google.android.exoplayer2.metadata.mp4.MdtaMetadataEntry r6 = (com.google.android.exoplayer2.metadata.mp4.MdtaMetadataEntry) r6
            java.lang.String r3 = r6.key
            java.lang.String r4 = "com.android.capture.fps"
            boolean r3 = r4.equals(r3)
            if (r3 == 0) goto L39
            com.google.android.exoplayer2.metadata.Metadata r5 = new com.google.android.exoplayer2.metadata.Metadata
            com.google.android.exoplayer2.metadata.Metadata$Entry[] r7 = new com.google.android.exoplayer2.metadata.Metadata.Entry[r2]
            r7[r1] = r6
            r5.<init>(r7)
            r6 = r5
            goto L3d
        L39:
            int r5 = r5 + 1
            goto L14
        L3c:
            r6 = r0
        L3d:
            int r5 = r9.length
        L3e:
            if (r1 >= r5) goto L49
            r7 = r9[r1]
            com.google.android.exoplayer2.metadata.Metadata r6 = r6.copyWithAppendedEntriesFrom(r7)
            int r1 = r1 + 1
            goto L3e
        L49:
            int r5 = r6.length()
            if (r5 <= 0) goto L52
            r8.setMetadata(r6)
        L52:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.pnj.m56348l(int, com.google.android.exoplayer2.metadata.Metadata, com.google.android.exoplayer2.metadata.Metadata, com.google.android.exoplayer2.Format$Builder, com.google.android.exoplayer2.metadata.Metadata[]):void");
    }
}
