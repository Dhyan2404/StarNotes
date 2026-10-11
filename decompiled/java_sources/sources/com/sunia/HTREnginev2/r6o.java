package com.sunia.HTREnginev2;

import com.google.android.exoplayer2.text.Cue;
import com.google.android.exoplayer2.text.Subtitle;
import com.google.android.exoplayer2.text.webvtt.WebvttCueInfo;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* loaded from: classes5.dex */
public final class r6o implements Subtitle {

    /* renamed from: e */
    public final List<WebvttCueInfo> f82831e;

    /* renamed from: f */
    public final long[] f82832f;

    /* renamed from: g */
    public final long[] f82833g;

    public r6o(List<WebvttCueInfo> list) {
        this.f82831e = Collections.unmodifiableList(new ArrayList(list));
        this.f82832f = new long[list.size() * 2];
        for (int i = 0; i < list.size(); i++) {
            WebvttCueInfo webvttCueInfo = list.get(i);
            int i2 = i * 2;
            long[] jArr = this.f82832f;
            jArr[i2] = webvttCueInfo.startTimeUs;
            jArr[i2 + 1] = webvttCueInfo.endTimeUs;
        }
        long[] jArr2 = this.f82832f;
        long[] copyOf = Arrays.copyOf(jArr2, jArr2.length);
        this.f82833g = copyOf;
        Arrays.sort(copyOf);
    }

    /* renamed from: b */
    public static /* synthetic */ int m56929b(WebvttCueInfo webvttCueInfo, WebvttCueInfo webvttCueInfo2) {
        return Long.compare(webvttCueInfo.startTimeUs, webvttCueInfo2.startTimeUs);
    }

    @Override // com.google.android.exoplayer2.text.Subtitle
    public List<Cue> getCues(long j) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i = 0; i < this.f82831e.size(); i++) {
            long[] jArr = this.f82832f;
            int i2 = i * 2;
            if (jArr[i2] <= j && j < jArr[i2 + 1]) {
                WebvttCueInfo webvttCueInfo = this.f82831e.get(i);
                Cue cue = webvttCueInfo.cue;
                if (cue.line == -3.4028235E38f) {
                    arrayList2.add(webvttCueInfo);
                } else {
                    arrayList.add(cue);
                }
            }
        }
        Collections.sort(arrayList2, new Comparator() { // from class: com.sunia.HTREnginev2.q6o
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int m56929b;
                m56929b = r6o.m56929b((WebvttCueInfo) obj, (WebvttCueInfo) obj2);
                return m56929b;
            }
        });
        for (int i3 = 0; i3 < arrayList2.size(); i3++) {
            arrayList.add(((WebvttCueInfo) arrayList2.get(i3)).cue.buildUpon().setLine((-1) - i3, 1).build());
        }
        return arrayList;
    }

    @Override // com.google.android.exoplayer2.text.Subtitle
    public long getEventTime(int i) {
        Assertions.checkArgument(i >= 0);
        Assertions.checkArgument(i < this.f82833g.length);
        return this.f82833g[i];
    }

    @Override // com.google.android.exoplayer2.text.Subtitle
    public int getEventTimeCount() {
        return this.f82833g.length;
    }

    @Override // com.google.android.exoplayer2.text.Subtitle
    public int getNextEventTimeIndex(long j) {
        int binarySearchCeil = Util.binarySearchCeil(this.f82833g, j, false, false);
        if (binarySearchCeil < this.f82833g.length) {
            return binarySearchCeil;
        }
        return -1;
    }
}
