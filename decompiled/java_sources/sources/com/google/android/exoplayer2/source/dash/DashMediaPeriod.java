package com.google.android.exoplayer2.source.dash;

import android.util.Pair;
import android.util.SparseArray;
import android.util.SparseIntArray;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.SeekParameters;
import com.google.android.exoplayer2.analytics.PlayerId;
import com.google.android.exoplayer2.drm.DrmSessionEventListener;
import com.google.android.exoplayer2.drm.DrmSessionManager;
import com.google.android.exoplayer2.offline.StreamKey;
import com.google.android.exoplayer2.source.CompositeSequenceableLoaderFactory;
import com.google.android.exoplayer2.source.EmptySampleStream;
import com.google.android.exoplayer2.source.MediaPeriod;
import com.google.android.exoplayer2.source.MediaSourceEventListener;
import com.google.android.exoplayer2.source.SampleStream;
import com.google.android.exoplayer2.source.SequenceableLoader;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.source.chunk.ChunkSampleStream;
import com.google.android.exoplayer2.source.dash.DashChunkSource;
import com.google.android.exoplayer2.source.dash.PlayerEmsgHandler;
import com.google.android.exoplayer2.source.dash.manifest.AdaptationSet;
import com.google.android.exoplayer2.source.dash.manifest.DashManifest;
import com.google.android.exoplayer2.source.dash.manifest.Descriptor;
import com.google.android.exoplayer2.source.dash.manifest.EventStream;
import com.google.android.exoplayer2.source.dash.manifest.Period;
import com.google.android.exoplayer2.source.dash.manifest.Representation;
import com.google.android.exoplayer2.trackselection.ExoTrackSelection;
import com.google.android.exoplayer2.upstream.Allocator;
import com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy;
import com.google.android.exoplayer2.upstream.LoaderErrorThrower;
import com.google.android.exoplayer2.upstream.TransferListener;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.Util;
import com.google.common.primitives.Ints;
import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;
import com.sunia.HTREnginev2.ixf;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes5.dex */
public final class DashMediaPeriod implements MediaPeriod, SequenceableLoader.Callback<ChunkSampleStream<DashChunkSource>>, ChunkSampleStream.ReleaseCallback<DashChunkSource> {

    /* renamed from: Q */
    public static final Pattern f25689Q = Pattern.compile("CC([1-4])=(.+)");

    /* renamed from: Z */
    public static final Pattern f25690Z = Pattern.compile("([1-4])=lang:(\\w+)(,.+)?");

    /* renamed from: J */
    public int f25691J;

    /* renamed from: O */
    public List<EventStream> f25692O;

    /* renamed from: e */
    public final int f25693e;

    /* renamed from: f */
    public final DashChunkSource.Factory f25694f;

    /* renamed from: g */
    @Nullable
    public final TransferListener f25695g;

    /* renamed from: h */
    public final DrmSessionManager f25696h;

    /* renamed from: i */
    public final LoadErrorHandlingPolicy f25697i;

    /* renamed from: j */
    public final BaseUrlExclusionList f25698j;

    /* renamed from: k */
    public final long f25699k;

    /* renamed from: l */
    public final LoaderErrorThrower f25700l;

    /* renamed from: m */
    public final Allocator f25701m;

    /* renamed from: n */
    public final TrackGroupArray f25702n;

    /* renamed from: o */
    public final TrackGroupInfo[] f25703o;

    /* renamed from: p */
    public final CompositeSequenceableLoaderFactory f25704p;

    /* renamed from: q */
    public final PlayerEmsgHandler f25705q;

    /* renamed from: s */
    public final MediaSourceEventListener.EventDispatcher f25707s;

    /* renamed from: t */
    public final DrmSessionEventListener.EventDispatcher f25708t;

    /* renamed from: u */
    public final PlayerId f25709u;

    /* renamed from: v */
    @Nullable
    public MediaPeriod.Callback f25710v;

    /* renamed from: y */
    public SequenceableLoader f25713y;

    /* renamed from: z */
    public DashManifest f25714z;

    /* renamed from: w */
    public ChunkSampleStream<DashChunkSource>[] f25711w = m19936n(0);

    /* renamed from: x */
    public ixf[] f25712x = new ixf[0];

    /* renamed from: r */
    public final IdentityHashMap<ChunkSampleStream<DashChunkSource>, PlayerEmsgHandler.PlayerTrackEmsgHandler> f25706r = new IdentityHashMap<>();

    /* loaded from: classes5.dex */
    public static final class TrackGroupInfo {

        /* renamed from: h */
        public static final int f25715h = 0;

        /* renamed from: i */
        public static final int f25716i = 1;

        /* renamed from: j */
        public static final int f25717j = 2;

        /* renamed from: a */
        public final int[] f25718a;

        /* renamed from: b */
        public final int f25719b;

        /* renamed from: c */
        public final int f25720c;

        /* renamed from: d */
        public final int f25721d;

        /* renamed from: e */
        public final int f25722e;

        /* renamed from: f */
        public final int f25723f;

        /* renamed from: g */
        public final int f25724g;

        @Target({ElementType.TYPE_USE})
        @Documented
        @Retention(RetentionPolicy.SOURCE)
        /* loaded from: classes5.dex */
        public @interface TrackGroupCategory {
        }

        public TrackGroupInfo(int i, int i2, int[] iArr, int i3, int i4, int i5, int i6) {
            this.f25719b = i;
            this.f25718a = iArr;
            this.f25720c = i2;
            this.f25722e = i3;
            this.f25723f = i4;
            this.f25724g = i5;
            this.f25721d = i6;
        }

        /* renamed from: a */
        public static TrackGroupInfo m19947a(int[] iArr, int i) {
            return new TrackGroupInfo(3, 1, iArr, i, -1, -1, -1);
        }

        /* renamed from: b */
        public static TrackGroupInfo m19948b(int[] iArr, int i) {
            return new TrackGroupInfo(5, 1, iArr, i, -1, -1, -1);
        }

        /* renamed from: c */
        public static TrackGroupInfo m19949c(int i) {
            return new TrackGroupInfo(5, 2, new int[0], -1, -1, -1, i);
        }

        /* renamed from: d */
        public static TrackGroupInfo m19950d(int i, int[] iArr, int i2, int i3, int i4) {
            return new TrackGroupInfo(i, 0, iArr, i2, i3, i4, -1);
        }
    }

    public DashMediaPeriod(int i, DashManifest dashManifest, BaseUrlExclusionList baseUrlExclusionList, int i2, DashChunkSource.Factory factory, @Nullable TransferListener transferListener, DrmSessionManager drmSessionManager, DrmSessionEventListener.EventDispatcher eventDispatcher, LoadErrorHandlingPolicy loadErrorHandlingPolicy, MediaSourceEventListener.EventDispatcher eventDispatcher2, long j, LoaderErrorThrower loaderErrorThrower, Allocator allocator, CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory, PlayerEmsgHandler.PlayerEmsgCallback playerEmsgCallback, PlayerId playerId) {
        this.f25693e = i;
        this.f25714z = dashManifest;
        this.f25698j = baseUrlExclusionList;
        this.f25691J = i2;
        this.f25694f = factory;
        this.f25695g = transferListener;
        this.f25696h = drmSessionManager;
        this.f25708t = eventDispatcher;
        this.f25697i = loadErrorHandlingPolicy;
        this.f25707s = eventDispatcher2;
        this.f25699k = j;
        this.f25700l = loaderErrorThrower;
        this.f25701m = allocator;
        this.f25704p = compositeSequenceableLoaderFactory;
        this.f25709u = playerId;
        this.f25705q = new PlayerEmsgHandler(dashManifest, playerEmsgCallback, allocator);
        this.f25713y = compositeSequenceableLoaderFactory.createCompositeSequenceableLoader(this.f25711w);
        Period period = dashManifest.getPeriod(i2);
        List<EventStream> list = period.eventStreams;
        this.f25692O = list;
        Pair<TrackGroupArray, TrackGroupInfo[]> m19928d = m19928d(drmSessionManager, period.adaptationSets, list);
        this.f25702n = (TrackGroupArray) m19928d.first;
        this.f25703o = (TrackGroupInfo[]) m19928d.second;
    }

    /* renamed from: a */
    public static void m19926a(List<EventStream> list, TrackGroup[] trackGroupArr, TrackGroupInfo[] trackGroupInfoArr, int i) {
        int i2 = 0;
        while (i2 < list.size()) {
            EventStream eventStream = list.get(i2);
            Format build = new Format.Builder().setId(eventStream.m20033id()).setSampleMimeType(MimeTypes.APPLICATION_EMSG).build();
            String m20033id = eventStream.m20033id();
            StringBuilder sb = new StringBuilder(String.valueOf(m20033id).length() + 12);
            sb.append(m20033id);
            sb.append(":");
            sb.append(i2);
            trackGroupArr[i] = new TrackGroup(sb.toString(), build);
            trackGroupInfoArr[i] = TrackGroupInfo.m19949c(i2);
            i2++;
            i++;
        }
    }

    /* renamed from: b */
    public static int m19927b(DrmSessionManager drmSessionManager, List<AdaptationSet> list, int[][] iArr, int i, boolean[] zArr, Format[][] formatArr, TrackGroup[] trackGroupArr, TrackGroupInfo[] trackGroupInfoArr) {
        String sb;
        int i2;
        int i3;
        int i4 = 0;
        int i5 = 0;
        while (i4 < i) {
            int[] iArr2 = iArr[i4];
            ArrayList arrayList = new ArrayList();
            for (int i6 : iArr2) {
                arrayList.addAll(list.get(i6).representations);
            }
            int size = arrayList.size();
            Format[] formatArr2 = new Format[size];
            for (int i7 = 0; i7 < size; i7++) {
                Format format = ((Representation) arrayList.get(i7)).format;
                formatArr2[i7] = format.copyWithCryptoType(drmSessionManager.getCryptoType(format));
            }
            AdaptationSet adaptationSet = list.get(iArr2[0]);
            int i8 = adaptationSet.f25826id;
            if (i8 != -1) {
                sb = Integer.toString(i8);
            } else {
                StringBuilder sb2 = new StringBuilder(17);
                sb2.append("unset:");
                sb2.append(i4);
                sb = sb2.toString();
            }
            int i9 = i5 + 1;
            if (zArr[i4]) {
                i2 = i9 + 1;
            } else {
                i2 = i9;
                i9 = -1;
            }
            if (formatArr[i4].length != 0) {
                i3 = i2 + 1;
            } else {
                i3 = i2;
                i2 = -1;
            }
            trackGroupArr[i5] = new TrackGroup(sb, formatArr2);
            trackGroupInfoArr[i5] = TrackGroupInfo.m19950d(adaptationSet.type, iArr2, i5, i9, i2);
            if (i9 != -1) {
                String concat = String.valueOf(sb).concat(":emsg");
                trackGroupArr[i9] = new TrackGroup(concat, new Format.Builder().setId(concat).setSampleMimeType(MimeTypes.APPLICATION_EMSG).build());
                trackGroupInfoArr[i9] = TrackGroupInfo.m19948b(iArr2, i5);
            }
            if (i2 != -1) {
                trackGroupArr[i2] = new TrackGroup(String.valueOf(sb).concat(":cc"), formatArr[i4]);
                trackGroupInfoArr[i2] = TrackGroupInfo.m19947a(iArr2, i5);
            }
            i4++;
            i5 = i3;
        }
        return i5;
    }

    /* renamed from: d */
    public static Pair<TrackGroupArray, TrackGroupInfo[]> m19928d(DrmSessionManager drmSessionManager, List<AdaptationSet> list, List<EventStream> list2) {
        int[][] m19933i = m19933i(list);
        int length = m19933i.length;
        boolean[] zArr = new boolean[length];
        Format[][] formatArr = new Format[length];
        int m19935m = m19935m(length, list, m19933i, zArr, formatArr) + length + list2.size();
        TrackGroup[] trackGroupArr = new TrackGroup[m19935m];
        TrackGroupInfo[] trackGroupInfoArr = new TrackGroupInfo[m19935m];
        m19926a(list2, trackGroupArr, trackGroupInfoArr, m19927b(drmSessionManager, list, m19933i, length, zArr, formatArr, trackGroupArr, trackGroupInfoArr));
        return Pair.create(new TrackGroupArray(trackGroupArr), trackGroupInfoArr);
    }

    @Nullable
    /* renamed from: e */
    public static Descriptor m19929e(List<Descriptor> list) {
        return m19930f(list, "urn:mpeg:dash:adaptation-set-switching:2016");
    }

    @Nullable
    /* renamed from: f */
    public static Descriptor m19930f(List<Descriptor> list, String str) {
        for (int i = 0; i < list.size(); i++) {
            Descriptor descriptor = list.get(i);
            if (str.equals(descriptor.schemeIdUri)) {
                return descriptor;
            }
        }
        return null;
    }

    @Nullable
    /* renamed from: g */
    public static Descriptor m19931g(List<Descriptor> list) {
        return m19930f(list, "http://dashif.org/guidelines/trickmode");
    }

    /* renamed from: h */
    public static Format[] m19932h(List<AdaptationSet> list, int[] iArr) {
        for (int i : iArr) {
            AdaptationSet adaptationSet = list.get(i);
            List<Descriptor> list2 = list.get(i).accessibilityDescriptors;
            for (int i2 = 0; i2 < list2.size(); i2++) {
                Descriptor descriptor = list2.get(i2);
                if ("urn:scte:dash:cc:cea-608:2015".equals(descriptor.schemeIdUri)) {
                    Format.Builder sampleMimeType = new Format.Builder().setSampleMimeType(MimeTypes.APPLICATION_CEA608);
                    int i3 = adaptationSet.f25826id;
                    StringBuilder sb = new StringBuilder(18);
                    sb.append(i3);
                    sb.append(":cea608");
                    return m19937p(descriptor, f25689Q, sampleMimeType.setId(sb.toString()).build());
                }
                if ("urn:scte:dash:cc:cea-708:2015".equals(descriptor.schemeIdUri)) {
                    Format.Builder sampleMimeType2 = new Format.Builder().setSampleMimeType(MimeTypes.APPLICATION_CEA708);
                    int i4 = adaptationSet.f25826id;
                    StringBuilder sb2 = new StringBuilder(18);
                    sb2.append(i4);
                    sb2.append(":cea708");
                    return m19937p(descriptor, f25690Z, sampleMimeType2.setId(sb2.toString()).build());
                }
            }
        }
        return new Format[0];
    }

    /* renamed from: i */
    public static int[][] m19933i(List<AdaptationSet> list) {
        int i;
        Descriptor m19929e;
        int size = list.size();
        SparseIntArray sparseIntArray = new SparseIntArray(size);
        ArrayList arrayList = new ArrayList(size);
        SparseArray sparseArray = new SparseArray(size);
        for (int i2 = 0; i2 < size; i2++) {
            sparseIntArray.put(list.get(i2).f25826id, i2);
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(Integer.valueOf(i2));
            arrayList.add(arrayList2);
            sparseArray.put(i2, arrayList2);
        }
        for (int i3 = 0; i3 < size; i3++) {
            AdaptationSet adaptationSet = list.get(i3);
            Descriptor m19931g = m19931g(adaptationSet.essentialProperties);
            if (m19931g == null) {
                m19931g = m19931g(adaptationSet.supplementalProperties);
            }
            if (m19931g == null || (i = sparseIntArray.get(Integer.parseInt(m19931g.value), -1)) == -1) {
                i = i3;
            }
            if (i == i3 && (m19929e = m19929e(adaptationSet.supplementalProperties)) != null) {
                for (String str : Util.split(m19929e.value, ",")) {
                    int i4 = sparseIntArray.get(Integer.parseInt(str), -1);
                    if (i4 != -1) {
                        i = Math.min(i, i4);
                    }
                }
            }
            if (i != i3) {
                List list2 = (List) sparseArray.get(i3);
                List list3 = (List) sparseArray.get(i);
                list3.addAll(list2);
                sparseArray.put(i3, list3);
                arrayList.remove(list2);
            }
        }
        int size2 = arrayList.size();
        int[][] iArr = new int[size2];
        for (int i5 = 0; i5 < size2; i5++) {
            int[] array = Ints.toArray((Collection) arrayList.get(i5));
            iArr[i5] = array;
            Arrays.sort(array);
        }
        return iArr;
    }

    /* renamed from: l */
    public static boolean m19934l(List<AdaptationSet> list, int[] iArr) {
        for (int i : iArr) {
            List<Representation> list2 = list.get(i).representations;
            for (int i2 = 0; i2 < list2.size(); i2++) {
                if (!list2.get(i2).inbandEventStreams.isEmpty()) {
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: m */
    public static int m19935m(int i, List<AdaptationSet> list, int[][] iArr, boolean[] zArr, Format[][] formatArr) {
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            if (m19934l(list, iArr[i3])) {
                zArr[i3] = true;
                i2++;
            }
            Format[] m19932h = m19932h(list, iArr[i3]);
            formatArr[i3] = m19932h;
            if (m19932h.length != 0) {
                i2++;
            }
        }
        return i2;
    }

    /* renamed from: n */
    public static ChunkSampleStream<DashChunkSource>[] m19936n(int i) {
        return new ChunkSampleStream[i];
    }

    /* renamed from: p */
    public static Format[] m19937p(Descriptor descriptor, Pattern pattern, Format format) {
        String str = descriptor.value;
        if (str == null) {
            return new Format[]{format};
        }
        String[] split = Util.split(str, AndroidTreeView.f47214k);
        Format[] formatArr = new Format[split.length];
        for (int i = 0; i < split.length; i++) {
            Matcher matcher = pattern.matcher(split[i]);
            if (!matcher.matches()) {
                return new Format[]{format};
            }
            int parseInt = Integer.parseInt(matcher.group(1));
            Format.Builder buildUpon = format.buildUpon();
            String str2 = format.f22448id;
            StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 12);
            sb.append(str2);
            sb.append(":");
            sb.append(parseInt);
            formatArr[i] = buildUpon.setId(sb.toString()).setAccessibilityChannel(parseInt).setLanguage(matcher.group(2)).build();
        }
        return formatArr;
    }

    /* renamed from: c */
    public final ChunkSampleStream<DashChunkSource> m19938c(TrackGroupInfo trackGroupInfo, ExoTrackSelection exoTrackSelection, long j) {
        int i;
        TrackGroup trackGroup;
        TrackGroup trackGroup2;
        int i2;
        int i3 = trackGroupInfo.f25723f;
        boolean z = i3 != -1;
        PlayerEmsgHandler.PlayerTrackEmsgHandler playerTrackEmsgHandler = null;
        if (z) {
            trackGroup = this.f25702n.get(i3);
            i = 1;
        } else {
            i = 0;
            trackGroup = null;
        }
        int i4 = trackGroupInfo.f25724g;
        boolean z2 = i4 != -1;
        if (z2) {
            trackGroup2 = this.f25702n.get(i4);
            i += trackGroup2.length;
        } else {
            trackGroup2 = null;
        }
        Format[] formatArr = new Format[i];
        int[] iArr = new int[i];
        if (z) {
            formatArr[0] = trackGroup.getFormat(0);
            iArr[0] = 5;
            i2 = 1;
        } else {
            i2 = 0;
        }
        ArrayList arrayList = new ArrayList();
        if (z2) {
            for (int i5 = 0; i5 < trackGroup2.length; i5++) {
                Format format = trackGroup2.getFormat(i5);
                formatArr[i2] = format;
                iArr[i2] = 3;
                arrayList.add(format);
                i2++;
            }
        }
        if (this.f25714z.dynamic && z) {
            playerTrackEmsgHandler = this.f25705q.newPlayerTrackEmsgHandler();
        }
        PlayerEmsgHandler.PlayerTrackEmsgHandler playerTrackEmsgHandler2 = playerTrackEmsgHandler;
        ChunkSampleStream<DashChunkSource> chunkSampleStream = new ChunkSampleStream<>(trackGroupInfo.f25719b, iArr, formatArr, this.f25694f.createDashChunkSource(this.f25700l, this.f25714z, this.f25698j, this.f25691J, trackGroupInfo.f25718a, exoTrackSelection, trackGroupInfo.f25719b, this.f25699k, z, arrayList, playerTrackEmsgHandler2, this.f25695g, this.f25709u), this, this.f25701m, j, this.f25696h, this.f25708t, this.f25697i, this.f25707s);
        synchronized (this) {
            this.f25706r.put(chunkSampleStream, playerTrackEmsgHandler2);
        }
        return chunkSampleStream;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public boolean continueLoading(long j) {
        return this.f25713y.continueLoading(j);
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public void discardBuffer(long j, boolean z) {
        for (ChunkSampleStream<DashChunkSource> chunkSampleStream : this.f25711w) {
            chunkSampleStream.discardBuffer(j, z);
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long getAdjustedSeekPositionUs(long j, SeekParameters seekParameters) {
        for (ChunkSampleStream<DashChunkSource> chunkSampleStream : this.f25711w) {
            if (chunkSampleStream.primaryTrackType == 2) {
                return chunkSampleStream.getAdjustedSeekPositionUs(j, seekParameters);
            }
        }
        return j;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public long getBufferedPositionUs() {
        return this.f25713y.getBufferedPositionUs();
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public long getNextLoadPositionUs() {
        return this.f25713y.getNextLoadPositionUs();
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public List<StreamKey> getStreamKeys(List<ExoTrackSelection> list) {
        List<AdaptationSet> list2 = this.f25714z.getPeriod(this.f25691J).adaptationSets;
        ArrayList arrayList = new ArrayList();
        for (ExoTrackSelection exoTrackSelection : list) {
            TrackGroupInfo trackGroupInfo = this.f25703o[this.f25702n.indexOf(exoTrackSelection.getTrackGroup())];
            if (trackGroupInfo.f25720c == 0) {
                int[] iArr = trackGroupInfo.f25718a;
                int length = exoTrackSelection.length();
                int[] iArr2 = new int[length];
                for (int i = 0; i < exoTrackSelection.length(); i++) {
                    iArr2[i] = exoTrackSelection.getIndexInTrackGroup(i);
                }
                Arrays.sort(iArr2);
                int size = list2.get(iArr[0]).representations.size();
                int i2 = 0;
                int i3 = 0;
                for (int i4 = 0; i4 < length; i4++) {
                    int i5 = iArr2[i4];
                    while (true) {
                        int i6 = i3 + size;
                        if (i5 >= i6) {
                            i2++;
                            size = list2.get(iArr[i2]).representations.size();
                            i3 = i6;
                        }
                    }
                    arrayList.add(new StreamKey(this.f25691J, iArr[i2], i5 - i3));
                }
            }
        }
        return arrayList;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public TrackGroupArray getTrackGroups() {
        return this.f25702n;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public boolean isLoading() {
        return this.f25713y.isLoading();
    }

    /* renamed from: j */
    public final int m19939j(int i, int[] iArr) {
        int i2 = iArr[i];
        if (i2 == -1) {
            return -1;
        }
        int i3 = this.f25703o[i2].f25722e;
        for (int i4 = 0; i4 < iArr.length; i4++) {
            int i5 = iArr[i4];
            if (i5 == i3 && this.f25703o[i5].f25720c == 0) {
                return i4;
            }
        }
        return -1;
    }

    /* renamed from: k */
    public final int[] m19940k(ExoTrackSelection[] exoTrackSelectionArr) {
        int[] iArr = new int[exoTrackSelectionArr.length];
        for (int i = 0; i < exoTrackSelectionArr.length; i++) {
            ExoTrackSelection exoTrackSelection = exoTrackSelectionArr[i];
            if (exoTrackSelection != null) {
                iArr[i] = this.f25702n.indexOf(exoTrackSelection.getTrackGroup());
            } else {
                iArr[i] = -1;
            }
        }
        return iArr;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public void maybeThrowPrepareError() throws IOException {
        this.f25700l.maybeThrowError();
    }

    @Override // com.google.android.exoplayer2.source.SequenceableLoader.Callback
    /* renamed from: o, reason: merged with bridge method [inline-methods] */
    public void onContinueLoadingRequested(ChunkSampleStream<DashChunkSource> chunkSampleStream) {
        this.f25710v.onContinueLoadingRequested(this);
    }

    @Override // com.google.android.exoplayer2.source.chunk.ChunkSampleStream.ReleaseCallback
    public synchronized void onSampleStreamReleased(ChunkSampleStream<DashChunkSource> chunkSampleStream) {
        PlayerEmsgHandler.PlayerTrackEmsgHandler remove = this.f25706r.remove(chunkSampleStream);
        if (remove != null) {
            remove.release();
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public void prepare(MediaPeriod.Callback callback, long j) {
        this.f25710v = callback;
        callback.onPrepared(this);
    }

    /* renamed from: q */
    public void m19942q() {
        this.f25705q.release();
        for (ChunkSampleStream<DashChunkSource> chunkSampleStream : this.f25711w) {
            chunkSampleStream.release(this);
        }
        this.f25710v = null;
    }

    /* renamed from: r */
    public final void m19943r(ExoTrackSelection[] exoTrackSelectionArr, boolean[] zArr, SampleStream[] sampleStreamArr) {
        for (int i = 0; i < exoTrackSelectionArr.length; i++) {
            if (exoTrackSelectionArr[i] == null || !zArr[i]) {
                SampleStream sampleStream = sampleStreamArr[i];
                if (sampleStream instanceof ChunkSampleStream) {
                    ((ChunkSampleStream) sampleStream).release(this);
                } else if (sampleStream instanceof ChunkSampleStream.EmbeddedSampleStream) {
                    ((ChunkSampleStream.EmbeddedSampleStream) sampleStream).release();
                }
                sampleStreamArr[i] = null;
            }
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long readDiscontinuity() {
        return C4649C.TIME_UNSET;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public void reevaluateBuffer(long j) {
        this.f25713y.reevaluateBuffer(j);
    }

    /* renamed from: s */
    public final void m19944s(ExoTrackSelection[] exoTrackSelectionArr, SampleStream[] sampleStreamArr, int[] iArr) {
        boolean z;
        for (int i = 0; i < exoTrackSelectionArr.length; i++) {
            SampleStream sampleStream = sampleStreamArr[i];
            if ((sampleStream instanceof EmptySampleStream) || (sampleStream instanceof ChunkSampleStream.EmbeddedSampleStream)) {
                int m19939j = m19939j(i, iArr);
                if (m19939j == -1) {
                    z = sampleStreamArr[i] instanceof EmptySampleStream;
                } else {
                    SampleStream sampleStream2 = sampleStreamArr[i];
                    z = (sampleStream2 instanceof ChunkSampleStream.EmbeddedSampleStream) && ((ChunkSampleStream.EmbeddedSampleStream) sampleStream2).parent == sampleStreamArr[m19939j];
                }
                if (!z) {
                    SampleStream sampleStream3 = sampleStreamArr[i];
                    if (sampleStream3 instanceof ChunkSampleStream.EmbeddedSampleStream) {
                        ((ChunkSampleStream.EmbeddedSampleStream) sampleStream3).release();
                    }
                    sampleStreamArr[i] = null;
                }
            }
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long seekToUs(long j) {
        for (ChunkSampleStream<DashChunkSource> chunkSampleStream : this.f25711w) {
            chunkSampleStream.seekToUs(j);
        }
        for (ixf ixfVar : this.f25712x) {
            ixfVar.m54808b(j);
        }
        return j;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long selectTracks(ExoTrackSelection[] exoTrackSelectionArr, boolean[] zArr, SampleStream[] sampleStreamArr, boolean[] zArr2, long j) {
        int[] m19940k = m19940k(exoTrackSelectionArr);
        m19943r(exoTrackSelectionArr, zArr, sampleStreamArr);
        m19944s(exoTrackSelectionArr, sampleStreamArr, m19940k);
        m19945t(exoTrackSelectionArr, sampleStreamArr, zArr2, j, m19940k);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (SampleStream sampleStream : sampleStreamArr) {
            if (sampleStream instanceof ChunkSampleStream) {
                arrayList.add((ChunkSampleStream) sampleStream);
            } else if (sampleStream instanceof ixf) {
                arrayList2.add((ixf) sampleStream);
            }
        }
        ChunkSampleStream<DashChunkSource>[] m19936n = m19936n(arrayList.size());
        this.f25711w = m19936n;
        arrayList.toArray(m19936n);
        ixf[] ixfVarArr = new ixf[arrayList2.size()];
        this.f25712x = ixfVarArr;
        arrayList2.toArray(ixfVarArr);
        this.f25713y = this.f25704p.createCompositeSequenceableLoader(this.f25711w);
        return j;
    }

    /* renamed from: t */
    public final void m19945t(ExoTrackSelection[] exoTrackSelectionArr, SampleStream[] sampleStreamArr, boolean[] zArr, long j, int[] iArr) {
        for (int i = 0; i < exoTrackSelectionArr.length; i++) {
            ExoTrackSelection exoTrackSelection = exoTrackSelectionArr[i];
            if (exoTrackSelection != null) {
                SampleStream sampleStream = sampleStreamArr[i];
                if (sampleStream == null) {
                    zArr[i] = true;
                    TrackGroupInfo trackGroupInfo = this.f25703o[iArr[i]];
                    int i2 = trackGroupInfo.f25720c;
                    if (i2 == 0) {
                        sampleStreamArr[i] = m19938c(trackGroupInfo, exoTrackSelection, j);
                    } else if (i2 == 2) {
                        sampleStreamArr[i] = new ixf(this.f25692O.get(trackGroupInfo.f25721d), exoTrackSelection.getTrackGroup().getFormat(0), this.f25714z.dynamic);
                    }
                } else if (sampleStream instanceof ChunkSampleStream) {
                    ((DashChunkSource) ((ChunkSampleStream) sampleStream).getChunkSource()).updateTrackSelection(exoTrackSelection);
                }
            }
        }
        for (int i3 = 0; i3 < exoTrackSelectionArr.length; i3++) {
            if (sampleStreamArr[i3] == null && exoTrackSelectionArr[i3] != null) {
                TrackGroupInfo trackGroupInfo2 = this.f25703o[iArr[i3]];
                if (trackGroupInfo2.f25720c == 1) {
                    int m19939j = m19939j(i3, iArr);
                    if (m19939j == -1) {
                        sampleStreamArr[i3] = new EmptySampleStream();
                    } else {
                        sampleStreamArr[i3] = ((ChunkSampleStream) sampleStreamArr[m19939j]).selectEmbeddedTrack(j, trackGroupInfo2.f25719b);
                    }
                }
            }
        }
    }

    /* renamed from: u */
    public void m19946u(DashManifest dashManifest, int i) {
        this.f25714z = dashManifest;
        this.f25691J = i;
        this.f25705q.updateManifest(dashManifest);
        ChunkSampleStream<DashChunkSource>[] chunkSampleStreamArr = this.f25711w;
        if (chunkSampleStreamArr != null) {
            for (ChunkSampleStream<DashChunkSource> chunkSampleStream : chunkSampleStreamArr) {
                chunkSampleStream.getChunkSource().updateManifest(dashManifest, i);
            }
            this.f25710v.onContinueLoadingRequested(this);
        }
        this.f25692O = dashManifest.getPeriod(i).eventStreams;
        for (ixf ixfVar : this.f25712x) {
            Iterator<EventStream> it2 = this.f25692O.iterator();
            while (true) {
                if (it2.hasNext()) {
                    EventStream next = it2.next();
                    if (next.m20033id().equals(ixfVar.m54807a())) {
                        ixfVar.m54809c(next, dashManifest.dynamic && i == dashManifest.getPeriodCount() - 1);
                    }
                }
            }
        }
    }
}
