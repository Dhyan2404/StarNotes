package com.google.android.exoplayer2;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import androidx.annotation.VisibleForTesting;
import com.google.android.exoplayer2.analytics.PlayerId;
import com.google.android.exoplayer2.extractor.DefaultExtractorsFactory;
import com.google.android.exoplayer2.source.DefaultMediaSourceFactory;
import com.google.android.exoplayer2.source.MediaPeriod;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.upstream.Allocator;
import com.google.android.exoplayer2.upstream.DefaultAllocator;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Clock;
import com.google.android.exoplayer2.util.HandlerWrapper;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.SettableFuture;

/* loaded from: classes5.dex */
public final class MetadataRetriever {

    /* renamed from: com.google.android.exoplayer2.MetadataRetriever$b */
    /* loaded from: classes5.dex */
    public static final class C4665b {

        /* renamed from: e */
        public static final int f22631e = 0;

        /* renamed from: f */
        public static final int f22632f = 1;

        /* renamed from: g */
        public static final int f22633g = 2;

        /* renamed from: h */
        public static final int f22634h = 3;

        /* renamed from: a */
        public final MediaSource.Factory f22635a;

        /* renamed from: b */
        public final HandlerThread f22636b;

        /* renamed from: c */
        public final HandlerWrapper f22637c;

        /* renamed from: d */
        public final SettableFuture<TrackGroupArray> f22638d;

        /* renamed from: com.google.android.exoplayer2.MetadataRetriever$b$a */
        /* loaded from: classes5.dex */
        public final class a implements Handler.Callback {

            /* renamed from: i */
            public static final int f22639i = 100;

            /* renamed from: e */
            public final C20573a f22640e = new C20573a();

            /* renamed from: f */
            public MediaSource f22641f;

            /* renamed from: g */
            public MediaPeriod f22642g;

            /* renamed from: com.google.android.exoplayer2.MetadataRetriever$b$a$a, reason: collision with other inner class name */
            /* loaded from: classes5.dex */
            public final class C20573a implements MediaSource.MediaSourceCaller {

                /* renamed from: e */
                public final C20574a f22644e = new C20574a();

                /* renamed from: f */
                public final Allocator f22645f = new DefaultAllocator(true, 65536);

                /* renamed from: g */
                public boolean f22646g;

                /* renamed from: com.google.android.exoplayer2.MetadataRetriever$b$a$a$a, reason: collision with other inner class name */
                /* loaded from: classes5.dex */
                public final class C20574a implements MediaPeriod.Callback {
                    public C20574a() {
                    }

                    @Override // com.google.android.exoplayer2.source.SequenceableLoader.Callback
                    /* renamed from: a, reason: merged with bridge method [inline-methods] */
                    public void onContinueLoadingRequested(MediaPeriod mediaPeriod) {
                        C4665b.this.f22637c.obtainMessage(2).sendToTarget();
                    }

                    @Override // com.google.android.exoplayer2.source.MediaPeriod.Callback
                    public void onPrepared(MediaPeriod mediaPeriod) {
                        C4665b.this.f22638d.set(mediaPeriod.getTrackGroups());
                        C4665b.this.f22637c.obtainMessage(3).sendToTarget();
                    }
                }

                public C20573a() {
                }

                @Override // com.google.android.exoplayer2.source.MediaSource.MediaSourceCaller
                public void onSourceInfoRefreshed(MediaSource mediaSource, Timeline timeline) {
                    if (this.f22646g) {
                        return;
                    }
                    this.f22646g = true;
                    a.this.f22642g = mediaSource.createPeriod(new MediaSource.MediaPeriodId(timeline.getUidOfPeriod(0)), this.f22645f, 0L);
                    a.this.f22642g.prepare(this.f22644e, 0L);
                }
            }

            public a() {
            }

            @Override // android.os.Handler.Callback
            public boolean handleMessage(Message message) {
                int i = message.what;
                if (i == 0) {
                    MediaSource createMediaSource = C4665b.this.f22635a.createMediaSource((MediaItem) message.obj);
                    this.f22641f = createMediaSource;
                    createMediaSource.prepareSource(this.f22640e, null, PlayerId.UNSET);
                    C4665b.this.f22637c.sendEmptyMessage(1);
                    return true;
                }
                if (i == 1) {
                    try {
                        MediaPeriod mediaPeriod = this.f22642g;
                        if (mediaPeriod == null) {
                            ((MediaSource) Assertions.checkNotNull(this.f22641f)).maybeThrowSourceInfoRefreshError();
                        } else {
                            mediaPeriod.maybeThrowPrepareError();
                        }
                        C4665b.this.f22637c.sendEmptyMessageDelayed(1, 100);
                    } catch (Exception e) {
                        C4665b.this.f22638d.setException(e);
                        C4665b.this.f22637c.obtainMessage(3).sendToTarget();
                    }
                    return true;
                }
                if (i == 2) {
                    ((MediaPeriod) Assertions.checkNotNull(this.f22642g)).continueLoading(0L);
                    return true;
                }
                if (i != 3) {
                    return false;
                }
                if (this.f22642g != null) {
                    ((MediaSource) Assertions.checkNotNull(this.f22641f)).releasePeriod(this.f22642g);
                }
                ((MediaSource) Assertions.checkNotNull(this.f22641f)).releaseSource(this.f22640e);
                C4665b.this.f22637c.removeCallbacksAndMessages(null);
                C4665b.this.f22636b.quit();
                return true;
            }
        }

        public C4665b(MediaSource.Factory factory, Clock clock) {
            this.f22635a = factory;
            HandlerThread handlerThread = new HandlerThread("ExoPlayer:MetadataRetriever");
            this.f22636b = handlerThread;
            handlerThread.start();
            this.f22637c = clock.createHandler(handlerThread.getLooper(), new a());
            this.f22638d = SettableFuture.create();
        }

        /* renamed from: e */
        public ListenableFuture<TrackGroupArray> m17980e(MediaItem mediaItem) {
            this.f22637c.obtainMessage(0, mediaItem).sendToTarget();
            return this.f22638d;
        }
    }

    @VisibleForTesting
    /* renamed from: a */
    public static ListenableFuture<TrackGroupArray> m17974a(Context context, MediaItem mediaItem, Clock clock) {
        return m17975b(new DefaultMediaSourceFactory(context, new DefaultExtractorsFactory().setMp4ExtractorFlags(6)), mediaItem, clock);
    }

    /* renamed from: b */
    public static ListenableFuture<TrackGroupArray> m17975b(MediaSource.Factory factory, MediaItem mediaItem, Clock clock) {
        return new C4665b(factory, clock).m17980e(mediaItem);
    }

    public static ListenableFuture<TrackGroupArray> retrieveMetadata(Context context, MediaItem mediaItem) {
        return m17974a(context, mediaItem, Clock.DEFAULT);
    }

    public static ListenableFuture<TrackGroupArray> retrieveMetadata(MediaSource.Factory factory, MediaItem mediaItem) {
        return m17975b(factory, mediaItem, Clock.DEFAULT);
    }
}
