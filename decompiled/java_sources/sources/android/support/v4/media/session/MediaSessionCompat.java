package android.support.v4.media.session;

import android.annotation.SuppressLint;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.media.AudioAttributes;
import android.media.AudioManager;
import android.media.MediaDescription;
import android.media.MediaMetadata;
import android.media.Rating;
import android.media.RemoteControlClient;
import android.media.VolumeProvider;
import android.media.session.MediaSession;
import android.media.session.PlaybackState;
import android.net.Uri;
import android.os.BadParcelableException;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.os.SystemClock;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.RatingCompat;
import android.support.v4.media.session.IMediaSession;
import android.support.v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyEvent;
import androidx.annotation.DoNotInline;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.app.BundleCompat;
import androidx.core.os.BuildCompat;
import androidx.media.MediaSessionManager;
import androidx.media.VolumeProviderCompat;
import androidx.media.session.MediaButtonReceiver;
import androidx.versionedparcelable.ParcelUtils;
import androidx.versionedparcelable.VersionedParcelable;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class MediaSessionCompat {

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final String ACTION_ARGUMENT_CAPTIONING_ENABLED = "android.support.v4.media.session.action.ARGUMENT_CAPTIONING_ENABLED";

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final String ACTION_ARGUMENT_EXTRAS = "android.support.v4.media.session.action.ARGUMENT_EXTRAS";

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final String ACTION_ARGUMENT_MEDIA_ID = "android.support.v4.media.session.action.ARGUMENT_MEDIA_ID";

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final String ACTION_ARGUMENT_PLAYBACK_SPEED = "android.support.v4.media.session.action.ARGUMENT_PLAYBACK_SPEED";

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final String ACTION_ARGUMENT_QUERY = "android.support.v4.media.session.action.ARGUMENT_QUERY";

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final String ACTION_ARGUMENT_RATING = "android.support.v4.media.session.action.ARGUMENT_RATING";

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final String ACTION_ARGUMENT_REPEAT_MODE = "android.support.v4.media.session.action.ARGUMENT_REPEAT_MODE";

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final String ACTION_ARGUMENT_SHUFFLE_MODE = "android.support.v4.media.session.action.ARGUMENT_SHUFFLE_MODE";

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final String ACTION_ARGUMENT_URI = "android.support.v4.media.session.action.ARGUMENT_URI";
    public static final String ACTION_FLAG_AS_INAPPROPRIATE = "android.support.v4.media.session.action.FLAG_AS_INAPPROPRIATE";
    public static final String ACTION_FOLLOW = "android.support.v4.media.session.action.FOLLOW";

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final String ACTION_PLAY_FROM_URI = "android.support.v4.media.session.action.PLAY_FROM_URI";

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final String ACTION_PREPARE = "android.support.v4.media.session.action.PREPARE";

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final String ACTION_PREPARE_FROM_MEDIA_ID = "android.support.v4.media.session.action.PREPARE_FROM_MEDIA_ID";

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final String ACTION_PREPARE_FROM_SEARCH = "android.support.v4.media.session.action.PREPARE_FROM_SEARCH";

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final String ACTION_PREPARE_FROM_URI = "android.support.v4.media.session.action.PREPARE_FROM_URI";

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final String ACTION_SET_CAPTIONING_ENABLED = "android.support.v4.media.session.action.SET_CAPTIONING_ENABLED";

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final String ACTION_SET_PLAYBACK_SPEED = "android.support.v4.media.session.action.SET_PLAYBACK_SPEED";

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final String ACTION_SET_RATING = "android.support.v4.media.session.action.SET_RATING";

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final String ACTION_SET_REPEAT_MODE = "android.support.v4.media.session.action.SET_REPEAT_MODE";

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final String ACTION_SET_SHUFFLE_MODE = "android.support.v4.media.session.action.SET_SHUFFLE_MODE";
    public static final String ACTION_SKIP_AD = "android.support.v4.media.session.action.SKIP_AD";
    public static final String ACTION_UNFOLLOW = "android.support.v4.media.session.action.UNFOLLOW";
    public static final String ARGUMENT_MEDIA_ATTRIBUTE = "android.support.v4.media.session.ARGUMENT_MEDIA_ATTRIBUTE";
    public static final String ARGUMENT_MEDIA_ATTRIBUTE_VALUE = "android.support.v4.media.session.ARGUMENT_MEDIA_ATTRIBUTE_VALUE";

    @Deprecated
    public static final int FLAG_HANDLES_MEDIA_BUTTONS = 1;
    public static final int FLAG_HANDLES_QUEUE_COMMANDS = 4;

    @Deprecated
    public static final int FLAG_HANDLES_TRANSPORT_CONTROLS = 2;

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final String KEY_EXTRA_BINDER = "android.support.v4.media.session.EXTRA_BINDER";

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final String KEY_SESSION2_TOKEN = "android.support.v4.media.session.SESSION_TOKEN2";

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final String KEY_TOKEN = "android.support.v4.media.session.TOKEN";
    public static final int MEDIA_ATTRIBUTE_ALBUM = 1;
    public static final int MEDIA_ATTRIBUTE_ARTIST = 0;
    public static final int MEDIA_ATTRIBUTE_PLAYLIST = 2;

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final int PENDING_INTENT_FLAG_MUTABLE;

    /* renamed from: d */
    public static final String f281d = "MediaSessionCompat";

    /* renamed from: e */
    public static final int f282e = 320;

    /* renamed from: f */
    public static final String f283f = "data_calling_pkg";

    /* renamed from: g */
    public static final String f284g = "data_calling_pid";

    /* renamed from: h */
    public static final String f285h = "data_calling_uid";

    /* renamed from: i */
    public static final String f286i = "data_extras";

    /* renamed from: j */
    public static int f287j;

    /* renamed from: a */
    public final InterfaceC0061b f288a;

    /* renamed from: b */
    public final MediaControllerCompat f289b;

    /* renamed from: c */
    public final ArrayList<OnActiveChangeListener> f290c;

    /* loaded from: classes3.dex */
    public static abstract class Callback {

        /* renamed from: c */
        public boolean f293c;

        /* renamed from: e */
        @GuardedBy("mLock")
        public HandlerC0054a f295e;

        /* renamed from: a */
        public final Object f291a = new Object();

        /* renamed from: b */
        public final MediaSession.Callback f292b = new C0055b();

        /* renamed from: d */
        @GuardedBy("mLock")
        public WeakReference<InterfaceC0061b> f294d = new WeakReference<>(null);

        /* renamed from: android.support.v4.media.session.MediaSessionCompat$Callback$a */
        /* loaded from: classes3.dex */
        public class HandlerC0054a extends Handler {

            /* renamed from: b */
            public static final int f296b = 1;

            public HandlerC0054a(Looper looper) {
                super(looper);
            }

            @Override // android.os.Handler
            public void handleMessage(Message msg) {
                InterfaceC0061b interfaceC0061b;
                Callback callback;
                HandlerC0054a handlerC0054a;
                if (msg.what == 1) {
                    synchronized (Callback.this.f291a) {
                        interfaceC0061b = Callback.this.f294d.get();
                        callback = Callback.this;
                        handlerC0054a = callback.f295e;
                    }
                    if (interfaceC0061b == null || callback != interfaceC0061b.mo156s() || handlerC0054a == null) {
                        return;
                    }
                    interfaceC0061b.mo145h((MediaSessionManager.RemoteUserInfo) msg.obj);
                    Callback.this.m123a(interfaceC0061b, handlerC0054a);
                    interfaceC0061b.mo145h(null);
                }
            }
        }

        @RequiresApi(21)
        /* renamed from: android.support.v4.media.session.MediaSessionCompat$Callback$b */
        /* loaded from: classes3.dex */
        public class C0055b extends MediaSession.Callback {
            public C0055b() {
            }

            /* renamed from: a */
            public final void m125a(InterfaceC0061b sessionImpl) {
                sessionImpl.mo145h(null);
            }

            /* renamed from: b */
            public final C0064e m126b() {
                C0064e c0064e;
                synchronized (Callback.this.f291a) {
                    c0064e = (C0064e) Callback.this.f294d.get();
                }
                if (c0064e == null || Callback.this != c0064e.mo156s()) {
                    return null;
                }
                return c0064e;
            }

            /* renamed from: c */
            public void m127c(Rating ratingFwk, Bundle extras) {
            }

            /* renamed from: d */
            public final void m128d(InterfaceC0061b sessionImpl) {
            }

            @Override // android.media.session.MediaSession.Callback
            public void onCommand(String str, Bundle bundle, ResultReceiver resultReceiver) {
                C0064e m126b = m126b();
                if (m126b == null) {
                    return;
                }
                MediaSessionCompat.ensureClassLoader(bundle);
                m128d(m126b);
                try {
                    QueueItem queueItem = null;
                    IBinder asBinder = null;
                    queueItem = null;
                    if (str.equals(MediaControllerCompat.COMMAND_GET_EXTRA_BINDER)) {
                        Bundle bundle2 = new Bundle();
                        Token mo138a = m126b.mo138a();
                        IMediaSession extraBinder = mo138a.getExtraBinder();
                        if (extraBinder != null) {
                            asBinder = extraBinder.asBinder();
                        }
                        BundleCompat.putBinder(bundle2, MediaSessionCompat.KEY_EXTRA_BINDER, asBinder);
                        ParcelUtils.putVersionedParcelable(bundle2, MediaSessionCompat.KEY_SESSION2_TOKEN, mo138a.getSession2Token());
                        resultReceiver.send(0, bundle2);
                    } else if (str.equals(MediaControllerCompat.COMMAND_ADD_QUEUE_ITEM)) {
                        Callback.this.onAddQueueItem((MediaDescriptionCompat) bundle.getParcelable(MediaControllerCompat.COMMAND_ARGUMENT_MEDIA_DESCRIPTION));
                    } else if (str.equals(MediaControllerCompat.COMMAND_ADD_QUEUE_ITEM_AT)) {
                        Callback.this.onAddQueueItem((MediaDescriptionCompat) bundle.getParcelable(MediaControllerCompat.COMMAND_ARGUMENT_MEDIA_DESCRIPTION), bundle.getInt(MediaControllerCompat.COMMAND_ARGUMENT_INDEX));
                    } else if (str.equals(MediaControllerCompat.COMMAND_REMOVE_QUEUE_ITEM)) {
                        Callback.this.onRemoveQueueItem((MediaDescriptionCompat) bundle.getParcelable(MediaControllerCompat.COMMAND_ARGUMENT_MEDIA_DESCRIPTION));
                    } else if (!str.equals(MediaControllerCompat.COMMAND_REMOVE_QUEUE_ITEM_AT)) {
                        Callback.this.onCommand(str, bundle, resultReceiver);
                    } else if (m126b.f310h != null) {
                        int i = bundle.getInt(MediaControllerCompat.COMMAND_ARGUMENT_INDEX, -1);
                        if (i >= 0 && i < m126b.f310h.size()) {
                            queueItem = m126b.f310h.get(i);
                        }
                        if (queueItem != null) {
                            Callback.this.onRemoveQueueItem(queueItem.getDescription());
                        }
                    }
                } catch (BadParcelableException unused) {
                    Log.e(MediaSessionCompat.f281d, "Could not unparcel the extra data.");
                }
                m125a(m126b);
            }

            @Override // android.media.session.MediaSession.Callback
            public void onCustomAction(String action, Bundle extras) {
                C0064e m126b = m126b();
                if (m126b == null) {
                    return;
                }
                MediaSessionCompat.ensureClassLoader(extras);
                m128d(m126b);
                try {
                    if (action.equals(MediaSessionCompat.ACTION_PLAY_FROM_URI)) {
                        Uri uri = (Uri) extras.getParcelable(MediaSessionCompat.ACTION_ARGUMENT_URI);
                        Bundle bundle = extras.getBundle(MediaSessionCompat.ACTION_ARGUMENT_EXTRAS);
                        MediaSessionCompat.ensureClassLoader(bundle);
                        Callback.this.onPlayFromUri(uri, bundle);
                    } else if (action.equals(MediaSessionCompat.ACTION_PREPARE)) {
                        Callback.this.onPrepare();
                    } else if (action.equals(MediaSessionCompat.ACTION_PREPARE_FROM_MEDIA_ID)) {
                        String string = extras.getString(MediaSessionCompat.ACTION_ARGUMENT_MEDIA_ID);
                        Bundle bundle2 = extras.getBundle(MediaSessionCompat.ACTION_ARGUMENT_EXTRAS);
                        MediaSessionCompat.ensureClassLoader(bundle2);
                        Callback.this.onPrepareFromMediaId(string, bundle2);
                    } else if (action.equals(MediaSessionCompat.ACTION_PREPARE_FROM_SEARCH)) {
                        String string2 = extras.getString(MediaSessionCompat.ACTION_ARGUMENT_QUERY);
                        Bundle bundle3 = extras.getBundle(MediaSessionCompat.ACTION_ARGUMENT_EXTRAS);
                        MediaSessionCompat.ensureClassLoader(bundle3);
                        Callback.this.onPrepareFromSearch(string2, bundle3);
                    } else if (action.equals(MediaSessionCompat.ACTION_PREPARE_FROM_URI)) {
                        Uri uri2 = (Uri) extras.getParcelable(MediaSessionCompat.ACTION_ARGUMENT_URI);
                        Bundle bundle4 = extras.getBundle(MediaSessionCompat.ACTION_ARGUMENT_EXTRAS);
                        MediaSessionCompat.ensureClassLoader(bundle4);
                        Callback.this.onPrepareFromUri(uri2, bundle4);
                    } else if (action.equals(MediaSessionCompat.ACTION_SET_CAPTIONING_ENABLED)) {
                        Callback.this.onSetCaptioningEnabled(extras.getBoolean(MediaSessionCompat.ACTION_ARGUMENT_CAPTIONING_ENABLED));
                    } else if (action.equals(MediaSessionCompat.ACTION_SET_REPEAT_MODE)) {
                        Callback.this.onSetRepeatMode(extras.getInt(MediaSessionCompat.ACTION_ARGUMENT_REPEAT_MODE));
                    } else if (action.equals(MediaSessionCompat.ACTION_SET_SHUFFLE_MODE)) {
                        Callback.this.onSetShuffleMode(extras.getInt(MediaSessionCompat.ACTION_ARGUMENT_SHUFFLE_MODE));
                    } else if (action.equals(MediaSessionCompat.ACTION_SET_RATING)) {
                        RatingCompat ratingCompat = (RatingCompat) extras.getParcelable(MediaSessionCompat.ACTION_ARGUMENT_RATING);
                        Bundle bundle5 = extras.getBundle(MediaSessionCompat.ACTION_ARGUMENT_EXTRAS);
                        MediaSessionCompat.ensureClassLoader(bundle5);
                        Callback.this.onSetRating(ratingCompat, bundle5);
                    } else if (action.equals(MediaSessionCompat.ACTION_SET_PLAYBACK_SPEED)) {
                        Callback.this.onSetPlaybackSpeed(extras.getFloat(MediaSessionCompat.ACTION_ARGUMENT_PLAYBACK_SPEED, 1.0f));
                    } else {
                        Callback.this.onCustomAction(action, extras);
                    }
                } catch (BadParcelableException unused) {
                    Log.e(MediaSessionCompat.f281d, "Could not unparcel the data.");
                }
                m125a(m126b);
            }

            @Override // android.media.session.MediaSession.Callback
            public void onFastForward() {
                C0064e m126b = m126b();
                if (m126b == null) {
                    return;
                }
                m128d(m126b);
                Callback.this.onFastForward();
                m125a(m126b);
            }

            @Override // android.media.session.MediaSession.Callback
            public boolean onMediaButtonEvent(Intent mediaButtonIntent) {
                C0064e m126b = m126b();
                if (m126b == null) {
                    return false;
                }
                m128d(m126b);
                boolean onMediaButtonEvent = Callback.this.onMediaButtonEvent(mediaButtonIntent);
                m125a(m126b);
                return onMediaButtonEvent || super.onMediaButtonEvent(mediaButtonIntent);
            }

            @Override // android.media.session.MediaSession.Callback
            public void onPause() {
                C0064e m126b = m126b();
                if (m126b == null) {
                    return;
                }
                m128d(m126b);
                Callback.this.onPause();
                m125a(m126b);
            }

            @Override // android.media.session.MediaSession.Callback
            public void onPlay() {
                C0064e m126b = m126b();
                if (m126b == null) {
                    return;
                }
                m128d(m126b);
                Callback.this.onPlay();
                m125a(m126b);
            }

            @Override // android.media.session.MediaSession.Callback
            public void onPlayFromMediaId(String mediaId, Bundle extras) {
                C0064e m126b = m126b();
                if (m126b == null) {
                    return;
                }
                MediaSessionCompat.ensureClassLoader(extras);
                m128d(m126b);
                Callback.this.onPlayFromMediaId(mediaId, extras);
                m125a(m126b);
            }

            @Override // android.media.session.MediaSession.Callback
            public void onPlayFromSearch(String search, Bundle extras) {
                C0064e m126b = m126b();
                if (m126b == null) {
                    return;
                }
                MediaSessionCompat.ensureClassLoader(extras);
                m128d(m126b);
                Callback.this.onPlayFromSearch(search, extras);
                m125a(m126b);
            }

            @Override // android.media.session.MediaSession.Callback
            @RequiresApi(23)
            public void onPlayFromUri(Uri uri, Bundle extras) {
                C0064e m126b = m126b();
                if (m126b == null) {
                    return;
                }
                MediaSessionCompat.ensureClassLoader(extras);
                m128d(m126b);
                Callback.this.onPlayFromUri(uri, extras);
                m125a(m126b);
            }

            @Override // android.media.session.MediaSession.Callback
            @RequiresApi(24)
            public void onPrepare() {
                C0064e m126b = m126b();
                if (m126b == null) {
                    return;
                }
                m128d(m126b);
                Callback.this.onPrepare();
                m125a(m126b);
            }

            @Override // android.media.session.MediaSession.Callback
            @RequiresApi(24)
            public void onPrepareFromMediaId(String mediaId, Bundle extras) {
                C0064e m126b = m126b();
                if (m126b == null) {
                    return;
                }
                MediaSessionCompat.ensureClassLoader(extras);
                m128d(m126b);
                Callback.this.onPrepareFromMediaId(mediaId, extras);
                m125a(m126b);
            }

            @Override // android.media.session.MediaSession.Callback
            @RequiresApi(24)
            public void onPrepareFromSearch(String query, Bundle extras) {
                C0064e m126b = m126b();
                if (m126b == null) {
                    return;
                }
                MediaSessionCompat.ensureClassLoader(extras);
                m128d(m126b);
                Callback.this.onPrepareFromSearch(query, extras);
                m125a(m126b);
            }

            @Override // android.media.session.MediaSession.Callback
            @RequiresApi(24)
            public void onPrepareFromUri(Uri uri, Bundle extras) {
                C0064e m126b = m126b();
                if (m126b == null) {
                    return;
                }
                MediaSessionCompat.ensureClassLoader(extras);
                m128d(m126b);
                Callback.this.onPrepareFromUri(uri, extras);
                m125a(m126b);
            }

            @Override // android.media.session.MediaSession.Callback
            public void onRewind() {
                C0064e m126b = m126b();
                if (m126b == null) {
                    return;
                }
                m128d(m126b);
                Callback.this.onRewind();
                m125a(m126b);
            }

            @Override // android.media.session.MediaSession.Callback
            public void onSeekTo(long pos) {
                C0064e m126b = m126b();
                if (m126b == null) {
                    return;
                }
                m128d(m126b);
                Callback.this.onSeekTo(pos);
                m125a(m126b);
            }

            @Override // android.media.session.MediaSession.Callback
            @RequiresApi(29)
            public void onSetPlaybackSpeed(float speed) {
                C0064e m126b = m126b();
                if (m126b == null) {
                    return;
                }
                m128d(m126b);
                Callback.this.onSetPlaybackSpeed(speed);
                m125a(m126b);
            }

            @Override // android.media.session.MediaSession.Callback
            public void onSetRating(Rating ratingFwk) {
                C0064e m126b = m126b();
                if (m126b == null) {
                    return;
                }
                m128d(m126b);
                Callback.this.onSetRating(RatingCompat.fromRating(ratingFwk));
                m125a(m126b);
            }

            @Override // android.media.session.MediaSession.Callback
            public void onSkipToNext() {
                C0064e m126b = m126b();
                if (m126b == null) {
                    return;
                }
                m128d(m126b);
                Callback.this.onSkipToNext();
                m125a(m126b);
            }

            @Override // android.media.session.MediaSession.Callback
            public void onSkipToPrevious() {
                C0064e m126b = m126b();
                if (m126b == null) {
                    return;
                }
                m128d(m126b);
                Callback.this.onSkipToPrevious();
                m125a(m126b);
            }

            @Override // android.media.session.MediaSession.Callback
            public void onSkipToQueueItem(long id) {
                C0064e m126b = m126b();
                if (m126b == null) {
                    return;
                }
                m128d(m126b);
                Callback.this.onSkipToQueueItem(id);
                m125a(m126b);
            }

            @Override // android.media.session.MediaSession.Callback
            public void onStop() {
                C0064e m126b = m126b();
                if (m126b == null) {
                    return;
                }
                m128d(m126b);
                Callback.this.onStop();
                m125a(m126b);
            }
        }

        /* renamed from: a */
        public void m123a(InterfaceC0061b impl, Handler callbackHandler) {
            if (this.f293c) {
                this.f293c = false;
                callbackHandler.removeMessages(1);
                PlaybackStateCompat playbackState = impl.getPlaybackState();
                long actions = playbackState == null ? 0L : playbackState.getActions();
                boolean z = playbackState != null && playbackState.getState() == 3;
                boolean z2 = (516 & actions) != 0;
                boolean z3 = (actions & 514) != 0;
                if (z && z3) {
                    onPause();
                } else {
                    if (z || !z2) {
                        return;
                    }
                    onPlay();
                }
            }
        }

        /* renamed from: b */
        public void m124b(InterfaceC0061b impl, Handler handler) {
            synchronized (this.f291a) {
                this.f294d = new WeakReference<>(impl);
                HandlerC0054a handlerC0054a = this.f295e;
                HandlerC0054a handlerC0054a2 = null;
                if (handlerC0054a != null) {
                    handlerC0054a.removeCallbacksAndMessages(null);
                }
                if (impl != null && handler != null) {
                    handlerC0054a2 = new HandlerC0054a(handler.getLooper());
                }
                this.f295e = handlerC0054a2;
            }
        }

        public void onAddQueueItem(MediaDescriptionCompat description) {
        }

        public void onCommand(String command, Bundle extras, ResultReceiver cb) {
        }

        public void onCustomAction(String action, Bundle extras) {
        }

        public void onFastForward() {
        }

        public boolean onMediaButtonEvent(Intent mediaButtonEvent) {
            return false;
        }

        public void onPause() {
        }

        public void onPlay() {
        }

        public void onPlayFromMediaId(String mediaId, Bundle extras) {
        }

        public void onPlayFromSearch(String query, Bundle extras) {
        }

        public void onPlayFromUri(Uri uri, Bundle extras) {
        }

        public void onPrepare() {
        }

        public void onPrepareFromMediaId(String mediaId, Bundle extras) {
        }

        public void onPrepareFromSearch(String query, Bundle extras) {
        }

        public void onPrepareFromUri(Uri uri, Bundle extras) {
        }

        public void onRemoveQueueItem(MediaDescriptionCompat description) {
        }

        @Deprecated
        public void onRemoveQueueItemAt(int index) {
        }

        public void onRewind() {
        }

        public void onSeekTo(long pos) {
        }

        public void onSetCaptioningEnabled(boolean enabled) {
        }

        public void onSetPlaybackSpeed(float speed) {
        }

        public void onSetRating(RatingCompat rating) {
        }

        public void onSetRepeatMode(int repeatMode) {
        }

        public void onSetShuffleMode(int shuffleMode) {
        }

        public void onSkipToNext() {
        }

        public void onSkipToPrevious() {
        }

        public void onSkipToQueueItem(long id) {
        }

        public void onStop() {
        }

        public void onAddQueueItem(MediaDescriptionCompat description, int index) {
        }

        public void onSetRating(RatingCompat rating, Bundle extras) {
        }
    }

    /* loaded from: classes3.dex */
    public interface OnActiveChangeListener {
        void onActiveChanged();
    }

    @SuppressLint({"BanParcelableUsage"})
    /* loaded from: classes3.dex */
    public static final class QueueItem implements Parcelable {
        public static final Parcelable.Creator<QueueItem> CREATOR = new C0056a();
        public static final int UNKNOWN_ID = -1;
        private final MediaDescriptionCompat mDescription;
        private final long mId;
        private MediaSession.QueueItem mItemFwk;

        /* renamed from: android.support.v4.media.session.MediaSessionCompat$QueueItem$a */
        /* loaded from: classes3.dex */
        public class C0056a implements Parcelable.Creator<QueueItem> {
            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public QueueItem createFromParcel(Parcel p) {
                return new QueueItem(p);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public QueueItem[] newArray(int size) {
                return new QueueItem[size];
            }
        }

        @RequiresApi(21)
        /* renamed from: android.support.v4.media.session.MediaSessionCompat$QueueItem$b */
        /* loaded from: classes3.dex */
        public static class C0057b {
            @DoNotInline
            /* renamed from: a */
            public static MediaSession.QueueItem m131a(MediaDescription description, long id) {
                return new MediaSession.QueueItem(description, id);
            }

            @DoNotInline
            /* renamed from: b */
            public static MediaDescription m132b(MediaSession.QueueItem queueItem) {
                return queueItem.getDescription();
            }

            @DoNotInline
            /* renamed from: c */
            public static long m133c(MediaSession.QueueItem queueItem) {
                return queueItem.getQueueId();
            }
        }

        public QueueItem(MediaDescriptionCompat description, long id) {
            this(null, description, id);
        }

        public static QueueItem fromQueueItem(Object queueItem) {
            if (queueItem == null) {
                return null;
            }
            MediaSession.QueueItem queueItem2 = (MediaSession.QueueItem) queueItem;
            return new QueueItem(queueItem2, MediaDescriptionCompat.fromMediaDescription(C0057b.m132b(queueItem2)), C0057b.m133c(queueItem2));
        }

        public static List<QueueItem> fromQueueItemList(List<?> itemList) {
            if (itemList == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            Iterator<?> it2 = itemList.iterator();
            while (it2.hasNext()) {
                arrayList.add(fromQueueItem(it2.next()));
            }
            return arrayList;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public MediaDescriptionCompat getDescription() {
            return this.mDescription;
        }

        public long getQueueId() {
            return this.mId;
        }

        public Object getQueueItem() {
            MediaSession.QueueItem queueItem = this.mItemFwk;
            if (queueItem != null) {
                return queueItem;
            }
            MediaSession.QueueItem m131a = C0057b.m131a((MediaDescription) this.mDescription.getMediaDescription(), this.mId);
            this.mItemFwk = m131a;
            return m131a;
        }

        public String toString() {
            return "MediaSession.QueueItem {Description=" + this.mDescription + ", Id=" + this.mId + " }";
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel dest, int flags) {
            this.mDescription.writeToParcel(dest, flags);
            dest.writeLong(this.mId);
        }

        private QueueItem(MediaSession.QueueItem queueItem, MediaDescriptionCompat description, long id) {
            if (description == null) {
                throw new IllegalArgumentException("Description cannot be null");
            }
            if (id != -1) {
                this.mDescription = description;
                this.mId = id;
                this.mItemFwk = queueItem;
                return;
            }
            throw new IllegalArgumentException("Id cannot be QueueItem.UNKNOWN_ID");
        }

        public QueueItem(Parcel in) {
            this.mDescription = MediaDescriptionCompat.CREATOR.createFromParcel(in);
            this.mId = in.readLong();
        }
    }

    @SuppressLint({"BanParcelableUsage"})
    /* loaded from: classes3.dex */
    public static final class Token implements Parcelable {
        public static final Parcelable.Creator<Token> CREATOR = new C0059a();

        @GuardedBy("mLock")
        private IMediaSession mExtraBinder;
        private final Object mInner;
        private final Object mLock;

        @GuardedBy("mLock")
        private VersionedParcelable mSession2Token;

        /* renamed from: android.support.v4.media.session.MediaSessionCompat$Token$a */
        /* loaded from: classes3.dex */
        public class C0059a implements Parcelable.Creator<Token> {
            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public Token createFromParcel(Parcel in) {
                return new Token(in.readParcelable(null));
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public Token[] newArray(int size) {
                return new Token[size];
            }
        }

        public Token(Object inner) {
            this(inner, null, null);
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public static Token fromBundle(Bundle tokenBundle) {
            if (tokenBundle == null) {
                return null;
            }
            tokenBundle.setClassLoader(Token.class.getClassLoader());
            IMediaSession asInterface = IMediaSession.Stub.asInterface(BundleCompat.getBinder(tokenBundle, MediaSessionCompat.KEY_EXTRA_BINDER));
            VersionedParcelable versionedParcelable = ParcelUtils.getVersionedParcelable(tokenBundle, MediaSessionCompat.KEY_SESSION2_TOKEN);
            Token token = (Token) tokenBundle.getParcelable(MediaSessionCompat.KEY_TOKEN);
            if (token == null) {
                return null;
            }
            return new Token(token.mInner, asInterface, versionedParcelable);
        }

        public static Token fromToken(Object token) {
            return fromToken(token, null);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Token)) {
                return false;
            }
            Token token = (Token) obj;
            Object obj2 = this.mInner;
            if (obj2 == null) {
                return token.mInner == null;
            }
            Object obj3 = token.mInner;
            if (obj3 == null) {
                return false;
            }
            return obj2.equals(obj3);
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY})
        public IMediaSession getExtraBinder() {
            IMediaSession iMediaSession;
            synchronized (this.mLock) {
                iMediaSession = this.mExtraBinder;
            }
            return iMediaSession;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public VersionedParcelable getSession2Token() {
            VersionedParcelable versionedParcelable;
            synchronized (this.mLock) {
                versionedParcelable = this.mSession2Token;
            }
            return versionedParcelable;
        }

        public Object getToken() {
            return this.mInner;
        }

        public int hashCode() {
            Object obj = this.mInner;
            if (obj == null) {
                return 0;
            }
            return obj.hashCode();
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY})
        public void setExtraBinder(IMediaSession extraBinder) {
            synchronized (this.mLock) {
                this.mExtraBinder = extraBinder;
            }
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public void setSession2Token(VersionedParcelable session2Token) {
            synchronized (this.mLock) {
                this.mSession2Token = session2Token;
            }
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putParcelable(MediaSessionCompat.KEY_TOKEN, this);
            synchronized (this.mLock) {
                IMediaSession iMediaSession = this.mExtraBinder;
                if (iMediaSession != null) {
                    BundleCompat.putBinder(bundle, MediaSessionCompat.KEY_EXTRA_BINDER, iMediaSession.asBinder());
                }
                VersionedParcelable versionedParcelable = this.mSession2Token;
                if (versionedParcelable != null) {
                    ParcelUtils.putVersionedParcelable(bundle, MediaSessionCompat.KEY_SESSION2_TOKEN, versionedParcelable);
                }
            }
            return bundle;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel dest, int flags) {
            dest.writeParcelable((Parcelable) this.mInner, flags);
        }

        public Token(Object inner, IMediaSession extraBinder) {
            this(inner, extraBinder, null);
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY})
        public static Token fromToken(Object token, IMediaSession extraBinder) {
            if (token == null) {
                return null;
            }
            if (token instanceof MediaSession.Token) {
                return new Token(token, extraBinder);
            }
            throw new IllegalArgumentException("token is not a valid MediaSession.Token object");
        }

        public Token(Object inner, IMediaSession extraBinder, VersionedParcelable session2Token) {
            this.mLock = new Object();
            this.mInner = inner;
            this.mExtraBinder = extraBinder;
            this.mSession2Token = session2Token;
        }
    }

    /* renamed from: android.support.v4.media.session.MediaSessionCompat$a */
    /* loaded from: classes3.dex */
    public class C0060a extends Callback {
        public C0060a() {
        }
    }

    /* renamed from: android.support.v4.media.session.MediaSessionCompat$b */
    /* loaded from: classes3.dex */
    public interface InterfaceC0061b {
        /* renamed from: a */
        Token mo138a();

        /* renamed from: b */
        void mo139b(String event, Bundle extras);

        /* renamed from: c */
        void mo140c(Callback callback, Handler handler);

        /* renamed from: d */
        void mo141d(int type);

        /* renamed from: e */
        void mo142e(PlaybackStateCompat state);

        /* renamed from: f */
        void mo143f(int stream);

        /* renamed from: g */
        void mo144g(boolean active);

        PlaybackStateCompat getPlaybackState();

        /* renamed from: h */
        void mo145h(MediaSessionManager.RemoteUserInfo remoteUserInfo);

        /* renamed from: i */
        void mo146i(VolumeProviderCompat volumeProvider);

        boolean isActive();

        /* renamed from: j */
        void mo147j(CharSequence title);

        /* renamed from: k */
        void mo148k(List<QueueItem> queue);

        /* renamed from: l */
        Object mo149l();

        /* renamed from: m */
        MediaSessionManager.RemoteUserInfo mo150m();

        /* renamed from: n */
        String mo151n();

        /* renamed from: o */
        void mo152o(PendingIntent mbr);

        /* renamed from: p */
        Object mo153p();

        /* renamed from: q */
        void mo154q(MediaMetadataCompat metadata);

        /* renamed from: r */
        void mo155r(PendingIntent pi);

        void release();

        /* renamed from: s */
        Callback mo156s();

        void setCaptioningEnabled(boolean enabled);

        void setExtras(Bundle extras);

        void setFlags(int flags);

        void setRepeatMode(int repeatMode);

        void setShuffleMode(int shuffleMode);
    }

    @RequiresApi(18)
    /* renamed from: android.support.v4.media.session.MediaSessionCompat$c */
    /* loaded from: classes3.dex */
    public static class C0062c extends C0068i {

        /* renamed from: H */
        public static boolean f300H = true;

        /* renamed from: android.support.v4.media.session.MediaSessionCompat$c$a */
        /* loaded from: classes3.dex */
        public class a implements RemoteControlClient.OnPlaybackPositionUpdateListener {
            public a() {
            }

            @Override // android.media.RemoteControlClient.OnPlaybackPositionUpdateListener
            public void onPlaybackPositionUpdate(long newPositionMs) {
                C0062c.this.m179y(18, -1, -1, Long.valueOf(newPositionMs), null);
            }
        }

        public C0062c(Context context, String tag, ComponentName mbrComponent, PendingIntent mbrIntent, VersionedParcelable session2Token, Bundle sessionInfo) {
            super(context, tag, mbrComponent, mbrIntent, session2Token, sessionInfo);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.C0068i
        /* renamed from: L */
        public void mo157L(PlaybackStateCompat state) {
            long position = state.getPosition();
            float playbackSpeed = state.getPlaybackSpeed();
            long lastPositionUpdateTime = state.getLastPositionUpdateTime();
            long elapsedRealtime = SystemClock.elapsedRealtime();
            if (state.getState() == 3) {
                long j = 0;
                if (position > 0) {
                    if (lastPositionUpdateTime > 0) {
                        j = elapsedRealtime - lastPositionUpdateTime;
                        if (playbackSpeed > 0.0f && playbackSpeed != 1.0f) {
                            j = ((float) j) * playbackSpeed;
                        }
                    }
                    position += j;
                }
            }
            this.f335j.setPlaybackState(m178w(state.getState()), position, playbackSpeed);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.C0068i
        /* renamed from: N */
        public void mo158N(PendingIntent mbrIntent, ComponentName mbrComponent) {
            if (f300H) {
                this.f334i.unregisterMediaButtonEventReceiver(mbrIntent);
            } else {
                super.mo158N(mbrIntent, mbrComponent);
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.C0068i, android.support.v4.media.session.MediaSessionCompat.InterfaceC0061b
        /* renamed from: c */
        public void mo140c(Callback callback, Handler handler) {
            super.mo140c(callback, handler);
            if (callback == null) {
                this.f335j.setPlaybackPositionUpdateListener(null);
            } else {
                this.f335j.setPlaybackPositionUpdateListener(new a());
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.C0068i
        /* renamed from: x */
        public int mo159x(long actions) {
            int mo159x = super.mo159x(actions);
            return (actions & 256) != 0 ? mo159x | 256 : mo159x;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.C0068i
        /* renamed from: z */
        public void mo160z(PendingIntent mbrIntent, ComponentName mbrComponent) {
            if (f300H) {
                try {
                    this.f334i.registerMediaButtonEventReceiver(mbrIntent);
                } catch (NullPointerException unused) {
                    Log.w(MediaSessionCompat.f281d, "Unable to register media button event receiver with PendingIntent, falling back to ComponentName.");
                    f300H = false;
                }
            }
            if (f300H) {
                return;
            }
            super.mo160z(mbrIntent, mbrComponent);
        }
    }

    @RequiresApi(19)
    /* renamed from: android.support.v4.media.session.MediaSessionCompat$d */
    /* loaded from: classes3.dex */
    public static class C0063d extends C0062c {

        /* renamed from: android.support.v4.media.session.MediaSessionCompat$d$a */
        /* loaded from: classes3.dex */
        public class a implements RemoteControlClient.OnMetadataUpdateListener {
            public a() {
            }

            @Override // android.media.RemoteControlClient.OnMetadataUpdateListener
            public void onMetadataUpdate(int key, Object newValue) {
                if (key == 268435457 && (newValue instanceof Rating)) {
                    C0063d.this.m179y(19, -1, -1, RatingCompat.fromRating(newValue), null);
                }
            }
        }

        public C0063d(Context context, String tag, ComponentName mbrComponent, PendingIntent mbrIntent, VersionedParcelable session2Token, Bundle sessionInfo) {
            super(context, tag, mbrComponent, mbrIntent, session2Token, sessionInfo);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.C0062c, android.support.v4.media.session.MediaSessionCompat.C0068i, android.support.v4.media.session.MediaSessionCompat.InterfaceC0061b
        /* renamed from: c */
        public void mo140c(Callback callback, Handler handler) {
            super.mo140c(callback, handler);
            if (callback == null) {
                this.f335j.setMetadataUpdateListener(null);
            } else {
                this.f335j.setMetadataUpdateListener(new a());
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.C0068i
        /* renamed from: u */
        public RemoteControlClient.MetadataEditor mo161u(Bundle metadata) {
            RemoteControlClient.MetadataEditor mo161u = super.mo161u(metadata);
            PlaybackStateCompat playbackStateCompat = this.f345t;
            if (((playbackStateCompat == null ? 0L : playbackStateCompat.getActions()) & 128) != 0) {
                mo161u.addEditableKey(268435457);
            }
            if (metadata == null) {
                return mo161u;
            }
            if (metadata.containsKey(MediaMetadataCompat.METADATA_KEY_YEAR)) {
                mo161u.putLong(8, metadata.getLong(MediaMetadataCompat.METADATA_KEY_YEAR));
            }
            if (metadata.containsKey(MediaMetadataCompat.METADATA_KEY_RATING)) {
                mo161u.putObject(101, (Object) metadata.getParcelable(MediaMetadataCompat.METADATA_KEY_RATING));
            }
            if (metadata.containsKey(MediaMetadataCompat.METADATA_KEY_USER_RATING)) {
                mo161u.putObject(268435457, (Object) metadata.getParcelable(MediaMetadataCompat.METADATA_KEY_USER_RATING));
            }
            return mo161u;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.C0062c, android.support.v4.media.session.MediaSessionCompat.C0068i
        /* renamed from: x */
        public int mo159x(long actions) {
            int mo159x = super.mo159x(actions);
            return (actions & 128) != 0 ? mo159x | 512 : mo159x;
        }
    }

    @RequiresApi(22)
    /* renamed from: android.support.v4.media.session.MediaSessionCompat$f */
    /* loaded from: classes3.dex */
    public static class C0065f extends C0064e {
        public C0065f(Context context, String tag, VersionedParcelable session2Token, Bundle sessionInfo) {
            super(context, tag, session2Token, sessionInfo);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.C0064e, android.support.v4.media.session.MediaSessionCompat.InterfaceC0061b
        /* renamed from: d */
        public void mo141d(int type) {
            this.f303a.setRatingType(type);
        }

        public C0065f(Object mediaSession) {
            super(mediaSession);
        }
    }

    @RequiresApi(28)
    /* renamed from: android.support.v4.media.session.MediaSessionCompat$g */
    /* loaded from: classes3.dex */
    public static class C0066g extends C0065f {
        public C0066g(Context context, String tag, VersionedParcelable session2Token, Bundle sessionInfo) {
            super(context, tag, session2Token, sessionInfo);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.C0064e, android.support.v4.media.session.MediaSessionCompat.InterfaceC0061b
        /* renamed from: h */
        public void mo145h(MediaSessionManager.RemoteUserInfo remoteUserInfo) {
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.C0064e, android.support.v4.media.session.MediaSessionCompat.InterfaceC0061b
        @NonNull
        /* renamed from: m */
        public final MediaSessionManager.RemoteUserInfo mo150m() {
            return new MediaSessionManager.RemoteUserInfo(this.f303a.getCurrentControllerInfo());
        }

        public C0066g(Object mediaSession) {
            super(mediaSession);
        }
    }

    @RequiresApi(29)
    /* renamed from: android.support.v4.media.session.MediaSessionCompat$h */
    /* loaded from: classes3.dex */
    public static class C0067h extends C0066g {
        public C0067h(Context context, String tag, VersionedParcelable session2Token, Bundle sessionInfo) {
            super(context, tag, session2Token, sessionInfo);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.C0064e
        /* renamed from: t */
        public MediaSession mo162t(Context context, String tag, Bundle sessionInfo) {
            return new MediaSession(context, tag, sessionInfo);
        }

        public C0067h(Object mediaSession) {
            super(mediaSession);
            this.f306d = ((MediaSession) mediaSession).getController().getSessionInfo();
        }
    }

    /* renamed from: android.support.v4.media.session.MediaSessionCompat$i */
    /* loaded from: classes3.dex */
    public static class C0068i implements InterfaceC0061b {

        /* renamed from: G */
        public static final int f319G = 0;

        /* renamed from: A */
        public int f320A;

        /* renamed from: B */
        public Bundle f321B;

        /* renamed from: C */
        public int f322C;

        /* renamed from: D */
        public int f323D;

        /* renamed from: E */
        public VolumeProviderCompat f324E;

        /* renamed from: a */
        public final Context f326a;

        /* renamed from: b */
        public final ComponentName f327b;

        /* renamed from: c */
        public final PendingIntent f328c;

        /* renamed from: d */
        public final c f329d;

        /* renamed from: e */
        public final Token f330e;

        /* renamed from: f */
        public final String f331f;

        /* renamed from: g */
        public final Bundle f332g;

        /* renamed from: h */
        public final String f333h;

        /* renamed from: i */
        public final AudioManager f334i;

        /* renamed from: j */
        public final RemoteControlClient f335j;

        /* renamed from: m */
        public d f338m;

        /* renamed from: p */
        public volatile Callback f341p;

        /* renamed from: q */
        public MediaSessionManager.RemoteUserInfo f342q;

        /* renamed from: s */
        public MediaMetadataCompat f344s;

        /* renamed from: t */
        public PlaybackStateCompat f345t;

        /* renamed from: u */
        public PendingIntent f346u;

        /* renamed from: v */
        public List<QueueItem> f347v;

        /* renamed from: w */
        public CharSequence f348w;

        /* renamed from: x */
        public int f349x;

        /* renamed from: y */
        public boolean f350y;

        /* renamed from: z */
        public int f351z;

        /* renamed from: k */
        public final Object f336k = new Object();

        /* renamed from: l */
        public final RemoteCallbackList<IMediaControllerCallback> f337l = new RemoteCallbackList<>();

        /* renamed from: n */
        public boolean f339n = false;

        /* renamed from: o */
        public boolean f340o = false;

        /* renamed from: r */
        public int f343r = 3;

        /* renamed from: F */
        public VolumeProviderCompat.Callback f325F = new a();

        /* renamed from: android.support.v4.media.session.MediaSessionCompat$i$a */
        /* loaded from: classes3.dex */
        public class a extends VolumeProviderCompat.Callback {
            public a() {
            }

            @Override // androidx.media.VolumeProviderCompat.Callback
            public void onVolumeChanged(VolumeProviderCompat volumeProvider) {
                if (C0068i.this.f324E != volumeProvider) {
                    return;
                }
                C0068i c0068i = C0068i.this;
                C0068i.this.m173K(new ParcelableVolumeInfo(c0068i.f322C, c0068i.f323D, volumeProvider.getVolumeControl(), volumeProvider.getMaxVolume(), volumeProvider.getCurrentVolume()));
            }
        }

        /* renamed from: android.support.v4.media.session.MediaSessionCompat$i$b */
        /* loaded from: classes3.dex */
        public static final class b {

            /* renamed from: a */
            public final String f353a;

            /* renamed from: b */
            public final Bundle f354b;

            /* renamed from: c */
            public final ResultReceiver f355c;

            public b(String command, Bundle extras, ResultReceiver stub) {
                this.f353a = command;
                this.f354b = extras;
                this.f355c = stub;
            }
        }

        /* renamed from: android.support.v4.media.session.MediaSessionCompat$i$c */
        /* loaded from: classes3.dex */
        public class c extends IMediaSession.Stub {
            public c() {
            }

            /* renamed from: a */
            public void m180a(int what) {
                C0068i.this.m179y(what, 0, 0, null, null);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void addQueueItem(MediaDescriptionCompat description) {
                m182c(25, description);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void addQueueItemAt(MediaDescriptionCompat description, int index) {
                m183d(26, description, index);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void adjustVolume(int direction, int flags, String packageName) {
                C0068i.this.m176t(direction, flags);
            }

            /* renamed from: b */
            public void m181b(int what, int arg1) {
                C0068i.this.m179y(what, arg1, 0, null, null);
            }

            /* renamed from: c */
            public void m182c(int what, Object obj) {
                C0068i.this.m179y(what, 0, 0, obj, null);
            }

            /* renamed from: d */
            public void m183d(int what, Object obj, int arg1) {
                C0068i.this.m179y(what, arg1, 0, obj, null);
            }

            /* renamed from: e */
            public void m184e(int what, Object obj, Bundle extras) {
                C0068i.this.m179y(what, 0, 0, obj, extras);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void fastForward() throws RemoteException {
                m180a(16);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public Bundle getExtras() {
                Bundle bundle;
                synchronized (C0068i.this.f336k) {
                    bundle = C0068i.this.f321B;
                }
                return bundle;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public long getFlags() {
                long j;
                synchronized (C0068i.this.f336k) {
                    j = C0068i.this.f343r;
                }
                return j;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public PendingIntent getLaunchPendingIntent() {
                PendingIntent pendingIntent;
                synchronized (C0068i.this.f336k) {
                    pendingIntent = C0068i.this.f346u;
                }
                return pendingIntent;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public MediaMetadataCompat getMetadata() {
                return C0068i.this.f344s;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public String getPackageName() {
                return C0068i.this.f331f;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public PlaybackStateCompat getPlaybackState() {
                PlaybackStateCompat playbackStateCompat;
                MediaMetadataCompat mediaMetadataCompat;
                synchronized (C0068i.this.f336k) {
                    C0068i c0068i = C0068i.this;
                    playbackStateCompat = c0068i.f345t;
                    mediaMetadataCompat = c0068i.f344s;
                }
                return MediaSessionCompat.m122a(playbackStateCompat, mediaMetadataCompat);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public List<QueueItem> getQueue() {
                List<QueueItem> list;
                synchronized (C0068i.this.f336k) {
                    list = C0068i.this.f347v;
                }
                return list;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public CharSequence getQueueTitle() {
                return C0068i.this.f348w;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public int getRatingType() {
                return C0068i.this.f349x;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public int getRepeatMode() {
                return C0068i.this.f351z;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public Bundle getSessionInfo() {
                if (C0068i.this.f332g == null) {
                    return null;
                }
                return new Bundle(C0068i.this.f332g);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public int getShuffleMode() {
                return C0068i.this.f320A;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public String getTag() {
                return C0068i.this.f333h;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public ParcelableVolumeInfo getVolumeAttributes() {
                int i;
                int i2;
                int i3;
                int streamVolume;
                int i4;
                synchronized (C0068i.this.f336k) {
                    C0068i c0068i = C0068i.this;
                    i = c0068i.f322C;
                    i2 = c0068i.f323D;
                    VolumeProviderCompat volumeProviderCompat = c0068i.f324E;
                    i3 = 2;
                    if (i == 2) {
                        int volumeControl = volumeProviderCompat.getVolumeControl();
                        i3 = volumeControl;
                        i4 = volumeProviderCompat.getMaxVolume();
                        streamVolume = volumeProviderCompat.getCurrentVolume();
                    } else {
                        int streamMaxVolume = c0068i.f334i.getStreamMaxVolume(i2);
                        streamVolume = C0068i.this.f334i.getStreamVolume(i2);
                        i4 = streamMaxVolume;
                    }
                }
                return new ParcelableVolumeInfo(i, i2, i3, i4, streamVolume);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public boolean isCaptioningEnabled() {
                return C0068i.this.f350y;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public boolean isShuffleModeEnabledRemoved() {
                return false;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public boolean isTransportControlEnabled() {
                return true;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void next() throws RemoteException {
                m180a(14);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void pause() throws RemoteException {
                m180a(12);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void play() throws RemoteException {
                m180a(7);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void playFromMediaId(String mediaId, Bundle extras) throws RemoteException {
                m184e(8, mediaId, extras);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void playFromSearch(String query, Bundle extras) throws RemoteException {
                m184e(9, query, extras);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void playFromUri(Uri uri, Bundle extras) throws RemoteException {
                m184e(10, uri, extras);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void prepare() throws RemoteException {
                m180a(3);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void prepareFromMediaId(String mediaId, Bundle extras) throws RemoteException {
                m184e(4, mediaId, extras);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void prepareFromSearch(String query, Bundle extras) throws RemoteException {
                m184e(5, query, extras);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void prepareFromUri(Uri uri, Bundle extras) throws RemoteException {
                m184e(6, uri, extras);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void previous() throws RemoteException {
                m180a(15);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void rate(RatingCompat rating) throws RemoteException {
                m182c(19, rating);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void rateWithExtras(RatingCompat rating, Bundle extras) throws RemoteException {
                m184e(31, rating, extras);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void registerCallbackListener(IMediaControllerCallback cb) {
                if (C0068i.this.f339n) {
                    try {
                        cb.onSessionDestroyed();
                    } catch (Exception unused) {
                    }
                } else {
                    C0068i.this.f337l.register(cb, new MediaSessionManager.RemoteUserInfo(C0068i.this.m177v(Binder.getCallingUid()), Binder.getCallingPid(), Binder.getCallingUid()));
                }
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void removeQueueItem(MediaDescriptionCompat description) {
                m182c(27, description);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void removeQueueItemAt(int index) {
                m181b(28, index);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void rewind() throws RemoteException {
                m180a(17);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void seekTo(long pos) throws RemoteException {
                m182c(18, Long.valueOf(pos));
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void sendCommand(String command, Bundle args, ResultReceiverWrapper cb) {
                m182c(1, new b(command, args, cb == null ? null : cb.mResultReceiver));
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void sendCustomAction(String action, Bundle args) throws RemoteException {
                m184e(20, action, args);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public boolean sendMediaButton(KeyEvent mediaButton) {
                m182c(21, mediaButton);
                return true;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void setCaptioningEnabled(boolean enabled) throws RemoteException {
                m182c(29, Boolean.valueOf(enabled));
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void setPlaybackSpeed(float speed) throws RemoteException {
                m182c(32, Float.valueOf(speed));
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void setRepeatMode(int repeatMode) throws RemoteException {
                m181b(23, repeatMode);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void setShuffleMode(int shuffleMode) throws RemoteException {
                m181b(30, shuffleMode);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void setShuffleModeEnabledRemoved(boolean enabled) throws RemoteException {
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void setVolumeTo(int value, int flags, String packageName) {
                C0068i.this.m174M(value, flags);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void skipToQueueItem(long id) {
                m182c(11, Long.valueOf(id));
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void stop() throws RemoteException {
                m180a(13);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void unregisterCallbackListener(IMediaControllerCallback cb) {
                C0068i.this.f337l.unregister(cb);
            }
        }

        /* renamed from: android.support.v4.media.session.MediaSessionCompat$i$d */
        /* loaded from: classes3.dex */
        public class d extends Handler {

            /* renamed from: A */
            public static final int f357A = 25;

            /* renamed from: B */
            public static final int f358B = 26;

            /* renamed from: C */
            public static final int f359C = 27;

            /* renamed from: D */
            public static final int f360D = 28;

            /* renamed from: E */
            public static final int f361E = 29;

            /* renamed from: F */
            public static final int f362F = 30;

            /* renamed from: G */
            public static final int f363G = 127;

            /* renamed from: H */
            public static final int f364H = 126;

            /* renamed from: b */
            public static final int f365b = 1;

            /* renamed from: c */
            public static final int f366c = 2;

            /* renamed from: d */
            public static final int f367d = 3;

            /* renamed from: e */
            public static final int f368e = 4;

            /* renamed from: f */
            public static final int f369f = 5;

            /* renamed from: g */
            public static final int f370g = 6;

            /* renamed from: h */
            public static final int f371h = 7;

            /* renamed from: i */
            public static final int f372i = 8;

            /* renamed from: j */
            public static final int f373j = 9;

            /* renamed from: k */
            public static final int f374k = 10;

            /* renamed from: l */
            public static final int f375l = 11;

            /* renamed from: m */
            public static final int f376m = 12;

            /* renamed from: n */
            public static final int f377n = 13;

            /* renamed from: o */
            public static final int f378o = 14;

            /* renamed from: p */
            public static final int f379p = 15;

            /* renamed from: q */
            public static final int f380q = 16;

            /* renamed from: r */
            public static final int f381r = 17;

            /* renamed from: s */
            public static final int f382s = 18;

            /* renamed from: t */
            public static final int f383t = 19;

            /* renamed from: u */
            public static final int f384u = 31;

            /* renamed from: v */
            public static final int f385v = 32;

            /* renamed from: w */
            public static final int f386w = 20;

            /* renamed from: x */
            public static final int f387x = 21;

            /* renamed from: y */
            public static final int f388y = 22;

            /* renamed from: z */
            public static final int f389z = 23;

            public d(Looper looper) {
                super(looper);
            }

            /* renamed from: a */
            public final void m185a(KeyEvent ke, Callback cb) {
                if (ke == null || ke.getAction() != 0) {
                    return;
                }
                PlaybackStateCompat playbackStateCompat = C0068i.this.f345t;
                long actions = playbackStateCompat == null ? 0L : playbackStateCompat.getActions();
                int keyCode = ke.getKeyCode();
                if (keyCode != 79) {
                    if (keyCode == 126) {
                        if ((4 & actions) != 0) {
                            cb.onPlay();
                            return;
                        }
                        return;
                    }
                    if (keyCode == 127) {
                        if ((2 & actions) != 0) {
                            cb.onPause();
                            return;
                        }
                        return;
                    }
                    switch (keyCode) {
                        case 85:
                            break;
                        case 86:
                            if ((1 & actions) != 0) {
                                cb.onStop();
                                return;
                            }
                            return;
                        case 87:
                            if ((32 & actions) != 0) {
                                cb.onSkipToNext();
                                return;
                            }
                            return;
                        case 88:
                            if ((16 & actions) != 0) {
                                cb.onSkipToPrevious();
                                return;
                            }
                            return;
                        case 89:
                            if ((8 & actions) != 0) {
                                cb.onRewind();
                                return;
                            }
                            return;
                        case 90:
                            if ((64 & actions) != 0) {
                                cb.onFastForward();
                                return;
                            }
                            return;
                        default:
                            return;
                    }
                }
                Log.w(MediaSessionCompat.f281d, "KEYCODE_MEDIA_PLAY_PAUSE and KEYCODE_HEADSETHOOK are handled already");
            }

            @Override // android.os.Handler
            public void handleMessage(Message msg) {
                Callback callback = C0068i.this.f341p;
                if (callback == null) {
                    return;
                }
                Bundle data = msg.getData();
                MediaSessionCompat.ensureClassLoader(data);
                C0068i.this.mo145h(new MediaSessionManager.RemoteUserInfo(data.getString(MediaSessionCompat.f283f), data.getInt("data_calling_pid"), data.getInt("data_calling_uid")));
                Bundle bundle = data.getBundle(MediaSessionCompat.f286i);
                MediaSessionCompat.ensureClassLoader(bundle);
                try {
                    switch (msg.what) {
                        case 1:
                            b bVar = (b) msg.obj;
                            callback.onCommand(bVar.f353a, bVar.f354b, bVar.f355c);
                            break;
                        case 2:
                            C0068i.this.m176t(msg.arg1, 0);
                            break;
                        case 3:
                            callback.onPrepare();
                            break;
                        case 4:
                            callback.onPrepareFromMediaId((String) msg.obj, bundle);
                            break;
                        case 5:
                            callback.onPrepareFromSearch((String) msg.obj, bundle);
                            break;
                        case 6:
                            callback.onPrepareFromUri((Uri) msg.obj, bundle);
                            break;
                        case 7:
                            callback.onPlay();
                            break;
                        case 8:
                            callback.onPlayFromMediaId((String) msg.obj, bundle);
                            break;
                        case 9:
                            callback.onPlayFromSearch((String) msg.obj, bundle);
                            break;
                        case 10:
                            callback.onPlayFromUri((Uri) msg.obj, bundle);
                            break;
                        case 11:
                            callback.onSkipToQueueItem(((Long) msg.obj).longValue());
                            break;
                        case 12:
                            callback.onPause();
                            break;
                        case 13:
                            callback.onStop();
                            break;
                        case 14:
                            callback.onSkipToNext();
                            break;
                        case 15:
                            callback.onSkipToPrevious();
                            break;
                        case 16:
                            callback.onFastForward();
                            break;
                        case 17:
                            callback.onRewind();
                            break;
                        case 18:
                            callback.onSeekTo(((Long) msg.obj).longValue());
                            break;
                        case 19:
                            callback.onSetRating((RatingCompat) msg.obj);
                            break;
                        case 20:
                            callback.onCustomAction((String) msg.obj, bundle);
                            break;
                        case 21:
                            KeyEvent keyEvent = (KeyEvent) msg.obj;
                            Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
                            intent.putExtra("android.intent.extra.KEY_EVENT", keyEvent);
                            if (!callback.onMediaButtonEvent(intent)) {
                                m185a(keyEvent, callback);
                                break;
                            }
                            break;
                        case 22:
                            C0068i.this.m174M(msg.arg1, 0);
                            break;
                        case 23:
                            callback.onSetRepeatMode(msg.arg1);
                            break;
                        case 25:
                            callback.onAddQueueItem((MediaDescriptionCompat) msg.obj);
                            break;
                        case 26:
                            callback.onAddQueueItem((MediaDescriptionCompat) msg.obj, msg.arg1);
                            break;
                        case 27:
                            callback.onRemoveQueueItem((MediaDescriptionCompat) msg.obj);
                            break;
                        case 28:
                            List<QueueItem> list = C0068i.this.f347v;
                            if (list != null) {
                                int i = msg.arg1;
                                QueueItem queueItem = (i < 0 || i >= list.size()) ? null : C0068i.this.f347v.get(msg.arg1);
                                if (queueItem != null) {
                                    callback.onRemoveQueueItem(queueItem.getDescription());
                                    break;
                                }
                            }
                            break;
                        case 29:
                            callback.onSetCaptioningEnabled(((Boolean) msg.obj).booleanValue());
                            break;
                        case 30:
                            callback.onSetShuffleMode(msg.arg1);
                            break;
                        case 31:
                            callback.onSetRating((RatingCompat) msg.obj, bundle);
                            break;
                        case 32:
                            callback.onSetPlaybackSpeed(((Float) msg.obj).floatValue());
                            break;
                    }
                } finally {
                    C0068i.this.mo145h(null);
                }
            }
        }

        public C0068i(Context context, String tag, ComponentName mbrComponent, PendingIntent mbrIntent, VersionedParcelable session2Token, Bundle sessionInfo) {
            if (mbrComponent == null) {
                throw new IllegalArgumentException("MediaButtonReceiver component may not be null");
            }
            this.f326a = context;
            this.f331f = context.getPackageName();
            this.f332g = sessionInfo;
            this.f334i = (AudioManager) context.getSystemService("audio");
            this.f333h = tag;
            this.f327b = mbrComponent;
            this.f328c = mbrIntent;
            c cVar = new c();
            this.f329d = cVar;
            this.f330e = new Token(cVar, null, session2Token);
            this.f349x = 0;
            this.f322C = 1;
            this.f323D = 3;
            this.f335j = new RemoteControlClient(mbrIntent);
        }

        /* renamed from: A */
        public final void m163A(boolean enabled) {
            for (int beginBroadcast = this.f337l.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                try {
                    this.f337l.getBroadcastItem(beginBroadcast).onCaptioningEnabledChanged(enabled);
                } catch (RemoteException unused) {
                }
            }
            this.f337l.finishBroadcast();
        }

        /* renamed from: B */
        public final void m164B(String event, Bundle extras) {
            for (int beginBroadcast = this.f337l.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                try {
                    this.f337l.getBroadcastItem(beginBroadcast).onEvent(event, extras);
                } catch (RemoteException unused) {
                }
            }
            this.f337l.finishBroadcast();
        }

        /* renamed from: C */
        public final void m165C(Bundle extras) {
            for (int beginBroadcast = this.f337l.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                try {
                    this.f337l.getBroadcastItem(beginBroadcast).onExtrasChanged(extras);
                } catch (RemoteException unused) {
                }
            }
            this.f337l.finishBroadcast();
        }

        /* renamed from: D */
        public final void m166D(MediaMetadataCompat metadata) {
            for (int beginBroadcast = this.f337l.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                try {
                    this.f337l.getBroadcastItem(beginBroadcast).onMetadataChanged(metadata);
                } catch (RemoteException unused) {
                }
            }
            this.f337l.finishBroadcast();
        }

        /* renamed from: E */
        public final void m167E(List<QueueItem> queue) {
            for (int beginBroadcast = this.f337l.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                try {
                    this.f337l.getBroadcastItem(beginBroadcast).onQueueChanged(queue);
                } catch (RemoteException unused) {
                }
            }
            this.f337l.finishBroadcast();
        }

        /* renamed from: F */
        public final void m168F(CharSequence queueTitle) {
            for (int beginBroadcast = this.f337l.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                try {
                    this.f337l.getBroadcastItem(beginBroadcast).onQueueTitleChanged(queueTitle);
                } catch (RemoteException unused) {
                }
            }
            this.f337l.finishBroadcast();
        }

        /* renamed from: G */
        public final void m169G(int repeatMode) {
            for (int beginBroadcast = this.f337l.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                try {
                    this.f337l.getBroadcastItem(beginBroadcast).onRepeatModeChanged(repeatMode);
                } catch (RemoteException unused) {
                }
            }
            this.f337l.finishBroadcast();
        }

        /* renamed from: H */
        public final void m170H() {
            for (int beginBroadcast = this.f337l.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                try {
                    this.f337l.getBroadcastItem(beginBroadcast).onSessionDestroyed();
                } catch (RemoteException unused) {
                }
            }
            this.f337l.finishBroadcast();
            this.f337l.kill();
        }

        /* renamed from: I */
        public final void m171I(int shuffleMode) {
            for (int beginBroadcast = this.f337l.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                try {
                    this.f337l.getBroadcastItem(beginBroadcast).onShuffleModeChanged(shuffleMode);
                } catch (RemoteException unused) {
                }
            }
            this.f337l.finishBroadcast();
        }

        /* renamed from: J */
        public final void m172J(PlaybackStateCompat state) {
            for (int beginBroadcast = this.f337l.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                try {
                    this.f337l.getBroadcastItem(beginBroadcast).onPlaybackStateChanged(state);
                } catch (RemoteException unused) {
                }
            }
            this.f337l.finishBroadcast();
        }

        /* renamed from: K */
        public void m173K(ParcelableVolumeInfo info) {
            for (int beginBroadcast = this.f337l.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                try {
                    this.f337l.getBroadcastItem(beginBroadcast).onVolumeInfoChanged(info);
                } catch (RemoteException unused) {
                }
            }
            this.f337l.finishBroadcast();
        }

        /* renamed from: L */
        public void mo157L(PlaybackStateCompat state) {
            this.f335j.setPlaybackState(m178w(state.getState()));
        }

        /* renamed from: M */
        public void m174M(int value, int flags) {
            if (this.f322C != 2) {
                this.f334i.setStreamVolume(this.f323D, value, flags);
                return;
            }
            VolumeProviderCompat volumeProviderCompat = this.f324E;
            if (volumeProviderCompat != null) {
                volumeProviderCompat.onSetVolumeTo(value);
            }
        }

        /* renamed from: N */
        public void mo158N(PendingIntent mbrIntent, ComponentName mbrComponent) {
            this.f334i.unregisterMediaButtonEventReceiver(mbrComponent);
        }

        /* renamed from: O */
        public void m175O() {
            if (!this.f340o) {
                mo158N(this.f328c, this.f327b);
                this.f335j.setPlaybackState(0);
                this.f334i.unregisterRemoteControlClient(this.f335j);
            } else {
                mo160z(this.f328c, this.f327b);
                this.f334i.registerRemoteControlClient(this.f335j);
                mo154q(this.f344s);
                mo142e(this.f345t);
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.InterfaceC0061b
        /* renamed from: a */
        public Token mo138a() {
            return this.f330e;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.InterfaceC0061b
        /* renamed from: b */
        public void mo139b(String event, Bundle extras) {
            m164B(event, extras);
        }

        /* JADX WARN: Removed duplicated region for block: B:18:0x0030 A[Catch: all -> 0x0037, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0008, B:10:0x0010, B:11:0x001b, B:13:0x0021, B:15:0x0025, B:16:0x002a, B:18:0x0030, B:19:0x0035), top: B:3:0x0003 }] */
        @Override // android.support.v4.media.session.MediaSessionCompat.InterfaceC0061b
        /* renamed from: c */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void mo140c(android.support.v4.media.session.MediaSessionCompat.Callback r5, android.os.Handler r6) {
            /*
                r4 = this;
                java.lang.Object r0 = r4.f336k
                monitor-enter(r0)
                android.support.v4.media.session.MediaSessionCompat$i$d r1 = r4.f338m     // Catch: java.lang.Throwable -> L37
                r2 = 0
                if (r1 == 0) goto Lb
                r1.removeCallbacksAndMessages(r2)     // Catch: java.lang.Throwable -> L37
            Lb:
                if (r5 == 0) goto L1a
                if (r6 != 0) goto L10
                goto L1a
            L10:
                android.support.v4.media.session.MediaSessionCompat$i$d r1 = new android.support.v4.media.session.MediaSessionCompat$i$d     // Catch: java.lang.Throwable -> L37
                android.os.Looper r3 = r6.getLooper()     // Catch: java.lang.Throwable -> L37
                r1.<init>(r3)     // Catch: java.lang.Throwable -> L37
                goto L1b
            L1a:
                r1 = r2
            L1b:
                r4.f338m = r1     // Catch: java.lang.Throwable -> L37
                android.support.v4.media.session.MediaSessionCompat$Callback r1 = r4.f341p     // Catch: java.lang.Throwable -> L37
                if (r1 == r5) goto L2a
                android.support.v4.media.session.MediaSessionCompat$Callback r1 = r4.f341p     // Catch: java.lang.Throwable -> L37
                if (r1 == 0) goto L2a
                android.support.v4.media.session.MediaSessionCompat$Callback r1 = r4.f341p     // Catch: java.lang.Throwable -> L37
                r1.m124b(r2, r2)     // Catch: java.lang.Throwable -> L37
            L2a:
                r4.f341p = r5     // Catch: java.lang.Throwable -> L37
                android.support.v4.media.session.MediaSessionCompat$Callback r5 = r4.f341p     // Catch: java.lang.Throwable -> L37
                if (r5 == 0) goto L35
                android.support.v4.media.session.MediaSessionCompat$Callback r5 = r4.f341p     // Catch: java.lang.Throwable -> L37
                r5.m124b(r4, r6)     // Catch: java.lang.Throwable -> L37
            L35:
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L37
                return
            L37:
                r4 = move-exception
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L37
                throw r4
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.v4.media.session.MediaSessionCompat.C0068i.mo140c(android.support.v4.media.session.MediaSessionCompat$Callback, android.os.Handler):void");
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.InterfaceC0061b
        /* renamed from: d */
        public void mo141d(int type) {
            this.f349x = type;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.InterfaceC0061b
        /* renamed from: e */
        public void mo142e(PlaybackStateCompat state) {
            synchronized (this.f336k) {
                this.f345t = state;
            }
            m172J(state);
            if (this.f340o) {
                if (state == null) {
                    this.f335j.setPlaybackState(0);
                    this.f335j.setTransportControlFlags(0);
                } else {
                    mo157L(state);
                    this.f335j.setTransportControlFlags(mo159x(state.getActions()));
                }
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.InterfaceC0061b
        /* renamed from: f */
        public void mo143f(int stream) {
            VolumeProviderCompat volumeProviderCompat = this.f324E;
            if (volumeProviderCompat != null) {
                volumeProviderCompat.setCallback(null);
            }
            this.f323D = stream;
            this.f322C = 1;
            int i = this.f322C;
            int i2 = this.f323D;
            m173K(new ParcelableVolumeInfo(i, i2, 2, this.f334i.getStreamMaxVolume(i2), this.f334i.getStreamVolume(this.f323D)));
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.InterfaceC0061b
        /* renamed from: g */
        public void mo144g(boolean active) {
            if (active == this.f340o) {
                return;
            }
            this.f340o = active;
            m175O();
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.InterfaceC0061b
        public PlaybackStateCompat getPlaybackState() {
            PlaybackStateCompat playbackStateCompat;
            synchronized (this.f336k) {
                playbackStateCompat = this.f345t;
            }
            return playbackStateCompat;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.InterfaceC0061b
        /* renamed from: h */
        public void mo145h(MediaSessionManager.RemoteUserInfo remoteUserInfo) {
            synchronized (this.f336k) {
                this.f342q = remoteUserInfo;
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.InterfaceC0061b
        /* renamed from: i */
        public void mo146i(VolumeProviderCompat volumeProvider) {
            if (volumeProvider == null) {
                throw new IllegalArgumentException("volumeProvider may not be null");
            }
            VolumeProviderCompat volumeProviderCompat = this.f324E;
            if (volumeProviderCompat != null) {
                volumeProviderCompat.setCallback(null);
            }
            this.f322C = 2;
            this.f324E = volumeProvider;
            m173K(new ParcelableVolumeInfo(this.f322C, this.f323D, this.f324E.getVolumeControl(), this.f324E.getMaxVolume(), this.f324E.getCurrentVolume()));
            volumeProvider.setCallback(this.f325F);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.InterfaceC0061b
        public boolean isActive() {
            return this.f340o;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.InterfaceC0061b
        /* renamed from: j */
        public void mo147j(CharSequence title) {
            this.f348w = title;
            m168F(title);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.InterfaceC0061b
        /* renamed from: k */
        public void mo148k(List<QueueItem> queue) {
            this.f347v = queue;
            m167E(queue);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.InterfaceC0061b
        /* renamed from: l */
        public Object mo149l() {
            return null;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.InterfaceC0061b
        /* renamed from: m */
        public MediaSessionManager.RemoteUserInfo mo150m() {
            MediaSessionManager.RemoteUserInfo remoteUserInfo;
            synchronized (this.f336k) {
                remoteUserInfo = this.f342q;
            }
            return remoteUserInfo;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.InterfaceC0061b
        /* renamed from: n */
        public String mo151n() {
            return null;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.InterfaceC0061b
        /* renamed from: o */
        public void mo152o(PendingIntent mbr) {
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.InterfaceC0061b
        /* renamed from: p */
        public Object mo153p() {
            return null;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.InterfaceC0061b
        /* renamed from: q */
        public void mo154q(MediaMetadataCompat metadata) {
            if (metadata != null) {
                metadata = new MediaMetadataCompat.Builder(metadata, MediaSessionCompat.f287j).build();
            }
            synchronized (this.f336k) {
                this.f344s = metadata;
            }
            m166D(metadata);
            if (this.f340o) {
                mo161u(metadata == null ? null : metadata.getBundle()).apply();
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.InterfaceC0061b
        /* renamed from: r */
        public void mo155r(PendingIntent pi) {
            synchronized (this.f336k) {
                this.f346u = pi;
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.InterfaceC0061b
        public void release() {
            this.f340o = false;
            this.f339n = true;
            m175O();
            m170H();
            mo140c(null, null);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.InterfaceC0061b
        /* renamed from: s */
        public Callback mo156s() {
            Callback callback;
            synchronized (this.f336k) {
                callback = this.f341p;
            }
            return callback;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.InterfaceC0061b
        public void setCaptioningEnabled(boolean enabled) {
            if (this.f350y != enabled) {
                this.f350y = enabled;
                m163A(enabled);
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.InterfaceC0061b
        public void setExtras(Bundle extras) {
            this.f321B = extras;
            m165C(extras);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.InterfaceC0061b
        public void setFlags(int flags) {
            synchronized (this.f336k) {
                this.f343r = flags | 1 | 2;
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.InterfaceC0061b
        public void setRepeatMode(int repeatMode) {
            if (this.f351z != repeatMode) {
                this.f351z = repeatMode;
                m169G(repeatMode);
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.InterfaceC0061b
        public void setShuffleMode(int shuffleMode) {
            if (this.f320A != shuffleMode) {
                this.f320A = shuffleMode;
                m171I(shuffleMode);
            }
        }

        /* renamed from: t */
        public void m176t(int direction, int flags) {
            if (this.f322C != 2) {
                this.f334i.adjustStreamVolume(this.f323D, direction, flags);
                return;
            }
            VolumeProviderCompat volumeProviderCompat = this.f324E;
            if (volumeProviderCompat != null) {
                volumeProviderCompat.onAdjustVolume(direction);
            }
        }

        /* renamed from: u */
        public RemoteControlClient.MetadataEditor mo161u(Bundle metadata) {
            RemoteControlClient.MetadataEditor editMetadata = this.f335j.editMetadata(true);
            if (metadata == null) {
                return editMetadata;
            }
            if (metadata.containsKey(MediaMetadataCompat.METADATA_KEY_ART)) {
                Bitmap bitmap = (Bitmap) metadata.getParcelable(MediaMetadataCompat.METADATA_KEY_ART);
                if (bitmap != null) {
                    bitmap = bitmap.copy(bitmap.getConfig(), false);
                }
                editMetadata.putBitmap(100, bitmap);
            } else if (metadata.containsKey(MediaMetadataCompat.METADATA_KEY_ALBUM_ART)) {
                Bitmap bitmap2 = (Bitmap) metadata.getParcelable(MediaMetadataCompat.METADATA_KEY_ALBUM_ART);
                if (bitmap2 != null) {
                    bitmap2 = bitmap2.copy(bitmap2.getConfig(), false);
                }
                editMetadata.putBitmap(100, bitmap2);
            }
            if (metadata.containsKey(MediaMetadataCompat.METADATA_KEY_ALBUM)) {
                editMetadata.putString(1, metadata.getString(MediaMetadataCompat.METADATA_KEY_ALBUM));
            }
            if (metadata.containsKey(MediaMetadataCompat.METADATA_KEY_ALBUM_ARTIST)) {
                editMetadata.putString(13, metadata.getString(MediaMetadataCompat.METADATA_KEY_ALBUM_ARTIST));
            }
            if (metadata.containsKey(MediaMetadataCompat.METADATA_KEY_ARTIST)) {
                editMetadata.putString(2, metadata.getString(MediaMetadataCompat.METADATA_KEY_ARTIST));
            }
            if (metadata.containsKey(MediaMetadataCompat.METADATA_KEY_AUTHOR)) {
                editMetadata.putString(3, metadata.getString(MediaMetadataCompat.METADATA_KEY_AUTHOR));
            }
            if (metadata.containsKey(MediaMetadataCompat.METADATA_KEY_COMPILATION)) {
                editMetadata.putString(15, metadata.getString(MediaMetadataCompat.METADATA_KEY_COMPILATION));
            }
            if (metadata.containsKey(MediaMetadataCompat.METADATA_KEY_COMPOSER)) {
                editMetadata.putString(4, metadata.getString(MediaMetadataCompat.METADATA_KEY_COMPOSER));
            }
            if (metadata.containsKey(MediaMetadataCompat.METADATA_KEY_DATE)) {
                editMetadata.putString(5, metadata.getString(MediaMetadataCompat.METADATA_KEY_DATE));
            }
            if (metadata.containsKey(MediaMetadataCompat.METADATA_KEY_DISC_NUMBER)) {
                editMetadata.putLong(14, metadata.getLong(MediaMetadataCompat.METADATA_KEY_DISC_NUMBER));
            }
            if (metadata.containsKey(MediaMetadataCompat.METADATA_KEY_DURATION)) {
                editMetadata.putLong(9, metadata.getLong(MediaMetadataCompat.METADATA_KEY_DURATION));
            }
            if (metadata.containsKey(MediaMetadataCompat.METADATA_KEY_GENRE)) {
                editMetadata.putString(6, metadata.getString(MediaMetadataCompat.METADATA_KEY_GENRE));
            }
            if (metadata.containsKey(MediaMetadataCompat.METADATA_KEY_TITLE)) {
                editMetadata.putString(7, metadata.getString(MediaMetadataCompat.METADATA_KEY_TITLE));
            }
            if (metadata.containsKey(MediaMetadataCompat.METADATA_KEY_TRACK_NUMBER)) {
                editMetadata.putLong(0, metadata.getLong(MediaMetadataCompat.METADATA_KEY_TRACK_NUMBER));
            }
            if (metadata.containsKey(MediaMetadataCompat.METADATA_KEY_WRITER)) {
                editMetadata.putString(11, metadata.getString(MediaMetadataCompat.METADATA_KEY_WRITER));
            }
            return editMetadata;
        }

        /* renamed from: v */
        public String m177v(int uid) {
            String nameForUid = this.f326a.getPackageManager().getNameForUid(uid);
            return TextUtils.isEmpty(nameForUid) ? MediaSessionManager.RemoteUserInfo.LEGACY_CONTROLLER : nameForUid;
        }

        /* renamed from: w */
        public int m178w(int state) {
            switch (state) {
                case 0:
                    return 0;
                case 1:
                    return 1;
                case 2:
                    return 2;
                case 3:
                    return 3;
                case 4:
                    return 4;
                case 5:
                    return 5;
                case 6:
                case 8:
                    return 8;
                case 7:
                    return 9;
                case 9:
                    return 7;
                case 10:
                case 11:
                    return 6;
                default:
                    return -1;
            }
        }

        /* renamed from: x */
        public int mo159x(long actions) {
            int i = (1 & actions) != 0 ? 32 : 0;
            if ((2 & actions) != 0) {
                i |= 16;
            }
            if ((4 & actions) != 0) {
                i |= 4;
            }
            if ((8 & actions) != 0) {
                i |= 2;
            }
            if ((16 & actions) != 0) {
                i |= 1;
            }
            if ((32 & actions) != 0) {
                i |= 128;
            }
            if ((64 & actions) != 0) {
                i |= 64;
            }
            return (actions & 512) != 0 ? i | 8 : i;
        }

        /* renamed from: y */
        public void m179y(int what, int arg1, int arg2, Object obj, Bundle extras) {
            synchronized (this.f336k) {
                d dVar = this.f338m;
                if (dVar != null) {
                    Message obtainMessage = dVar.obtainMessage(what, arg1, arg2, obj);
                    Bundle bundle = new Bundle();
                    int callingUid = Binder.getCallingUid();
                    bundle.putInt("data_calling_uid", callingUid);
                    bundle.putString(MediaSessionCompat.f283f, m177v(callingUid));
                    int callingPid = Binder.getCallingPid();
                    if (callingPid > 0) {
                        bundle.putInt("data_calling_pid", callingPid);
                    } else {
                        bundle.putInt("data_calling_pid", -1);
                    }
                    if (extras != null) {
                        bundle.putBundle(MediaSessionCompat.f286i, extras);
                    }
                    obtainMessage.setData(bundle);
                    obtainMessage.sendToTarget();
                }
            }
        }

        /* renamed from: z */
        public void mo160z(PendingIntent mbrIntent, ComponentName mbrComponent) {
            this.f334i.registerMediaButtonEventReceiver(mbrComponent);
        }
    }

    static {
        PENDING_INTENT_FLAG_MUTABLE = BuildCompat.isAtLeastS() ? 33554432 : 0;
    }

    public MediaSessionCompat(@NonNull Context context, @NonNull String tag) {
        this(context, tag, null, null);
    }

    /* renamed from: a */
    public static PlaybackStateCompat m122a(PlaybackStateCompat state, MediaMetadataCompat metadata) {
        if (state == null) {
            return state;
        }
        long j = -1;
        if (state.getPosition() == -1) {
            return state;
        }
        if (state.getState() != 3 && state.getState() != 4 && state.getState() != 5) {
            return state;
        }
        if (state.getLastPositionUpdateTime() <= 0) {
            return state;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long playbackSpeed = (state.getPlaybackSpeed() * ((float) (elapsedRealtime - r0))) + state.getPosition();
        if (metadata != null && metadata.containsKey(MediaMetadataCompat.METADATA_KEY_DURATION)) {
            j = metadata.getLong(MediaMetadataCompat.METADATA_KEY_DURATION);
        }
        return new PlaybackStateCompat.Builder(state).setState(state.getState(), (j < 0 || playbackSpeed <= j) ? playbackSpeed < 0 ? 0L : playbackSpeed : j, state.getPlaybackSpeed(), elapsedRealtime).build();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static void ensureClassLoader(@Nullable Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader(MediaSessionCompat.class.getClassLoader());
        }
    }

    public static MediaSessionCompat fromMediaSession(Context context, Object mediaSession) {
        if (context == null || mediaSession == null) {
            return null;
        }
        return new MediaSessionCompat(context, new C0067h(mediaSession));
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static Bundle unparcelWithClassLoader(@Nullable Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        ensureClassLoader(bundle);
        try {
            bundle.isEmpty();
            return bundle;
        } catch (BadParcelableException unused) {
            Log.e(f281d, "Could not unparcel the data.");
            return null;
        }
    }

    public void addOnActiveChangeListener(OnActiveChangeListener listener) {
        if (listener == null) {
            throw new IllegalArgumentException("Listener may not be null");
        }
        this.f290c.add(listener);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public String getCallingPackage() {
        return this.f288a.mo151n();
    }

    public MediaControllerCompat getController() {
        return this.f289b;
    }

    @NonNull
    public final MediaSessionManager.RemoteUserInfo getCurrentControllerInfo() {
        return this.f288a.mo150m();
    }

    public Object getMediaSession() {
        return this.f288a.mo149l();
    }

    public Object getRemoteControlClient() {
        return this.f288a.mo153p();
    }

    public Token getSessionToken() {
        return this.f288a.mo138a();
    }

    public boolean isActive() {
        return this.f288a.isActive();
    }

    public void release() {
        this.f288a.release();
    }

    public void removeOnActiveChangeListener(OnActiveChangeListener listener) {
        if (listener == null) {
            throw new IllegalArgumentException("Listener may not be null");
        }
        this.f290c.remove(listener);
    }

    public void sendSessionEvent(String event, Bundle extras) {
        if (TextUtils.isEmpty(event)) {
            throw new IllegalArgumentException("event cannot be null or empty");
        }
        this.f288a.mo139b(event, extras);
    }

    public void setActive(boolean active) {
        this.f288a.mo144g(active);
        Iterator<OnActiveChangeListener> it2 = this.f290c.iterator();
        while (it2.hasNext()) {
            it2.next().onActiveChanged();
        }
    }

    public void setCallback(Callback callback) {
        setCallback(callback, null);
    }

    public void setCaptioningEnabled(boolean enabled) {
        this.f288a.setCaptioningEnabled(enabled);
    }

    public void setExtras(Bundle extras) {
        this.f288a.setExtras(extras);
    }

    public void setFlags(int flags) {
        this.f288a.setFlags(flags);
    }

    public void setMediaButtonReceiver(PendingIntent mbr) {
        this.f288a.mo152o(mbr);
    }

    public void setMetadata(MediaMetadataCompat metadata) {
        this.f288a.mo154q(metadata);
    }

    public void setPlaybackState(PlaybackStateCompat state) {
        this.f288a.mo142e(state);
    }

    public void setPlaybackToLocal(int stream) {
        this.f288a.mo143f(stream);
    }

    public void setPlaybackToRemote(VolumeProviderCompat volumeProvider) {
        if (volumeProvider == null) {
            throw new IllegalArgumentException("volumeProvider may not be null!");
        }
        this.f288a.mo146i(volumeProvider);
    }

    public void setQueue(List<QueueItem> queue) {
        if (queue != null) {
            HashSet hashSet = new HashSet();
            for (QueueItem queueItem : queue) {
                if (queueItem == null) {
                    throw new IllegalArgumentException("queue shouldn't have null items");
                }
                if (hashSet.contains(Long.valueOf(queueItem.getQueueId()))) {
                    Log.e(f281d, "Found duplicate queue id: " + queueItem.getQueueId(), new IllegalArgumentException("id of each queue item should be unique"));
                }
                hashSet.add(Long.valueOf(queueItem.getQueueId()));
            }
        }
        this.f288a.mo148k(queue);
    }

    public void setQueueTitle(CharSequence title) {
        this.f288a.mo147j(title);
    }

    public void setRatingType(int type) {
        this.f288a.mo141d(type);
    }

    public void setRepeatMode(int repeatMode) {
        this.f288a.setRepeatMode(repeatMode);
    }

    public void setSessionActivity(PendingIntent pi) {
        this.f288a.mo155r(pi);
    }

    public void setShuffleMode(int shuffleMode) {
        this.f288a.setShuffleMode(shuffleMode);
    }

    @SuppressLint({"BanParcelableUsage"})
    /* loaded from: classes3.dex */
    public static final class ResultReceiverWrapper implements Parcelable {
        public static final Parcelable.Creator<ResultReceiverWrapper> CREATOR = new C0058a();
        ResultReceiver mResultReceiver;

        /* renamed from: android.support.v4.media.session.MediaSessionCompat$ResultReceiverWrapper$a */
        /* loaded from: classes3.dex */
        public class C0058a implements Parcelable.Creator<ResultReceiverWrapper> {
            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public ResultReceiverWrapper createFromParcel(Parcel p) {
                return new ResultReceiverWrapper(p);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public ResultReceiverWrapper[] newArray(int size) {
                return new ResultReceiverWrapper[size];
            }
        }

        public ResultReceiverWrapper(@NonNull ResultReceiver resultReceiver) {
            this.mResultReceiver = resultReceiver;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel dest, int flags) {
            this.mResultReceiver.writeToParcel(dest, flags);
        }

        public ResultReceiverWrapper(Parcel in) {
            this.mResultReceiver = (ResultReceiver) ResultReceiver.CREATOR.createFromParcel(in);
        }
    }

    public MediaSessionCompat(@NonNull Context context, @NonNull String tag, @Nullable ComponentName mbrComponent, @Nullable PendingIntent mbrIntent) {
        this(context, tag, mbrComponent, mbrIntent, null);
    }

    public void setCallback(Callback callback, Handler handler) {
        if (callback == null) {
            this.f288a.mo140c(null, null);
            return;
        }
        InterfaceC0061b interfaceC0061b = this.f288a;
        if (handler == null) {
            handler = new Handler();
        }
        interfaceC0061b.mo140c(callback, handler);
    }

    public MediaSessionCompat(@NonNull Context context, @NonNull String tag, @Nullable ComponentName mbrComponent, @Nullable PendingIntent mbrIntent, @Nullable Bundle sessionInfo) {
        this(context, tag, mbrComponent, mbrIntent, sessionInfo, null);
    }

    @SuppressLint({"WrongConstant"})
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public MediaSessionCompat(@NonNull Context context, @NonNull String tag, @Nullable ComponentName mbrComponent, @Nullable PendingIntent mbrIntent, @Nullable Bundle sessionInfo, @Nullable VersionedParcelable session2Token) {
        this.f290c = new ArrayList<>();
        if (context != null) {
            if (!TextUtils.isEmpty(tag)) {
                if (mbrComponent == null && (mbrComponent = MediaButtonReceiver.getMediaButtonReceiverComponent(context)) == null) {
                    Log.w(f281d, "Couldn't find a unique registered media button receiver in the given context.");
                }
                if (mbrComponent != null && mbrIntent == null) {
                    Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
                    intent.setComponent(mbrComponent);
                    mbrIntent = PendingIntent.getBroadcast(context, 0, intent, PENDING_INTENT_FLAG_MUTABLE);
                }
                C0067h c0067h = new C0067h(context, tag, session2Token, sessionInfo);
                this.f288a = c0067h;
                setCallback(new C0060a(), new Handler(Looper.myLooper() != null ? Looper.myLooper() : Looper.getMainLooper()));
                c0067h.mo152o(mbrIntent);
                this.f289b = new MediaControllerCompat(context, this);
                if (f287j == 0) {
                    f287j = (int) (TypedValue.applyDimension(1, 320.0f, context.getResources().getDisplayMetrics()) + 0.5f);
                    return;
                }
                return;
            }
            throw new IllegalArgumentException("tag must not be null or empty");
        }
        throw new IllegalArgumentException("context must not be null");
    }

    @RequiresApi(21)
    /* renamed from: android.support.v4.media.session.MediaSessionCompat$e */
    /* loaded from: classes3.dex */
    public static class C0064e implements InterfaceC0061b {

        /* renamed from: a */
        public final MediaSession f303a;

        /* renamed from: b */
        public final Token f304b;

        /* renamed from: d */
        public Bundle f306d;

        /* renamed from: g */
        public PlaybackStateCompat f309g;

        /* renamed from: h */
        public List<QueueItem> f310h;

        /* renamed from: i */
        public MediaMetadataCompat f311i;

        /* renamed from: j */
        public int f312j;

        /* renamed from: k */
        public boolean f313k;

        /* renamed from: l */
        public int f314l;

        /* renamed from: m */
        public int f315m;

        /* renamed from: n */
        @GuardedBy("mLock")
        public Callback f316n;

        /* renamed from: o */
        @GuardedBy("mLock")
        public MediaSessionManager.RemoteUserInfo f317o;

        /* renamed from: c */
        public final Object f305c = new Object();

        /* renamed from: e */
        public boolean f307e = false;

        /* renamed from: f */
        public final RemoteCallbackList<IMediaControllerCallback> f308f = new RemoteCallbackList<>();

        /* renamed from: android.support.v4.media.session.MediaSessionCompat$e$a */
        /* loaded from: classes3.dex */
        public class a extends IMediaSession.Stub {
            public a() {
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void addQueueItem(MediaDescriptionCompat descriptionCompat) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void addQueueItemAt(MediaDescriptionCompat descriptionCompat, int index) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void adjustVolume(int direction, int flags, String packageName) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void fastForward() throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public Bundle getExtras() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public long getFlags() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public PendingIntent getLaunchPendingIntent() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public MediaMetadataCompat getMetadata() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public String getPackageName() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public PlaybackStateCompat getPlaybackState() {
                C0064e c0064e = C0064e.this;
                return MediaSessionCompat.m122a(c0064e.f309g, c0064e.f311i);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public List<QueueItem> getQueue() {
                return null;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public CharSequence getQueueTitle() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public int getRatingType() {
                return C0064e.this.f312j;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public int getRepeatMode() {
                return C0064e.this.f314l;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public Bundle getSessionInfo() {
                if (C0064e.this.f306d == null) {
                    return null;
                }
                return new Bundle(C0064e.this.f306d);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public int getShuffleMode() {
                return C0064e.this.f315m;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public String getTag() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public ParcelableVolumeInfo getVolumeAttributes() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public boolean isCaptioningEnabled() {
                return C0064e.this.f313k;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public boolean isShuffleModeEnabledRemoved() {
                return false;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public boolean isTransportControlEnabled() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void next() throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void pause() throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void play() throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void playFromMediaId(String mediaId, Bundle extras) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void playFromSearch(String query, Bundle extras) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void playFromUri(Uri uri, Bundle extras) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void prepare() throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void prepareFromMediaId(String mediaId, Bundle extras) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void prepareFromSearch(String query, Bundle extras) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void prepareFromUri(Uri uri, Bundle extras) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void previous() throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void rate(RatingCompat rating) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void rateWithExtras(RatingCompat rating, Bundle extras) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void registerCallbackListener(IMediaControllerCallback cb) {
                if (C0064e.this.f307e) {
                    return;
                }
                C0064e.this.f308f.register(cb, new MediaSessionManager.RemoteUserInfo(MediaSessionManager.RemoteUserInfo.LEGACY_CONTROLLER, Binder.getCallingPid(), Binder.getCallingUid()));
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void removeQueueItem(MediaDescriptionCompat description) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void removeQueueItemAt(int index) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void rewind() throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void seekTo(long pos) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void sendCommand(String command, Bundle args, ResultReceiverWrapper cb) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void sendCustomAction(String action, Bundle args) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public boolean sendMediaButton(KeyEvent mediaButton) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void setCaptioningEnabled(boolean enabled) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void setPlaybackSpeed(float speed) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void setRepeatMode(int repeatMode) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void setShuffleMode(int shuffleMode) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void setShuffleModeEnabledRemoved(boolean enabled) throws RemoteException {
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void setVolumeTo(int value, int flags, String packageName) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void skipToQueueItem(long id) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void stop() throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void unregisterCallbackListener(IMediaControllerCallback cb) {
                C0064e.this.f308f.unregister(cb);
            }
        }

        public C0064e(Context context, String tag, VersionedParcelable session2Token, Bundle sessionInfo) {
            MediaSession mo162t = mo162t(context, tag, sessionInfo);
            this.f303a = mo162t;
            this.f304b = new Token(mo162t.getSessionToken(), new a(), session2Token);
            this.f306d = sessionInfo;
            setFlags(3);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.InterfaceC0061b
        /* renamed from: a */
        public Token mo138a() {
            return this.f304b;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.InterfaceC0061b
        /* renamed from: b */
        public void mo139b(String event, Bundle extras) {
            this.f303a.sendSessionEvent(event, extras);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.InterfaceC0061b
        /* renamed from: c */
        public void mo140c(Callback callback, Handler handler) {
            synchronized (this.f305c) {
                this.f316n = callback;
                this.f303a.setCallback(callback == null ? null : callback.f292b, handler);
                if (callback != null) {
                    callback.m124b(this, handler);
                }
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.InterfaceC0061b
        /* renamed from: d */
        public void mo141d(int type) {
            this.f312j = type;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.InterfaceC0061b
        /* renamed from: e */
        public void mo142e(PlaybackStateCompat state) {
            this.f309g = state;
            for (int beginBroadcast = this.f308f.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                try {
                    this.f308f.getBroadcastItem(beginBroadcast).onPlaybackStateChanged(state);
                } catch (RemoteException unused) {
                }
            }
            this.f308f.finishBroadcast();
            this.f303a.setPlaybackState(state == null ? null : (PlaybackState) state.getPlaybackState());
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.InterfaceC0061b
        /* renamed from: f */
        public void mo143f(int stream) {
            AudioAttributes.Builder builder = new AudioAttributes.Builder();
            builder.setLegacyStreamType(stream);
            this.f303a.setPlaybackToLocal(builder.build());
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.InterfaceC0061b
        /* renamed from: g */
        public void mo144g(boolean active) {
            this.f303a.setActive(active);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.InterfaceC0061b
        public PlaybackStateCompat getPlaybackState() {
            return this.f309g;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.InterfaceC0061b
        /* renamed from: h */
        public void mo145h(MediaSessionManager.RemoteUserInfo remoteUserInfo) {
            synchronized (this.f305c) {
                this.f317o = remoteUserInfo;
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.InterfaceC0061b
        /* renamed from: i */
        public void mo146i(VolumeProviderCompat volumeProvider) {
            this.f303a.setPlaybackToRemote((VolumeProvider) volumeProvider.getVolumeProvider());
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.InterfaceC0061b
        public boolean isActive() {
            return this.f303a.isActive();
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.InterfaceC0061b
        /* renamed from: j */
        public void mo147j(CharSequence title) {
            this.f303a.setQueueTitle(title);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.InterfaceC0061b
        /* renamed from: k */
        public void mo148k(List<QueueItem> queue) {
            this.f310h = queue;
            if (queue == null) {
                this.f303a.setQueue(null);
                return;
            }
            ArrayList arrayList = new ArrayList();
            Iterator<QueueItem> it2 = queue.iterator();
            while (it2.hasNext()) {
                arrayList.add((MediaSession.QueueItem) it2.next().getQueueItem());
            }
            this.f303a.setQueue(arrayList);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.InterfaceC0061b
        /* renamed from: l */
        public Object mo149l() {
            return this.f303a;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.InterfaceC0061b
        /* renamed from: m */
        public MediaSessionManager.RemoteUserInfo mo150m() {
            MediaSessionManager.RemoteUserInfo remoteUserInfo;
            synchronized (this.f305c) {
                remoteUserInfo = this.f317o;
            }
            return remoteUserInfo;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.InterfaceC0061b
        /* renamed from: n */
        public String mo151n() {
            try {
                return (String) this.f303a.getClass().getMethod("getCallingPackage", new Class[0]).invoke(this.f303a, new Object[0]);
            } catch (Exception e) {
                Log.e(MediaSessionCompat.f281d, "Cannot execute MediaSession.getCallingPackage()", e);
                return null;
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.InterfaceC0061b
        /* renamed from: o */
        public void mo152o(PendingIntent mbr) {
            this.f303a.setMediaButtonReceiver(mbr);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.InterfaceC0061b
        /* renamed from: p */
        public Object mo153p() {
            return null;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.InterfaceC0061b
        /* renamed from: q */
        public void mo154q(MediaMetadataCompat metadata) {
            this.f311i = metadata;
            this.f303a.setMetadata(metadata == null ? null : (MediaMetadata) metadata.getMediaMetadata());
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.InterfaceC0061b
        /* renamed from: r */
        public void mo155r(PendingIntent pi) {
            this.f303a.setSessionActivity(pi);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.InterfaceC0061b
        public void release() {
            this.f307e = true;
            this.f308f.kill();
            this.f303a.setCallback(null);
            this.f303a.release();
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.InterfaceC0061b
        /* renamed from: s */
        public Callback mo156s() {
            Callback callback;
            synchronized (this.f305c) {
                callback = this.f316n;
            }
            return callback;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.InterfaceC0061b
        public void setCaptioningEnabled(boolean enabled) {
            if (this.f313k != enabled) {
                this.f313k = enabled;
                for (int beginBroadcast = this.f308f.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                    try {
                        this.f308f.getBroadcastItem(beginBroadcast).onCaptioningEnabledChanged(enabled);
                    } catch (RemoteException unused) {
                    }
                }
                this.f308f.finishBroadcast();
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.InterfaceC0061b
        public void setExtras(Bundle extras) {
            this.f303a.setExtras(extras);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.InterfaceC0061b
        @SuppressLint({"WrongConstant"})
        public void setFlags(int flags) {
            this.f303a.setFlags(flags | 1 | 2);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.InterfaceC0061b
        public void setRepeatMode(int repeatMode) {
            if (this.f314l != repeatMode) {
                this.f314l = repeatMode;
                for (int beginBroadcast = this.f308f.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                    try {
                        this.f308f.getBroadcastItem(beginBroadcast).onRepeatModeChanged(repeatMode);
                    } catch (RemoteException unused) {
                    }
                }
                this.f308f.finishBroadcast();
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.InterfaceC0061b
        public void setShuffleMode(int shuffleMode) {
            if (this.f315m != shuffleMode) {
                this.f315m = shuffleMode;
                for (int beginBroadcast = this.f308f.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                    try {
                        this.f308f.getBroadcastItem(beginBroadcast).onShuffleModeChanged(shuffleMode);
                    } catch (RemoteException unused) {
                    }
                }
                this.f308f.finishBroadcast();
            }
        }

        /* renamed from: t */
        public MediaSession mo162t(Context context, String tag, Bundle sessionInfo) {
            return new MediaSession(context, tag);
        }

        public C0064e(Object mediaSession) {
            if (mediaSession instanceof MediaSession) {
                MediaSession mediaSession2 = (MediaSession) mediaSession;
                this.f303a = mediaSession2;
                this.f304b = new Token(mediaSession2.getSessionToken(), new a());
                this.f306d = null;
                setFlags(3);
                return;
            }
            throw new IllegalArgumentException("mediaSession is not a valid MediaSession object");
        }
    }

    public MediaSessionCompat(Context context, InterfaceC0061b impl) {
        this.f290c = new ArrayList<>();
        this.f288a = impl;
        this.f289b = new MediaControllerCompat(context, this);
    }
}
