package android.support.v4.media;

import android.annotation.SuppressLint;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.media.MediaDescription;
import android.media.browse.MediaBrowser;
import android.os.BadParcelableException;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Process;
import android.os.RemoteException;
import android.support.v4.media.session.IMediaSession;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.os.ResultReceiver;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.collection.ArrayMap;
import androidx.core.app.BundleCompat;
import androidx.media.MediaBrowserCompatUtils;
import androidx.media.MediaBrowserProtocol;
import androidx.media.MediaBrowserServiceCompat;
import com.google.android.material.motion.MotionUtils;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public final class MediaBrowserCompat {
    public static final String CUSTOM_ACTION_DOWNLOAD = "android.support.v4.media.action.DOWNLOAD";
    public static final String CUSTOM_ACTION_REMOVE_DOWNLOADED_FILE = "android.support.v4.media.action.REMOVE_DOWNLOADED_FILE";
    public static final String EXTRA_DOWNLOAD_PROGRESS = "android.media.browse.extra.DOWNLOAD_PROGRESS";
    public static final String EXTRA_MEDIA_ID = "android.media.browse.extra.MEDIA_ID";
    public static final String EXTRA_PAGE = "android.media.browse.extra.PAGE";
    public static final String EXTRA_PAGE_SIZE = "android.media.browse.extra.PAGE_SIZE";

    /* renamed from: b */
    public static final String f68b = "MediaBrowserCompat";

    /* renamed from: c */
    public static final boolean f69c = Log.isLoggable(f68b, 3);

    /* renamed from: a */
    public final InterfaceC0026c f70a;

    /* loaded from: classes3.dex */
    public static class ConnectionCallback {

        /* renamed from: a */
        public final MediaBrowser.ConnectionCallback f71a = new C0018a();

        /* renamed from: b */
        public InterfaceC0019b f72b;

        @RequiresApi(21)
        /* renamed from: android.support.v4.media.MediaBrowserCompat$ConnectionCallback$a */
        /* loaded from: classes3.dex */
        public class C0018a extends MediaBrowser.ConnectionCallback {
            public C0018a() {
            }

            @Override // android.media.browse.MediaBrowser.ConnectionCallback
            public void onConnected() {
                InterfaceC0019b interfaceC0019b = ConnectionCallback.this.f72b;
                if (interfaceC0019b != null) {
                    interfaceC0019b.mo24j();
                }
                ConnectionCallback.this.onConnected();
            }

            @Override // android.media.browse.MediaBrowser.ConnectionCallback
            public void onConnectionFailed() {
                InterfaceC0019b interfaceC0019b = ConnectionCallback.this.f72b;
                if (interfaceC0019b != null) {
                    interfaceC0019b.mo25k();
                }
                ConnectionCallback.this.onConnectionFailed();
            }

            @Override // android.media.browse.MediaBrowser.ConnectionCallback
            public void onConnectionSuspended() {
                InterfaceC0019b interfaceC0019b = ConnectionCallback.this.f72b;
                if (interfaceC0019b != null) {
                    interfaceC0019b.mo23g();
                }
                ConnectionCallback.this.onConnectionSuspended();
            }
        }

        /* renamed from: android.support.v4.media.MediaBrowserCompat$ConnectionCallback$b */
        /* loaded from: classes3.dex */
        public interface InterfaceC0019b {
            /* renamed from: g */
            void mo23g();

            /* renamed from: j */
            void mo24j();

            /* renamed from: k */
            void mo25k();
        }

        /* renamed from: a */
        public void m22a(InterfaceC0019b connectionCallbackInternal) {
            this.f72b = connectionCallbackInternal;
        }

        public void onConnected() {
        }

        public void onConnectionFailed() {
        }

        public void onConnectionSuspended() {
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class CustomActionCallback {
        public void onError(String action, Bundle extras, Bundle data) {
        }

        public void onProgressUpdate(String action, Bundle extras, Bundle data) {
        }

        public void onResult(String action, Bundle extras, Bundle resultData) {
        }
    }

    /* loaded from: classes3.dex */
    public static class CustomActionResultReceiver extends ResultReceiver {
        private final String mAction;
        private final CustomActionCallback mCallback;
        private final Bundle mExtras;

        public CustomActionResultReceiver(String action, Bundle extras, CustomActionCallback callback, Handler handler) {
            super(handler);
            this.mAction = action;
            this.mExtras = extras;
            this.mCallback = callback;
        }

        @Override // android.support.v4.os.ResultReceiver
        public void onReceiveResult(int resultCode, Bundle resultData) {
            if (this.mCallback == null) {
                return;
            }
            MediaSessionCompat.ensureClassLoader(resultData);
            if (resultCode == -1) {
                this.mCallback.onError(this.mAction, this.mExtras, resultData);
                return;
            }
            if (resultCode == 0) {
                this.mCallback.onResult(this.mAction, this.mExtras, resultData);
                return;
            }
            if (resultCode == 1) {
                this.mCallback.onProgressUpdate(this.mAction, this.mExtras, resultData);
                return;
            }
            Log.w(MediaBrowserCompat.f68b, "Unknown result code: " + resultCode + " (extras=" + this.mExtras + ", resultData=" + resultData + MotionUtils.f31762d);
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class ItemCallback {

        /* renamed from: a */
        public final MediaBrowser.ItemCallback f74a = new C0020a();

        @RequiresApi(23)
        /* renamed from: android.support.v4.media.MediaBrowserCompat$ItemCallback$a */
        /* loaded from: classes3.dex */
        public class C0020a extends MediaBrowser.ItemCallback {
            public C0020a() {
            }

            @Override // android.media.browse.MediaBrowser.ItemCallback
            public void onError(@NonNull String itemId) {
                ItemCallback.this.onError(itemId);
            }

            @Override // android.media.browse.MediaBrowser.ItemCallback
            public void onItemLoaded(MediaBrowser.MediaItem item) {
                ItemCallback.this.onItemLoaded(MediaItem.fromMediaItem(item));
            }
        }

        public void onError(@NonNull String itemId) {
        }

        public void onItemLoaded(MediaItem item) {
        }
    }

    /* loaded from: classes3.dex */
    public static class ItemReceiver extends ResultReceiver {
        private final ItemCallback mCallback;
        private final String mMediaId;

        public ItemReceiver(String mediaId, ItemCallback callback, Handler handler) {
            super(handler);
            this.mMediaId = mediaId;
            this.mCallback = callback;
        }

        @Override // android.support.v4.os.ResultReceiver
        public void onReceiveResult(int resultCode, Bundle resultData) {
            if (resultData != null) {
                resultData = MediaSessionCompat.unparcelWithClassLoader(resultData);
            }
            if (resultCode != 0 || resultData == null || !resultData.containsKey(MediaBrowserServiceCompat.KEY_MEDIA_ITEM)) {
                this.mCallback.onError(this.mMediaId);
                return;
            }
            Parcelable parcelable = resultData.getParcelable(MediaBrowserServiceCompat.KEY_MEDIA_ITEM);
            if (parcelable == null || (parcelable instanceof MediaItem)) {
                this.mCallback.onItemLoaded((MediaItem) parcelable);
            } else {
                this.mCallback.onError(this.mMediaId);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class SearchCallback {
        public void onError(@NonNull String query, Bundle extras) {
        }

        public void onSearchResult(@NonNull String query, Bundle extras, @NonNull List<MediaItem> items) {
        }
    }

    /* loaded from: classes3.dex */
    public static class SearchResultReceiver extends ResultReceiver {
        private final SearchCallback mCallback;
        private final Bundle mExtras;
        private final String mQuery;

        public SearchResultReceiver(String query, Bundle extras, SearchCallback callback, Handler handler) {
            super(handler);
            this.mQuery = query;
            this.mExtras = extras;
            this.mCallback = callback;
        }

        @Override // android.support.v4.os.ResultReceiver
        public void onReceiveResult(int resultCode, Bundle resultData) {
            if (resultData != null) {
                resultData = MediaSessionCompat.unparcelWithClassLoader(resultData);
            }
            if (resultCode != 0 || resultData == null || !resultData.containsKey(MediaBrowserServiceCompat.KEY_SEARCH_RESULTS)) {
                this.mCallback.onError(this.mQuery, this.mExtras);
                return;
            }
            Parcelable[] parcelableArray = resultData.getParcelableArray(MediaBrowserServiceCompat.KEY_SEARCH_RESULTS);
            if (parcelableArray == null) {
                this.mCallback.onError(this.mQuery, this.mExtras);
                return;
            }
            ArrayList arrayList = new ArrayList();
            for (Parcelable parcelable : parcelableArray) {
                arrayList.add((MediaItem) parcelable);
            }
            this.mCallback.onSearchResult(this.mQuery, this.mExtras, arrayList);
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class SubscriptionCallback {

        /* renamed from: c */
        public WeakReference<C0033j> f78c;

        /* renamed from: b */
        public final IBinder f77b = new Binder();

        /* renamed from: a */
        public final MediaBrowser.SubscriptionCallback f76a = new C0023b();

        @RequiresApi(21)
        /* renamed from: android.support.v4.media.MediaBrowserCompat$SubscriptionCallback$a */
        /* loaded from: classes3.dex */
        public class C0022a extends MediaBrowser.SubscriptionCallback {
            public C0022a() {
            }

            /* renamed from: a */
            public List<MediaItem> m29a(List<MediaItem> list, final Bundle options) {
                if (list == null) {
                    return null;
                }
                int i = options.getInt(MediaBrowserCompat.EXTRA_PAGE, -1);
                int i2 = options.getInt(MediaBrowserCompat.EXTRA_PAGE_SIZE, -1);
                if (i == -1 && i2 == -1) {
                    return list;
                }
                int i3 = i2 * i;
                int i4 = i3 + i2;
                if (i < 0 || i2 < 1 || i3 >= list.size()) {
                    return Collections.emptyList();
                }
                if (i4 > list.size()) {
                    i4 = list.size();
                }
                return list.subList(i3, i4);
            }

            @Override // android.media.browse.MediaBrowser.SubscriptionCallback
            public void onChildrenLoaded(@NonNull String parentId, List<MediaBrowser.MediaItem> children) {
                WeakReference<C0033j> weakReference = SubscriptionCallback.this.f78c;
                C0033j c0033j = weakReference == null ? null : weakReference.get();
                if (c0033j == null) {
                    SubscriptionCallback.this.onChildrenLoaded(parentId, MediaItem.fromMediaItemList(children));
                    return;
                }
                List<MediaItem> fromMediaItemList = MediaItem.fromMediaItemList(children);
                List<SubscriptionCallback> m61b = c0033j.m61b();
                List<Bundle> m62c = c0033j.m62c();
                for (int i = 0; i < m61b.size(); i++) {
                    Bundle bundle = m62c.get(i);
                    if (bundle == null) {
                        SubscriptionCallback.this.onChildrenLoaded(parentId, fromMediaItemList);
                    } else {
                        SubscriptionCallback.this.onChildrenLoaded(parentId, m29a(fromMediaItemList, bundle), bundle);
                    }
                }
            }

            @Override // android.media.browse.MediaBrowser.SubscriptionCallback
            public void onError(@NonNull String parentId) {
                SubscriptionCallback.this.onError(parentId);
            }
        }

        @RequiresApi(26)
        /* renamed from: android.support.v4.media.MediaBrowserCompat$SubscriptionCallback$b */
        /* loaded from: classes3.dex */
        public class C0023b extends C0022a {
            public C0023b() {
                super();
            }

            @Override // android.media.browse.MediaBrowser.SubscriptionCallback
            public void onChildrenLoaded(@NonNull String parentId, @NonNull List<MediaBrowser.MediaItem> children, @NonNull Bundle options) {
                MediaSessionCompat.ensureClassLoader(options);
                SubscriptionCallback.this.onChildrenLoaded(parentId, MediaItem.fromMediaItemList(children), options);
            }

            @Override // android.media.browse.MediaBrowser.SubscriptionCallback
            public void onError(@NonNull String parentId, @NonNull Bundle options) {
                MediaSessionCompat.ensureClassLoader(options);
                SubscriptionCallback.this.onError(parentId, options);
            }
        }

        /* renamed from: a */
        public void m28a(C0033j subscription) {
            this.f78c = new WeakReference<>(subscription);
        }

        public void onChildrenLoaded(@NonNull String parentId, @NonNull List<MediaItem> children) {
        }

        public void onError(@NonNull String parentId) {
        }

        public void onChildrenLoaded(@NonNull String parentId, @NonNull List<MediaItem> children, @NonNull Bundle options) {
        }

        public void onError(@NonNull String parentId, @NonNull Bundle options) {
        }
    }

    @RequiresApi(21)
    /* renamed from: android.support.v4.media.MediaBrowserCompat$a */
    /* loaded from: classes3.dex */
    public static class C0024a {
        @DoNotInline
        /* renamed from: a */
        public static MediaDescription m30a(MediaBrowser.MediaItem item) {
            return item.getDescription();
        }

        @DoNotInline
        /* renamed from: b */
        public static int m31b(MediaBrowser.MediaItem item) {
            return item.getFlags();
        }
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$b */
    /* loaded from: classes3.dex */
    public static class HandlerC0025b extends Handler {

        /* renamed from: a */
        public final WeakReference<InterfaceC0031h> f81a;

        /* renamed from: b */
        public WeakReference<Messenger> f82b;

        public HandlerC0025b(InterfaceC0031h callbackImpl) {
            this.f81a = new WeakReference<>(callbackImpl);
        }

        /* renamed from: a */
        public void m32a(Messenger callbacksMessenger) {
            this.f82b = new WeakReference<>(callbacksMessenger);
        }

        @Override // android.os.Handler
        public void handleMessage(@NonNull Message msg) {
            WeakReference<Messenger> weakReference = this.f82b;
            if (weakReference == null || weakReference.get() == null || this.f81a.get() == null) {
                return;
            }
            Bundle data = msg.getData();
            MediaSessionCompat.ensureClassLoader(data);
            InterfaceC0031h interfaceC0031h = this.f81a.get();
            Messenger messenger = this.f82b.get();
            try {
                int i = msg.what;
                if (i == 1) {
                    Bundle bundle = data.getBundle(MediaBrowserProtocol.DATA_ROOT_HINTS);
                    MediaSessionCompat.ensureClassLoader(bundle);
                    interfaceC0031h.mo43l(messenger, data.getString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID), (MediaSessionCompat.Token) data.getParcelable(MediaBrowserProtocol.DATA_MEDIA_SESSION_TOKEN), bundle);
                } else if (i == 2) {
                    interfaceC0031h.mo41h(messenger);
                } else if (i != 3) {
                    Log.w(MediaBrowserCompat.f68b, "Unhandled message: " + msg + "\n  Client version: 1\n  Service version: " + msg.arg1);
                } else {
                    Bundle bundle2 = data.getBundle(MediaBrowserProtocol.DATA_OPTIONS);
                    MediaSessionCompat.ensureClassLoader(bundle2);
                    Bundle bundle3 = data.getBundle(MediaBrowserProtocol.DATA_NOTIFY_CHILDREN_CHANGED_OPTIONS);
                    MediaSessionCompat.ensureClassLoader(bundle3);
                    interfaceC0031h.mo42i(messenger, data.getString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID), data.getParcelableArrayList(MediaBrowserProtocol.DATA_MEDIA_ITEM_LIST), bundle2, bundle3);
                }
            } catch (BadParcelableException unused) {
                Log.e(MediaBrowserCompat.f68b, "Could not unparcel the data.");
                if (msg.what == 1) {
                    interfaceC0031h.mo41h(messenger);
                }
            }
        }
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$c */
    /* loaded from: classes3.dex */
    public interface InterfaceC0026c {
        @NonNull
        /* renamed from: a */
        MediaSessionCompat.Token mo33a();

        /* renamed from: b */
        void mo34b(@NonNull String parentId, @Nullable Bundle options, @NonNull SubscriptionCallback callback);

        /* renamed from: c */
        void mo35c(@NonNull String parentId, SubscriptionCallback callback);

        void connect();

        /* renamed from: d */
        void mo36d(@NonNull String action, Bundle extras, @Nullable CustomActionCallback callback);

        void disconnect();

        /* renamed from: e */
        void mo37e(@NonNull String query, Bundle extras, @NonNull SearchCallback callback);

        /* renamed from: f */
        ComponentName mo38f();

        @Nullable
        Bundle getExtras();

        @NonNull
        String getRoot();

        boolean isConnected();

        /* renamed from: m */
        void mo39m(@NonNull String mediaId, @NonNull ItemCallback cb);

        @Nullable
        /* renamed from: n */
        Bundle mo40n();
    }

    @RequiresApi(21)
    /* renamed from: android.support.v4.media.MediaBrowserCompat$d */
    /* loaded from: classes3.dex */
    public static class C0027d implements InterfaceC0026c, InterfaceC0031h, ConnectionCallback.InterfaceC0019b {

        /* renamed from: a */
        public final Context f83a;

        /* renamed from: b */
        public final MediaBrowser f84b;

        /* renamed from: c */
        public final Bundle f85c;

        /* renamed from: d */
        public final HandlerC0025b f86d = new HandlerC0025b(this);

        /* renamed from: e */
        public final ArrayMap<String, C0033j> f87e = new ArrayMap<>();

        /* renamed from: f */
        public int f88f;

        /* renamed from: g */
        public C0032i f89g;

        /* renamed from: h */
        public Messenger f90h;

        /* renamed from: i */
        public MediaSessionCompat.Token f91i;

        /* renamed from: j */
        public Bundle f92j;

        /* renamed from: android.support.v4.media.MediaBrowserCompat$d$a */
        /* loaded from: classes3.dex */
        public class a implements Runnable {

            /* renamed from: e */
            public final /* synthetic */ ItemCallback f93e;

            /* renamed from: f */
            public final /* synthetic */ String f94f;

            public a(final ItemCallback val$cb, final String val$mediaId) {
                this.f93e = val$cb;
                this.f94f = val$mediaId;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f93e.onError(this.f94f);
            }
        }

        /* renamed from: android.support.v4.media.MediaBrowserCompat$d$b */
        /* loaded from: classes3.dex */
        public class b implements Runnable {

            /* renamed from: e */
            public final /* synthetic */ ItemCallback f96e;

            /* renamed from: f */
            public final /* synthetic */ String f97f;

            public b(final ItemCallback val$cb, final String val$mediaId) {
                this.f96e = val$cb;
                this.f97f = val$mediaId;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f96e.onError(this.f97f);
            }
        }

        /* renamed from: android.support.v4.media.MediaBrowserCompat$d$c */
        /* loaded from: classes3.dex */
        public class c implements Runnable {

            /* renamed from: e */
            public final /* synthetic */ ItemCallback f99e;

            /* renamed from: f */
            public final /* synthetic */ String f100f;

            public c(final ItemCallback val$cb, final String val$mediaId) {
                this.f99e = val$cb;
                this.f100f = val$mediaId;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f99e.onError(this.f100f);
            }
        }

        /* renamed from: android.support.v4.media.MediaBrowserCompat$d$d */
        /* loaded from: classes3.dex */
        public class d implements Runnable {

            /* renamed from: e */
            public final /* synthetic */ SearchCallback f102e;

            /* renamed from: f */
            public final /* synthetic */ String f103f;

            /* renamed from: g */
            public final /* synthetic */ Bundle f104g;

            public d(final SearchCallback val$callback, final String val$query, final Bundle val$extras) {
                this.f102e = val$callback;
                this.f103f = val$query;
                this.f104g = val$extras;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f102e.onError(this.f103f, this.f104g);
            }
        }

        /* renamed from: android.support.v4.media.MediaBrowserCompat$d$e */
        /* loaded from: classes3.dex */
        public class e implements Runnable {

            /* renamed from: e */
            public final /* synthetic */ SearchCallback f106e;

            /* renamed from: f */
            public final /* synthetic */ String f107f;

            /* renamed from: g */
            public final /* synthetic */ Bundle f108g;

            public e(final SearchCallback val$callback, final String val$query, final Bundle val$extras) {
                this.f106e = val$callback;
                this.f107f = val$query;
                this.f108g = val$extras;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f106e.onError(this.f107f, this.f108g);
            }
        }

        /* renamed from: android.support.v4.media.MediaBrowserCompat$d$f */
        /* loaded from: classes3.dex */
        public class f implements Runnable {

            /* renamed from: e */
            public final /* synthetic */ CustomActionCallback f110e;

            /* renamed from: f */
            public final /* synthetic */ String f111f;

            /* renamed from: g */
            public final /* synthetic */ Bundle f112g;

            public f(final CustomActionCallback val$callback, final String val$action, final Bundle val$extras) {
                this.f110e = val$callback;
                this.f111f = val$action;
                this.f112g = val$extras;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f110e.onError(this.f111f, this.f112g, null);
            }
        }

        /* renamed from: android.support.v4.media.MediaBrowserCompat$d$g */
        /* loaded from: classes3.dex */
        public class g implements Runnable {

            /* renamed from: e */
            public final /* synthetic */ CustomActionCallback f114e;

            /* renamed from: f */
            public final /* synthetic */ String f115f;

            /* renamed from: g */
            public final /* synthetic */ Bundle f116g;

            public g(final CustomActionCallback val$callback, final String val$action, final Bundle val$extras) {
                this.f114e = val$callback;
                this.f115f = val$action;
                this.f116g = val$extras;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f114e.onError(this.f115f, this.f116g, null);
            }
        }

        public C0027d(Context context, ComponentName serviceComponent, ConnectionCallback callback, Bundle rootHints) {
            this.f83a = context;
            Bundle bundle = rootHints != null ? new Bundle(rootHints) : new Bundle();
            this.f85c = bundle;
            bundle.putInt(MediaBrowserProtocol.EXTRA_CLIENT_VERSION, 1);
            bundle.putInt(MediaBrowserProtocol.EXTRA_CALLING_PID, Process.myPid());
            callback.m22a(this);
            this.f84b = new MediaBrowser(context, serviceComponent, callback.f71a, bundle);
        }

        @Override // android.support.v4.media.MediaBrowserCompat.InterfaceC0026c
        @NonNull
        /* renamed from: a */
        public MediaSessionCompat.Token mo33a() {
            if (this.f91i == null) {
                this.f91i = MediaSessionCompat.Token.fromToken(this.f84b.getSessionToken());
            }
            return this.f91i;
        }

        @Override // android.support.v4.media.MediaBrowserCompat.InterfaceC0026c
        /* renamed from: b */
        public void mo34b(@NonNull final String parentId, final Bundle options, @NonNull final SubscriptionCallback callback) {
            C0033j c0033j = this.f87e.get(parentId);
            if (c0033j == null) {
                c0033j = new C0033j();
                this.f87e.put(parentId, c0033j);
            }
            callback.m28a(c0033j);
            Bundle bundle = options == null ? null : new Bundle(options);
            c0033j.m64e(bundle, callback);
            C0032i c0032i = this.f89g;
            if (c0032i == null) {
                this.f84b.subscribe(parentId, callback.f76a);
                return;
            }
            try {
                c0032i.m50a(parentId, callback.f77b, bundle, this.f90h);
            } catch (RemoteException unused) {
                Log.i(MediaBrowserCompat.f68b, "Remote error subscribing media item: " + parentId);
            }
        }

        @Override // android.support.v4.media.MediaBrowserCompat.InterfaceC0026c
        /* renamed from: c */
        public void mo35c(@NonNull String parentId, SubscriptionCallback callback) {
            C0033j c0033j = this.f87e.get(parentId);
            if (c0033j == null) {
                return;
            }
            C0032i c0032i = this.f89g;
            if (c0032i != null) {
                try {
                    if (callback == null) {
                        c0032i.m55f(parentId, null, this.f90h);
                    } else {
                        List<SubscriptionCallback> m61b = c0033j.m61b();
                        List<Bundle> m62c = c0033j.m62c();
                        for (int size = m61b.size() - 1; size >= 0; size--) {
                            if (m61b.get(size) == callback) {
                                this.f89g.m55f(parentId, callback.f77b, this.f90h);
                                m61b.remove(size);
                                m62c.remove(size);
                            }
                        }
                    }
                } catch (RemoteException unused) {
                    Log.d(MediaBrowserCompat.f68b, "removeSubscription failed with RemoteException parentId=" + parentId);
                }
            } else if (callback == null) {
                this.f84b.unsubscribe(parentId);
            } else {
                List<SubscriptionCallback> m61b2 = c0033j.m61b();
                List<Bundle> m62c2 = c0033j.m62c();
                for (int size2 = m61b2.size() - 1; size2 >= 0; size2--) {
                    if (m61b2.get(size2) == callback) {
                        m61b2.remove(size2);
                        m62c2.remove(size2);
                    }
                }
                if (m61b2.size() == 0) {
                    this.f84b.unsubscribe(parentId);
                }
            }
            if (c0033j.m63d() || callback == null) {
                this.f87e.remove(parentId);
            }
        }

        @Override // android.support.v4.media.MediaBrowserCompat.InterfaceC0026c
        public void connect() {
            this.f84b.connect();
        }

        @Override // android.support.v4.media.MediaBrowserCompat.InterfaceC0026c
        /* renamed from: d */
        public void mo36d(@NonNull final String action, final Bundle extras, @Nullable final CustomActionCallback callback) {
            if (!isConnected()) {
                throw new IllegalStateException("Cannot send a custom action (" + action + ") with extras " + extras + " because the browser is not connected to the service.");
            }
            if (this.f89g == null) {
                Log.i(MediaBrowserCompat.f68b, "The connected service doesn't support sendCustomAction.");
                if (callback != null) {
                    this.f86d.post(new f(callback, action, extras));
                }
            }
            try {
                this.f89g.m57h(action, extras, new CustomActionResultReceiver(action, extras, callback, this.f86d), this.f90h);
            } catch (RemoteException e2) {
                Log.i(MediaBrowserCompat.f68b, "Remote error sending a custom action: action=" + action + ", extras=" + extras, e2);
                if (callback != null) {
                    this.f86d.post(new g(callback, action, extras));
                }
            }
        }

        @Override // android.support.v4.media.MediaBrowserCompat.InterfaceC0026c
        public void disconnect() {
            Messenger messenger;
            C0032i c0032i = this.f89g;
            if (c0032i != null && (messenger = this.f90h) != null) {
                try {
                    c0032i.m59j(messenger);
                } catch (RemoteException unused) {
                    Log.i(MediaBrowserCompat.f68b, "Remote error unregistering client messenger.");
                }
            }
            this.f84b.disconnect();
        }

        @Override // android.support.v4.media.MediaBrowserCompat.InterfaceC0026c
        /* renamed from: e */
        public void mo37e(@NonNull final String query, final Bundle extras, @NonNull final SearchCallback callback) {
            if (!isConnected()) {
                throw new IllegalStateException("search() called while not connected");
            }
            if (this.f89g == null) {
                Log.i(MediaBrowserCompat.f68b, "The connected service doesn't support search.");
                this.f86d.post(new d(callback, query, extras));
                return;
            }
            try {
                this.f89g.m56g(query, extras, new SearchResultReceiver(query, extras, callback, this.f86d), this.f90h);
            } catch (RemoteException e2) {
                Log.i(MediaBrowserCompat.f68b, "Remote error searching items with query: " + query, e2);
                this.f86d.post(new e(callback, query, extras));
            }
        }

        @Override // android.support.v4.media.MediaBrowserCompat.InterfaceC0026c
        /* renamed from: f */
        public ComponentName mo38f() {
            return this.f84b.getServiceComponent();
        }

        @Override // android.support.v4.media.MediaBrowserCompat.ConnectionCallback.InterfaceC0019b
        /* renamed from: g */
        public void mo23g() {
            this.f89g = null;
            this.f90h = null;
            this.f91i = null;
            this.f86d.m32a(null);
        }

        @Override // android.support.v4.media.MediaBrowserCompat.InterfaceC0026c
        @Nullable
        public Bundle getExtras() {
            return this.f84b.getExtras();
        }

        @Override // android.support.v4.media.MediaBrowserCompat.InterfaceC0026c
        @NonNull
        public String getRoot() {
            return this.f84b.getRoot();
        }

        @Override // android.support.v4.media.MediaBrowserCompat.InterfaceC0031h
        /* renamed from: h */
        public void mo41h(Messenger callback) {
        }

        @Override // android.support.v4.media.MediaBrowserCompat.InterfaceC0031h
        /* renamed from: i */
        public void mo42i(Messenger callback, String parentId, List<MediaItem> list, Bundle options, Bundle notifyChildrenChangedOptions) {
            if (this.f90h != callback) {
                return;
            }
            C0033j c0033j = this.f87e.get(parentId);
            if (c0033j == null) {
                if (MediaBrowserCompat.f69c) {
                    Log.d(MediaBrowserCompat.f68b, "onLoadChildren for id that isn't subscribed id=" + parentId);
                    return;
                }
                return;
            }
            SubscriptionCallback m60a = c0033j.m60a(options);
            if (m60a != null) {
                if (options == null) {
                    if (list == null) {
                        m60a.onError(parentId);
                        return;
                    }
                    this.f92j = notifyChildrenChangedOptions;
                    m60a.onChildrenLoaded(parentId, list);
                    this.f92j = null;
                    return;
                }
                if (list == null) {
                    m60a.onError(parentId, options);
                    return;
                }
                this.f92j = notifyChildrenChangedOptions;
                m60a.onChildrenLoaded(parentId, list, options);
                this.f92j = null;
            }
        }

        @Override // android.support.v4.media.MediaBrowserCompat.InterfaceC0026c
        public boolean isConnected() {
            return this.f84b.isConnected();
        }

        @Override // android.support.v4.media.MediaBrowserCompat.ConnectionCallback.InterfaceC0019b
        /* renamed from: j */
        public void mo24j() {
            try {
                Bundle extras = this.f84b.getExtras();
                if (extras == null) {
                    return;
                }
                this.f88f = extras.getInt(MediaBrowserProtocol.EXTRA_SERVICE_VERSION, 0);
                IBinder binder = BundleCompat.getBinder(extras, MediaBrowserProtocol.EXTRA_MESSENGER_BINDER);
                if (binder != null) {
                    this.f89g = new C0032i(binder, this.f85c);
                    Messenger messenger = new Messenger(this.f86d);
                    this.f90h = messenger;
                    this.f86d.m32a(messenger);
                    try {
                        this.f89g.m54e(this.f83a, this.f90h);
                    } catch (RemoteException unused) {
                        Log.i(MediaBrowserCompat.f68b, "Remote error registering client messenger.");
                    }
                }
                IMediaSession asInterface = IMediaSession.Stub.asInterface(BundleCompat.getBinder(extras, MediaBrowserProtocol.EXTRA_SESSION_BINDER));
                if (asInterface != null) {
                    this.f91i = MediaSessionCompat.Token.fromToken(this.f84b.getSessionToken(), asInterface);
                }
            } catch (IllegalStateException e2) {
                Log.e(MediaBrowserCompat.f68b, "Unexpected IllegalStateException", e2);
            }
        }

        @Override // android.support.v4.media.MediaBrowserCompat.ConnectionCallback.InterfaceC0019b
        /* renamed from: k */
        public void mo25k() {
        }

        @Override // android.support.v4.media.MediaBrowserCompat.InterfaceC0031h
        /* renamed from: l */
        public void mo43l(final Messenger callback, final String root, final MediaSessionCompat.Token session, final Bundle extra) {
        }

        @Override // android.support.v4.media.MediaBrowserCompat.InterfaceC0026c
        /* renamed from: m */
        public void mo39m(@NonNull final String mediaId, @NonNull final ItemCallback cb) {
            if (TextUtils.isEmpty(mediaId)) {
                throw new IllegalArgumentException("mediaId is empty");
            }
            if (cb == null) {
                throw new IllegalArgumentException("cb is null");
            }
            if (!this.f84b.isConnected()) {
                Log.i(MediaBrowserCompat.f68b, "Not connected, unable to retrieve the MediaItem.");
                this.f86d.post(new a(cb, mediaId));
                return;
            }
            if (this.f89g == null) {
                this.f86d.post(new b(cb, mediaId));
                return;
            }
            try {
                this.f89g.m53d(mediaId, new ItemReceiver(mediaId, cb, this.f86d), this.f90h);
            } catch (RemoteException unused) {
                Log.i(MediaBrowserCompat.f68b, "Remote error getting media item: " + mediaId);
                this.f86d.post(new c(cb, mediaId));
            }
        }

        @Override // android.support.v4.media.MediaBrowserCompat.InterfaceC0026c
        /* renamed from: n */
        public Bundle mo40n() {
            return this.f92j;
        }
    }

    @RequiresApi(23)
    /* renamed from: android.support.v4.media.MediaBrowserCompat$e */
    /* loaded from: classes3.dex */
    public static class C0028e extends C0027d {
        public C0028e(Context context, ComponentName serviceComponent, ConnectionCallback callback, Bundle rootHints) {
            super(context, serviceComponent, callback, rootHints);
        }

        @Override // android.support.v4.media.MediaBrowserCompat.C0027d, android.support.v4.media.MediaBrowserCompat.InterfaceC0026c
        /* renamed from: m */
        public void mo39m(@NonNull final String mediaId, @NonNull final ItemCallback cb) {
            if (this.f89g == null) {
                this.f84b.getItem(mediaId, cb.f74a);
            } else {
                super.mo39m(mediaId, cb);
            }
        }
    }

    @RequiresApi(26)
    /* renamed from: android.support.v4.media.MediaBrowserCompat$f */
    /* loaded from: classes3.dex */
    public static class C0029f extends C0028e {
        public C0029f(Context context, ComponentName serviceComponent, ConnectionCallback callback, Bundle rootHints) {
            super(context, serviceComponent, callback, rootHints);
        }

        @Override // android.support.v4.media.MediaBrowserCompat.C0027d, android.support.v4.media.MediaBrowserCompat.InterfaceC0026c
        /* renamed from: b */
        public void mo34b(@NonNull String parentId, @Nullable Bundle options, @NonNull SubscriptionCallback callback) {
            if (this.f89g != null && this.f88f >= 2) {
                super.mo34b(parentId, options, callback);
            } else if (options == null) {
                this.f84b.subscribe(parentId, callback.f76a);
            } else {
                this.f84b.subscribe(parentId, options, callback.f76a);
            }
        }

        @Override // android.support.v4.media.MediaBrowserCompat.C0027d, android.support.v4.media.MediaBrowserCompat.InterfaceC0026c
        /* renamed from: c */
        public void mo35c(@NonNull String parentId, SubscriptionCallback callback) {
            if (this.f89g != null && this.f88f >= 2) {
                super.mo35c(parentId, callback);
            } else if (callback == null) {
                this.f84b.unsubscribe(parentId);
            } else {
                this.f84b.unsubscribe(parentId, callback.f76a);
            }
        }
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$g */
    /* loaded from: classes3.dex */
    public static class C0030g implements InterfaceC0026c, InterfaceC0031h {

        /* renamed from: o */
        public static final int f118o = 0;

        /* renamed from: p */
        public static final int f119p = 1;

        /* renamed from: q */
        public static final int f120q = 2;

        /* renamed from: r */
        public static final int f121r = 3;

        /* renamed from: s */
        public static final int f122s = 4;

        /* renamed from: a */
        public final Context f123a;

        /* renamed from: b */
        public final ComponentName f124b;

        /* renamed from: c */
        public final ConnectionCallback f125c;

        /* renamed from: d */
        public final Bundle f126d;

        /* renamed from: e */
        public final HandlerC0025b f127e = new HandlerC0025b(this);

        /* renamed from: f */
        public final ArrayMap<String, C0033j> f128f = new ArrayMap<>();

        /* renamed from: g */
        public int f129g = 1;

        /* renamed from: h */
        public g f130h;

        /* renamed from: i */
        public C0032i f131i;

        /* renamed from: j */
        public Messenger f132j;

        /* renamed from: k */
        public String f133k;

        /* renamed from: l */
        public MediaSessionCompat.Token f134l;

        /* renamed from: m */
        public Bundle f135m;

        /* renamed from: n */
        public Bundle f136n;

        /* renamed from: android.support.v4.media.MediaBrowserCompat$g$a */
        /* loaded from: classes3.dex */
        public class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                boolean z;
                C0030g c0030g = C0030g.this;
                if (c0030g.f129g == 0) {
                    return;
                }
                c0030g.f129g = 2;
                if (MediaBrowserCompat.f69c && c0030g.f130h != null) {
                    throw new RuntimeException("mServiceConnection should be null. Instead it is " + C0030g.this.f130h);
                }
                if (c0030g.f131i != null) {
                    throw new RuntimeException("mServiceBinderWrapper should be null. Instead it is " + C0030g.this.f131i);
                }
                if (c0030g.f132j != null) {
                    throw new RuntimeException("mCallbacksMessenger should be null. Instead it is " + C0030g.this.f132j);
                }
                Intent intent = new Intent(MediaBrowserServiceCompat.SERVICE_INTERFACE);
                intent.setComponent(C0030g.this.f124b);
                C0030g c0030g2 = C0030g.this;
                c0030g2.f130h = new g();
                try {
                    C0030g c0030g3 = C0030g.this;
                    z = c0030g3.f123a.bindService(intent, c0030g3.f130h, 1);
                } catch (Exception unused) {
                    Log.e(MediaBrowserCompat.f68b, "Failed binding to service " + C0030g.this.f124b);
                    z = false;
                }
                if (!z) {
                    C0030g.this.m46j();
                    C0030g.this.f125c.onConnectionFailed();
                }
                if (MediaBrowserCompat.f69c) {
                    Log.d(MediaBrowserCompat.f68b, "connect...");
                    C0030g.this.m45g();
                }
            }
        }

        /* renamed from: android.support.v4.media.MediaBrowserCompat$g$b */
        /* loaded from: classes3.dex */
        public class b implements Runnable {
            public b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                C0030g c0030g = C0030g.this;
                Messenger messenger = c0030g.f132j;
                if (messenger != null) {
                    try {
                        c0030g.f131i.m52c(messenger);
                    } catch (RemoteException unused) {
                        Log.w(MediaBrowserCompat.f68b, "RemoteException during connect for " + C0030g.this.f124b);
                    }
                }
                C0030g c0030g2 = C0030g.this;
                int i = c0030g2.f129g;
                c0030g2.m46j();
                if (i != 0) {
                    C0030g.this.f129g = i;
                }
                if (MediaBrowserCompat.f69c) {
                    Log.d(MediaBrowserCompat.f68b, "disconnect...");
                    C0030g.this.m45g();
                }
            }
        }

        /* renamed from: android.support.v4.media.MediaBrowserCompat$g$c */
        /* loaded from: classes3.dex */
        public class c implements Runnable {

            /* renamed from: e */
            public final /* synthetic */ ItemCallback f139e;

            /* renamed from: f */
            public final /* synthetic */ String f140f;

            public c(final ItemCallback val$cb, final String val$mediaId) {
                this.f139e = val$cb;
                this.f140f = val$mediaId;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f139e.onError(this.f140f);
            }
        }

        /* renamed from: android.support.v4.media.MediaBrowserCompat$g$d */
        /* loaded from: classes3.dex */
        public class d implements Runnable {

            /* renamed from: e */
            public final /* synthetic */ ItemCallback f142e;

            /* renamed from: f */
            public final /* synthetic */ String f143f;

            public d(final ItemCallback val$cb, final String val$mediaId) {
                this.f142e = val$cb;
                this.f143f = val$mediaId;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f142e.onError(this.f143f);
            }
        }

        /* renamed from: android.support.v4.media.MediaBrowserCompat$g$e */
        /* loaded from: classes3.dex */
        public class e implements Runnable {

            /* renamed from: e */
            public final /* synthetic */ SearchCallback f145e;

            /* renamed from: f */
            public final /* synthetic */ String f146f;

            /* renamed from: g */
            public final /* synthetic */ Bundle f147g;

            public e(final SearchCallback val$callback, final String val$query, final Bundle val$extras) {
                this.f145e = val$callback;
                this.f146f = val$query;
                this.f147g = val$extras;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f145e.onError(this.f146f, this.f147g);
            }
        }

        /* renamed from: android.support.v4.media.MediaBrowserCompat$g$f */
        /* loaded from: classes3.dex */
        public class f implements Runnable {

            /* renamed from: e */
            public final /* synthetic */ CustomActionCallback f149e;

            /* renamed from: f */
            public final /* synthetic */ String f150f;

            /* renamed from: g */
            public final /* synthetic */ Bundle f151g;

            public f(final CustomActionCallback val$callback, final String val$action, final Bundle val$extras) {
                this.f149e = val$callback;
                this.f150f = val$action;
                this.f151g = val$extras;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f149e.onError(this.f150f, this.f151g, null);
            }
        }

        /* renamed from: android.support.v4.media.MediaBrowserCompat$g$g */
        /* loaded from: classes3.dex */
        public class g implements ServiceConnection {

            /* renamed from: android.support.v4.media.MediaBrowserCompat$g$g$a */
            /* loaded from: classes3.dex */
            public class a implements Runnable {

                /* renamed from: e */
                public final /* synthetic */ ComponentName f154e;

                /* renamed from: f */
                public final /* synthetic */ IBinder f155f;

                public a(final ComponentName val$name, final IBinder val$binder) {
                    this.f154e = val$name;
                    this.f155f = val$binder;
                }

                @Override // java.lang.Runnable
                public void run() {
                    boolean z = MediaBrowserCompat.f69c;
                    if (z) {
                        Log.d(MediaBrowserCompat.f68b, "MediaServiceConnection.onServiceConnected name=" + this.f154e + " binder=" + this.f155f);
                        C0030g.this.m45g();
                    }
                    if (g.this.m48a("onServiceConnected")) {
                        C0030g c0030g = C0030g.this;
                        c0030g.f131i = new C0032i(this.f155f, c0030g.f126d);
                        C0030g.this.f132j = new Messenger(C0030g.this.f127e);
                        C0030g c0030g2 = C0030g.this;
                        c0030g2.f127e.m32a(c0030g2.f132j);
                        C0030g.this.f129g = 2;
                        if (z) {
                            try {
                                Log.d(MediaBrowserCompat.f68b, "ServiceCallbacks.onConnect...");
                                C0030g.this.m45g();
                            } catch (RemoteException unused) {
                                Log.w(MediaBrowserCompat.f68b, "RemoteException during connect for " + C0030g.this.f124b);
                                if (MediaBrowserCompat.f69c) {
                                    Log.d(MediaBrowserCompat.f68b, "ServiceCallbacks.onConnect...");
                                    C0030g.this.m45g();
                                    return;
                                }
                                return;
                            }
                        }
                        C0030g c0030g3 = C0030g.this;
                        c0030g3.f131i.m51b(c0030g3.f123a, c0030g3.f132j);
                    }
                }
            }

            /* renamed from: android.support.v4.media.MediaBrowserCompat$g$g$b */
            /* loaded from: classes3.dex */
            public class b implements Runnable {

                /* renamed from: e */
                public final /* synthetic */ ComponentName f157e;

                public b(final ComponentName val$name) {
                    this.f157e = val$name;
                }

                @Override // java.lang.Runnable
                public void run() {
                    if (MediaBrowserCompat.f69c) {
                        Log.d(MediaBrowserCompat.f68b, "MediaServiceConnection.onServiceDisconnected name=" + this.f157e + " this=" + this + " mServiceConnection=" + C0030g.this.f130h);
                        C0030g.this.m45g();
                    }
                    if (g.this.m48a("onServiceDisconnected")) {
                        C0030g c0030g = C0030g.this;
                        c0030g.f131i = null;
                        c0030g.f132j = null;
                        c0030g.f127e.m32a(null);
                        C0030g c0030g2 = C0030g.this;
                        c0030g2.f129g = 4;
                        c0030g2.f125c.onConnectionSuspended();
                    }
                }
            }

            public g() {
            }

            /* renamed from: a */
            public boolean m48a(String funcName) {
                int i;
                C0030g c0030g = C0030g.this;
                if (c0030g.f130h == this && (i = c0030g.f129g) != 0 && i != 1) {
                    return true;
                }
                int i2 = c0030g.f129g;
                if (i2 == 0 || i2 == 1) {
                    return false;
                }
                Log.i(MediaBrowserCompat.f68b, funcName + " for " + C0030g.this.f124b + " with mServiceConnection=" + C0030g.this.f130h + " this=" + this);
                return false;
            }

            /* renamed from: b */
            public final void m49b(Runnable r) {
                if (Thread.currentThread() == C0030g.this.f127e.getLooper().getThread()) {
                    r.run();
                } else {
                    C0030g.this.f127e.post(r);
                }
            }

            @Override // android.content.ServiceConnection
            public void onServiceConnected(final ComponentName name, final IBinder binder) {
                m49b(new a(name, binder));
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(final ComponentName name) {
                m49b(new b(name));
            }
        }

        public C0030g(Context context, ComponentName serviceComponent, ConnectionCallback callback, Bundle rootHints) {
            if (context == null) {
                throw new IllegalArgumentException("context must not be null");
            }
            if (serviceComponent == null) {
                throw new IllegalArgumentException("service component must not be null");
            }
            if (callback == null) {
                throw new IllegalArgumentException("connection callback must not be null");
            }
            this.f123a = context;
            this.f124b = serviceComponent;
            this.f125c = callback;
            this.f126d = rootHints == null ? null : new Bundle(rootHints);
        }

        /* renamed from: k */
        public static String m44k(int state) {
            if (state == 0) {
                return "CONNECT_STATE_DISCONNECTING";
            }
            if (state == 1) {
                return "CONNECT_STATE_DISCONNECTED";
            }
            if (state == 2) {
                return "CONNECT_STATE_CONNECTING";
            }
            if (state == 3) {
                return "CONNECT_STATE_CONNECTED";
            }
            if (state == 4) {
                return "CONNECT_STATE_SUSPENDED";
            }
            return "UNKNOWN/" + state;
        }

        @Override // android.support.v4.media.MediaBrowserCompat.InterfaceC0026c
        @NonNull
        /* renamed from: a */
        public MediaSessionCompat.Token mo33a() {
            if (isConnected()) {
                return this.f134l;
            }
            throw new IllegalStateException("getSessionToken() called while not connected(state=" + this.f129g + MotionUtils.f31762d);
        }

        @Override // android.support.v4.media.MediaBrowserCompat.InterfaceC0026c
        /* renamed from: b */
        public void mo34b(@NonNull String parentId, Bundle options, @NonNull SubscriptionCallback callback) {
            C0033j c0033j = this.f128f.get(parentId);
            if (c0033j == null) {
                c0033j = new C0033j();
                this.f128f.put(parentId, c0033j);
            }
            Bundle bundle = options == null ? null : new Bundle(options);
            c0033j.m64e(bundle, callback);
            if (isConnected()) {
                try {
                    this.f131i.m50a(parentId, callback.f77b, bundle, this.f132j);
                } catch (RemoteException unused) {
                    Log.d(MediaBrowserCompat.f68b, "addSubscription failed with RemoteException parentId=" + parentId);
                }
            }
        }

        @Override // android.support.v4.media.MediaBrowserCompat.InterfaceC0026c
        /* renamed from: c */
        public void mo35c(@NonNull String parentId, SubscriptionCallback callback) {
            C0033j c0033j = this.f128f.get(parentId);
            if (c0033j == null) {
                return;
            }
            try {
                if (callback != null) {
                    List<SubscriptionCallback> m61b = c0033j.m61b();
                    List<Bundle> m62c = c0033j.m62c();
                    for (int size = m61b.size() - 1; size >= 0; size--) {
                        if (m61b.get(size) == callback) {
                            if (isConnected()) {
                                this.f131i.m55f(parentId, callback.f77b, this.f132j);
                            }
                            m61b.remove(size);
                            m62c.remove(size);
                        }
                    }
                } else if (isConnected()) {
                    this.f131i.m55f(parentId, null, this.f132j);
                }
            } catch (RemoteException unused) {
                Log.d(MediaBrowserCompat.f68b, "removeSubscription failed with RemoteException parentId=" + parentId);
            }
            if (c0033j.m63d() || callback == null) {
                this.f128f.remove(parentId);
            }
        }

        @Override // android.support.v4.media.MediaBrowserCompat.InterfaceC0026c
        public void connect() {
            int i = this.f129g;
            if (i == 0 || i == 1) {
                this.f129g = 2;
                this.f127e.post(new a());
            } else {
                throw new IllegalStateException("connect() called while neigther disconnecting nor disconnected (state=" + m44k(this.f129g) + MotionUtils.f31762d);
            }
        }

        @Override // android.support.v4.media.MediaBrowserCompat.InterfaceC0026c
        /* renamed from: d */
        public void mo36d(@NonNull final String action, final Bundle extras, @Nullable final CustomActionCallback callback) {
            if (!isConnected()) {
                throw new IllegalStateException("Cannot send a custom action (" + action + ") with extras " + extras + " because the browser is not connected to the service.");
            }
            try {
                this.f131i.m57h(action, extras, new CustomActionResultReceiver(action, extras, callback, this.f127e), this.f132j);
            } catch (RemoteException e2) {
                Log.i(MediaBrowserCompat.f68b, "Remote error sending a custom action: action=" + action + ", extras=" + extras, e2);
                if (callback != null) {
                    this.f127e.post(new f(callback, action, extras));
                }
            }
        }

        @Override // android.support.v4.media.MediaBrowserCompat.InterfaceC0026c
        public void disconnect() {
            this.f129g = 0;
            this.f127e.post(new b());
        }

        @Override // android.support.v4.media.MediaBrowserCompat.InterfaceC0026c
        /* renamed from: e */
        public void mo37e(@NonNull final String query, final Bundle extras, @NonNull final SearchCallback callback) {
            if (!isConnected()) {
                throw new IllegalStateException("search() called while not connected (state=" + m44k(this.f129g) + MotionUtils.f31762d);
            }
            try {
                this.f131i.m56g(query, extras, new SearchResultReceiver(query, extras, callback, this.f127e), this.f132j);
            } catch (RemoteException e2) {
                Log.i(MediaBrowserCompat.f68b, "Remote error searching items with query: " + query, e2);
                this.f127e.post(new e(callback, query, extras));
            }
        }

        @Override // android.support.v4.media.MediaBrowserCompat.InterfaceC0026c
        @NonNull
        /* renamed from: f */
        public ComponentName mo38f() {
            if (isConnected()) {
                return this.f124b;
            }
            throw new IllegalStateException("getServiceComponent() called while not connected (state=" + this.f129g + MotionUtils.f31762d);
        }

        /* renamed from: g */
        public void m45g() {
            Log.d(MediaBrowserCompat.f68b, "MediaBrowserCompat...");
            Log.d(MediaBrowserCompat.f68b, "  mServiceComponent=" + this.f124b);
            Log.d(MediaBrowserCompat.f68b, "  mCallback=" + this.f125c);
            Log.d(MediaBrowserCompat.f68b, "  mRootHints=" + this.f126d);
            Log.d(MediaBrowserCompat.f68b, "  mState=" + m44k(this.f129g));
            Log.d(MediaBrowserCompat.f68b, "  mServiceConnection=" + this.f130h);
            Log.d(MediaBrowserCompat.f68b, "  mServiceBinderWrapper=" + this.f131i);
            Log.d(MediaBrowserCompat.f68b, "  mCallbacksMessenger=" + this.f132j);
            Log.d(MediaBrowserCompat.f68b, "  mRootId=" + this.f133k);
            Log.d(MediaBrowserCompat.f68b, "  mMediaSessionToken=" + this.f134l);
        }

        @Override // android.support.v4.media.MediaBrowserCompat.InterfaceC0026c
        @Nullable
        public Bundle getExtras() {
            if (isConnected()) {
                return this.f135m;
            }
            throw new IllegalStateException("getExtras() called while not connected (state=" + m44k(this.f129g) + MotionUtils.f31762d);
        }

        @Override // android.support.v4.media.MediaBrowserCompat.InterfaceC0026c
        @NonNull
        public String getRoot() {
            if (isConnected()) {
                return this.f133k;
            }
            throw new IllegalStateException("getRoot() called while not connected(state=" + m44k(this.f129g) + MotionUtils.f31762d);
        }

        @Override // android.support.v4.media.MediaBrowserCompat.InterfaceC0031h
        /* renamed from: h */
        public void mo41h(final Messenger callback) {
            Log.e(MediaBrowserCompat.f68b, "onConnectFailed for " + this.f124b);
            if (m47o(callback, "onConnectFailed")) {
                if (this.f129g == 2) {
                    m46j();
                    this.f125c.onConnectionFailed();
                    return;
                }
                Log.w(MediaBrowserCompat.f68b, "onConnect from service while mState=" + m44k(this.f129g) + "... ignoring");
            }
        }

        @Override // android.support.v4.media.MediaBrowserCompat.InterfaceC0031h
        /* renamed from: i */
        public void mo42i(final Messenger callback, final String parentId, final List<MediaItem> list, final Bundle options, final Bundle notifyChildrenChangedOptions) {
            if (m47o(callback, "onLoadChildren")) {
                boolean z = MediaBrowserCompat.f69c;
                if (z) {
                    Log.d(MediaBrowserCompat.f68b, "onLoadChildren for " + this.f124b + " id=" + parentId);
                }
                C0033j c0033j = this.f128f.get(parentId);
                if (c0033j == null) {
                    if (z) {
                        Log.d(MediaBrowserCompat.f68b, "onLoadChildren for id that isn't subscribed id=" + parentId);
                        return;
                    }
                    return;
                }
                SubscriptionCallback m60a = c0033j.m60a(options);
                if (m60a != null) {
                    if (options == null) {
                        if (list == null) {
                            m60a.onError(parentId);
                            return;
                        }
                        this.f136n = notifyChildrenChangedOptions;
                        m60a.onChildrenLoaded(parentId, list);
                        this.f136n = null;
                        return;
                    }
                    if (list == null) {
                        m60a.onError(parentId, options);
                        return;
                    }
                    this.f136n = notifyChildrenChangedOptions;
                    m60a.onChildrenLoaded(parentId, list, options);
                    this.f136n = null;
                }
            }
        }

        @Override // android.support.v4.media.MediaBrowserCompat.InterfaceC0026c
        public boolean isConnected() {
            return this.f129g == 3;
        }

        /* renamed from: j */
        public void m46j() {
            g gVar = this.f130h;
            if (gVar != null) {
                this.f123a.unbindService(gVar);
            }
            this.f129g = 1;
            this.f130h = null;
            this.f131i = null;
            this.f132j = null;
            this.f127e.m32a(null);
            this.f133k = null;
            this.f134l = null;
        }

        @Override // android.support.v4.media.MediaBrowserCompat.InterfaceC0031h
        /* renamed from: l */
        public void mo43l(final Messenger callback, final String root, final MediaSessionCompat.Token session, final Bundle extra) {
            if (m47o(callback, "onConnect")) {
                if (this.f129g != 2) {
                    Log.w(MediaBrowserCompat.f68b, "onConnect from service while mState=" + m44k(this.f129g) + "... ignoring");
                    return;
                }
                this.f133k = root;
                this.f134l = session;
                this.f135m = extra;
                this.f129g = 3;
                if (MediaBrowserCompat.f69c) {
                    Log.d(MediaBrowserCompat.f68b, "ServiceCallbacks.onConnect...");
                    m45g();
                }
                this.f125c.onConnected();
                try {
                    for (Map.Entry<String, C0033j> entry : this.f128f.entrySet()) {
                        String key = entry.getKey();
                        C0033j value = entry.getValue();
                        List<SubscriptionCallback> m61b = value.m61b();
                        List<Bundle> m62c = value.m62c();
                        for (int i = 0; i < m61b.size(); i++) {
                            this.f131i.m50a(key, m61b.get(i).f77b, m62c.get(i), this.f132j);
                        }
                    }
                } catch (RemoteException unused) {
                    Log.d(MediaBrowserCompat.f68b, "addSubscription failed with RemoteException.");
                }
            }
        }

        @Override // android.support.v4.media.MediaBrowserCompat.InterfaceC0026c
        /* renamed from: m */
        public void mo39m(@NonNull final String mediaId, @NonNull final ItemCallback cb) {
            if (TextUtils.isEmpty(mediaId)) {
                throw new IllegalArgumentException("mediaId is empty");
            }
            if (cb == null) {
                throw new IllegalArgumentException("cb is null");
            }
            if (!isConnected()) {
                Log.i(MediaBrowserCompat.f68b, "Not connected, unable to retrieve the MediaItem.");
                this.f127e.post(new c(cb, mediaId));
                return;
            }
            try {
                this.f131i.m53d(mediaId, new ItemReceiver(mediaId, cb, this.f127e), this.f132j);
            } catch (RemoteException unused) {
                Log.i(MediaBrowserCompat.f68b, "Remote error getting media item: " + mediaId);
                this.f127e.post(new d(cb, mediaId));
            }
        }

        @Override // android.support.v4.media.MediaBrowserCompat.InterfaceC0026c
        /* renamed from: n */
        public Bundle mo40n() {
            return this.f136n;
        }

        /* renamed from: o */
        public final boolean m47o(Messenger callback, String funcName) {
            int i;
            if (this.f132j == callback && (i = this.f129g) != 0 && i != 1) {
                return true;
            }
            int i2 = this.f129g;
            if (i2 == 0 || i2 == 1) {
                return false;
            }
            Log.i(MediaBrowserCompat.f68b, funcName + " for " + this.f124b + " with mCallbacksMessenger=" + this.f132j + " this=" + this);
            return false;
        }
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$h */
    /* loaded from: classes3.dex */
    public interface InterfaceC0031h {
        /* renamed from: h */
        void mo41h(Messenger callback);

        /* renamed from: i */
        void mo42i(Messenger callback, String parentId, List<MediaItem> list, Bundle options, Bundle notifyChildrenChangedOptions);

        /* renamed from: l */
        void mo43l(Messenger callback, String root, MediaSessionCompat.Token session, Bundle extra);
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$i */
    /* loaded from: classes3.dex */
    public static class C0032i {

        /* renamed from: a */
        public Messenger f159a;

        /* renamed from: b */
        public Bundle f160b;

        public C0032i(IBinder target, Bundle rootHints) {
            this.f159a = new Messenger(target);
            this.f160b = rootHints;
        }

        /* renamed from: a */
        public void m50a(String parentId, IBinder callbackToken, Bundle options, Messenger callbacksMessenger) throws RemoteException {
            Bundle bundle = new Bundle();
            bundle.putString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID, parentId);
            BundleCompat.putBinder(bundle, MediaBrowserProtocol.DATA_CALLBACK_TOKEN, callbackToken);
            bundle.putBundle(MediaBrowserProtocol.DATA_OPTIONS, options);
            m58i(3, bundle, callbacksMessenger);
        }

        /* renamed from: b */
        public void m51b(Context context, Messenger callbacksMessenger) throws RemoteException {
            Bundle bundle = new Bundle();
            bundle.putString(MediaBrowserProtocol.DATA_PACKAGE_NAME, context.getPackageName());
            bundle.putInt("data_calling_pid", Process.myPid());
            bundle.putBundle(MediaBrowserProtocol.DATA_ROOT_HINTS, this.f160b);
            m58i(1, bundle, callbacksMessenger);
        }

        /* renamed from: c */
        public void m52c(Messenger callbacksMessenger) throws RemoteException {
            m58i(2, null, callbacksMessenger);
        }

        /* renamed from: d */
        public void m53d(String mediaId, ResultReceiver receiver, Messenger callbacksMessenger) throws RemoteException {
            Bundle bundle = new Bundle();
            bundle.putString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID, mediaId);
            bundle.putParcelable(MediaBrowserProtocol.DATA_RESULT_RECEIVER, receiver);
            m58i(5, bundle, callbacksMessenger);
        }

        /* renamed from: e */
        public void m54e(Context context, Messenger callbackMessenger) throws RemoteException {
            Bundle bundle = new Bundle();
            bundle.putString(MediaBrowserProtocol.DATA_PACKAGE_NAME, context.getPackageName());
            bundle.putInt("data_calling_pid", Process.myPid());
            bundle.putBundle(MediaBrowserProtocol.DATA_ROOT_HINTS, this.f160b);
            m58i(6, bundle, callbackMessenger);
        }

        /* renamed from: f */
        public void m55f(String parentId, IBinder callbackToken, Messenger callbacksMessenger) throws RemoteException {
            Bundle bundle = new Bundle();
            bundle.putString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID, parentId);
            BundleCompat.putBinder(bundle, MediaBrowserProtocol.DATA_CALLBACK_TOKEN, callbackToken);
            m58i(4, bundle, callbacksMessenger);
        }

        /* renamed from: g */
        public void m56g(String query, Bundle extras, ResultReceiver receiver, Messenger callbacksMessenger) throws RemoteException {
            Bundle bundle = new Bundle();
            bundle.putString(MediaBrowserProtocol.DATA_SEARCH_QUERY, query);
            bundle.putBundle(MediaBrowserProtocol.DATA_SEARCH_EXTRAS, extras);
            bundle.putParcelable(MediaBrowserProtocol.DATA_RESULT_RECEIVER, receiver);
            m58i(8, bundle, callbacksMessenger);
        }

        /* renamed from: h */
        public void m57h(String action, Bundle extras, ResultReceiver receiver, Messenger callbacksMessenger) throws RemoteException {
            Bundle bundle = new Bundle();
            bundle.putString(MediaBrowserProtocol.DATA_CUSTOM_ACTION, action);
            bundle.putBundle(MediaBrowserProtocol.DATA_CUSTOM_ACTION_EXTRAS, extras);
            bundle.putParcelable(MediaBrowserProtocol.DATA_RESULT_RECEIVER, receiver);
            m58i(9, bundle, callbacksMessenger);
        }

        /* renamed from: i */
        public final void m58i(int what, Bundle data, Messenger cbMessenger) throws RemoteException {
            Message obtain = Message.obtain();
            obtain.what = what;
            obtain.arg1 = 1;
            obtain.setData(data);
            obtain.replyTo = cbMessenger;
            this.f159a.send(obtain);
        }

        /* renamed from: j */
        public void m59j(Messenger callbackMessenger) throws RemoteException {
            m58i(7, null, callbackMessenger);
        }
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$j */
    /* loaded from: classes3.dex */
    public static class C0033j {

        /* renamed from: a */
        public final List<SubscriptionCallback> f161a = new ArrayList();

        /* renamed from: b */
        public final List<Bundle> f162b = new ArrayList();

        /* renamed from: a */
        public SubscriptionCallback m60a(Bundle options) {
            for (int i = 0; i < this.f162b.size(); i++) {
                if (MediaBrowserCompatUtils.areSameOptions(this.f162b.get(i), options)) {
                    return this.f161a.get(i);
                }
            }
            return null;
        }

        /* renamed from: b */
        public List<SubscriptionCallback> m61b() {
            return this.f161a;
        }

        /* renamed from: c */
        public List<Bundle> m62c() {
            return this.f162b;
        }

        /* renamed from: d */
        public boolean m63d() {
            return this.f161a.isEmpty();
        }

        /* renamed from: e */
        public void m64e(Bundle options, SubscriptionCallback callback) {
            for (int i = 0; i < this.f162b.size(); i++) {
                if (MediaBrowserCompatUtils.areSameOptions(this.f162b.get(i), options)) {
                    this.f161a.set(i, callback);
                    return;
                }
            }
            this.f161a.add(callback);
            this.f162b.add(options);
        }
    }

    public MediaBrowserCompat(Context context, ComponentName serviceComponent, ConnectionCallback callback, Bundle rootHints) {
        this.f70a = new C0029f(context, serviceComponent, callback, rootHints);
    }

    public void connect() {
        Log.d(f68b, "Connecting to a MediaBrowserService.");
        this.f70a.connect();
    }

    public void disconnect() {
        this.f70a.disconnect();
    }

    @Nullable
    public Bundle getExtras() {
        return this.f70a.getExtras();
    }

    public void getItem(@NonNull final String mediaId, @NonNull final ItemCallback cb) {
        this.f70a.mo39m(mediaId, cb);
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public Bundle getNotifyChildrenChangedOptions() {
        return this.f70a.mo40n();
    }

    @NonNull
    public String getRoot() {
        return this.f70a.getRoot();
    }

    @NonNull
    public ComponentName getServiceComponent() {
        return this.f70a.mo38f();
    }

    @NonNull
    public MediaSessionCompat.Token getSessionToken() {
        return this.f70a.mo33a();
    }

    public boolean isConnected() {
        return this.f70a.isConnected();
    }

    public void search(@NonNull final String query, final Bundle extras, @NonNull SearchCallback callback) {
        if (TextUtils.isEmpty(query)) {
            throw new IllegalArgumentException("query cannot be empty");
        }
        if (callback == null) {
            throw new IllegalArgumentException("callback cannot be null");
        }
        this.f70a.mo37e(query, extras, callback);
    }

    public void sendCustomAction(@NonNull String action, Bundle extras, @Nullable CustomActionCallback callback) {
        if (TextUtils.isEmpty(action)) {
            throw new IllegalArgumentException("action cannot be empty");
        }
        this.f70a.mo36d(action, extras, callback);
    }

    public void subscribe(@NonNull String parentId, @NonNull SubscriptionCallback callback) {
        if (TextUtils.isEmpty(parentId)) {
            throw new IllegalArgumentException("parentId is empty");
        }
        if (callback != null) {
            this.f70a.mo34b(parentId, null, callback);
            return;
        }
        throw new IllegalArgumentException("callback is null");
    }

    public void unsubscribe(@NonNull String parentId) {
        if (!TextUtils.isEmpty(parentId)) {
            this.f70a.mo35c(parentId, null);
            return;
        }
        throw new IllegalArgumentException("parentId is empty");
    }

    public void unsubscribe(@NonNull String parentId, @NonNull SubscriptionCallback callback) {
        if (TextUtils.isEmpty(parentId)) {
            throw new IllegalArgumentException("parentId is empty");
        }
        if (callback != null) {
            this.f70a.mo35c(parentId, callback);
            return;
        }
        throw new IllegalArgumentException("callback is null");
    }

    public void subscribe(@NonNull String parentId, @NonNull Bundle options, @NonNull SubscriptionCallback callback) {
        if (TextUtils.isEmpty(parentId)) {
            throw new IllegalArgumentException("parentId is empty");
        }
        if (callback == null) {
            throw new IllegalArgumentException("callback is null");
        }
        if (options != null) {
            this.f70a.mo34b(parentId, options, callback);
            return;
        }
        throw new IllegalArgumentException("options are null");
    }

    @SuppressLint({"BanParcelableUsage"})
    /* loaded from: classes3.dex */
    public static class MediaItem implements Parcelable {
        public static final Parcelable.Creator<MediaItem> CREATOR = new C0021a();
        public static final int FLAG_BROWSABLE = 1;
        public static final int FLAG_PLAYABLE = 2;
        private final MediaDescriptionCompat mDescription;
        private final int mFlags;

        /* renamed from: android.support.v4.media.MediaBrowserCompat$MediaItem$a */
        /* loaded from: classes3.dex */
        public class C0021a implements Parcelable.Creator<MediaItem> {
            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public MediaItem createFromParcel(Parcel in) {
                return new MediaItem(in);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public MediaItem[] newArray(int size) {
                return new MediaItem[size];
            }
        }

        public MediaItem(@NonNull MediaDescriptionCompat description, int flags) {
            if (description != null) {
                if (!TextUtils.isEmpty(description.getMediaId())) {
                    this.mFlags = flags;
                    this.mDescription = description;
                    return;
                }
                throw new IllegalArgumentException("description must have a non-empty media id");
            }
            throw new IllegalArgumentException("description cannot be null");
        }

        public static MediaItem fromMediaItem(Object itemObj) {
            if (itemObj == null) {
                return null;
            }
            MediaBrowser.MediaItem mediaItem = (MediaBrowser.MediaItem) itemObj;
            return new MediaItem(MediaDescriptionCompat.fromMediaDescription(C0024a.m30a(mediaItem)), C0024a.m31b(mediaItem));
        }

        public static List<MediaItem> fromMediaItemList(List<?> itemList) {
            if (itemList == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList(itemList.size());
            Iterator<?> it2 = itemList.iterator();
            while (it2.hasNext()) {
                arrayList.add(fromMediaItem(it2.next()));
            }
            return arrayList;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @NonNull
        public MediaDescriptionCompat getDescription() {
            return this.mDescription;
        }

        public int getFlags() {
            return this.mFlags;
        }

        @Nullable
        public String getMediaId() {
            return this.mDescription.getMediaId();
        }

        public boolean isBrowsable() {
            return (this.mFlags & 1) != 0;
        }

        public boolean isPlayable() {
            return (this.mFlags & 2) != 0;
        }

        @NonNull
        public String toString() {
            return "MediaItem{mFlags=" + this.mFlags + ", mDescription=" + this.mDescription + '}';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel out, int flags) {
            out.writeInt(this.mFlags);
            this.mDescription.writeToParcel(out, flags);
        }

        public MediaItem(Parcel in) {
            this.mFlags = in.readInt();
            this.mDescription = MediaDescriptionCompat.CREATOR.createFromParcel(in);
        }
    }
}
