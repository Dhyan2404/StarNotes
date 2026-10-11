package com.google.android.exoplayer2.extractor;

import android.net.Uri;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.extractor.amr.AmrExtractor;
import com.google.android.exoplayer2.extractor.flac.FlacExtractor;
import com.google.android.exoplayer2.extractor.flv.FlvExtractor;
import com.google.android.exoplayer2.extractor.jpeg.JpegExtractor;
import com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor;
import com.google.android.exoplayer2.extractor.mp3.Mp3Extractor;
import com.google.android.exoplayer2.extractor.mp4.FragmentedMp4Extractor;
import com.google.android.exoplayer2.extractor.mp4.Mp4Extractor;
import com.google.android.exoplayer2.extractor.ogg.OggExtractor;
import com.google.android.exoplayer2.extractor.p007ts.Ac3Extractor;
import com.google.android.exoplayer2.extractor.p007ts.Ac4Extractor;
import com.google.android.exoplayer2.extractor.p007ts.AdtsExtractor;
import com.google.android.exoplayer2.extractor.p007ts.PsExtractor;
import com.google.android.exoplayer2.extractor.p007ts.TsExtractor;
import com.google.android.exoplayer2.extractor.wav.WavExtractor;
import com.google.android.exoplayer2.util.FileTypes;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes5.dex */
public final class DefaultExtractorsFactory implements ExtractorsFactory {

    /* renamed from: m */
    public static final int[] f23509m = {5, 4, 12, 8, 3, 10, 9, 11, 6, 2, 0, 1, 7, 14};

    /* renamed from: n */
    public static final C4730a f23510n = new C4730a();

    /* renamed from: a */
    public boolean f23511a;

    /* renamed from: b */
    public boolean f23512b;

    /* renamed from: c */
    public int f23513c;

    /* renamed from: d */
    public int f23514d;

    /* renamed from: e */
    public int f23515e;

    /* renamed from: f */
    public int f23516f;

    /* renamed from: g */
    public int f23517g;

    /* renamed from: h */
    public int f23518h;

    /* renamed from: i */
    public int f23519i;

    /* renamed from: k */
    public int f23521k;

    /* renamed from: j */
    public int f23520j = 1;

    /* renamed from: l */
    public int f23522l = TsExtractor.DEFAULT_TIMESTAMP_SEARCH_BYTES;

    /* renamed from: com.google.android.exoplayer2.extractor.DefaultExtractorsFactory$a */
    /* loaded from: classes5.dex */
    public static final class C4730a {

        /* renamed from: a */
        public final AtomicBoolean f23523a = new AtomicBoolean(false);

        /* renamed from: b */
        @Nullable
        @GuardedBy("extensionLoaded")
        public Constructor<? extends Extractor> f23524b;

        @Nullable
        /* renamed from: a */
        public Extractor m18790a(int i) {
            Constructor<? extends Extractor> m18791b = m18791b();
            if (m18791b == null) {
                return null;
            }
            try {
                return m18791b.newInstance(Integer.valueOf(i));
            } catch (Exception e) {
                throw new IllegalStateException("Unexpected error creating FLAC extractor", e);
            }
        }

        @Nullable
        /* renamed from: b */
        public final Constructor<? extends Extractor> m18791b() {
            synchronized (this.f23523a) {
                if (this.f23523a.get()) {
                    return this.f23524b;
                }
                try {
                    if (Boolean.TRUE.equals(Class.forName("com.google.android.exoplayer2.ext.flac.FlacLibrary").getMethod("isAvailable", new Class[0]).invoke(null, new Object[0]))) {
                        this.f23524b = Class.forName("com.google.android.exoplayer2.ext.flac.FlacExtractor").asSubclass(Extractor.class).getConstructor(Integer.TYPE);
                    }
                } catch (ClassNotFoundException unused) {
                } catch (Exception e) {
                    throw new RuntimeException("Error instantiating FLAC extension", e);
                }
                this.f23523a.set(true);
                return this.f23524b;
            }
        }
    }

    /* renamed from: c */
    public final void m18789c(int i, List<Extractor> list) {
        switch (i) {
            case 0:
                list.add(new Ac3Extractor());
                return;
            case 1:
                list.add(new Ac4Extractor());
                return;
            case 2:
                list.add(new AdtsExtractor(this.f23513c | (this.f23511a ? 1 : 0) | (this.f23512b ? 2 : 0)));
                return;
            case 3:
                list.add(new AmrExtractor(this.f23514d | (this.f23511a ? 1 : 0) | (this.f23512b ? 2 : 0)));
                return;
            case 4:
                Extractor m18790a = f23510n.m18790a(this.f23515e);
                if (m18790a != null) {
                    list.add(m18790a);
                    return;
                } else {
                    list.add(new FlacExtractor(this.f23515e));
                    return;
                }
            case 5:
                list.add(new FlvExtractor());
                return;
            case 6:
                list.add(new MatroskaExtractor(this.f23516f));
                return;
            case 7:
                list.add(new Mp3Extractor(this.f23519i | (this.f23511a ? 1 : 0) | (this.f23512b ? 2 : 0)));
                return;
            case 8:
                list.add(new FragmentedMp4Extractor(this.f23518h));
                list.add(new Mp4Extractor(this.f23517g));
                return;
            case 9:
                list.add(new OggExtractor());
                return;
            case 10:
                list.add(new PsExtractor());
                return;
            case 11:
                list.add(new TsExtractor(this.f23520j, this.f23521k, this.f23522l));
                return;
            case 12:
                list.add(new WavExtractor());
                return;
            case 13:
            default:
                return;
            case 14:
                list.add(new JpegExtractor());
                return;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorsFactory
    public synchronized Extractor[] createExtractors() {
        return createExtractors(Uri.EMPTY, new HashMap());
    }

    public synchronized DefaultExtractorsFactory setAdtsExtractorFlags(int i) {
        this.f23513c = i;
        return this;
    }

    public synchronized DefaultExtractorsFactory setAmrExtractorFlags(int i) {
        this.f23514d = i;
        return this;
    }

    public synchronized DefaultExtractorsFactory setConstantBitrateSeekingAlwaysEnabled(boolean z) {
        this.f23512b = z;
        return this;
    }

    public synchronized DefaultExtractorsFactory setConstantBitrateSeekingEnabled(boolean z) {
        this.f23511a = z;
        return this;
    }

    public synchronized DefaultExtractorsFactory setFlacExtractorFlags(int i) {
        this.f23515e = i;
        return this;
    }

    public synchronized DefaultExtractorsFactory setFragmentedMp4ExtractorFlags(int i) {
        this.f23518h = i;
        return this;
    }

    public synchronized DefaultExtractorsFactory setMatroskaExtractorFlags(int i) {
        this.f23516f = i;
        return this;
    }

    public synchronized DefaultExtractorsFactory setMp3ExtractorFlags(int i) {
        this.f23519i = i;
        return this;
    }

    public synchronized DefaultExtractorsFactory setMp4ExtractorFlags(int i) {
        this.f23517g = i;
        return this;
    }

    public synchronized DefaultExtractorsFactory setTsExtractorFlags(int i) {
        this.f23521k = i;
        return this;
    }

    public synchronized DefaultExtractorsFactory setTsExtractorMode(int i) {
        this.f23520j = i;
        return this;
    }

    public synchronized DefaultExtractorsFactory setTsExtractorTimestampSearchBytes(int i) {
        this.f23522l = i;
        return this;
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorsFactory
    public synchronized Extractor[] createExtractors(Uri uri, Map<String, List<String>> map) {
        ArrayList arrayList;
        arrayList = new ArrayList(14);
        int inferFileTypeFromResponseHeaders = FileTypes.inferFileTypeFromResponseHeaders(map);
        if (inferFileTypeFromResponseHeaders != -1) {
            m18789c(inferFileTypeFromResponseHeaders, arrayList);
        }
        int inferFileTypeFromUri = FileTypes.inferFileTypeFromUri(uri);
        if (inferFileTypeFromUri != -1 && inferFileTypeFromUri != inferFileTypeFromResponseHeaders) {
            m18789c(inferFileTypeFromUri, arrayList);
        }
        for (int i : f23509m) {
            if (i != inferFileTypeFromResponseHeaders && i != inferFileTypeFromUri) {
                m18789c(i, arrayList);
            }
        }
        return (Extractor[]) arrayList.toArray(new Extractor[arrayList.size()]);
    }
}
