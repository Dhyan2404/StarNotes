package com.google.android.exoplayer2.extractor.jpeg;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.Extractor;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.PositionHolder;
import com.google.android.exoplayer2.extractor.SeekMap;
import com.google.android.exoplayer2.extractor.mp4.Mp4Extractor;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.mp4.MotionPhotoMetadata;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.sunia.HTREnginev2.wxm;
import java.io.IOException;

/* loaded from: classes5.dex */
public final class JpegExtractor implements Extractor {

    /* renamed from: k */
    public static final int f23655k = 0;

    /* renamed from: l */
    public static final int f23656l = 1;

    /* renamed from: m */
    public static final int f23657m = 2;

    /* renamed from: n */
    public static final int f23658n = 4;

    /* renamed from: o */
    public static final int f23659o = 5;

    /* renamed from: p */
    public static final int f23660p = 6;

    /* renamed from: q */
    public static final int f23661q = 6;

    /* renamed from: r */
    public static final long f23662r = 1165519206;

    /* renamed from: s */
    public static final int f23663s = 65496;

    /* renamed from: t */
    public static final int f23664t = 65498;

    /* renamed from: u */
    public static final int f23665u = 65504;

    /* renamed from: v */
    public static final int f23666v = 65505;

    /* renamed from: w */
    public static final String f23667w = "http://ns.adobe.com/xap/1.0/";

    /* renamed from: x */
    public static final int f23668x = 1024;

    /* renamed from: b */
    public ExtractorOutput f23670b;

    /* renamed from: c */
    public int f23671c;

    /* renamed from: d */
    public int f23672d;

    /* renamed from: e */
    public int f23673e;

    /* renamed from: g */
    @Nullable
    public MotionPhotoMetadata f23675g;

    /* renamed from: h */
    public ExtractorInput f23676h;

    /* renamed from: i */
    public wxm f23677i;

    /* renamed from: j */
    @Nullable
    public Mp4Extractor f23678j;

    /* renamed from: a */
    public final ParsableByteArray f23669a = new ParsableByteArray(6);

    /* renamed from: f */
    public long f23674f = -1;

    @Nullable
    /* renamed from: c */
    public static MotionPhotoMetadata m18858c(String str, long j) throws IOException {
        MotionPhotoDescription m18870a;
        if (j == -1 || (m18870a = C4737a.m18870a(str)) == null) {
            return null;
        }
        return m18870a.m18868a(j);
    }

    /* renamed from: a */
    public final void m18859a(ExtractorInput extractorInput) throws IOException {
        this.f23669a.reset(2);
        extractorInput.peekFully(this.f23669a.getData(), 0, 2);
        extractorInput.advancePeekPosition(this.f23669a.readUnsignedShort() - 2);
    }

    /* renamed from: b */
    public final void m18860b() {
        m18861d(new Metadata.Entry[0]);
        ((ExtractorOutput) Assertions.checkNotNull(this.f23670b)).endTracks();
        this.f23670b.seekMap(new SeekMap.Unseekable(C4649C.TIME_UNSET));
        this.f23671c = 6;
    }

    /* renamed from: d */
    public final void m18861d(Metadata.Entry... entryArr) {
        ((ExtractorOutput) Assertions.checkNotNull(this.f23670b)).track(1024, 4).format(new Format.Builder().setContainerMimeType("image/jpeg").setMetadata(new Metadata(entryArr)).build());
    }

    /* renamed from: e */
    public final int m18862e(ExtractorInput extractorInput) throws IOException {
        this.f23669a.reset(2);
        extractorInput.peekFully(this.f23669a.getData(), 0, 2);
        return this.f23669a.readUnsignedShort();
    }

    /* renamed from: f */
    public final void m18863f(ExtractorInput extractorInput) throws IOException {
        this.f23669a.reset(2);
        extractorInput.readFully(this.f23669a.getData(), 0, 2);
        int readUnsignedShort = this.f23669a.readUnsignedShort();
        this.f23672d = readUnsignedShort;
        if (readUnsignedShort == 65498) {
            if (this.f23674f != -1) {
                this.f23671c = 4;
                return;
            } else {
                m18860b();
                return;
            }
        }
        if ((readUnsignedShort < 65488 || readUnsignedShort > 65497) && readUnsignedShort != 65281) {
            this.f23671c = 1;
        }
    }

    /* renamed from: g */
    public final void m18864g(ExtractorInput extractorInput) throws IOException {
        String readNullTerminatedString;
        if (this.f23672d == 65505) {
            ParsableByteArray parsableByteArray = new ParsableByteArray(this.f23673e);
            extractorInput.readFully(parsableByteArray.getData(), 0, this.f23673e);
            if (this.f23675g == null && "http://ns.adobe.com/xap/1.0/".equals(parsableByteArray.readNullTerminatedString()) && (readNullTerminatedString = parsableByteArray.readNullTerminatedString()) != null) {
                MotionPhotoMetadata m18858c = m18858c(readNullTerminatedString, extractorInput.getLength());
                this.f23675g = m18858c;
                if (m18858c != null) {
                    this.f23674f = m18858c.videoStartPosition;
                }
            }
        } else {
            extractorInput.skipFully(this.f23673e);
        }
        this.f23671c = 0;
    }

    /* renamed from: h */
    public final void m18865h(ExtractorInput extractorInput) throws IOException {
        this.f23669a.reset(2);
        extractorInput.readFully(this.f23669a.getData(), 0, 2);
        this.f23673e = this.f23669a.readUnsignedShort() - 2;
        this.f23671c = 2;
    }

    /* renamed from: i */
    public final void m18866i(ExtractorInput extractorInput) throws IOException {
        if (!extractorInput.peekFully(this.f23669a.getData(), 0, 1, true)) {
            m18860b();
            return;
        }
        extractorInput.resetPeekPosition();
        if (this.f23678j == null) {
            this.f23678j = new Mp4Extractor();
        }
        wxm wxmVar = new wxm(extractorInput, this.f23674f);
        this.f23677i = wxmVar;
        if (!this.f23678j.sniff(wxmVar)) {
            m18860b();
        } else {
            this.f23678j.init(new StartOffsetExtractorOutput(this.f23674f, (ExtractorOutput) Assertions.checkNotNull(this.f23670b)));
            m18867j();
        }
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void init(ExtractorOutput extractorOutput) {
        this.f23670b = extractorOutput;
    }

    /* renamed from: j */
    public final void m18867j() {
        m18861d((Metadata.Entry) Assertions.checkNotNull(this.f23675g));
        this.f23671c = 5;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public int read(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        int i = this.f23671c;
        if (i == 0) {
            m18863f(extractorInput);
            return 0;
        }
        if (i == 1) {
            m18865h(extractorInput);
            return 0;
        }
        if (i == 2) {
            m18864g(extractorInput);
            return 0;
        }
        if (i == 4) {
            long position = extractorInput.getPosition();
            long j = this.f23674f;
            if (position != j) {
                positionHolder.position = j;
                return 1;
            }
            m18866i(extractorInput);
            return 0;
        }
        if (i != 5) {
            if (i == 6) {
                return -1;
            }
            throw new IllegalStateException();
        }
        if (this.f23677i == null || extractorInput != this.f23676h) {
            this.f23676h = extractorInput;
            this.f23677i = new wxm(extractorInput, this.f23674f);
        }
        int read = ((Mp4Extractor) Assertions.checkNotNull(this.f23678j)).read(this.f23677i, positionHolder);
        if (read == 1) {
            positionHolder.position += this.f23674f;
        }
        return read;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void release() {
        Mp4Extractor mp4Extractor = this.f23678j;
        if (mp4Extractor != null) {
            mp4Extractor.release();
        }
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void seek(long j, long j2) {
        if (j == 0) {
            this.f23671c = 0;
            this.f23678j = null;
        } else if (this.f23671c == 5) {
            ((Mp4Extractor) Assertions.checkNotNull(this.f23678j)).seek(j, j2);
        }
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public boolean sniff(ExtractorInput extractorInput) throws IOException {
        if (m18862e(extractorInput) != 65496) {
            return false;
        }
        int m18862e = m18862e(extractorInput);
        this.f23672d = m18862e;
        if (m18862e == 65504) {
            m18859a(extractorInput);
            this.f23672d = m18862e(extractorInput);
        }
        if (this.f23672d != 65505) {
            return false;
        }
        extractorInput.advancePeekPosition(2);
        this.f23669a.reset(6);
        extractorInput.peekFully(this.f23669a.getData(), 0, 6);
        return this.f23669a.readUnsignedInt() == f23662r && this.f23669a.readUnsignedShort() == 0;
    }
}
