package com.google.android.exoplayer2.source.dash.offline;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.extractor.ChunkIndex;
import com.google.android.exoplayer2.offline.SegmentDownloader;
import com.google.android.exoplayer2.source.dash.BaseUrlExclusionList;
import com.google.android.exoplayer2.source.dash.DashSegmentIndex;
import com.google.android.exoplayer2.source.dash.DashUtil;
import com.google.android.exoplayer2.source.dash.DashWrappingSegmentIndex;
import com.google.android.exoplayer2.source.dash.manifest.AdaptationSet;
import com.google.android.exoplayer2.source.dash.manifest.DashManifest;
import com.google.android.exoplayer2.source.dash.manifest.DashManifestParser;
import com.google.android.exoplayer2.source.dash.manifest.Period;
import com.google.android.exoplayer2.source.dash.manifest.RangedUri;
import com.google.android.exoplayer2.source.dash.manifest.Representation;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.ParsingLoadable;
import com.google.android.exoplayer2.upstream.cache.CacheDataSource;
import com.google.android.exoplayer2.util.RunnableFutureTask;
import com.google.android.exoplayer2.util.Util;
import com.sunia.HTREnginev2.vtd;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;

/* loaded from: classes5.dex */
public final class DashDownloader extends SegmentDownloader<DashManifest> {

    /* renamed from: m */
    public final BaseUrlExclusionList f25874m;

    /* renamed from: com.google.android.exoplayer2.source.dash.offline.DashDownloader$a */
    /* loaded from: classes5.dex */
    public class C4876a extends RunnableFutureTask<ChunkIndex, IOException> {

        /* renamed from: l */
        public final /* synthetic */ DataSource f25875l;

        /* renamed from: m */
        public final /* synthetic */ int f25876m;

        /* renamed from: n */
        public final /* synthetic */ Representation f25877n;

        public C4876a(DashDownloader dashDownloader, DataSource dataSource, int i, Representation representation) {
            this.f25875l = dataSource;
            this.f25876m = i;
            this.f25877n = representation;
        }

        @Override // com.google.android.exoplayer2.util.RunnableFutureTask
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public ChunkIndex doWork() throws IOException {
            return DashUtil.loadChunkIndex(this.f25875l, this.f25876m, this.f25877n);
        }
    }

    public DashDownloader(MediaItem mediaItem, CacheDataSource.Factory factory) {
        this(mediaItem, factory, new vtd());
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00bb A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00b7 A[SYNTHETIC] */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m20035g(com.google.android.exoplayer2.upstream.DataSource r27, com.google.android.exoplayer2.source.dash.manifest.AdaptationSet r28, long r29, long r31, boolean r33, java.util.ArrayList<com.google.android.exoplayer2.offline.SegmentDownloader.Segment> r34) throws java.io.IOException, java.lang.InterruptedException {
        /*
            r26 = this;
            r7 = r26
            r8 = r28
            r9 = r33
            r10 = r34
            r0 = 0
            r11 = r0
        La:
            java.util.List<com.google.android.exoplayer2.source.dash.manifest.Representation> r0 = r8.representations
            int r0 = r0.size()
            if (r11 >= r0) goto Lbc
            java.util.List<com.google.android.exoplayer2.source.dash.manifest.Representation> r0 = r8.representations
            java.lang.Object r0 = r0.get(r11)
            com.google.android.exoplayer2.source.dash.manifest.Representation r0 = (com.google.android.exoplayer2.source.dash.manifest.Representation) r0
            int r1 = r8.type     // Catch: java.io.IOException -> Lb0
            r12 = r27
            com.google.android.exoplayer2.source.dash.DashSegmentIndex r13 = r7.m20037i(r12, r1, r0, r9)     // Catch: java.io.IOException -> Lae
            if (r13 == 0) goto La2
            r14 = r31
            long r16 = r13.getSegmentCount(r14)
            r1 = -1
            int r1 = (r16 > r1 ? 1 : (r16 == r1 ? 0 : -1))
            if (r1 == 0) goto L9a
            com.google.android.exoplayer2.source.dash.BaseUrlExclusionList r1 = r7.f25874m
            com.google.common.collect.ImmutableList<com.google.android.exoplayer2.source.dash.manifest.BaseUrl> r2 = r0.baseUrls
            com.google.android.exoplayer2.source.dash.manifest.BaseUrl r1 = r1.selectBaseUrl(r2)
            java.lang.Object r1 = com.google.android.exoplayer2.util.Util.castNonNull(r1)
            com.google.android.exoplayer2.source.dash.manifest.BaseUrl r1 = (com.google.android.exoplayer2.source.dash.manifest.BaseUrl) r1
            java.lang.String r6 = r1.url
            com.google.android.exoplayer2.source.dash.manifest.RangedUri r18 = r0.getInitializationUri()
            if (r18 == 0) goto L58
            r1 = r26
            r2 = r0
            r3 = r6
            r4 = r29
            r19 = r6
            r6 = r18
            com.google.android.exoplayer2.offline.SegmentDownloader$Segment r1 = r1.m20036h(r2, r3, r4, r6)
            r10.add(r1)
            goto L5a
        L58:
            r19 = r6
        L5a:
            com.google.android.exoplayer2.source.dash.manifest.RangedUri r6 = r0.getIndexUri()
            if (r6 == 0) goto L6e
            r1 = r26
            r2 = r0
            r3 = r19
            r4 = r29
            com.google.android.exoplayer2.offline.SegmentDownloader$Segment r1 = r1.m20036h(r2, r3, r4, r6)
            r10.add(r1)
        L6e:
            long r1 = r13.getFirstSegmentNum()
            long r16 = r1 + r16
            r20 = 1
            long r16 = r16 - r20
            r4 = r1
        L79:
            int r1 = (r4 > r16 ? 1 : (r4 == r16 ? 0 : -1))
            if (r1 > 0) goto Lb7
            long r1 = r13.getTimeUs(r4)
            long r22 = r29 + r1
            com.google.android.exoplayer2.source.dash.manifest.RangedUri r6 = r13.getSegmentUrl(r4)
            r1 = r26
            r2 = r0
            r3 = r19
            r24 = r4
            r4 = r22
            com.google.android.exoplayer2.offline.SegmentDownloader$Segment r1 = r1.m20036h(r2, r3, r4, r6)
            r10.add(r1)
            long r4 = r24 + r20
            goto L79
        L9a:
            com.google.android.exoplayer2.offline.DownloadException r0 = new com.google.android.exoplayer2.offline.DownloadException
            java.lang.String r1 = "Unbounded segment index"
            r0.<init>(r1)
            throw r0
        La2:
            r14 = r31
            com.google.android.exoplayer2.offline.DownloadException r0 = new com.google.android.exoplayer2.offline.DownloadException     // Catch: java.io.IOException -> Lac
            java.lang.String r1 = "Missing segment index"
            r0.<init>(r1)     // Catch: java.io.IOException -> Lac
            throw r0     // Catch: java.io.IOException -> Lac
        Lac:
            r0 = move-exception
            goto Lb5
        Lae:
            r0 = move-exception
            goto Lb3
        Lb0:
            r0 = move-exception
            r12 = r27
        Lb3:
            r14 = r31
        Lb5:
            if (r9 == 0) goto Lbb
        Lb7:
            int r11 = r11 + 1
            goto La
        Lbb:
            throw r0
        Lbc:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.dash.offline.DashDownloader.m20035g(com.google.android.exoplayer2.upstream.DataSource, com.google.android.exoplayer2.source.dash.manifest.AdaptationSet, long, long, boolean, java.util.ArrayList):void");
    }

    /* renamed from: h */
    public final SegmentDownloader.Segment m20036h(Representation representation, String str, long j, RangedUri rangedUri) {
        return new SegmentDownloader.Segment(j, DashUtil.buildDataSpec(representation, str, rangedUri, 0));
    }

    @Nullable
    /* renamed from: i */
    public final DashSegmentIndex m20037i(DataSource dataSource, int i, Representation representation, boolean z) throws IOException, InterruptedException {
        DashSegmentIndex index = representation.getIndex();
        if (index != null) {
            return index;
        }
        ChunkIndex chunkIndex = (ChunkIndex) execute(new C4876a(this, dataSource, i, representation), z);
        if (chunkIndex == null) {
            return null;
        }
        return new DashWrappingSegmentIndex(chunkIndex, representation.presentationTimeOffsetUs);
    }

    public DashDownloader(MediaItem mediaItem, CacheDataSource.Factory factory, Executor executor) {
        this(mediaItem, new DashManifestParser(), factory, executor);
    }

    @Override // com.google.android.exoplayer2.offline.SegmentDownloader
    public List<SegmentDownloader.Segment> getSegments(DataSource dataSource, DashManifest dashManifest, boolean z) throws IOException, InterruptedException {
        ArrayList<SegmentDownloader.Segment> arrayList = new ArrayList<>();
        for (int i = 0; i < dashManifest.getPeriodCount(); i++) {
            Period period = dashManifest.getPeriod(i);
            long msToUs = Util.msToUs(period.startMs);
            long periodDurationUs = dashManifest.getPeriodDurationUs(i);
            int i2 = 0;
            for (List<AdaptationSet> list = period.adaptationSets; i2 < list.size(); list = list) {
                m20035g(dataSource, list.get(i2), msToUs, periodDurationUs, z, arrayList);
                i2++;
            }
        }
        return arrayList;
    }

    public DashDownloader(MediaItem mediaItem, ParsingLoadable.Parser<DashManifest> parser, CacheDataSource.Factory factory, Executor executor) {
        super(mediaItem, parser, factory, executor);
        this.f25874m = new BaseUrlExclusionList();
    }
}
