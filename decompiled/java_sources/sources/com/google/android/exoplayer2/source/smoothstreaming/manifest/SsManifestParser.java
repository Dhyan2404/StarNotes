package com.google.android.exoplayer2.source.smoothstreaming.manifest;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Pair;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.audio.AacUtil;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.extractor.mp4.PsshAtomUtil;
import com.google.android.exoplayer2.extractor.mp4.TrackEncryptionBox;
import com.google.android.exoplayer2.source.rtsp.RtpPayloadFormat;
import com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifest;
import com.google.android.exoplayer2.upstream.ParsingLoadable;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.CodecSpecificDataUtil;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.Util;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.UUID;
import org.apache.commons.collections4.IteratorUtils;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* loaded from: classes5.dex */
public class SsManifestParser implements ParsingLoadable.Parser<SsManifest> {

    /* renamed from: e */
    public final XmlPullParserFactory f26628e;

    /* loaded from: classes5.dex */
    public static class MissingFieldException extends ParserException {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public MissingFieldException(java.lang.String r4) {
            /*
                r3 = this;
                java.lang.String r4 = java.lang.String.valueOf(r4)
                int r0 = r4.length()
                java.lang.String r1 = "Missing required field: "
                if (r0 == 0) goto L11
                java.lang.String r4 = r1.concat(r4)
                goto L16
            L11:
                java.lang.String r4 = new java.lang.String
                r4.<init>(r1)
            L16:
                r0 = 1
                r1 = 4
                r2 = 0
                r3.<init>(r4, r2, r0, r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.MissingFieldException.<init>(java.lang.String):void");
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser$a */
    /* loaded from: classes5.dex */
    public static abstract class AbstractC4930a {

        /* renamed from: a */
        public final String f26629a;

        /* renamed from: b */
        public final String f26630b;

        /* renamed from: c */
        @Nullable
        public final AbstractC4930a f26631c;

        /* renamed from: d */
        public final List<Pair<String, Object>> f26632d = new LinkedList();

        public AbstractC4930a(@Nullable AbstractC4930a abstractC4930a, String str, String str2) {
            this.f26631c = abstractC4930a;
            this.f26629a = str;
            this.f26630b = str2;
        }

        /* renamed from: a */
        public void mo20514a(Object obj) {
        }

        /* renamed from: b */
        public abstract Object mo20515b();

        @Nullable
        /* renamed from: c */
        public final Object m20516c(String str) {
            for (int i = 0; i < this.f26632d.size(); i++) {
                Pair<String, Object> pair = this.f26632d.get(i);
                if (((String) pair.first).equals(str)) {
                    return pair.second;
                }
            }
            AbstractC4930a abstractC4930a = this.f26631c;
            if (abstractC4930a == null) {
                return null;
            }
            return abstractC4930a.m20516c(str);
        }

        /* renamed from: d */
        public boolean mo20517d(String str) {
            return false;
        }

        /* renamed from: e */
        public final AbstractC4930a m20518e(AbstractC4930a abstractC4930a, String str, String str2) {
            if (C4932c.f26640f.equals(str)) {
                return new C4932c(abstractC4930a, str2);
            }
            if (C4931b.f26633h.equals(str)) {
                return new C4931b(abstractC4930a, str2);
            }
            if (C4934e.f26681s.equals(str)) {
                return new C4934e(abstractC4930a, str2);
            }
            return null;
        }

        /* renamed from: f */
        public final Object m20519f(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
            boolean z = false;
            int i = 0;
            while (true) {
                int eventType = xmlPullParser.getEventType();
                if (eventType == 1) {
                    return null;
                }
                if (eventType == 2) {
                    String name = xmlPullParser.getName();
                    if (this.f26630b.equals(name)) {
                        mo20527n(xmlPullParser);
                        z = true;
                    } else if (z) {
                        if (i > 0) {
                            i++;
                        } else if (mo20517d(name)) {
                            mo20527n(xmlPullParser);
                        } else {
                            AbstractC4930a m20518e = m20518e(this, name, this.f26629a);
                            if (m20518e == null) {
                                i = 1;
                            } else {
                                mo20514a(m20518e.m20519f(xmlPullParser));
                            }
                        }
                    }
                } else if (eventType != 3) {
                    if (eventType == 4 && z && i == 0) {
                        mo20528o(xmlPullParser);
                    }
                } else if (!z) {
                    continue;
                } else if (i > 0) {
                    i--;
                } else {
                    String name2 = xmlPullParser.getName();
                    mo20521h(xmlPullParser);
                    if (!mo20517d(name2)) {
                        return mo20515b();
                    }
                }
                xmlPullParser.next();
            }
        }

        /* renamed from: g */
        public final boolean m20520g(XmlPullParser xmlPullParser, String str, boolean z) {
            String attributeValue = xmlPullParser.getAttributeValue(null, str);
            return attributeValue != null ? Boolean.parseBoolean(attributeValue) : z;
        }

        /* renamed from: h */
        public void mo20521h(XmlPullParser xmlPullParser) {
        }

        /* renamed from: i */
        public final int m20522i(XmlPullParser xmlPullParser, String str, int i) throws ParserException {
            String attributeValue = xmlPullParser.getAttributeValue(null, str);
            if (attributeValue == null) {
                return i;
            }
            try {
                return Integer.parseInt(attributeValue);
            } catch (NumberFormatException e) {
                throw ParserException.createForMalformedManifest(null, e);
            }
        }

        /* renamed from: j */
        public final long m20523j(XmlPullParser xmlPullParser, String str, long j) throws ParserException {
            String attributeValue = xmlPullParser.getAttributeValue(null, str);
            if (attributeValue == null) {
                return j;
            }
            try {
                return Long.parseLong(attributeValue);
            } catch (NumberFormatException e) {
                throw ParserException.createForMalformedManifest(null, e);
            }
        }

        /* renamed from: k */
        public final int m20524k(XmlPullParser xmlPullParser, String str) throws ParserException {
            String attributeValue = xmlPullParser.getAttributeValue(null, str);
            if (attributeValue == null) {
                throw new MissingFieldException(str);
            }
            try {
                return Integer.parseInt(attributeValue);
            } catch (NumberFormatException e) {
                throw ParserException.createForMalformedManifest(null, e);
            }
        }

        /* renamed from: l */
        public final long m20525l(XmlPullParser xmlPullParser, String str) throws ParserException {
            String attributeValue = xmlPullParser.getAttributeValue(null, str);
            if (attributeValue == null) {
                throw new MissingFieldException(str);
            }
            try {
                return Long.parseLong(attributeValue);
            } catch (NumberFormatException e) {
                throw ParserException.createForMalformedManifest(null, e);
            }
        }

        /* renamed from: m */
        public final String m20526m(XmlPullParser xmlPullParser, String str) throws MissingFieldException {
            String attributeValue = xmlPullParser.getAttributeValue(null, str);
            if (attributeValue != null) {
                return attributeValue;
            }
            throw new MissingFieldException(str);
        }

        /* renamed from: n */
        public void mo20527n(XmlPullParser xmlPullParser) throws ParserException {
        }

        /* renamed from: o */
        public void mo20528o(XmlPullParser xmlPullParser) {
        }

        /* renamed from: p */
        public final void m20529p(String str, @Nullable Object obj) {
            this.f26632d.add(Pair.create(str, obj));
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser$b */
    /* loaded from: classes5.dex */
    public static class C4931b extends AbstractC4930a {

        /* renamed from: h */
        public static final String f26633h = "Protection";

        /* renamed from: i */
        public static final String f26634i = "ProtectionHeader";

        /* renamed from: j */
        public static final String f26635j = "SystemID";

        /* renamed from: k */
        public static final int f26636k = 8;

        /* renamed from: e */
        public boolean f26637e;

        /* renamed from: f */
        public UUID f26638f;

        /* renamed from: g */
        public byte[] f26639g;

        public C4931b(AbstractC4930a abstractC4930a, String str) {
            super(abstractC4930a, str, f26633h);
        }

        /* renamed from: q */
        public static TrackEncryptionBox[] m20530q(byte[] bArr) {
            return new TrackEncryptionBox[]{new TrackEncryptionBox(true, null, 8, m20531r(bArr), 0, 0, null)};
        }

        /* renamed from: r */
        public static byte[] m20531r(byte[] bArr) {
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < bArr.length; i += 2) {
                sb.append((char) bArr[i]);
            }
            String sb2 = sb.toString();
            byte[] decode = Base64.decode(sb2.substring(sb2.indexOf("<KID>") + 5, sb2.indexOf("</KID>")), 0);
            m20533t(decode, 0, 3);
            m20533t(decode, 1, 2);
            m20533t(decode, 4, 5);
            m20533t(decode, 6, 7);
            return decode;
        }

        /* renamed from: s */
        public static String m20532s(String str) {
            return (str.charAt(0) == '{' && str.charAt(str.length() - 1) == '}') ? str.substring(1, str.length() - 1) : str;
        }

        /* renamed from: t */
        public static void m20533t(byte[] bArr, int i, int i2) {
            byte b = bArr[i];
            bArr[i] = bArr[i2];
            bArr[i2] = b;
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.AbstractC4930a
        /* renamed from: b */
        public Object mo20515b() {
            UUID uuid = this.f26638f;
            return new SsManifest.ProtectionElement(uuid, PsshAtomUtil.buildPsshAtom(uuid, this.f26639g), m20530q(this.f26639g));
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.AbstractC4930a
        /* renamed from: d */
        public boolean mo20517d(String str) {
            return f26634i.equals(str);
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.AbstractC4930a
        /* renamed from: h */
        public void mo20521h(XmlPullParser xmlPullParser) {
            if (f26634i.equals(xmlPullParser.getName())) {
                this.f26637e = false;
            }
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.AbstractC4930a
        /* renamed from: n */
        public void mo20527n(XmlPullParser xmlPullParser) {
            if (f26634i.equals(xmlPullParser.getName())) {
                this.f26637e = true;
                this.f26638f = UUID.fromString(m20532s(xmlPullParser.getAttributeValue(null, f26635j)));
            }
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.AbstractC4930a
        /* renamed from: o */
        public void mo20528o(XmlPullParser xmlPullParser) {
            if (this.f26637e) {
                this.f26639g = Base64.decode(xmlPullParser.getText(), 0);
            }
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser$c */
    /* loaded from: classes5.dex */
    public static class C4932c extends AbstractC4930a {

        /* renamed from: f */
        public static final String f26640f = "QualityLevel";

        /* renamed from: g */
        public static final String f26641g = "Index";

        /* renamed from: h */
        public static final String f26642h = "Bitrate";

        /* renamed from: i */
        public static final String f26643i = "CodecPrivateData";

        /* renamed from: j */
        public static final String f26644j = "SamplingRate";

        /* renamed from: k */
        public static final String f26645k = "Channels";

        /* renamed from: l */
        public static final String f26646l = "FourCC";

        /* renamed from: m */
        public static final String f26647m = "Type";

        /* renamed from: n */
        public static final String f26648n = "Subtype";

        /* renamed from: o */
        public static final String f26649o = "Language";

        /* renamed from: p */
        public static final String f26650p = "Name";

        /* renamed from: q */
        public static final String f26651q = "MaxWidth";

        /* renamed from: r */
        public static final String f26652r = "MaxHeight";

        /* renamed from: e */
        public Format f26653e;

        public C4932c(AbstractC4930a abstractC4930a, String str) {
            super(abstractC4930a, str, f26640f);
        }

        /* renamed from: q */
        public static List<byte[]> m20534q(String str) {
            ArrayList arrayList = new ArrayList();
            if (!TextUtils.isEmpty(str)) {
                byte[] bytesFromHexString = Util.getBytesFromHexString(str);
                byte[][] splitNalUnits = CodecSpecificDataUtil.splitNalUnits(bytesFromHexString);
                if (splitNalUnits == null) {
                    arrayList.add(bytesFromHexString);
                } else {
                    Collections.addAll(arrayList, splitNalUnits);
                }
            }
            return arrayList;
        }

        @Nullable
        /* renamed from: r */
        public static String m20535r(String str) {
            if (str.equalsIgnoreCase(RtpPayloadFormat.f26298c) || str.equalsIgnoreCase("X264") || str.equalsIgnoreCase("AVC1") || str.equalsIgnoreCase("DAVC")) {
                return MimeTypes.VIDEO_H264;
            }
            if (str.equalsIgnoreCase("AAC") || str.equalsIgnoreCase("AACL") || str.equalsIgnoreCase("AACH") || str.equalsIgnoreCase("AACP")) {
                return MimeTypes.AUDIO_AAC;
            }
            if (str.equalsIgnoreCase("TTML") || str.equalsIgnoreCase("DFXP")) {
                return MimeTypes.APPLICATION_TTML;
            }
            if (str.equalsIgnoreCase("ac-3") || str.equalsIgnoreCase("dac3")) {
                return MimeTypes.AUDIO_AC3;
            }
            if (str.equalsIgnoreCase("ec-3") || str.equalsIgnoreCase("dec3")) {
                return MimeTypes.AUDIO_E_AC3;
            }
            if (str.equalsIgnoreCase("dtsc")) {
                return MimeTypes.AUDIO_DTS;
            }
            if (str.equalsIgnoreCase("dtsh") || str.equalsIgnoreCase("dtsl")) {
                return MimeTypes.AUDIO_DTS_HD;
            }
            if (str.equalsIgnoreCase("dtse")) {
                return MimeTypes.AUDIO_DTS_EXPRESS;
            }
            if (str.equalsIgnoreCase("opus")) {
                return MimeTypes.AUDIO_OPUS;
            }
            return null;
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.AbstractC4930a
        /* renamed from: b */
        public Object mo20515b() {
            return this.f26653e;
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.AbstractC4930a
        /* renamed from: n */
        public void mo20527n(XmlPullParser xmlPullParser) throws ParserException {
            int i;
            Format.Builder builder = new Format.Builder();
            String m20535r = m20535r(m20526m(xmlPullParser, f26646l));
            int intValue = ((Integer) m20516c("Type")).intValue();
            if (intValue == 2) {
                builder.setContainerMimeType("video/mp4").setWidth(m20524k(xmlPullParser, "MaxWidth")).setHeight(m20524k(xmlPullParser, "MaxHeight")).setInitializationData(m20534q(xmlPullParser.getAttributeValue(null, f26643i)));
            } else if (intValue == 1) {
                if (m20535r == null) {
                    m20535r = MimeTypes.AUDIO_AAC;
                }
                int m20524k = m20524k(xmlPullParser, f26645k);
                int m20524k2 = m20524k(xmlPullParser, f26644j);
                List<byte[]> m20534q = m20534q(xmlPullParser.getAttributeValue(null, f26643i));
                if (m20534q.isEmpty() && MimeTypes.AUDIO_AAC.equals(m20535r)) {
                    m20534q = Collections.singletonList(AacUtil.buildAacLcAudioSpecificConfig(m20524k2, m20524k));
                }
                builder.setContainerMimeType("audio/mp4").setChannelCount(m20524k).setSampleRate(m20524k2).setInitializationData(m20534q);
            } else if (intValue == 3) {
                String str = (String) m20516c("Subtype");
                if (str != null) {
                    if (str.equals("CAPT")) {
                        i = 64;
                    } else if (str.equals("DESC")) {
                        i = 1024;
                    }
                    builder.setContainerMimeType(MimeTypes.APPLICATION_MP4).setRoleFlags(i);
                }
                i = 0;
                builder.setContainerMimeType(MimeTypes.APPLICATION_MP4).setRoleFlags(i);
            } else {
                builder.setContainerMimeType(MimeTypes.APPLICATION_MP4);
            }
            this.f26653e = builder.setId(xmlPullParser.getAttributeValue(null, f26641g)).setLabel((String) m20516c("Name")).setSampleMimeType(m20535r).setAverageBitrate(m20524k(xmlPullParser, f26642h)).setLanguage((String) m20516c("Language")).build();
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser$d */
    /* loaded from: classes5.dex */
    public static class C4933d extends AbstractC4930a {

        /* renamed from: n */
        public static final String f26654n = "SmoothStreamingMedia";

        /* renamed from: o */
        public static final String f26655o = "MajorVersion";

        /* renamed from: p */
        public static final String f26656p = "MinorVersion";

        /* renamed from: q */
        public static final String f26657q = "TimeScale";

        /* renamed from: r */
        public static final String f26658r = "DVRWindowLength";

        /* renamed from: s */
        public static final String f26659s = "Duration";

        /* renamed from: t */
        public static final String f26660t = "LookaheadCount";

        /* renamed from: u */
        public static final String f26661u = "IsLive";

        /* renamed from: e */
        public final List<SsManifest.StreamElement> f26662e;

        /* renamed from: f */
        public int f26663f;

        /* renamed from: g */
        public int f26664g;

        /* renamed from: h */
        public long f26665h;

        /* renamed from: i */
        public long f26666i;

        /* renamed from: j */
        public long f26667j;

        /* renamed from: k */
        public int f26668k;

        /* renamed from: l */
        public boolean f26669l;

        /* renamed from: m */
        @Nullable
        public SsManifest.ProtectionElement f26670m;

        public C4933d(AbstractC4930a abstractC4930a, String str) {
            super(abstractC4930a, str, f26654n);
            this.f26668k = -1;
            this.f26670m = null;
            this.f26662e = new LinkedList();
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.AbstractC4930a
        /* renamed from: a */
        public void mo20514a(Object obj) {
            if (obj instanceof SsManifest.StreamElement) {
                this.f26662e.add((SsManifest.StreamElement) obj);
            } else if (obj instanceof SsManifest.ProtectionElement) {
                Assertions.checkState(this.f26670m == null);
                this.f26670m = (SsManifest.ProtectionElement) obj;
            }
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.AbstractC4930a
        /* renamed from: b */
        public Object mo20515b() {
            int size = this.f26662e.size();
            SsManifest.StreamElement[] streamElementArr = new SsManifest.StreamElement[size];
            this.f26662e.toArray(streamElementArr);
            if (this.f26670m != null) {
                SsManifest.ProtectionElement protectionElement = this.f26670m;
                DrmInitData drmInitData = new DrmInitData(new DrmInitData.SchemeData(protectionElement.uuid, "video/mp4", protectionElement.data));
                for (int i = 0; i < size; i++) {
                    SsManifest.StreamElement streamElement = streamElementArr[i];
                    int i2 = streamElement.type;
                    if (i2 == 2 || i2 == 1) {
                        Format[] formatArr = streamElement.formats;
                        for (int i3 = 0; i3 < formatArr.length; i3++) {
                            formatArr[i3] = formatArr[i3].buildUpon().setDrmInitData(drmInitData).build();
                        }
                    }
                }
            }
            return new SsManifest(this.f26663f, this.f26664g, this.f26665h, this.f26666i, this.f26667j, this.f26668k, this.f26669l, this.f26670m, streamElementArr);
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.AbstractC4930a
        /* renamed from: n */
        public void mo20527n(XmlPullParser xmlPullParser) throws ParserException {
            this.f26663f = m20524k(xmlPullParser, f26655o);
            this.f26664g = m20524k(xmlPullParser, f26656p);
            this.f26665h = m20523j(xmlPullParser, "TimeScale", 10000000L);
            this.f26666i = m20525l(xmlPullParser, f26659s);
            this.f26667j = m20523j(xmlPullParser, f26658r, 0L);
            this.f26668k = m20522i(xmlPullParser, f26660t, -1);
            this.f26669l = m20520g(xmlPullParser, f26661u, false);
            m20529p("TimeScale", Long.valueOf(this.f26665h));
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser$e */
    /* loaded from: classes5.dex */
    public static class C4934e extends AbstractC4930a {

        /* renamed from: A */
        public static final String f26671A = "Url";

        /* renamed from: B */
        public static final String f26672B = "MaxWidth";

        /* renamed from: C */
        public static final String f26673C = "MaxHeight";

        /* renamed from: D */
        public static final String f26674D = "DisplayWidth";

        /* renamed from: E */
        public static final String f26675E = "DisplayHeight";

        /* renamed from: F */
        public static final String f26676F = "Language";

        /* renamed from: G */
        public static final String f26677G = "TimeScale";

        /* renamed from: H */
        public static final String f26678H = "d";

        /* renamed from: I */
        public static final String f26679I = "t";

        /* renamed from: J */
        public static final String f26680J = "r";

        /* renamed from: s */
        public static final String f26681s = "StreamIndex";

        /* renamed from: t */
        public static final String f26682t = "c";

        /* renamed from: u */
        public static final String f26683u = "Type";

        /* renamed from: v */
        public static final String f26684v = "audio";

        /* renamed from: w */
        public static final String f26685w = "video";

        /* renamed from: x */
        public static final String f26686x = "text";

        /* renamed from: y */
        public static final String f26687y = "Subtype";

        /* renamed from: z */
        public static final String f26688z = "Name";

        /* renamed from: e */
        public final String f26689e;

        /* renamed from: f */
        public final List<Format> f26690f;

        /* renamed from: g */
        public int f26691g;

        /* renamed from: h */
        public String f26692h;

        /* renamed from: i */
        public long f26693i;

        /* renamed from: j */
        public String f26694j;

        /* renamed from: k */
        public String f26695k;

        /* renamed from: l */
        public int f26696l;

        /* renamed from: m */
        public int f26697m;

        /* renamed from: n */
        public int f26698n;

        /* renamed from: o */
        public int f26699o;

        /* renamed from: p */
        public String f26700p;

        /* renamed from: q */
        public ArrayList<Long> f26701q;

        /* renamed from: r */
        public long f26702r;

        public C4934e(AbstractC4930a abstractC4930a, String str) {
            super(abstractC4930a, str, f26681s);
            this.f26689e = str;
            this.f26690f = new LinkedList();
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.AbstractC4930a
        /* renamed from: a */
        public void mo20514a(Object obj) {
            if (obj instanceof Format) {
                this.f26690f.add((Format) obj);
            }
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.AbstractC4930a
        /* renamed from: b */
        public Object mo20515b() {
            Format[] formatArr = new Format[this.f26690f.size()];
            this.f26690f.toArray(formatArr);
            return new SsManifest.StreamElement(this.f26689e, this.f26695k, this.f26691g, this.f26692h, this.f26693i, this.f26694j, this.f26696l, this.f26697m, this.f26698n, this.f26699o, this.f26700p, formatArr, this.f26701q, this.f26702r);
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.AbstractC4930a
        /* renamed from: d */
        public boolean mo20517d(String str) {
            return "c".equals(str);
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.AbstractC4930a
        /* renamed from: n */
        public void mo20527n(XmlPullParser xmlPullParser) throws ParserException {
            if ("c".equals(xmlPullParser.getName())) {
                m20537r(xmlPullParser);
            } else {
                m20536q(xmlPullParser);
            }
        }

        /* renamed from: q */
        public final void m20536q(XmlPullParser xmlPullParser) throws ParserException {
            int m20538s = m20538s(xmlPullParser);
            this.f26691g = m20538s;
            m20529p("Type", Integer.valueOf(m20538s));
            if (this.f26691g == 3) {
                this.f26692h = m20526m(xmlPullParser, "Subtype");
            } else {
                this.f26692h = xmlPullParser.getAttributeValue(null, "Subtype");
            }
            m20529p("Subtype", this.f26692h);
            String attributeValue = xmlPullParser.getAttributeValue(null, "Name");
            this.f26694j = attributeValue;
            m20529p("Name", attributeValue);
            this.f26695k = m20526m(xmlPullParser, f26671A);
            this.f26696l = m20522i(xmlPullParser, "MaxWidth", -1);
            this.f26697m = m20522i(xmlPullParser, "MaxHeight", -1);
            this.f26698n = m20522i(xmlPullParser, f26674D, -1);
            this.f26699o = m20522i(xmlPullParser, f26675E, -1);
            String attributeValue2 = xmlPullParser.getAttributeValue(null, "Language");
            this.f26700p = attributeValue2;
            m20529p("Language", attributeValue2);
            long m20522i = m20522i(xmlPullParser, "TimeScale", -1);
            this.f26693i = m20522i;
            if (m20522i == -1) {
                this.f26693i = ((Long) m20516c("TimeScale")).longValue();
            }
            this.f26701q = new ArrayList<>();
        }

        /* renamed from: r */
        public final void m20537r(XmlPullParser xmlPullParser) throws ParserException {
            int size = this.f26701q.size();
            long m20523j = m20523j(xmlPullParser, "t", C4649C.TIME_UNSET);
            int i = 1;
            if (m20523j == C4649C.TIME_UNSET) {
                if (size == 0) {
                    m20523j = 0;
                } else {
                    if (this.f26702r == -1) {
                        throw ParserException.createForMalformedManifest("Unable to infer start time", null);
                    }
                    m20523j = this.f26702r + this.f26701q.get(size - 1).longValue();
                }
            }
            this.f26701q.add(Long.valueOf(m20523j));
            this.f26702r = m20523j(xmlPullParser, "d", C4649C.TIME_UNSET);
            long m20523j2 = m20523j(xmlPullParser, "r", 1L);
            if (m20523j2 > 1 && this.f26702r == C4649C.TIME_UNSET) {
                throw ParserException.createForMalformedManifest("Repeated chunk with unspecified duration", null);
            }
            while (true) {
                long j = i;
                if (j >= m20523j2) {
                    return;
                }
                this.f26701q.add(Long.valueOf((this.f26702r * j) + m20523j));
                i++;
            }
        }

        /* renamed from: s */
        public final int m20538s(XmlPullParser xmlPullParser) throws ParserException {
            String attributeValue = xmlPullParser.getAttributeValue(null, "Type");
            if (attributeValue == null) {
                throw new MissingFieldException("Type");
            }
            if ("audio".equalsIgnoreCase(attributeValue)) {
                return 1;
            }
            if ("video".equalsIgnoreCase(attributeValue)) {
                return 2;
            }
            if ("text".equalsIgnoreCase(attributeValue)) {
                return 3;
            }
            StringBuilder sb = new StringBuilder(attributeValue.length() + 19);
            sb.append("Invalid key value[");
            sb.append(attributeValue);
            sb.append(IteratorUtils.f104924b);
            throw ParserException.createForMalformedManifest(sb.toString(), null);
        }
    }

    public SsManifestParser() {
        try {
            this.f26628e = XmlPullParserFactory.newInstance();
        } catch (XmlPullParserException e) {
            throw new RuntimeException("Couldn't create XmlPullParserFactory instance", e);
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.exoplayer2.upstream.ParsingLoadable.Parser
    public SsManifest parse(Uri uri, InputStream inputStream) throws IOException {
        try {
            XmlPullParser newPullParser = this.f26628e.newPullParser();
            newPullParser.setInput(inputStream, null);
            return (SsManifest) new C4933d(null, uri.toString()).m20519f(newPullParser);
        } catch (XmlPullParserException e) {
            throw ParserException.createForMalformedManifest(null, e);
        }
    }
}
