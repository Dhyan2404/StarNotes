package com.sunia.HTREnginev2;

import androidx.annotation.VisibleForTesting;
import com.google.android.exoplayer2.text.Cue;
import com.google.android.exoplayer2.text.Subtitle;
import com.google.android.exoplayer2.text.ttml.TtmlStyle;
import com.google.android.exoplayer2.util.Util;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* loaded from: classes5.dex */
public final class jon implements Subtitle {

    /* renamed from: e */
    public final gon f74540e;

    /* renamed from: f */
    public final long[] f74541f;

    /* renamed from: g */
    public final Map<String, TtmlStyle> f74542g;

    /* renamed from: h */
    public final Map<String, hon> f74543h;

    /* renamed from: i */
    public final Map<String, String> f74544i;

    public jon(gon gonVar, Map<String, TtmlStyle> map, Map<String, hon> map2, Map<String, String> map3) {
        this.f74540e = gonVar;
        this.f74543h = map2;
        this.f74544i = map3;
        this.f74542g = map != null ? Collections.unmodifiableMap(map) : Collections.emptyMap();
        this.f74541f = gonVar.m54327j();
    }

    @VisibleForTesting
    /* renamed from: a */
    public Map<String, TtmlStyle> m55011a() {
        return this.f74542g;
    }

    @VisibleForTesting
    /* renamed from: b */
    public gon m55012b() {
        return this.f74540e;
    }

    @Override // com.google.android.exoplayer2.text.Subtitle
    public List<Cue> getCues(long j) {
        return this.f74540e.m54325h(j, this.f74542g, this.f74543h, this.f74544i);
    }

    @Override // com.google.android.exoplayer2.text.Subtitle
    public long getEventTime(int i) {
        return this.f74541f[i];
    }

    @Override // com.google.android.exoplayer2.text.Subtitle
    public int getEventTimeCount() {
        return this.f74541f.length;
    }

    @Override // com.google.android.exoplayer2.text.Subtitle
    public int getNextEventTimeIndex(long j) {
        int binarySearchCeil = Util.binarySearchCeil(this.f74541f, j, false, false);
        if (binarySearchCeil < this.f74541f.length) {
            return binarySearchCeil;
        }
        return -1;
    }
}
