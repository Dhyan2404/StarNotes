package android.support.v4.media.session;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.media.MediaMetadata;
import android.media.Rating;
import android.media.session.MediaController;
import android.media.session.MediaSession;
import android.media.session.PlaybackState;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.RatingCompat;
import android.support.v4.media.session.IMediaControllerCallback;
import android.support.v4.media.session.IMediaSession;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.app.BundleCompat;
import androidx.media.AudioAttributesCompat;
import androidx.media.C1205R;
import androidx.versionedparcelable.ParcelUtils;
import androidx.versionedparcelable.VersionedParcelable;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes3.dex */
public final class MediaControllerCompat {

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final String COMMAND_ADD_QUEUE_ITEM = "android.support.v4.media.session.command.ADD_QUEUE_ITEM";

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final String COMMAND_ADD_QUEUE_ITEM_AT = "android.support.v4.media.session.command.ADD_QUEUE_ITEM_AT";

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final String COMMAND_ARGUMENT_INDEX = "android.support.v4.media.session.command.ARGUMENT_INDEX";

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final String COMMAND_ARGUMENT_MEDIA_DESCRIPTION = "android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION";

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final String COMMAND_GET_EXTRA_BINDER = "android.support.v4.media.session.command.GET_EXTRA_BINDER";

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final String COMMAND_REMOVE_QUEUE_ITEM = "android.support.v4.media.session.command.REMOVE_QUEUE_ITEM";

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final String COMMAND_REMOVE_QUEUE_ITEM_AT = "android.support.v4.media.session.command.REMOVE_QUEUE_ITEM_AT";

    /* renamed from: d */
    public static final String f242d = "MediaControllerCompat";

    /* renamed from: a */
    public final InterfaceC0046a f243a;

    /* renamed from: b */
    public final MediaSessionCompat.Token f244b;

    /* renamed from: c */
    @SuppressLint({"BanConcurrentHashMap"})
    public final ConcurrentHashMap<Callback, Boolean> f245c = new ConcurrentHashMap<>();

    /* loaded from: classes3.dex */
    public static abstract class Callback implements IBinder.DeathRecipient {

        /* renamed from: a */
        public final MediaController.Callback f246a = new C0042a(this);

        /* renamed from: b */
        public HandlerC0043b f247b;

        /* renamed from: c */
        public IMediaControllerCallback f248c;

        @RequiresApi(21)
        /* renamed from: android.support.v4.media.session.MediaControllerCompat$Callback$a */
        /* loaded from: classes3.dex */
        public static class C0042a extends MediaController.Callback {

            /* renamed from: a */
            public final WeakReference<Callback> f249a;

            public C0042a(Callback callback) {
                this.f249a = new WeakReference<>(callback);
            }

            @Override // android.media.session.MediaController.Callback
            public void onAudioInfoChanged(MediaController.PlaybackInfo info) {
                Callback callback = this.f249a.get();
                if (callback != null) {
                    callback.onAudioInfoChanged(new PlaybackInfo(info.getPlaybackType(), AudioAttributesCompat.wrap(info.getAudioAttributes()), info.getVolumeControl(), info.getMaxVolume(), info.getCurrentVolume()));
                }
            }

            @Override // android.media.session.MediaController.Callback
            public void onExtrasChanged(Bundle extras) {
                MediaSessionCompat.ensureClassLoader(extras);
                Callback callback = this.f249a.get();
                if (callback != null) {
                    callback.onExtrasChanged(extras);
                }
            }

            @Override // android.media.session.MediaController.Callback
            public void onMetadataChanged(MediaMetadata metadataObj) {
                Callback callback = this.f249a.get();
                if (callback != null) {
                    callback.onMetadataChanged(MediaMetadataCompat.fromMediaMetadata(metadataObj));
                }
            }

            @Override // android.media.session.MediaController.Callback
            public void onPlaybackStateChanged(PlaybackState stateObj) {
                Callback callback = this.f249a.get();
                if (callback == null || callback.f248c != null) {
                    return;
                }
                callback.onPlaybackStateChanged(PlaybackStateCompat.fromPlaybackState(stateObj));
            }

            @Override // android.media.session.MediaController.Callback
            public void onQueueChanged(List<MediaSession.QueueItem> queue) {
                Callback callback = this.f249a.get();
                if (callback != null) {
                    callback.onQueueChanged(MediaSessionCompat.QueueItem.fromQueueItemList(queue));
                }
            }

            @Override // android.media.session.MediaController.Callback
            public void onQueueTitleChanged(CharSequence title) {
                Callback callback = this.f249a.get();
                if (callback != null) {
                    callback.onQueueTitleChanged(title);
                }
            }

            @Override // android.media.session.MediaController.Callback
            public void onSessionDestroyed() {
                Callback callback = this.f249a.get();
                if (callback != null) {
                    callback.onSessionDestroyed();
                }
            }

            @Override // android.media.session.MediaController.Callback
            public void onSessionEvent(String event, Bundle extras) {
                MediaSessionCompat.ensureClassLoader(extras);
                Callback callback = this.f249a.get();
                if (callback != null) {
                    IMediaControllerCallback iMediaControllerCallback = callback.f248c;
                    callback.onSessionEvent(event, extras);
                }
            }
        }

        /* renamed from: android.support.v4.media.session.MediaControllerCompat$Callback$b */
        /* loaded from: classes3.dex */
        public class HandlerC0043b extends Handler {

            /* renamed from: c */
            public static final int f250c = 1;

            /* renamed from: d */
            public static final int f251d = 2;

            /* renamed from: e */
            public static final int f252e = 3;

            /* renamed from: f */
            public static final int f253f = 4;

            /* renamed from: g */
            public static final int f254g = 5;

            /* renamed from: h */
            public static final int f255h = 6;

            /* renamed from: i */
            public static final int f256i = 7;

            /* renamed from: j */
            public static final int f257j = 8;

            /* renamed from: k */
            public static final int f258k = 9;

            /* renamed from: l */
            public static final int f259l = 11;

            /* renamed from: m */
            public static final int f260m = 12;

            /* renamed from: n */
            public static final int f261n = 13;

            /* renamed from: a */
            public boolean f262a;

            public HandlerC0043b(Looper looper) {
                super(looper);
                this.f262a = false;
            }

            @Override // android.os.Handler
            public void handleMessage(Message msg) {
                if (this.f262a) {
                    switch (msg.what) {
                        case 1:
                            Bundle data = msg.getData();
                            MediaSessionCompat.ensureClassLoader(data);
                            Callback.this.onSessionEvent((String) msg.obj, data);
                            return;
                        case 2:
                            Callback.this.onPlaybackStateChanged((PlaybackStateCompat) msg.obj);
                            return;
                        case 3:
                            Callback.this.onMetadataChanged((MediaMetadataCompat) msg.obj);
                            return;
                        case 4:
                            Callback.this.onAudioInfoChanged((PlaybackInfo) msg.obj);
                            return;
                        case 5:
                            Callback.this.onQueueChanged((List) msg.obj);
                            return;
                        case 6:
                            Callback.this.onQueueTitleChanged((CharSequence) msg.obj);
                            return;
                        case 7:
                            Bundle bundle = (Bundle) msg.obj;
                            MediaSessionCompat.ensureClassLoader(bundle);
                            Callback.this.onExtrasChanged(bundle);
                            return;
                        case 8:
                            Callback.this.onSessionDestroyed();
                            return;
                        case 9:
                            Callback.this.onRepeatModeChanged(((Integer) msg.obj).intValue());
                            return;
                        case 10:
                        default:
                            return;
                        case 11:
                            Callback.this.onCaptioningEnabledChanged(((Boolean) msg.obj).booleanValue());
                            return;
                        case 12:
                            Callback.this.onShuffleModeChanged(((Integer) msg.obj).intValue());
                            return;
                        case 13:
                            Callback.this.onSessionReady();
                            return;
                    }
                }
            }
        }

        /* renamed from: android.support.v4.media.session.MediaControllerCompat$Callback$c */
        /* loaded from: classes3.dex */
        public static class BinderC0044c extends IMediaControllerCallback.Stub {

            /* renamed from: o */
            public final WeakReference<Callback> f264o;

            public BinderC0044c(Callback callback) {
                this.f264o = new WeakReference<>(callback);
            }

            @Override // android.support.v4.media.session.IMediaControllerCallback
            public void onCaptioningEnabledChanged(boolean enabled) throws RemoteException {
                Callback callback = this.f264o.get();
                if (callback != null) {
                    callback.m104a(11, Boolean.valueOf(enabled), null);
                }
            }

            @Override // android.support.v4.media.session.IMediaControllerCallback
            public void onEvent(String event, Bundle extras) throws RemoteException {
                Callback callback = this.f264o.get();
                if (callback != null) {
                    callback.m104a(1, event, extras);
                }
            }

            @Override // android.support.v4.media.session.IMediaControllerCallback
            public void onExtrasChanged(Bundle extras) throws RemoteException {
                Callback callback = this.f264o.get();
                if (callback != null) {
                    callback.m104a(7, extras, null);
                }
            }

            @Override // android.support.v4.media.session.IMediaControllerCallback
            public void onMetadataChanged(MediaMetadataCompat metadata) throws RemoteException {
                Callback callback = this.f264o.get();
                if (callback != null) {
                    callback.m104a(3, metadata, null);
                }
            }

            @Override // android.support.v4.media.session.IMediaControllerCallback
            public void onPlaybackStateChanged(PlaybackStateCompat state) throws RemoteException {
                Callback callback = this.f264o.get();
                if (callback != null) {
                    callback.m104a(2, state, null);
                }
            }

            @Override // android.support.v4.media.session.IMediaControllerCallback
            public void onQueueChanged(List<MediaSessionCompat.QueueItem> queue) throws RemoteException {
                Callback callback = this.f264o.get();
                if (callback != null) {
                    callback.m104a(5, queue, null);
                }
            }

            @Override // android.support.v4.media.session.IMediaControllerCallback
            public void onQueueTitleChanged(CharSequence title) throws RemoteException {
                Callback callback = this.f264o.get();
                if (callback != null) {
                    callback.m104a(6, title, null);
                }
            }

            @Override // android.support.v4.media.session.IMediaControllerCallback
            public void onRepeatModeChanged(int repeatMode) throws RemoteException {
                Callback callback = this.f264o.get();
                if (callback != null) {
                    callback.m104a(9, Integer.valueOf(repeatMode), null);
                }
            }

            @Override // android.support.v4.media.session.IMediaControllerCallback
            public void onSessionDestroyed() throws RemoteException {
                Callback callback = this.f264o.get();
                if (callback != null) {
                    callback.m104a(8, null, null);
                }
            }

            @Override // android.support.v4.media.session.IMediaControllerCallback
            public void onSessionReady() throws RemoteException {
                Callback callback = this.f264o.get();
                if (callback != null) {
                    callback.m104a(13, null, null);
                }
            }

            @Override // android.support.v4.media.session.IMediaControllerCallback
            public void onShuffleModeChanged(int shuffleMode) throws RemoteException {
                Callback callback = this.f264o.get();
                if (callback != null) {
                    callback.m104a(12, Integer.valueOf(shuffleMode), null);
                }
            }

            @Override // android.support.v4.media.session.IMediaControllerCallback
            public void onShuffleModeChangedRemoved(boolean enabled) throws RemoteException {
            }

            @Override // android.support.v4.media.session.IMediaControllerCallback
            public void onVolumeInfoChanged(ParcelableVolumeInfo info) throws RemoteException {
                Callback callback = this.f264o.get();
                if (callback != null) {
                    callback.m104a(4, info != null ? new PlaybackInfo(info.volumeType, info.audioStream, info.controlType, info.maxVolume, info.currentVolume) : null, null);
                }
            }
        }

        /* renamed from: a */
        public void m104a(int what, Object obj, Bundle data) {
            HandlerC0043b handlerC0043b = this.f247b;
            if (handlerC0043b != null) {
                Message obtainMessage = handlerC0043b.obtainMessage(what, obj);
                obtainMessage.setData(data);
                obtainMessage.sendToTarget();
            }
        }

        /* renamed from: b */
        public void m105b(Handler handler) {
            if (handler != null) {
                HandlerC0043b handlerC0043b = new HandlerC0043b(handler.getLooper());
                this.f247b = handlerC0043b;
                handlerC0043b.f262a = true;
            } else {
                HandlerC0043b handlerC0043b2 = this.f247b;
                if (handlerC0043b2 != null) {
                    handlerC0043b2.f262a = false;
                    handlerC0043b2.removeCallbacksAndMessages(null);
                    this.f247b = null;
                }
            }
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            m104a(8, null, null);
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public IMediaControllerCallback getIControllerCallback() {
            return this.f248c;
        }

        public void onAudioInfoChanged(PlaybackInfo info) {
        }

        public void onCaptioningEnabledChanged(boolean enabled) {
        }

        public void onExtrasChanged(Bundle extras) {
        }

        public void onMetadataChanged(MediaMetadataCompat metadata) {
        }

        public void onPlaybackStateChanged(PlaybackStateCompat state) {
        }

        public void onQueueChanged(List<MediaSessionCompat.QueueItem> queue) {
        }

        public void onQueueTitleChanged(CharSequence title) {
        }

        public void onRepeatModeChanged(int repeatMode) {
        }

        public void onSessionDestroyed() {
        }

        public void onSessionEvent(String event, Bundle extras) {
        }

        public void onSessionReady() {
        }

        public void onShuffleModeChanged(int shuffleMode) {
        }
    }

    @RequiresApi(21)
    /* loaded from: classes3.dex */
    public static class MediaControllerImplApi21 implements InterfaceC0046a {

        /* renamed from: a */
        public final MediaController f265a;

        /* renamed from: b */
        public final Object f266b = new Object();

        /* renamed from: c */
        @GuardedBy("mLock")
        public final List<Callback> f267c = new ArrayList();

        /* renamed from: d */
        public HashMap<Callback, BinderC0045a> f268d = new HashMap<>();

        /* renamed from: e */
        public Bundle f269e;

        /* renamed from: f */
        public final MediaSessionCompat.Token f270f;

        /* loaded from: classes3.dex */
        public static class ExtraBinderRequestResultReceiver extends ResultReceiver {
            private WeakReference<MediaControllerImplApi21> mMediaControllerImpl;

            public ExtraBinderRequestResultReceiver(MediaControllerImplApi21 mediaControllerImpl) {
                super(null);
                this.mMediaControllerImpl = new WeakReference<>(mediaControllerImpl);
            }

            @Override // android.os.ResultReceiver
            public void onReceiveResult(int resultCode, Bundle resultData) {
                MediaControllerImplApi21 mediaControllerImplApi21 = this.mMediaControllerImpl.get();
                if (mediaControllerImplApi21 == null || resultData == null) {
                    return;
                }
                synchronized (mediaControllerImplApi21.f266b) {
                    mediaControllerImplApi21.f270f.setExtraBinder(IMediaSession.Stub.asInterface(BundleCompat.getBinder(resultData, MediaSessionCompat.KEY_EXTRA_BINDER)));
                    mediaControllerImplApi21.f270f.setSession2Token(ParcelUtils.getVersionedParcelable(resultData, MediaSessionCompat.KEY_SESSION2_TOKEN));
                    mediaControllerImplApi21.m120n();
                }
            }
        }

        /* renamed from: android.support.v4.media.session.MediaControllerCompat$MediaControllerImplApi21$a */
        /* loaded from: classes3.dex */
        public static class BinderC0045a extends Callback.BinderC0044c {
            public BinderC0045a(Callback callback) {
                super(callback);
            }

            @Override // android.support.v4.media.session.MediaControllerCompat.Callback.BinderC0044c, android.support.v4.media.session.IMediaControllerCallback
            public void onExtrasChanged(Bundle extras) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.MediaControllerCompat.Callback.BinderC0044c, android.support.v4.media.session.IMediaControllerCallback
            public void onMetadataChanged(MediaMetadataCompat metadata) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.MediaControllerCompat.Callback.BinderC0044c, android.support.v4.media.session.IMediaControllerCallback
            public void onQueueChanged(List<MediaSessionCompat.QueueItem> queue) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.MediaControllerCompat.Callback.BinderC0044c, android.support.v4.media.session.IMediaControllerCallback
            public void onQueueTitleChanged(CharSequence title) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.MediaControllerCompat.Callback.BinderC0044c, android.support.v4.media.session.IMediaControllerCallback
            public void onSessionDestroyed() throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.MediaControllerCompat.Callback.BinderC0044c, android.support.v4.media.session.IMediaControllerCallback
            public void onVolumeInfoChanged(ParcelableVolumeInfo info) throws RemoteException {
                throw new AssertionError();
            }
        }

        public MediaControllerImplApi21(Context context, MediaSessionCompat.Token sessionToken) {
            this.f270f = sessionToken;
            this.f265a = new MediaController(context, (MediaSession.Token) sessionToken.getToken());
            if (sessionToken.getExtraBinder() == null) {
                m121o();
            }
        }

        @Nullable
        /* renamed from: m */
        public static MediaControllerCompat m106m(@NonNull Activity activity) {
            MediaController mediaController = activity.getMediaController();
            if (mediaController == null) {
                return null;
            }
            return new MediaControllerCompat(activity, MediaSessionCompat.Token.fromToken(mediaController.getSessionToken()));
        }

        /* renamed from: p */
        public static void m107p(@NonNull Activity activity, @Nullable MediaControllerCompat mediaControllerCompat) {
            activity.setMediaController(mediaControllerCompat != null ? new MediaController(activity, (MediaSession.Token) mediaControllerCompat.getSessionToken().getToken()) : null);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.InterfaceC0046a
        /* renamed from: a */
        public void mo108a(MediaDescriptionCompat description, int index) {
            if ((getFlags() & 4) == 0) {
                throw new UnsupportedOperationException("This session doesn't support queue management operations");
            }
            Bundle bundle = new Bundle();
            bundle.putParcelable(MediaControllerCompat.COMMAND_ARGUMENT_MEDIA_DESCRIPTION, description);
            bundle.putInt(MediaControllerCompat.COMMAND_ARGUMENT_INDEX, index);
            mo115h(MediaControllerCompat.COMMAND_ADD_QUEUE_ITEM_AT, bundle, null);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.InterfaceC0046a
        public void addQueueItem(MediaDescriptionCompat description) {
            if ((getFlags() & 4) == 0) {
                throw new UnsupportedOperationException("This session doesn't support queue management operations");
            }
            Bundle bundle = new Bundle();
            bundle.putParcelable(MediaControllerCompat.COMMAND_ARGUMENT_MEDIA_DESCRIPTION, description);
            mo115h(MediaControllerCompat.COMMAND_ADD_QUEUE_ITEM, bundle, null);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.InterfaceC0046a
        /* renamed from: b */
        public PendingIntent mo109b() {
            return this.f265a.getSessionActivity();
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.InterfaceC0046a
        /* renamed from: c */
        public boolean mo110c() {
            return this.f270f.getExtraBinder() != null;
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.InterfaceC0046a
        /* renamed from: d */
        public TransportControls mo111d() {
            return new C0052g(this.f265a.getTransportControls());
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.InterfaceC0046a
        /* renamed from: e */
        public boolean mo112e(KeyEvent event) {
            return this.f265a.dispatchMediaButtonEvent(event);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.InterfaceC0046a
        /* renamed from: f */
        public final void mo113f(Callback callback, Handler handler) {
            this.f265a.registerCallback(callback.f246a, handler);
            synchronized (this.f266b) {
                if (this.f270f.getExtraBinder() != null) {
                    BinderC0045a binderC0045a = new BinderC0045a(callback);
                    this.f268d.put(callback, binderC0045a);
                    callback.f248c = binderC0045a;
                    try {
                        this.f270f.getExtraBinder().registerCallbackListener(binderC0045a);
                        callback.m104a(13, null, null);
                    } catch (RemoteException e) {
                        Log.e(MediaControllerCompat.f242d, "Dead object in registerCallback.", e);
                    }
                } else {
                    callback.f248c = null;
                    this.f267c.add(callback);
                }
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.InterfaceC0046a
        /* renamed from: g */
        public final void mo114g(Callback callback) {
            this.f265a.unregisterCallback(callback.f246a);
            synchronized (this.f266b) {
                if (this.f270f.getExtraBinder() != null) {
                    try {
                        BinderC0045a remove = this.f268d.remove(callback);
                        if (remove != null) {
                            callback.f248c = null;
                            this.f270f.getExtraBinder().unregisterCallbackListener(remove);
                        }
                    } catch (RemoteException e) {
                        Log.e(MediaControllerCompat.f242d, "Dead object in unregisterCallback.", e);
                    }
                } else {
                    this.f267c.remove(callback);
                }
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.InterfaceC0046a
        public Bundle getExtras() {
            return this.f265a.getExtras();
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.InterfaceC0046a
        public long getFlags() {
            return this.f265a.getFlags();
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.InterfaceC0046a
        public MediaMetadataCompat getMetadata() {
            MediaMetadata metadata = this.f265a.getMetadata();
            if (metadata != null) {
                return MediaMetadataCompat.fromMediaMetadata(metadata);
            }
            return null;
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.InterfaceC0046a
        public String getPackageName() {
            return this.f265a.getPackageName();
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.InterfaceC0046a
        public PlaybackStateCompat getPlaybackState() {
            if (this.f270f.getExtraBinder() != null) {
                try {
                    return this.f270f.getExtraBinder().getPlaybackState();
                } catch (RemoteException e) {
                    Log.e(MediaControllerCompat.f242d, "Dead object in getPlaybackState.", e);
                }
            }
            PlaybackState playbackState = this.f265a.getPlaybackState();
            if (playbackState != null) {
                return PlaybackStateCompat.fromPlaybackState(playbackState);
            }
            return null;
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.InterfaceC0046a
        public List<MediaSessionCompat.QueueItem> getQueue() {
            List<MediaSession.QueueItem> queue = this.f265a.getQueue();
            if (queue != null) {
                return MediaSessionCompat.QueueItem.fromQueueItemList(queue);
            }
            return null;
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.InterfaceC0046a
        public CharSequence getQueueTitle() {
            return this.f265a.getQueueTitle();
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.InterfaceC0046a
        public int getRatingType() {
            return this.f265a.getRatingType();
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.InterfaceC0046a
        public int getRepeatMode() {
            if (this.f270f.getExtraBinder() == null) {
                return -1;
            }
            try {
                return this.f270f.getExtraBinder().getRepeatMode();
            } catch (RemoteException e) {
                Log.e(MediaControllerCompat.f242d, "Dead object in getRepeatMode.", e);
                return -1;
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.InterfaceC0046a
        public Bundle getSessionInfo() {
            if (this.f269e != null) {
                return new Bundle(this.f269e);
            }
            if (this.f270f.getExtraBinder() != null) {
                try {
                    this.f269e = this.f270f.getExtraBinder().getSessionInfo();
                } catch (RemoteException e) {
                    Log.e(MediaControllerCompat.f242d, "Dead object in getSessionInfo.", e);
                    this.f269e = Bundle.EMPTY;
                }
            }
            Bundle unparcelWithClassLoader = MediaSessionCompat.unparcelWithClassLoader(this.f269e);
            this.f269e = unparcelWithClassLoader;
            return unparcelWithClassLoader == null ? Bundle.EMPTY : new Bundle(this.f269e);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.InterfaceC0046a
        public int getShuffleMode() {
            if (this.f270f.getExtraBinder() == null) {
                return -1;
            }
            try {
                return this.f270f.getExtraBinder().getShuffleMode();
            } catch (RemoteException e) {
                Log.e(MediaControllerCompat.f242d, "Dead object in getShuffleMode.", e);
                return -1;
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.InterfaceC0046a
        /* renamed from: h */
        public void mo115h(String command, Bundle params, ResultReceiver cb) {
            this.f265a.sendCommand(command, params, cb);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.InterfaceC0046a
        /* renamed from: i */
        public void mo116i(int value, int flags) {
            this.f265a.setVolumeTo(value, flags);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.InterfaceC0046a
        public boolean isCaptioningEnabled() {
            if (this.f270f.getExtraBinder() == null) {
                return false;
            }
            try {
                return this.f270f.getExtraBinder().isCaptioningEnabled();
            } catch (RemoteException e) {
                Log.e(MediaControllerCompat.f242d, "Dead object in isCaptioningEnabled.", e);
                return false;
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.InterfaceC0046a
        /* renamed from: j */
        public PlaybackInfo mo117j() {
            MediaController.PlaybackInfo playbackInfo = this.f265a.getPlaybackInfo();
            if (playbackInfo != null) {
                return new PlaybackInfo(playbackInfo.getPlaybackType(), AudioAttributesCompat.wrap(playbackInfo.getAudioAttributes()), playbackInfo.getVolumeControl(), playbackInfo.getMaxVolume(), playbackInfo.getCurrentVolume());
            }
            return null;
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.InterfaceC0046a
        /* renamed from: k */
        public void mo118k(int direction, int flags) {
            this.f265a.adjustVolume(direction, flags);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.InterfaceC0046a
        /* renamed from: l */
        public Object mo119l() {
            return this.f265a;
        }

        @GuardedBy("mLock")
        /* renamed from: n */
        public void m120n() {
            if (this.f270f.getExtraBinder() == null) {
                return;
            }
            for (Callback callback : this.f267c) {
                BinderC0045a binderC0045a = new BinderC0045a(callback);
                this.f268d.put(callback, binderC0045a);
                callback.f248c = binderC0045a;
                try {
                    this.f270f.getExtraBinder().registerCallbackListener(binderC0045a);
                    callback.m104a(13, null, null);
                } catch (RemoteException e) {
                    Log.e(MediaControllerCompat.f242d, "Dead object in registerCallback.", e);
                }
            }
            this.f267c.clear();
        }

        /* renamed from: o */
        public final void m121o() {
            mo115h(MediaControllerCompat.COMMAND_GET_EXTRA_BINDER, null, new ExtraBinderRequestResultReceiver(this));
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.InterfaceC0046a
        public void removeQueueItem(MediaDescriptionCompat description) {
            if ((getFlags() & 4) == 0) {
                throw new UnsupportedOperationException("This session doesn't support queue management operations");
            }
            Bundle bundle = new Bundle();
            bundle.putParcelable(MediaControllerCompat.COMMAND_ARGUMENT_MEDIA_DESCRIPTION, description);
            mo115h(MediaControllerCompat.COMMAND_REMOVE_QUEUE_ITEM, bundle, null);
        }
    }

    /* loaded from: classes3.dex */
    public static final class PlaybackInfo {
        public static final int PLAYBACK_TYPE_LOCAL = 1;
        public static final int PLAYBACK_TYPE_REMOTE = 2;

        /* renamed from: a */
        public final int f271a;

        /* renamed from: b */
        public final AudioAttributesCompat f272b;

        /* renamed from: c */
        public final int f273c;

        /* renamed from: d */
        public final int f274d;

        /* renamed from: e */
        public final int f275e;

        public PlaybackInfo(int type, int stream, int control, int max, int current) {
            this(type, new AudioAttributesCompat.Builder().setLegacyStreamType(stream).build(), control, max, current);
        }

        @NonNull
        public AudioAttributesCompat getAudioAttributes() {
            return this.f272b;
        }

        @Deprecated
        public int getAudioStream() {
            return this.f272b.getLegacyStreamType();
        }

        public int getCurrentVolume() {
            return this.f275e;
        }

        public int getMaxVolume() {
            return this.f274d;
        }

        public int getPlaybackType() {
            return this.f271a;
        }

        public int getVolumeControl() {
            return this.f273c;
        }

        public PlaybackInfo(int type, @NonNull AudioAttributesCompat attrsCompat, int control, int max, int current) {
            this.f271a = type;
            this.f272b = attrsCompat;
            this.f273c = control;
            this.f274d = max;
            this.f275e = current;
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class TransportControls {

        @Deprecated
        public static final String EXTRA_LEGACY_STREAM_TYPE = "android.media.session.extra.LEGACY_STREAM_TYPE";

        public abstract void fastForward();

        public abstract void pause();

        public abstract void play();

        public abstract void playFromMediaId(String mediaId, Bundle extras);

        public abstract void playFromSearch(String query, Bundle extras);

        public abstract void playFromUri(Uri uri, Bundle extras);

        public abstract void prepare();

        public abstract void prepareFromMediaId(String mediaId, Bundle extras);

        public abstract void prepareFromSearch(String query, Bundle extras);

        public abstract void prepareFromUri(Uri uri, Bundle extras);

        public abstract void rewind();

        public abstract void seekTo(long pos);

        public abstract void sendCustomAction(PlaybackStateCompat.CustomAction customAction, Bundle args);

        public abstract void sendCustomAction(String action, Bundle args);

        public abstract void setCaptioningEnabled(boolean enabled);

        public void setPlaybackSpeed(float speed) {
        }

        public abstract void setRating(RatingCompat rating);

        public abstract void setRating(RatingCompat rating, Bundle extras);

        public abstract void setRepeatMode(int repeatMode);

        public abstract void setShuffleMode(int shuffleMode);

        public abstract void skipToNext();

        public abstract void skipToPrevious();

        public abstract void skipToQueueItem(long id);

        public abstract void stop();
    }

    /* renamed from: android.support.v4.media.session.MediaControllerCompat$a */
    /* loaded from: classes3.dex */
    public interface InterfaceC0046a {
        /* renamed from: a */
        void mo108a(MediaDescriptionCompat description, int index);

        void addQueueItem(MediaDescriptionCompat description);

        /* renamed from: b */
        PendingIntent mo109b();

        /* renamed from: c */
        boolean mo110c();

        /* renamed from: d */
        TransportControls mo111d();

        /* renamed from: e */
        boolean mo112e(KeyEvent keyEvent);

        /* renamed from: f */
        void mo113f(Callback callback, Handler handler);

        /* renamed from: g */
        void mo114g(Callback callback);

        Bundle getExtras();

        long getFlags();

        MediaMetadataCompat getMetadata();

        String getPackageName();

        PlaybackStateCompat getPlaybackState();

        List<MediaSessionCompat.QueueItem> getQueue();

        CharSequence getQueueTitle();

        int getRatingType();

        int getRepeatMode();

        Bundle getSessionInfo();

        int getShuffleMode();

        /* renamed from: h */
        void mo115h(String command, Bundle params, ResultReceiver cb);

        /* renamed from: i */
        void mo116i(int value, int flags);

        boolean isCaptioningEnabled();

        /* renamed from: j */
        PlaybackInfo mo117j();

        /* renamed from: k */
        void mo118k(int direction, int flags);

        /* renamed from: l */
        Object mo119l();

        void removeQueueItem(MediaDescriptionCompat description);
    }

    @RequiresApi(29)
    /* renamed from: android.support.v4.media.session.MediaControllerCompat$b */
    /* loaded from: classes3.dex */
    public static class C0047b extends MediaControllerImplApi21 {
        public C0047b(Context context, MediaSessionCompat.Token sessionToken) {
            super(context, sessionToken);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.MediaControllerImplApi21, android.support.v4.media.session.MediaControllerCompat.InterfaceC0046a
        public Bundle getSessionInfo() {
            if (this.f269e != null) {
                return new Bundle(this.f269e);
            }
            Bundle sessionInfo = this.f265a.getSessionInfo();
            this.f269e = sessionInfo;
            Bundle unparcelWithClassLoader = MediaSessionCompat.unparcelWithClassLoader(sessionInfo);
            this.f269e = unparcelWithClassLoader;
            return unparcelWithClassLoader == null ? Bundle.EMPTY : new Bundle(this.f269e);
        }
    }

    /* renamed from: android.support.v4.media.session.MediaControllerCompat$c */
    /* loaded from: classes3.dex */
    public static class C0048c implements InterfaceC0046a {

        /* renamed from: a */
        public IMediaSession f276a;

        /* renamed from: b */
        public TransportControls f277b;

        /* renamed from: c */
        public Bundle f278c;

        public C0048c(MediaSessionCompat.Token token) {
            this.f276a = IMediaSession.Stub.asInterface((IBinder) token.getToken());
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.InterfaceC0046a
        /* renamed from: a */
        public void mo108a(MediaDescriptionCompat description, int index) {
            try {
                if ((this.f276a.getFlags() & 4) == 0) {
                    throw new UnsupportedOperationException("This session doesn't support queue management operations");
                }
                this.f276a.addQueueItemAt(description, index);
            } catch (RemoteException e) {
                Log.e(MediaControllerCompat.f242d, "Dead object in addQueueItemAt.", e);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.InterfaceC0046a
        public void addQueueItem(MediaDescriptionCompat description) {
            try {
                if ((this.f276a.getFlags() & 4) == 0) {
                    throw new UnsupportedOperationException("This session doesn't support queue management operations");
                }
                this.f276a.addQueueItem(description);
            } catch (RemoteException e) {
                Log.e(MediaControllerCompat.f242d, "Dead object in addQueueItem.", e);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.InterfaceC0046a
        /* renamed from: b */
        public PendingIntent mo109b() {
            try {
                return this.f276a.getLaunchPendingIntent();
            } catch (RemoteException e) {
                Log.e(MediaControllerCompat.f242d, "Dead object in getSessionActivity.", e);
                return null;
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.InterfaceC0046a
        /* renamed from: c */
        public boolean mo110c() {
            return true;
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.InterfaceC0046a
        /* renamed from: d */
        public TransportControls mo111d() {
            if (this.f277b == null) {
                this.f277b = new C0053h(this.f276a);
            }
            return this.f277b;
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.InterfaceC0046a
        /* renamed from: e */
        public boolean mo112e(KeyEvent event) {
            if (event == null) {
                throw new IllegalArgumentException("event may not be null.");
            }
            try {
                this.f276a.sendMediaButton(event);
                return false;
            } catch (RemoteException e) {
                Log.e(MediaControllerCompat.f242d, "Dead object in dispatchMediaButtonEvent.", e);
                return false;
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.InterfaceC0046a
        /* renamed from: f */
        public void mo113f(Callback callback, Handler handler) {
            if (callback == null) {
                throw new IllegalArgumentException("callback may not be null.");
            }
            try {
                this.f276a.asBinder().linkToDeath(callback, 0);
                this.f276a.registerCallbackListener(callback.f248c);
                callback.m104a(13, null, null);
            } catch (RemoteException e) {
                Log.e(MediaControllerCompat.f242d, "Dead object in registerCallback.", e);
                callback.m104a(8, null, null);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.InterfaceC0046a
        /* renamed from: g */
        public void mo114g(Callback callback) {
            if (callback == null) {
                throw new IllegalArgumentException("callback may not be null.");
            }
            try {
                this.f276a.unregisterCallbackListener(callback.f248c);
                this.f276a.asBinder().unlinkToDeath(callback, 0);
            } catch (RemoteException e) {
                Log.e(MediaControllerCompat.f242d, "Dead object in unregisterCallback.", e);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.InterfaceC0046a
        public Bundle getExtras() {
            try {
                return this.f276a.getExtras();
            } catch (RemoteException e) {
                Log.e(MediaControllerCompat.f242d, "Dead object in getExtras.", e);
                return null;
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.InterfaceC0046a
        public long getFlags() {
            try {
                return this.f276a.getFlags();
            } catch (RemoteException e) {
                Log.e(MediaControllerCompat.f242d, "Dead object in getFlags.", e);
                return 0L;
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.InterfaceC0046a
        public MediaMetadataCompat getMetadata() {
            try {
                return this.f276a.getMetadata();
            } catch (RemoteException e) {
                Log.e(MediaControllerCompat.f242d, "Dead object in getMetadata.", e);
                return null;
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.InterfaceC0046a
        public String getPackageName() {
            try {
                return this.f276a.getPackageName();
            } catch (RemoteException e) {
                Log.e(MediaControllerCompat.f242d, "Dead object in getPackageName.", e);
                return null;
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.InterfaceC0046a
        public PlaybackStateCompat getPlaybackState() {
            try {
                return this.f276a.getPlaybackState();
            } catch (RemoteException e) {
                Log.e(MediaControllerCompat.f242d, "Dead object in getPlaybackState.", e);
                return null;
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.InterfaceC0046a
        public List<MediaSessionCompat.QueueItem> getQueue() {
            try {
                return this.f276a.getQueue();
            } catch (RemoteException e) {
                Log.e(MediaControllerCompat.f242d, "Dead object in getQueue.", e);
                return null;
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.InterfaceC0046a
        public CharSequence getQueueTitle() {
            try {
                return this.f276a.getQueueTitle();
            } catch (RemoteException e) {
                Log.e(MediaControllerCompat.f242d, "Dead object in getQueueTitle.", e);
                return null;
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.InterfaceC0046a
        public int getRatingType() {
            try {
                return this.f276a.getRatingType();
            } catch (RemoteException e) {
                Log.e(MediaControllerCompat.f242d, "Dead object in getRatingType.", e);
                return 0;
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.InterfaceC0046a
        public int getRepeatMode() {
            try {
                return this.f276a.getRepeatMode();
            } catch (RemoteException e) {
                Log.e(MediaControllerCompat.f242d, "Dead object in getRepeatMode.", e);
                return -1;
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.InterfaceC0046a
        public Bundle getSessionInfo() {
            try {
                this.f278c = this.f276a.getSessionInfo();
            } catch (RemoteException e) {
                Log.d(MediaControllerCompat.f242d, "Dead object in getSessionInfo.", e);
            }
            Bundle unparcelWithClassLoader = MediaSessionCompat.unparcelWithClassLoader(this.f278c);
            this.f278c = unparcelWithClassLoader;
            return unparcelWithClassLoader == null ? Bundle.EMPTY : new Bundle(this.f278c);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.InterfaceC0046a
        public int getShuffleMode() {
            try {
                return this.f276a.getShuffleMode();
            } catch (RemoteException e) {
                Log.e(MediaControllerCompat.f242d, "Dead object in getShuffleMode.", e);
                return -1;
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.InterfaceC0046a
        /* renamed from: h */
        public void mo115h(String command, Bundle params, ResultReceiver cb) {
            try {
                this.f276a.sendCommand(command, params, cb == null ? null : new MediaSessionCompat.ResultReceiverWrapper(cb));
            } catch (RemoteException e) {
                Log.e(MediaControllerCompat.f242d, "Dead object in sendCommand.", e);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.InterfaceC0046a
        /* renamed from: i */
        public void mo116i(int value, int flags) {
            try {
                this.f276a.setVolumeTo(value, flags, null);
            } catch (RemoteException e) {
                Log.e(MediaControllerCompat.f242d, "Dead object in setVolumeTo.", e);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.InterfaceC0046a
        public boolean isCaptioningEnabled() {
            try {
                return this.f276a.isCaptioningEnabled();
            } catch (RemoteException e) {
                Log.e(MediaControllerCompat.f242d, "Dead object in isCaptioningEnabled.", e);
                return false;
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.InterfaceC0046a
        /* renamed from: j */
        public PlaybackInfo mo117j() {
            try {
                ParcelableVolumeInfo volumeAttributes = this.f276a.getVolumeAttributes();
                return new PlaybackInfo(volumeAttributes.volumeType, volumeAttributes.audioStream, volumeAttributes.controlType, volumeAttributes.maxVolume, volumeAttributes.currentVolume);
            } catch (RemoteException e) {
                Log.e(MediaControllerCompat.f242d, "Dead object in getPlaybackInfo.", e);
                return null;
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.InterfaceC0046a
        /* renamed from: k */
        public void mo118k(int direction, int flags) {
            try {
                this.f276a.adjustVolume(direction, flags, null);
            } catch (RemoteException e) {
                Log.e(MediaControllerCompat.f242d, "Dead object in adjustVolume.", e);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.InterfaceC0046a
        /* renamed from: l */
        public Object mo119l() {
            return null;
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.InterfaceC0046a
        public void removeQueueItem(MediaDescriptionCompat description) {
            try {
                if ((this.f276a.getFlags() & 4) == 0) {
                    throw new UnsupportedOperationException("This session doesn't support queue management operations");
                }
                this.f276a.removeQueueItem(description);
            } catch (RemoteException e) {
                Log.e(MediaControllerCompat.f242d, "Dead object in removeQueueItem.", e);
            }
        }
    }

    @RequiresApi(21)
    /* renamed from: android.support.v4.media.session.MediaControllerCompat$d */
    /* loaded from: classes3.dex */
    public static class C0049d extends TransportControls {

        /* renamed from: a */
        public final MediaController.TransportControls f279a;

        public C0049d(MediaController.TransportControls controlsFwk) {
            this.f279a = controlsFwk;
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void fastForward() {
            this.f279a.fastForward();
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void pause() {
            this.f279a.pause();
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void play() {
            this.f279a.play();
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void playFromMediaId(String mediaId, Bundle extras) {
            this.f279a.playFromMediaId(mediaId, extras);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void playFromSearch(String query, Bundle extras) {
            this.f279a.playFromSearch(query, extras);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void playFromUri(Uri uri, Bundle extras) {
            if (uri == null || Uri.EMPTY.equals(uri)) {
                throw new IllegalArgumentException("You must specify a non-empty Uri for playFromUri.");
            }
            Bundle bundle = new Bundle();
            bundle.putParcelable(MediaSessionCompat.ACTION_ARGUMENT_URI, uri);
            bundle.putBundle(MediaSessionCompat.ACTION_ARGUMENT_EXTRAS, extras);
            sendCustomAction(MediaSessionCompat.ACTION_PLAY_FROM_URI, bundle);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void prepare() {
            sendCustomAction(MediaSessionCompat.ACTION_PREPARE, (Bundle) null);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void prepareFromMediaId(String mediaId, Bundle extras) {
            Bundle bundle = new Bundle();
            bundle.putString(MediaSessionCompat.ACTION_ARGUMENT_MEDIA_ID, mediaId);
            bundle.putBundle(MediaSessionCompat.ACTION_ARGUMENT_EXTRAS, extras);
            sendCustomAction(MediaSessionCompat.ACTION_PREPARE_FROM_MEDIA_ID, bundle);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void prepareFromSearch(String query, Bundle extras) {
            Bundle bundle = new Bundle();
            bundle.putString(MediaSessionCompat.ACTION_ARGUMENT_QUERY, query);
            bundle.putBundle(MediaSessionCompat.ACTION_ARGUMENT_EXTRAS, extras);
            sendCustomAction(MediaSessionCompat.ACTION_PREPARE_FROM_SEARCH, bundle);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void prepareFromUri(Uri uri, Bundle extras) {
            Bundle bundle = new Bundle();
            bundle.putParcelable(MediaSessionCompat.ACTION_ARGUMENT_URI, uri);
            bundle.putBundle(MediaSessionCompat.ACTION_ARGUMENT_EXTRAS, extras);
            sendCustomAction(MediaSessionCompat.ACTION_PREPARE_FROM_URI, bundle);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void rewind() {
            this.f279a.rewind();
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void seekTo(long pos) {
            this.f279a.seekTo(pos);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void sendCustomAction(PlaybackStateCompat.CustomAction customAction, Bundle args) {
            MediaControllerCompat.m103a(customAction.getAction(), args);
            this.f279a.sendCustomAction(customAction.getAction(), args);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void setCaptioningEnabled(boolean enabled) {
            Bundle bundle = new Bundle();
            bundle.putBoolean(MediaSessionCompat.ACTION_ARGUMENT_CAPTIONING_ENABLED, enabled);
            sendCustomAction(MediaSessionCompat.ACTION_SET_CAPTIONING_ENABLED, bundle);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void setPlaybackSpeed(float speed) {
            if (speed == 0.0f) {
                throw new IllegalArgumentException("speed must not be zero");
            }
            Bundle bundle = new Bundle();
            bundle.putFloat(MediaSessionCompat.ACTION_ARGUMENT_PLAYBACK_SPEED, speed);
            sendCustomAction(MediaSessionCompat.ACTION_SET_PLAYBACK_SPEED, bundle);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void setRating(RatingCompat rating) {
            this.f279a.setRating(rating != null ? (Rating) rating.getRating() : null);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void setRepeatMode(int repeatMode) {
            Bundle bundle = new Bundle();
            bundle.putInt(MediaSessionCompat.ACTION_ARGUMENT_REPEAT_MODE, repeatMode);
            sendCustomAction(MediaSessionCompat.ACTION_SET_REPEAT_MODE, bundle);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void setShuffleMode(int shuffleMode) {
            Bundle bundle = new Bundle();
            bundle.putInt(MediaSessionCompat.ACTION_ARGUMENT_SHUFFLE_MODE, shuffleMode);
            sendCustomAction(MediaSessionCompat.ACTION_SET_SHUFFLE_MODE, bundle);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void skipToNext() {
            this.f279a.skipToNext();
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void skipToPrevious() {
            this.f279a.skipToPrevious();
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void skipToQueueItem(long id) {
            this.f279a.skipToQueueItem(id);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void stop() {
            this.f279a.stop();
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void setRating(RatingCompat rating, Bundle extras) {
            Bundle bundle = new Bundle();
            bundle.putParcelable(MediaSessionCompat.ACTION_ARGUMENT_RATING, rating);
            bundle.putBundle(MediaSessionCompat.ACTION_ARGUMENT_EXTRAS, extras);
            sendCustomAction(MediaSessionCompat.ACTION_SET_RATING, bundle);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void sendCustomAction(String action, Bundle args) {
            MediaControllerCompat.m103a(action, args);
            this.f279a.sendCustomAction(action, args);
        }
    }

    @RequiresApi(23)
    /* renamed from: android.support.v4.media.session.MediaControllerCompat$e */
    /* loaded from: classes3.dex */
    public static class C0050e extends C0049d {
        public C0050e(MediaController.TransportControls controlsFwk) {
            super(controlsFwk);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.C0049d, android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void playFromUri(Uri uri, Bundle extras) {
            this.f279a.playFromUri(uri, extras);
        }
    }

    @RequiresApi(24)
    /* renamed from: android.support.v4.media.session.MediaControllerCompat$f */
    /* loaded from: classes3.dex */
    public static class C0051f extends C0050e {
        public C0051f(MediaController.TransportControls controlsFwk) {
            super(controlsFwk);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.C0049d, android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void prepare() {
            this.f279a.prepare();
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.C0049d, android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void prepareFromMediaId(String mediaId, Bundle extras) {
            this.f279a.prepareFromMediaId(mediaId, extras);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.C0049d, android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void prepareFromSearch(String query, Bundle extras) {
            this.f279a.prepareFromSearch(query, extras);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.C0049d, android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void prepareFromUri(Uri uri, Bundle extras) {
            this.f279a.prepareFromUri(uri, extras);
        }
    }

    @RequiresApi(29)
    /* renamed from: android.support.v4.media.session.MediaControllerCompat$g */
    /* loaded from: classes3.dex */
    public static class C0052g extends C0051f {
        public C0052g(MediaController.TransportControls controlsFwk) {
            super(controlsFwk);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.C0049d, android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void setPlaybackSpeed(float speed) {
            if (speed == 0.0f) {
                throw new IllegalArgumentException("speed must not be zero");
            }
            this.f279a.setPlaybackSpeed(speed);
        }
    }

    /* renamed from: android.support.v4.media.session.MediaControllerCompat$h */
    /* loaded from: classes3.dex */
    public static class C0053h extends TransportControls {

        /* renamed from: a */
        public IMediaSession f280a;

        public C0053h(IMediaSession binder) {
            this.f280a = binder;
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void fastForward() {
            try {
                this.f280a.fastForward();
            } catch (RemoteException e) {
                Log.e(MediaControllerCompat.f242d, "Dead object in fastForward.", e);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void pause() {
            try {
                this.f280a.pause();
            } catch (RemoteException e) {
                Log.e(MediaControllerCompat.f242d, "Dead object in pause.", e);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void play() {
            try {
                this.f280a.play();
            } catch (RemoteException e) {
                Log.e(MediaControllerCompat.f242d, "Dead object in play.", e);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void playFromMediaId(String mediaId, Bundle extras) {
            try {
                this.f280a.playFromMediaId(mediaId, extras);
            } catch (RemoteException e) {
                Log.e(MediaControllerCompat.f242d, "Dead object in playFromMediaId.", e);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void playFromSearch(String query, Bundle extras) {
            try {
                this.f280a.playFromSearch(query, extras);
            } catch (RemoteException e) {
                Log.e(MediaControllerCompat.f242d, "Dead object in playFromSearch.", e);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void playFromUri(Uri uri, Bundle extras) {
            try {
                this.f280a.playFromUri(uri, extras);
            } catch (RemoteException e) {
                Log.e(MediaControllerCompat.f242d, "Dead object in playFromUri.", e);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void prepare() {
            try {
                this.f280a.prepare();
            } catch (RemoteException e) {
                Log.e(MediaControllerCompat.f242d, "Dead object in prepare.", e);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void prepareFromMediaId(String mediaId, Bundle extras) {
            try {
                this.f280a.prepareFromMediaId(mediaId, extras);
            } catch (RemoteException e) {
                Log.e(MediaControllerCompat.f242d, "Dead object in prepareFromMediaId.", e);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void prepareFromSearch(String query, Bundle extras) {
            try {
                this.f280a.prepareFromSearch(query, extras);
            } catch (RemoteException e) {
                Log.e(MediaControllerCompat.f242d, "Dead object in prepareFromSearch.", e);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void prepareFromUri(Uri uri, Bundle extras) {
            try {
                this.f280a.prepareFromUri(uri, extras);
            } catch (RemoteException e) {
                Log.e(MediaControllerCompat.f242d, "Dead object in prepareFromUri.", e);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void rewind() {
            try {
                this.f280a.rewind();
            } catch (RemoteException e) {
                Log.e(MediaControllerCompat.f242d, "Dead object in rewind.", e);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void seekTo(long pos) {
            try {
                this.f280a.seekTo(pos);
            } catch (RemoteException e) {
                Log.e(MediaControllerCompat.f242d, "Dead object in seekTo.", e);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void sendCustomAction(PlaybackStateCompat.CustomAction customAction, Bundle args) {
            sendCustomAction(customAction.getAction(), args);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void setCaptioningEnabled(boolean enabled) {
            try {
                this.f280a.setCaptioningEnabled(enabled);
            } catch (RemoteException e) {
                Log.e(MediaControllerCompat.f242d, "Dead object in setCaptioningEnabled.", e);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void setPlaybackSpeed(float speed) {
            if (speed == 0.0f) {
                throw new IllegalArgumentException("speed must not be zero");
            }
            try {
                this.f280a.setPlaybackSpeed(speed);
            } catch (RemoteException e) {
                Log.e(MediaControllerCompat.f242d, "Dead object in setPlaybackSpeed.", e);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void setRating(RatingCompat rating) {
            try {
                this.f280a.rate(rating);
            } catch (RemoteException e) {
                Log.e(MediaControllerCompat.f242d, "Dead object in setRating.", e);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void setRepeatMode(int repeatMode) {
            try {
                this.f280a.setRepeatMode(repeatMode);
            } catch (RemoteException e) {
                Log.e(MediaControllerCompat.f242d, "Dead object in setRepeatMode.", e);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void setShuffleMode(int shuffleMode) {
            try {
                this.f280a.setShuffleMode(shuffleMode);
            } catch (RemoteException e) {
                Log.e(MediaControllerCompat.f242d, "Dead object in setShuffleMode.", e);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void skipToNext() {
            try {
                this.f280a.next();
            } catch (RemoteException e) {
                Log.e(MediaControllerCompat.f242d, "Dead object in skipToNext.", e);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void skipToPrevious() {
            try {
                this.f280a.previous();
            } catch (RemoteException e) {
                Log.e(MediaControllerCompat.f242d, "Dead object in skipToPrevious.", e);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void skipToQueueItem(long id) {
            try {
                this.f280a.skipToQueueItem(id);
            } catch (RemoteException e) {
                Log.e(MediaControllerCompat.f242d, "Dead object in skipToQueueItem.", e);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void stop() {
            try {
                this.f280a.stop();
            } catch (RemoteException e) {
                Log.e(MediaControllerCompat.f242d, "Dead object in stop.", e);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void sendCustomAction(String action, Bundle args) {
            MediaControllerCompat.m103a(action, args);
            try {
                this.f280a.sendCustomAction(action, args);
            } catch (RemoteException e) {
                Log.e(MediaControllerCompat.f242d, "Dead object in sendCustomAction.", e);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void setRating(RatingCompat rating, Bundle extras) {
            try {
                this.f280a.rateWithExtras(rating, extras);
            } catch (RemoteException e) {
                Log.e(MediaControllerCompat.f242d, "Dead object in setRating.", e);
            }
        }
    }

    public MediaControllerCompat(Context context, @NonNull MediaSessionCompat session) {
        if (session != null) {
            MediaSessionCompat.Token sessionToken = session.getSessionToken();
            this.f244b = sessionToken;
            this.f243a = new C0047b(context, sessionToken);
            return;
        }
        throw new IllegalArgumentException("session must not be null");
    }

    /* renamed from: a */
    public static void m103a(String action, Bundle args) {
        if (action == null) {
            return;
        }
        if (action.equals(MediaSessionCompat.ACTION_FOLLOW) || action.equals(MediaSessionCompat.ACTION_UNFOLLOW)) {
            if (args == null || !args.containsKey(MediaSessionCompat.ARGUMENT_MEDIA_ATTRIBUTE)) {
                throw new IllegalArgumentException("An extra field android.support.v4.media.session.ARGUMENT_MEDIA_ATTRIBUTE is required for this action " + action + ".");
            }
        }
    }

    public static MediaControllerCompat getMediaController(@NonNull Activity activity) {
        Object tag = activity.getWindow().getDecorView().getTag(C1205R.id.media_controller_compat_view_tag);
        if (tag instanceof MediaControllerCompat) {
            return (MediaControllerCompat) tag;
        }
        return MediaControllerImplApi21.m106m(activity);
    }

    public static void setMediaController(@NonNull Activity activity, MediaControllerCompat mediaController) {
        activity.getWindow().getDecorView().setTag(C1205R.id.media_controller_compat_view_tag, mediaController);
        MediaControllerImplApi21.m107p(activity, mediaController);
    }

    public void addQueueItem(MediaDescriptionCompat description) {
        this.f243a.addQueueItem(description);
    }

    public void adjustVolume(int direction, int flags) {
        this.f243a.mo118k(direction, flags);
    }

    public boolean dispatchMediaButtonEvent(KeyEvent keyEvent) {
        if (keyEvent != null) {
            return this.f243a.mo112e(keyEvent);
        }
        throw new IllegalArgumentException("KeyEvent may not be null");
    }

    public Bundle getExtras() {
        return this.f243a.getExtras();
    }

    public long getFlags() {
        return this.f243a.getFlags();
    }

    public MediaMetadataCompat getMetadata() {
        return this.f243a.getMetadata();
    }

    public String getPackageName() {
        return this.f243a.getPackageName();
    }

    public PlaybackInfo getPlaybackInfo() {
        return this.f243a.mo117j();
    }

    public PlaybackStateCompat getPlaybackState() {
        return this.f243a.getPlaybackState();
    }

    public List<MediaSessionCompat.QueueItem> getQueue() {
        return this.f243a.getQueue();
    }

    public CharSequence getQueueTitle() {
        return this.f243a.getQueueTitle();
    }

    public int getRatingType() {
        return this.f243a.getRatingType();
    }

    public int getRepeatMode() {
        return this.f243a.getRepeatMode();
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public VersionedParcelable getSession2Token() {
        return this.f244b.getSession2Token();
    }

    public PendingIntent getSessionActivity() {
        return this.f243a.mo109b();
    }

    @NonNull
    public Bundle getSessionInfo() {
        return this.f243a.getSessionInfo();
    }

    public MediaSessionCompat.Token getSessionToken() {
        return this.f244b;
    }

    public int getShuffleMode() {
        return this.f243a.getShuffleMode();
    }

    public TransportControls getTransportControls() {
        return this.f243a.mo111d();
    }

    public boolean isCaptioningEnabled() {
        return this.f243a.isCaptioningEnabled();
    }

    public boolean isSessionReady() {
        return this.f243a.mo110c();
    }

    public void registerCallback(@NonNull Callback callback) {
        registerCallback(callback, null);
    }

    public void removeQueueItem(MediaDescriptionCompat description) {
        this.f243a.removeQueueItem(description);
    }

    @Deprecated
    public void removeQueueItemAt(int index) {
        MediaSessionCompat.QueueItem queueItem;
        List<MediaSessionCompat.QueueItem> queue = getQueue();
        if (queue == null || index < 0 || index >= queue.size() || (queueItem = queue.get(index)) == null) {
            return;
        }
        removeQueueItem(queueItem.getDescription());
    }

    public void sendCommand(@NonNull String command, @Nullable Bundle params, @Nullable ResultReceiver cb) {
        if (TextUtils.isEmpty(command)) {
            throw new IllegalArgumentException("command must neither be null nor empty");
        }
        this.f243a.mo115h(command, params, cb);
    }

    public void setVolumeTo(int value, int flags) {
        this.f243a.mo116i(value, flags);
    }

    public void unregisterCallback(@NonNull Callback callback) {
        if (callback == null) {
            throw new IllegalArgumentException("callback must not be null");
        }
        if (this.f245c.remove(callback) == null) {
            Log.w(f242d, "the callback has never been registered");
            return;
        }
        try {
            this.f243a.mo114g(callback);
        } finally {
            callback.m105b(null);
        }
    }

    public void addQueueItem(MediaDescriptionCompat description, int index) {
        this.f243a.mo108a(description, index);
    }

    public void registerCallback(@NonNull Callback callback, Handler handler) {
        if (callback != null) {
            if (this.f245c.putIfAbsent(callback, Boolean.TRUE) != null) {
                Log.w(f242d, "the callback has already been registered");
                return;
            }
            if (handler == null) {
                handler = new Handler();
            }
            callback.m105b(handler);
            this.f243a.mo113f(callback, handler);
            return;
        }
        throw new IllegalArgumentException("callback must not be null");
    }

    public MediaControllerCompat(Context context, @NonNull MediaSessionCompat.Token sessionToken) {
        if (sessionToken != null) {
            this.f244b = sessionToken;
            this.f243a = new MediaControllerImplApi21(context, sessionToken);
            return;
        }
        throw new IllegalArgumentException("sessionToken must not be null");
    }

    public Object getMediaController() {
        return this.f243a.mo119l();
    }
}
