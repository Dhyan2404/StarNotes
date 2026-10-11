package androidx.media;

import android.annotation.SuppressLint;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.media.browse.MediaBrowser;
import android.media.session.MediaSession;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.service.media.MediaBrowserService;
import android.support.v4.media.MediaBrowserCompat;
import android.support.v4.media.session.IMediaSession;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.os.ResultReceiver;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.collection.ArrayMap;
import androidx.core.app.BundleCompat;
import androidx.core.util.Pair;
import androidx.media.MediaSessionManager;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public abstract class MediaBrowserServiceCompat extends Service {

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final String KEY_MEDIA_ITEM = "media_item";

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final String KEY_SEARCH_RESULTS = "search_results";

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final int RESULT_ERROR = -1;

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final int RESULT_OK = 0;

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final int RESULT_PROGRESS_UPDATE = 1;
    public static final String SERVICE_INTERFACE = "android.media.browse.MediaBrowserService";

    /* renamed from: l */
    public static final String f8135l = "MBServiceCompat";

    /* renamed from: m */
    public static final boolean f8136m = Log.isLoggable(f8135l, 3);

    /* renamed from: n */
    public static final float f8137n = 1.0E-5f;

    /* renamed from: o */
    public static final int f8138o = 1;

    /* renamed from: p */
    public static final int f8139p = 2;

    /* renamed from: q */
    public static final int f8140q = 4;

    /* renamed from: e */
    public InterfaceC1192f f8141e;

    /* renamed from: i */
    public C1191e f8145i;

    /* renamed from: k */
    public MediaSessionCompat.Token f8147k;

    /* renamed from: f */
    public final C1191e f8142f = new C1191e(MediaSessionManager.RemoteUserInfo.LEGACY_CONTROLLER, -1, -1, null, null);

    /* renamed from: g */
    public final ArrayList<C1191e> f8143g = new ArrayList<>();

    /* renamed from: h */
    public final ArrayMap<IBinder, C1191e> f8144h = new ArrayMap<>();

    /* renamed from: j */
    public final HandlerC1202p f8146j = new HandlerC1202p();

    /* loaded from: classes3.dex */
    public static final class BrowserRoot {
        public static final String EXTRA_OFFLINE = "android.service.media.extra.OFFLINE";
        public static final String EXTRA_RECENT = "android.service.media.extra.RECENT";
        public static final String EXTRA_SUGGESTED = "android.service.media.extra.SUGGESTED";

        @Deprecated
        public static final String EXTRA_SUGGESTION_KEYWORDS = "android.service.media.extra.SUGGESTION_KEYWORDS";

        /* renamed from: a */
        public final String f8148a;

        /* renamed from: b */
        public final Bundle f8149b;

        public BrowserRoot(@NonNull String rootId, @Nullable Bundle extras) {
            if (rootId == null) {
                throw new IllegalArgumentException("The root id in BrowserRoot cannot be null. Use null for BrowserRoot instead");
            }
            this.f8148a = rootId;
            this.f8149b = extras;
        }

        public Bundle getExtras() {
            return this.f8149b;
        }

        public String getRootId() {
            return this.f8148a;
        }
    }

    /* loaded from: classes3.dex */
    public static class Result<T> {

        /* renamed from: a */
        public final Object f8150a;

        /* renamed from: b */
        public boolean f8151b;

        /* renamed from: c */
        public boolean f8152c;

        /* renamed from: d */
        public boolean f8153d;

        /* renamed from: e */
        public int f8154e;

        public Result(Object debug) {
            this.f8150a = debug;
        }

        /* renamed from: a */
        public final void m5020a(@Nullable Bundle extras) {
            if (extras != null && extras.containsKey(MediaBrowserCompat.EXTRA_DOWNLOAD_PROGRESS)) {
                float f = extras.getFloat(MediaBrowserCompat.EXTRA_DOWNLOAD_PROGRESS);
                if (f < -1.0E-5f || f > 1.00001f) {
                    throw new IllegalArgumentException("The value of the EXTRA_DOWNLOAD_PROGRESS field must be a float number within [0.0, 1.0]");
                }
            }
        }

        /* renamed from: b */
        public int m5021b() {
            return this.f8154e;
        }

        /* renamed from: c */
        public boolean m5022c() {
            return this.f8151b || this.f8152c || this.f8153d;
        }

        /* renamed from: d */
        public void mo5023d(@Nullable Bundle extras) {
            throw new UnsupportedOperationException("It is not supported to send an error for " + this.f8150a);
        }

        public void detach() {
            if (this.f8151b) {
                throw new IllegalStateException("detach() called when detach() had already been called for: " + this.f8150a);
            }
            if (this.f8152c) {
                throw new IllegalStateException("detach() called when sendResult() had already been called for: " + this.f8150a);
            }
            if (!this.f8153d) {
                this.f8151b = true;
                return;
            }
            throw new IllegalStateException("detach() called when sendError() had already been called for: " + this.f8150a);
        }

        /* renamed from: e */
        public void mo5024e(@Nullable Bundle extras) {
            throw new UnsupportedOperationException("It is not supported to send an interim update for " + this.f8150a);
        }

        /* renamed from: f */
        public void mo5025f(@Nullable T result) {
        }

        /* renamed from: g */
        public void m5026g(int flags) {
            this.f8154e = flags;
        }

        public void sendError(@Nullable Bundle extras) {
            if (!this.f8152c && !this.f8153d) {
                this.f8153d = true;
                mo5023d(extras);
            } else {
                throw new IllegalStateException("sendError() called when either sendResult() or sendError() had already been called for: " + this.f8150a);
            }
        }

        public void sendProgressUpdate(@Nullable Bundle extras) {
            if (!this.f8152c && !this.f8153d) {
                m5020a(extras);
                mo5024e(extras);
            } else {
                throw new IllegalStateException("sendProgressUpdate() called when either sendResult() or sendError() had already been called for: " + this.f8150a);
            }
        }

        public void sendResult(@Nullable T result) {
            if (!this.f8152c && !this.f8153d) {
                this.f8152c = true;
                mo5025f(result);
            } else {
                throw new IllegalStateException("sendResult() called when either sendResult() or sendError() had already been called for: " + this.f8150a);
            }
        }
    }

    /* renamed from: androidx.media.MediaBrowserServiceCompat$a */
    /* loaded from: classes3.dex */
    public class C1187a extends Result<List<MediaBrowserCompat.MediaItem>> {

        /* renamed from: f */
        public final /* synthetic */ C1191e f8155f;

        /* renamed from: g */
        public final /* synthetic */ String f8156g;

        /* renamed from: h */
        public final /* synthetic */ Bundle f8157h;

        /* renamed from: i */
        public final /* synthetic */ Bundle f8158i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C1187a(Object debug, final C1191e val$connection, final String val$parentId, final Bundle val$subscribeOptions, final Bundle val$notifyChildrenChangedOptions) {
            super(debug);
            this.f8155f = val$connection;
            this.f8156g = val$parentId;
            this.f8157h = val$subscribeOptions;
            this.f8158i = val$notifyChildrenChangedOptions;
        }

        @Override // androidx.media.MediaBrowserServiceCompat.Result
        /* renamed from: h, reason: merged with bridge method [inline-methods] */
        public void mo5025f(@Nullable List<MediaBrowserCompat.MediaItem> list) {
            if (MediaBrowserServiceCompat.this.f8144h.get(this.f8155f.f8171f.asBinder()) != this.f8155f) {
                if (MediaBrowserServiceCompat.f8136m) {
                    Log.d(MediaBrowserServiceCompat.f8135l, "Not sending onLoadChildren result for connection that has been disconnected. pkg=" + this.f8155f.f8166a + " id=" + this.f8156g);
                    return;
                }
                return;
            }
            if ((m5021b() & 1) != 0) {
                list = MediaBrowserServiceCompat.this.m5011b(list, this.f8157h);
            }
            try {
                this.f8155f.f8171f.mo5062a(this.f8156g, list, this.f8157h, this.f8158i);
            } catch (RemoteException unused) {
                Log.w(MediaBrowserServiceCompat.f8135l, "Calling onLoadChildren() failed for id=" + this.f8156g + " package=" + this.f8155f.f8166a);
            }
        }
    }

    /* renamed from: androidx.media.MediaBrowserServiceCompat$b */
    /* loaded from: classes3.dex */
    public class C1188b extends Result<MediaBrowserCompat.MediaItem> {

        /* renamed from: f */
        public final /* synthetic */ ResultReceiver f8160f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C1188b(Object debug, final ResultReceiver val$receiver) {
            super(debug);
            this.f8160f = val$receiver;
        }

        @Override // androidx.media.MediaBrowserServiceCompat.Result
        /* renamed from: h, reason: merged with bridge method [inline-methods] */
        public void mo5025f(@Nullable MediaBrowserCompat.MediaItem item) {
            if ((m5021b() & 2) != 0) {
                this.f8160f.send(-1, null);
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putParcelable(MediaBrowserServiceCompat.KEY_MEDIA_ITEM, item);
            this.f8160f.send(0, bundle);
        }
    }

    /* renamed from: androidx.media.MediaBrowserServiceCompat$c */
    /* loaded from: classes3.dex */
    public class C1189c extends Result<List<MediaBrowserCompat.MediaItem>> {

        /* renamed from: f */
        public final /* synthetic */ ResultReceiver f8162f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C1189c(Object debug, final ResultReceiver val$receiver) {
            super(debug);
            this.f8162f = val$receiver;
        }

        @Override // androidx.media.MediaBrowserServiceCompat.Result
        /* renamed from: h, reason: merged with bridge method [inline-methods] */
        public void mo5025f(@Nullable List<MediaBrowserCompat.MediaItem> items) {
            if ((m5021b() & 4) != 0 || items == null) {
                this.f8162f.send(-1, null);
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putParcelableArray(MediaBrowserServiceCompat.KEY_SEARCH_RESULTS, (Parcelable[]) items.toArray(new MediaBrowserCompat.MediaItem[0]));
            this.f8162f.send(0, bundle);
        }
    }

    /* renamed from: androidx.media.MediaBrowserServiceCompat$d */
    /* loaded from: classes3.dex */
    public class C1190d extends Result<Bundle> {

        /* renamed from: f */
        public final /* synthetic */ ResultReceiver f8164f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C1190d(Object debug, final ResultReceiver val$receiver) {
            super(debug);
            this.f8164f = val$receiver;
        }

        @Override // androidx.media.MediaBrowserServiceCompat.Result
        /* renamed from: d */
        public void mo5023d(@Nullable Bundle data) {
            this.f8164f.send(-1, data);
        }

        @Override // androidx.media.MediaBrowserServiceCompat.Result
        /* renamed from: e */
        public void mo5024e(@Nullable Bundle data) {
            this.f8164f.send(1, data);
        }

        @Override // androidx.media.MediaBrowserServiceCompat.Result
        /* renamed from: h, reason: merged with bridge method [inline-methods] */
        public void mo5025f(@Nullable Bundle result) {
            this.f8164f.send(0, result);
        }
    }

    /* renamed from: androidx.media.MediaBrowserServiceCompat$e */
    /* loaded from: classes3.dex */
    public class C1191e implements IBinder.DeathRecipient {

        /* renamed from: a */
        public final String f8166a;

        /* renamed from: b */
        public final int f8167b;

        /* renamed from: c */
        public final int f8168c;

        /* renamed from: d */
        public final MediaSessionManager.RemoteUserInfo f8169d;

        /* renamed from: e */
        public final Bundle f8170e;

        /* renamed from: f */
        public final InterfaceC1200n f8171f;

        /* renamed from: g */
        public final HashMap<String, List<Pair<IBinder, Bundle>>> f8172g = new HashMap<>();

        /* renamed from: h */
        public BrowserRoot f8173h;

        /* renamed from: androidx.media.MediaBrowserServiceCompat$e$a */
        /* loaded from: classes3.dex */
        public class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                C1191e c1191e = C1191e.this;
                MediaBrowserServiceCompat.this.f8144h.remove(c1191e.f8171f.asBinder());
            }
        }

        public C1191e(String pkg, int pid, int uid, Bundle rootHints, InterfaceC1200n callback) {
            this.f8166a = pkg;
            this.f8167b = pid;
            this.f8168c = uid;
            this.f8169d = new MediaSessionManager.RemoteUserInfo(pkg, pid, uid);
            this.f8170e = rootHints;
            this.f8171f = callback;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            MediaBrowserServiceCompat.this.f8146j.post(new a());
        }
    }

    /* renamed from: androidx.media.MediaBrowserServiceCompat$f */
    /* loaded from: classes3.dex */
    public interface InterfaceC1192f {
        /* renamed from: a */
        MediaSessionManager.RemoteUserInfo mo5031a();

        /* renamed from: b */
        Bundle mo5032b();

        /* renamed from: c */
        IBinder mo5033c(Intent intent);

        /* renamed from: d */
        void mo5034d(MediaSessionManager.RemoteUserInfo remoteUserInfo, String parentId, Bundle options);

        /* renamed from: e */
        void mo5035e(String parentId, Bundle options);

        /* renamed from: f */
        void mo5036f(MediaSessionCompat.Token token);

        void onCreate();
    }

    @RequiresApi(21)
    /* renamed from: androidx.media.MediaBrowserServiceCompat$g */
    /* loaded from: classes3.dex */
    public class C1193g implements InterfaceC1192f {

        /* renamed from: a */
        public final List<Bundle> f8176a = new ArrayList();

        /* renamed from: b */
        public MediaBrowserService f8177b;

        /* renamed from: c */
        public Messenger f8178c;

        /* renamed from: androidx.media.MediaBrowserServiceCompat$g$a */
        /* loaded from: classes3.dex */
        public class a implements Runnable {

            /* renamed from: e */
            public final /* synthetic */ MediaSessionCompat.Token f8180e;

            public a(final MediaSessionCompat.Token val$token) {
                this.f8180e = val$token;
            }

            @Override // java.lang.Runnable
            public void run() {
                C1193g.this.m5043m(this.f8180e);
            }
        }

        /* renamed from: androidx.media.MediaBrowserServiceCompat$g$b */
        /* loaded from: classes3.dex */
        public class b extends Result<List<MediaBrowserCompat.MediaItem>> {

            /* renamed from: f */
            public final /* synthetic */ C1198l f8182f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public b(Object debug, final C1198l val$resultWrapper) {
                super(debug);
                this.f8182f = val$resultWrapper;
            }

            @Override // androidx.media.MediaBrowserServiceCompat.Result
            public void detach() {
                this.f8182f.m5050a();
            }

            @Override // androidx.media.MediaBrowserServiceCompat.Result
            /* renamed from: h, reason: merged with bridge method [inline-methods] */
            public void mo5025f(@Nullable List<MediaBrowserCompat.MediaItem> list) {
                ArrayList arrayList;
                if (list != null) {
                    arrayList = new ArrayList();
                    for (MediaBrowserCompat.MediaItem mediaItem : list) {
                        Parcel obtain = Parcel.obtain();
                        mediaItem.writeToParcel(obtain, 0);
                        arrayList.add(obtain);
                    }
                } else {
                    arrayList = null;
                }
                this.f8182f.m5052c(arrayList);
            }
        }

        /* renamed from: androidx.media.MediaBrowserServiceCompat$g$c */
        /* loaded from: classes3.dex */
        public class c implements Runnable {

            /* renamed from: e */
            public final /* synthetic */ String f8184e;

            /* renamed from: f */
            public final /* synthetic */ Bundle f8185f;

            public c(final String val$parentId, final Bundle val$options) {
                this.f8184e = val$parentId;
                this.f8185f = val$options;
            }

            @Override // java.lang.Runnable
            public void run() {
                Iterator<IBinder> it2 = MediaBrowserServiceCompat.this.f8144h.keySet().iterator();
                while (it2.hasNext()) {
                    C1193g.this.m5039i(MediaBrowserServiceCompat.this.f8144h.get(it2.next()), this.f8184e, this.f8185f);
                }
            }
        }

        /* renamed from: androidx.media.MediaBrowserServiceCompat$g$d */
        /* loaded from: classes3.dex */
        public class d implements Runnable {

            /* renamed from: e */
            public final /* synthetic */ MediaSessionManager.RemoteUserInfo f8187e;

            /* renamed from: f */
            public final /* synthetic */ String f8188f;

            /* renamed from: g */
            public final /* synthetic */ Bundle f8189g;

            public d(final MediaSessionManager.RemoteUserInfo val$remoteUserInfo, final String val$parentId, final Bundle val$options) {
                this.f8187e = val$remoteUserInfo;
                this.f8188f = val$parentId;
                this.f8189g = val$options;
            }

            @Override // java.lang.Runnable
            public void run() {
                for (int i = 0; i < MediaBrowserServiceCompat.this.f8144h.size(); i++) {
                    C1191e valueAt = MediaBrowserServiceCompat.this.f8144h.valueAt(i);
                    if (valueAt.f8169d.equals(this.f8187e)) {
                        C1193g.this.m5039i(valueAt, this.f8188f, this.f8189g);
                    }
                }
            }
        }

        @RequiresApi(21)
        /* renamed from: androidx.media.MediaBrowserServiceCompat$g$e */
        /* loaded from: classes3.dex */
        public class e extends MediaBrowserService {
            public e(Context context) {
                attachBaseContext(context);
            }

            @Override // android.service.media.MediaBrowserService
            @SuppressLint({"SyntheticAccessor"})
            public MediaBrowserService.BrowserRoot onGetRoot(String clientPackageName, int clientUid, Bundle rootHints) {
                MediaSessionCompat.ensureClassLoader(rootHints);
                BrowserRoot m5041k = C1193g.this.m5041k(clientPackageName, clientUid, rootHints == null ? null : new Bundle(rootHints));
                if (m5041k == null) {
                    return null;
                }
                return new MediaBrowserService.BrowserRoot(m5041k.f8148a, m5041k.f8149b);
            }

            @Override // android.service.media.MediaBrowserService
            public void onLoadChildren(String parentId, MediaBrowserService.Result<List<MediaBrowser.MediaItem>> result) {
                C1193g.this.m5042l(parentId, new C1198l<>(result));
            }
        }

        public C1193g() {
        }

        @Override // androidx.media.MediaBrowserServiceCompat.InterfaceC1192f
        /* renamed from: a */
        public MediaSessionManager.RemoteUserInfo mo5031a() {
            C1191e c1191e = MediaBrowserServiceCompat.this.f8145i;
            if (c1191e != null) {
                return c1191e.f8169d;
            }
            throw new IllegalStateException("This should be called inside of onGetRoot, onLoadChildren, onLoadItem, onSearch, or onCustomAction methods");
        }

        @Override // androidx.media.MediaBrowserServiceCompat.InterfaceC1192f
        /* renamed from: b */
        public Bundle mo5032b() {
            if (this.f8178c == null) {
                return null;
            }
            C1191e c1191e = MediaBrowserServiceCompat.this.f8145i;
            if (c1191e == null) {
                throw new IllegalStateException("This should be called inside of onGetRoot, onLoadChildren, onLoadItem, onSearch, or onCustomAction methods");
            }
            if (c1191e.f8170e == null) {
                return null;
            }
            return new Bundle(MediaBrowserServiceCompat.this.f8145i.f8170e);
        }

        @Override // androidx.media.MediaBrowserServiceCompat.InterfaceC1192f
        /* renamed from: c */
        public IBinder mo5033c(Intent intent) {
            return this.f8177b.onBind(intent);
        }

        @Override // androidx.media.MediaBrowserServiceCompat.InterfaceC1192f
        /* renamed from: d */
        public void mo5034d(final MediaSessionManager.RemoteUserInfo remoteUserInfo, final String parentId, final Bundle options) {
            m5037g(remoteUserInfo, parentId, options);
        }

        @Override // androidx.media.MediaBrowserServiceCompat.InterfaceC1192f
        /* renamed from: e */
        public void mo5035e(final String parentId, final Bundle options) {
            mo5040j(parentId, options);
            m5038h(parentId, options);
        }

        @Override // androidx.media.MediaBrowserServiceCompat.InterfaceC1192f
        /* renamed from: f */
        public void mo5036f(final MediaSessionCompat.Token token) {
            MediaBrowserServiceCompat.this.f8146j.m5066a(new a(token));
        }

        /* renamed from: g */
        public void m5037g(final MediaSessionManager.RemoteUserInfo remoteUserInfo, final String parentId, final Bundle options) {
            MediaBrowserServiceCompat.this.f8146j.post(new d(remoteUserInfo, parentId, options));
        }

        /* renamed from: h */
        public void m5038h(final String parentId, final Bundle options) {
            MediaBrowserServiceCompat.this.f8146j.post(new c(parentId, options));
        }

        /* renamed from: i */
        public void m5039i(final C1191e connection, final String parentId, final Bundle options) {
            List<Pair<IBinder, Bundle>> list = connection.f8172g.get(parentId);
            if (list != null) {
                for (Pair<IBinder, Bundle> pair : list) {
                    if (MediaBrowserCompatUtils.hasDuplicatedItems(options, pair.second)) {
                        MediaBrowserServiceCompat.this.m5014e(parentId, connection, pair.second, options);
                    }
                }
            }
        }

        /* renamed from: j */
        public void mo5040j(final String parentId, final Bundle options) {
            this.f8177b.notifyChildrenChanged(parentId);
        }

        /* renamed from: k */
        public BrowserRoot m5041k(String clientPackageName, int clientUid, Bundle rootHints) {
            Bundle bundle;
            int i = -1;
            if (rootHints == null || rootHints.getInt(MediaBrowserProtocol.EXTRA_CLIENT_VERSION, 0) == 0) {
                bundle = null;
            } else {
                rootHints.remove(MediaBrowserProtocol.EXTRA_CLIENT_VERSION);
                this.f8178c = new Messenger(MediaBrowserServiceCompat.this.f8146j);
                bundle = new Bundle();
                bundle.putInt(MediaBrowserProtocol.EXTRA_SERVICE_VERSION, 2);
                BundleCompat.putBinder(bundle, MediaBrowserProtocol.EXTRA_MESSENGER_BINDER, this.f8178c.getBinder());
                MediaSessionCompat.Token token = MediaBrowserServiceCompat.this.f8147k;
                if (token != null) {
                    IMediaSession extraBinder = token.getExtraBinder();
                    BundleCompat.putBinder(bundle, MediaBrowserProtocol.EXTRA_SESSION_BINDER, extraBinder == null ? null : extraBinder.asBinder());
                } else {
                    this.f8176a.add(bundle);
                }
                i = rootHints.getInt(MediaBrowserProtocol.EXTRA_CALLING_PID, -1);
                rootHints.remove(MediaBrowserProtocol.EXTRA_CALLING_PID);
            }
            C1191e c1191e = new C1191e(clientPackageName, i, clientUid, rootHints, null);
            MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
            mediaBrowserServiceCompat.f8145i = c1191e;
            BrowserRoot onGetRoot = mediaBrowserServiceCompat.onGetRoot(clientPackageName, clientUid, rootHints);
            MediaBrowserServiceCompat mediaBrowserServiceCompat2 = MediaBrowserServiceCompat.this;
            mediaBrowserServiceCompat2.f8145i = null;
            if (onGetRoot == null) {
                return null;
            }
            if (this.f8178c != null) {
                mediaBrowserServiceCompat2.f8143g.add(c1191e);
            }
            if (bundle == null) {
                bundle = onGetRoot.getExtras();
            } else if (onGetRoot.getExtras() != null) {
                bundle.putAll(onGetRoot.getExtras());
            }
            return new BrowserRoot(onGetRoot.getRootId(), bundle);
        }

        /* renamed from: l */
        public void m5042l(String parentId, final C1198l<List<Parcel>> resultWrapper) {
            b bVar = new b(parentId, resultWrapper);
            MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
            mediaBrowserServiceCompat.f8145i = mediaBrowserServiceCompat.f8142f;
            mediaBrowserServiceCompat.onLoadChildren(parentId, bVar);
            MediaBrowserServiceCompat.this.f8145i = null;
        }

        /* renamed from: m */
        public void m5043m(MediaSessionCompat.Token token) {
            if (!this.f8176a.isEmpty()) {
                IMediaSession extraBinder = token.getExtraBinder();
                if (extraBinder != null) {
                    Iterator<Bundle> it2 = this.f8176a.iterator();
                    while (it2.hasNext()) {
                        BundleCompat.putBinder(it2.next(), MediaBrowserProtocol.EXTRA_SESSION_BINDER, extraBinder.asBinder());
                    }
                }
                this.f8176a.clear();
            }
            this.f8177b.setSessionToken((MediaSession.Token) token.getToken());
        }

        @Override // androidx.media.MediaBrowserServiceCompat.InterfaceC1192f
        public void onCreate() {
            e eVar = new e(MediaBrowserServiceCompat.this);
            this.f8177b = eVar;
            eVar.onCreate();
        }
    }

    @RequiresApi(23)
    /* renamed from: androidx.media.MediaBrowserServiceCompat$h */
    /* loaded from: classes3.dex */
    public class C1194h extends C1193g {

        /* renamed from: androidx.media.MediaBrowserServiceCompat$h$a */
        /* loaded from: classes3.dex */
        public class a extends Result<MediaBrowserCompat.MediaItem> {

            /* renamed from: f */
            public final /* synthetic */ C1198l f8193f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(Object debug, final C1198l val$resultWrapper) {
                super(debug);
                this.f8193f = val$resultWrapper;
            }

            @Override // androidx.media.MediaBrowserServiceCompat.Result
            public void detach() {
                this.f8193f.m5050a();
            }

            @Override // androidx.media.MediaBrowserServiceCompat.Result
            /* renamed from: h, reason: merged with bridge method [inline-methods] */
            public void mo5025f(@Nullable MediaBrowserCompat.MediaItem item) {
                if (item == null) {
                    this.f8193f.m5052c(null);
                    return;
                }
                Parcel obtain = Parcel.obtain();
                item.writeToParcel(obtain, 0);
                this.f8193f.m5052c(obtain);
            }
        }

        /* renamed from: androidx.media.MediaBrowserServiceCompat$h$b */
        /* loaded from: classes3.dex */
        public class b extends C1193g.e {
            public b(Context context) {
                super(context);
            }

            @Override // android.service.media.MediaBrowserService
            public void onLoadItem(String itemId, MediaBrowserService.Result<MediaBrowser.MediaItem> result) {
                C1194h.this.m5045n(itemId, new C1198l<>(result));
            }
        }

        public C1194h() {
            super();
        }

        /* renamed from: n */
        public void m5045n(String itemId, final C1198l<Parcel> resultWrapper) {
            a aVar = new a(itemId, resultWrapper);
            MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
            mediaBrowserServiceCompat.f8145i = mediaBrowserServiceCompat.f8142f;
            mediaBrowserServiceCompat.onLoadItem(itemId, aVar);
            MediaBrowserServiceCompat.this.f8145i = null;
        }

        @Override // androidx.media.MediaBrowserServiceCompat.C1193g, androidx.media.MediaBrowserServiceCompat.InterfaceC1192f
        public void onCreate() {
            b bVar = new b(MediaBrowserServiceCompat.this);
            this.f8177b = bVar;
            bVar.onCreate();
        }
    }

    @RequiresApi(26)
    /* renamed from: androidx.media.MediaBrowserServiceCompat$i */
    /* loaded from: classes3.dex */
    public class C1195i extends C1194h {

        /* renamed from: androidx.media.MediaBrowserServiceCompat$i$a */
        /* loaded from: classes3.dex */
        public class a extends Result<List<MediaBrowserCompat.MediaItem>> {

            /* renamed from: f */
            public final /* synthetic */ C1198l f8197f;

            /* renamed from: g */
            public final /* synthetic */ Bundle f8198g;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(Object debug, final C1198l val$resultWrapper, final Bundle val$options) {
                super(debug);
                this.f8197f = val$resultWrapper;
                this.f8198g = val$options;
            }

            @Override // androidx.media.MediaBrowserServiceCompat.Result
            public void detach() {
                this.f8197f.m5050a();
            }

            @Override // androidx.media.MediaBrowserServiceCompat.Result
            /* renamed from: h, reason: merged with bridge method [inline-methods] */
            public void mo5025f(@Nullable List<MediaBrowserCompat.MediaItem> list) {
                if (list == null) {
                    this.f8197f.m5052c(null);
                    return;
                }
                if ((m5021b() & 1) != 0) {
                    list = MediaBrowserServiceCompat.this.m5011b(list, this.f8198g);
                }
                ArrayList arrayList = new ArrayList();
                for (MediaBrowserCompat.MediaItem mediaItem : list) {
                    Parcel obtain = Parcel.obtain();
                    mediaItem.writeToParcel(obtain, 0);
                    arrayList.add(obtain);
                }
                this.f8197f.m5052c(arrayList);
            }
        }

        /* renamed from: androidx.media.MediaBrowserServiceCompat$i$b */
        /* loaded from: classes3.dex */
        public class b extends C1194h.b {
            public b(Context context) {
                super(context);
            }

            @Override // android.service.media.MediaBrowserService
            public void onLoadChildren(String parentId, MediaBrowserService.Result<List<MediaBrowser.MediaItem>> result, Bundle options) {
                MediaSessionCompat.ensureClassLoader(options);
                C1195i c1195i = C1195i.this;
                MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
                mediaBrowserServiceCompat.f8145i = mediaBrowserServiceCompat.f8142f;
                c1195i.m5047o(parentId, new C1198l<>(result), options);
                MediaBrowserServiceCompat.this.f8145i = null;
            }
        }

        public C1195i() {
            super();
        }

        @Override // androidx.media.MediaBrowserServiceCompat.C1193g, androidx.media.MediaBrowserServiceCompat.InterfaceC1192f
        /* renamed from: b */
        public Bundle mo5032b() {
            MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
            C1191e c1191e = mediaBrowserServiceCompat.f8145i;
            if (c1191e == null) {
                throw new IllegalStateException("This should be called inside of onGetRoot, onLoadChildren, onLoadItem, onSearch, or onCustomAction methods");
            }
            if (c1191e == mediaBrowserServiceCompat.f8142f) {
                return this.f8177b.getBrowserRootHints();
            }
            if (c1191e.f8170e == null) {
                return null;
            }
            return new Bundle(MediaBrowserServiceCompat.this.f8145i.f8170e);
        }

        @Override // androidx.media.MediaBrowserServiceCompat.C1193g
        /* renamed from: j */
        public void mo5040j(final String parentId, final Bundle options) {
            if (options != null) {
                this.f8177b.notifyChildrenChanged(parentId, options);
            } else {
                super.mo5040j(parentId, options);
            }
        }

        /* renamed from: o */
        public void m5047o(String parentId, final C1198l<List<Parcel>> resultWrapper, final Bundle options) {
            a aVar = new a(parentId, resultWrapper, options);
            MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
            mediaBrowserServiceCompat.f8145i = mediaBrowserServiceCompat.f8142f;
            mediaBrowserServiceCompat.onLoadChildren(parentId, aVar, options);
            MediaBrowserServiceCompat.this.f8145i = null;
        }

        @Override // androidx.media.MediaBrowserServiceCompat.C1194h, androidx.media.MediaBrowserServiceCompat.C1193g, androidx.media.MediaBrowserServiceCompat.InterfaceC1192f
        public void onCreate() {
            b bVar = new b(MediaBrowserServiceCompat.this);
            this.f8177b = bVar;
            bVar.onCreate();
        }
    }

    @RequiresApi(28)
    /* renamed from: androidx.media.MediaBrowserServiceCompat$j */
    /* loaded from: classes3.dex */
    public class C1196j extends C1195i {
        public C1196j() {
            super();
        }

        @Override // androidx.media.MediaBrowserServiceCompat.C1193g, androidx.media.MediaBrowserServiceCompat.InterfaceC1192f
        /* renamed from: a */
        public MediaSessionManager.RemoteUserInfo mo5031a() {
            MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
            C1191e c1191e = mediaBrowserServiceCompat.f8145i;
            if (c1191e != null) {
                return c1191e == mediaBrowserServiceCompat.f8142f ? new MediaSessionManager.RemoteUserInfo(this.f8177b.getCurrentBrowserInfo()) : c1191e.f8169d;
            }
            throw new IllegalStateException("This should be called inside of onGetRoot, onLoadChildren, onLoadItem, onSearch, or onCustomAction methods");
        }
    }

    /* renamed from: androidx.media.MediaBrowserServiceCompat$k */
    /* loaded from: classes3.dex */
    public class C1197k implements InterfaceC1192f {

        /* renamed from: a */
        public Messenger f8202a;

        /* renamed from: androidx.media.MediaBrowserServiceCompat$k$a */
        /* loaded from: classes3.dex */
        public class a implements Runnable {

            /* renamed from: e */
            public final /* synthetic */ MediaSessionCompat.Token f8204e;

            public a(final MediaSessionCompat.Token val$token) {
                this.f8204e = val$token;
            }

            @Override // java.lang.Runnable
            public void run() {
                Iterator<C1191e> it2 = MediaBrowserServiceCompat.this.f8144h.values().iterator();
                while (it2.hasNext()) {
                    C1191e next = it2.next();
                    try {
                        next.f8171f.mo5064c(next.f8173h.getRootId(), this.f8204e, next.f8173h.getExtras());
                    } catch (RemoteException unused) {
                        Log.w(MediaBrowserServiceCompat.f8135l, "Connection for " + next.f8166a + " is no longer valid.");
                        it2.remove();
                    }
                }
            }
        }

        /* renamed from: androidx.media.MediaBrowserServiceCompat$k$b */
        /* loaded from: classes3.dex */
        public class b implements Runnable {

            /* renamed from: e */
            public final /* synthetic */ String f8206e;

            /* renamed from: f */
            public final /* synthetic */ Bundle f8207f;

            public b(final String val$parentId, final Bundle val$options) {
                this.f8206e = val$parentId;
                this.f8207f = val$options;
            }

            @Override // java.lang.Runnable
            public void run() {
                Iterator<IBinder> it2 = MediaBrowserServiceCompat.this.f8144h.keySet().iterator();
                while (it2.hasNext()) {
                    C1197k.this.m5049g(MediaBrowserServiceCompat.this.f8144h.get(it2.next()), this.f8206e, this.f8207f);
                }
            }
        }

        /* renamed from: androidx.media.MediaBrowserServiceCompat$k$c */
        /* loaded from: classes3.dex */
        public class c implements Runnable {

            /* renamed from: e */
            public final /* synthetic */ MediaSessionManager.RemoteUserInfo f8209e;

            /* renamed from: f */
            public final /* synthetic */ String f8210f;

            /* renamed from: g */
            public final /* synthetic */ Bundle f8211g;

            public c(final MediaSessionManager.RemoteUserInfo val$remoteUserInfo, final String val$parentId, final Bundle val$options) {
                this.f8209e = val$remoteUserInfo;
                this.f8210f = val$parentId;
                this.f8211g = val$options;
            }

            @Override // java.lang.Runnable
            public void run() {
                for (int i = 0; i < MediaBrowserServiceCompat.this.f8144h.size(); i++) {
                    C1191e valueAt = MediaBrowserServiceCompat.this.f8144h.valueAt(i);
                    if (valueAt.f8169d.equals(this.f8209e)) {
                        C1197k.this.m5049g(valueAt, this.f8210f, this.f8211g);
                        return;
                    }
                }
            }
        }

        public C1197k() {
        }

        @Override // androidx.media.MediaBrowserServiceCompat.InterfaceC1192f
        /* renamed from: a */
        public MediaSessionManager.RemoteUserInfo mo5031a() {
            C1191e c1191e = MediaBrowserServiceCompat.this.f8145i;
            if (c1191e != null) {
                return c1191e.f8169d;
            }
            throw new IllegalStateException("This should be called inside of onLoadChildren, onLoadItem, onSearch, or onCustomAction methods");
        }

        @Override // androidx.media.MediaBrowserServiceCompat.InterfaceC1192f
        /* renamed from: b */
        public Bundle mo5032b() {
            C1191e c1191e = MediaBrowserServiceCompat.this.f8145i;
            if (c1191e == null) {
                throw new IllegalStateException("This should be called inside of onLoadChildren, onLoadItem, onSearch, or onCustomAction methods");
            }
            if (c1191e.f8170e == null) {
                return null;
            }
            return new Bundle(MediaBrowserServiceCompat.this.f8145i.f8170e);
        }

        @Override // androidx.media.MediaBrowserServiceCompat.InterfaceC1192f
        /* renamed from: c */
        public IBinder mo5033c(Intent intent) {
            if (MediaBrowserServiceCompat.SERVICE_INTERFACE.equals(intent.getAction())) {
                return this.f8202a.getBinder();
            }
            return null;
        }

        @Override // androidx.media.MediaBrowserServiceCompat.InterfaceC1192f
        /* renamed from: d */
        public void mo5034d(@NonNull final MediaSessionManager.RemoteUserInfo remoteUserInfo, @NonNull final String parentId, final Bundle options) {
            MediaBrowserServiceCompat.this.f8146j.post(new c(remoteUserInfo, parentId, options));
        }

        @Override // androidx.media.MediaBrowserServiceCompat.InterfaceC1192f
        /* renamed from: e */
        public void mo5035e(@NonNull final String parentId, final Bundle options) {
            MediaBrowserServiceCompat.this.f8146j.post(new b(parentId, options));
        }

        @Override // androidx.media.MediaBrowserServiceCompat.InterfaceC1192f
        /* renamed from: f */
        public void mo5036f(final MediaSessionCompat.Token token) {
            MediaBrowserServiceCompat.this.f8146j.post(new a(token));
        }

        /* renamed from: g */
        public void m5049g(final C1191e connection, final String parentId, final Bundle options) {
            List<Pair<IBinder, Bundle>> list = connection.f8172g.get(parentId);
            if (list != null) {
                for (Pair<IBinder, Bundle> pair : list) {
                    if (MediaBrowserCompatUtils.hasDuplicatedItems(options, pair.second)) {
                        MediaBrowserServiceCompat.this.m5014e(parentId, connection, pair.second, options);
                    }
                }
            }
        }

        @Override // androidx.media.MediaBrowserServiceCompat.InterfaceC1192f
        public void onCreate() {
            this.f8202a = new Messenger(MediaBrowserServiceCompat.this.f8146j);
        }
    }

    @RequiresApi(21)
    /* renamed from: androidx.media.MediaBrowserServiceCompat$l */
    /* loaded from: classes3.dex */
    public static class C1198l<T> {

        /* renamed from: a */
        public MediaBrowserService.Result f8213a;

        public C1198l(MediaBrowserService.Result result) {
            this.f8213a = result;
        }

        /* renamed from: a */
        public void m5050a() {
            this.f8213a.detach();
        }

        /* renamed from: b */
        public List<MediaBrowser.MediaItem> m5051b(List<Parcel> parcelList) {
            if (parcelList == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            for (Parcel parcel : parcelList) {
                parcel.setDataPosition(0);
                arrayList.add((MediaBrowser.MediaItem) MediaBrowser.MediaItem.CREATOR.createFromParcel(parcel));
                parcel.recycle();
            }
            return arrayList;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: c */
        public void m5052c(T result) {
            if (result instanceof List) {
                this.f8213a.sendResult(m5051b((List) result));
                return;
            }
            if (!(result instanceof Parcel)) {
                this.f8213a.sendResult(null);
                return;
            }
            Parcel parcel = (Parcel) result;
            parcel.setDataPosition(0);
            this.f8213a.sendResult(MediaBrowser.MediaItem.CREATOR.createFromParcel(parcel));
            parcel.recycle();
        }
    }

    /* renamed from: androidx.media.MediaBrowserServiceCompat$m */
    /* loaded from: classes3.dex */
    public class C1199m {

        /* renamed from: androidx.media.MediaBrowserServiceCompat$m$a */
        /* loaded from: classes3.dex */
        public class a implements Runnable {

            /* renamed from: e */
            public final /* synthetic */ InterfaceC1200n f8215e;

            /* renamed from: f */
            public final /* synthetic */ String f8216f;

            /* renamed from: g */
            public final /* synthetic */ int f8217g;

            /* renamed from: h */
            public final /* synthetic */ int f8218h;

            /* renamed from: i */
            public final /* synthetic */ Bundle f8219i;

            public a(final InterfaceC1200n val$callbacks, final String val$pkg, final int val$pid, final int val$uid, final Bundle val$rootHints) {
                this.f8215e = val$callbacks;
                this.f8216f = val$pkg;
                this.f8217g = val$pid;
                this.f8218h = val$uid;
                this.f8219i = val$rootHints;
            }

            @Override // java.lang.Runnable
            public void run() {
                IBinder asBinder = this.f8215e.asBinder();
                MediaBrowserServiceCompat.this.f8144h.remove(asBinder);
                C1191e c1191e = new C1191e(this.f8216f, this.f8217g, this.f8218h, this.f8219i, this.f8215e);
                MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
                mediaBrowserServiceCompat.f8145i = c1191e;
                BrowserRoot onGetRoot = mediaBrowserServiceCompat.onGetRoot(this.f8216f, this.f8218h, this.f8219i);
                c1191e.f8173h = onGetRoot;
                MediaBrowserServiceCompat mediaBrowserServiceCompat2 = MediaBrowserServiceCompat.this;
                mediaBrowserServiceCompat2.f8145i = null;
                if (onGetRoot != null) {
                    try {
                        mediaBrowserServiceCompat2.f8144h.put(asBinder, c1191e);
                        asBinder.linkToDeath(c1191e, 0);
                        if (MediaBrowserServiceCompat.this.f8147k != null) {
                            this.f8215e.mo5064c(c1191e.f8173h.getRootId(), MediaBrowserServiceCompat.this.f8147k, c1191e.f8173h.getExtras());
                            return;
                        }
                        return;
                    } catch (RemoteException unused) {
                        Log.w(MediaBrowserServiceCompat.f8135l, "Calling onConnect() failed. Dropping client. pkg=" + this.f8216f);
                        MediaBrowserServiceCompat.this.f8144h.remove(asBinder);
                        return;
                    }
                }
                Log.i(MediaBrowserServiceCompat.f8135l, "No root for client " + this.f8216f + " from service " + getClass().getName());
                try {
                    this.f8215e.mo5063b();
                } catch (RemoteException unused2) {
                    Log.w(MediaBrowserServiceCompat.f8135l, "Calling onConnectFailed() failed. Ignoring. pkg=" + this.f8216f);
                }
            }
        }

        /* renamed from: androidx.media.MediaBrowserServiceCompat$m$b */
        /* loaded from: classes3.dex */
        public class b implements Runnable {

            /* renamed from: e */
            public final /* synthetic */ InterfaceC1200n f8221e;

            public b(final InterfaceC1200n val$callbacks) {
                this.f8221e = val$callbacks;
            }

            @Override // java.lang.Runnable
            public void run() {
                C1191e remove = MediaBrowserServiceCompat.this.f8144h.remove(this.f8221e.asBinder());
                if (remove != null) {
                    remove.f8171f.asBinder().unlinkToDeath(remove, 0);
                }
            }
        }

        /* renamed from: androidx.media.MediaBrowserServiceCompat$m$c */
        /* loaded from: classes3.dex */
        public class c implements Runnable {

            /* renamed from: e */
            public final /* synthetic */ InterfaceC1200n f8223e;

            /* renamed from: f */
            public final /* synthetic */ String f8224f;

            /* renamed from: g */
            public final /* synthetic */ IBinder f8225g;

            /* renamed from: h */
            public final /* synthetic */ Bundle f8226h;

            public c(final InterfaceC1200n val$callbacks, final String val$id, final IBinder val$token, final Bundle val$options) {
                this.f8223e = val$callbacks;
                this.f8224f = val$id;
                this.f8225g = val$token;
                this.f8226h = val$options;
            }

            @Override // java.lang.Runnable
            public void run() {
                C1191e c1191e = MediaBrowserServiceCompat.this.f8144h.get(this.f8223e.asBinder());
                if (c1191e != null) {
                    MediaBrowserServiceCompat.this.m5010a(this.f8224f, c1191e, this.f8225g, this.f8226h);
                    return;
                }
                Log.w(MediaBrowserServiceCompat.f8135l, "addSubscription for callback that isn't registered id=" + this.f8224f);
            }
        }

        /* renamed from: androidx.media.MediaBrowserServiceCompat$m$d */
        /* loaded from: classes3.dex */
        public class d implements Runnable {

            /* renamed from: e */
            public final /* synthetic */ InterfaceC1200n f8228e;

            /* renamed from: f */
            public final /* synthetic */ String f8229f;

            /* renamed from: g */
            public final /* synthetic */ IBinder f8230g;

            public d(final InterfaceC1200n val$callbacks, final String val$id, final IBinder val$token) {
                this.f8228e = val$callbacks;
                this.f8229f = val$id;
                this.f8230g = val$token;
            }

            @Override // java.lang.Runnable
            public void run() {
                C1191e c1191e = MediaBrowserServiceCompat.this.f8144h.get(this.f8228e.asBinder());
                if (c1191e == null) {
                    Log.w(MediaBrowserServiceCompat.f8135l, "removeSubscription for callback that isn't registered id=" + this.f8229f);
                    return;
                }
                if (MediaBrowserServiceCompat.this.m5017h(this.f8229f, c1191e, this.f8230g)) {
                    return;
                }
                Log.w(MediaBrowserServiceCompat.f8135l, "removeSubscription called for " + this.f8229f + " which is not subscribed");
            }
        }

        /* renamed from: androidx.media.MediaBrowserServiceCompat$m$e */
        /* loaded from: classes3.dex */
        public class e implements Runnable {

            /* renamed from: e */
            public final /* synthetic */ InterfaceC1200n f8232e;

            /* renamed from: f */
            public final /* synthetic */ String f8233f;

            /* renamed from: g */
            public final /* synthetic */ ResultReceiver f8234g;

            public e(final InterfaceC1200n val$callbacks, final String val$mediaId, final ResultReceiver val$receiver) {
                this.f8232e = val$callbacks;
                this.f8233f = val$mediaId;
                this.f8234g = val$receiver;
            }

            @Override // java.lang.Runnable
            public void run() {
                C1191e c1191e = MediaBrowserServiceCompat.this.f8144h.get(this.f8232e.asBinder());
                if (c1191e != null) {
                    MediaBrowserServiceCompat.this.m5015f(this.f8233f, c1191e, this.f8234g);
                    return;
                }
                Log.w(MediaBrowserServiceCompat.f8135l, "getMediaItem for callback that isn't registered id=" + this.f8233f);
            }
        }

        /* renamed from: androidx.media.MediaBrowserServiceCompat$m$f */
        /* loaded from: classes3.dex */
        public class f implements Runnable {

            /* renamed from: e */
            public final /* synthetic */ InterfaceC1200n f8236e;

            /* renamed from: f */
            public final /* synthetic */ int f8237f;

            /* renamed from: g */
            public final /* synthetic */ String f8238g;

            /* renamed from: h */
            public final /* synthetic */ int f8239h;

            /* renamed from: i */
            public final /* synthetic */ Bundle f8240i;

            public f(final InterfaceC1200n val$callbacks, final int val$uid, final String val$pkg, final int val$pid, final Bundle val$rootHints) {
                this.f8236e = val$callbacks;
                this.f8237f = val$uid;
                this.f8238g = val$pkg;
                this.f8239h = val$pid;
                this.f8240i = val$rootHints;
            }

            @Override // java.lang.Runnable
            public void run() {
                C1191e c1191e;
                IBinder asBinder = this.f8236e.asBinder();
                MediaBrowserServiceCompat.this.f8144h.remove(asBinder);
                Iterator<C1191e> it2 = MediaBrowserServiceCompat.this.f8143g.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    C1191e next = it2.next();
                    if (next.f8168c == this.f8237f) {
                        c1191e = (TextUtils.isEmpty(this.f8238g) || this.f8239h <= 0) ? new C1191e(next.f8166a, next.f8167b, next.f8168c, this.f8240i, this.f8236e) : null;
                        it2.remove();
                    }
                }
                if (c1191e == null) {
                    c1191e = new C1191e(this.f8238g, this.f8239h, this.f8237f, this.f8240i, this.f8236e);
                }
                MediaBrowserServiceCompat.this.f8144h.put(asBinder, c1191e);
                try {
                    asBinder.linkToDeath(c1191e, 0);
                } catch (RemoteException unused) {
                    Log.w(MediaBrowserServiceCompat.f8135l, "IBinder is already dead.");
                }
            }
        }

        /* renamed from: androidx.media.MediaBrowserServiceCompat$m$g */
        /* loaded from: classes3.dex */
        public class g implements Runnable {

            /* renamed from: e */
            public final /* synthetic */ InterfaceC1200n f8242e;

            public g(final InterfaceC1200n val$callbacks) {
                this.f8242e = val$callbacks;
            }

            @Override // java.lang.Runnable
            public void run() {
                IBinder asBinder = this.f8242e.asBinder();
                C1191e remove = MediaBrowserServiceCompat.this.f8144h.remove(asBinder);
                if (remove != null) {
                    asBinder.unlinkToDeath(remove, 0);
                }
            }
        }

        /* renamed from: androidx.media.MediaBrowserServiceCompat$m$h */
        /* loaded from: classes3.dex */
        public class h implements Runnable {

            /* renamed from: e */
            public final /* synthetic */ InterfaceC1200n f8244e;

            /* renamed from: f */
            public final /* synthetic */ String f8245f;

            /* renamed from: g */
            public final /* synthetic */ Bundle f8246g;

            /* renamed from: h */
            public final /* synthetic */ ResultReceiver f8247h;

            public h(final InterfaceC1200n val$callbacks, final String val$query, final Bundle val$extras, final ResultReceiver val$receiver) {
                this.f8244e = val$callbacks;
                this.f8245f = val$query;
                this.f8246g = val$extras;
                this.f8247h = val$receiver;
            }

            @Override // java.lang.Runnable
            public void run() {
                C1191e c1191e = MediaBrowserServiceCompat.this.f8144h.get(this.f8244e.asBinder());
                if (c1191e != null) {
                    MediaBrowserServiceCompat.this.m5016g(this.f8245f, this.f8246g, c1191e, this.f8247h);
                    return;
                }
                Log.w(MediaBrowserServiceCompat.f8135l, "search for callback that isn't registered query=" + this.f8245f);
            }
        }

        /* renamed from: androidx.media.MediaBrowserServiceCompat$m$i */
        /* loaded from: classes3.dex */
        public class i implements Runnable {

            /* renamed from: e */
            public final /* synthetic */ InterfaceC1200n f8249e;

            /* renamed from: f */
            public final /* synthetic */ String f8250f;

            /* renamed from: g */
            public final /* synthetic */ Bundle f8251g;

            /* renamed from: h */
            public final /* synthetic */ ResultReceiver f8252h;

            public i(final InterfaceC1200n val$callbacks, final String val$action, final Bundle val$extras, final ResultReceiver val$receiver) {
                this.f8249e = val$callbacks;
                this.f8250f = val$action;
                this.f8251g = val$extras;
                this.f8252h = val$receiver;
            }

            @Override // java.lang.Runnable
            public void run() {
                C1191e c1191e = MediaBrowserServiceCompat.this.f8144h.get(this.f8249e.asBinder());
                if (c1191e != null) {
                    MediaBrowserServiceCompat.this.m5013d(this.f8250f, this.f8251g, c1191e, this.f8252h);
                    return;
                }
                Log.w(MediaBrowserServiceCompat.f8135l, "sendCustomAction for callback that isn't registered action=" + this.f8250f + ", extras=" + this.f8251g);
            }
        }

        public C1199m() {
        }

        /* renamed from: a */
        public void m5053a(final String id, final IBinder token, final Bundle options, final InterfaceC1200n callbacks) {
            MediaBrowserServiceCompat.this.f8146j.m5066a(new c(callbacks, id, token, options));
        }

        /* renamed from: b */
        public void m5054b(final String pkg, final int pid, final int uid, final Bundle rootHints, final InterfaceC1200n callbacks) {
            if (MediaBrowserServiceCompat.this.m5012c(pkg, uid)) {
                MediaBrowserServiceCompat.this.f8146j.m5066a(new a(callbacks, pkg, pid, uid, rootHints));
                return;
            }
            throw new IllegalArgumentException("Package/uid mismatch: uid=" + uid + " package=" + pkg);
        }

        /* renamed from: c */
        public void m5055c(final InterfaceC1200n callbacks) {
            MediaBrowserServiceCompat.this.f8146j.m5066a(new b(callbacks));
        }

        /* renamed from: d */
        public void m5056d(final String mediaId, final ResultReceiver receiver, final InterfaceC1200n callbacks) {
            if (TextUtils.isEmpty(mediaId) || receiver == null) {
                return;
            }
            MediaBrowserServiceCompat.this.f8146j.m5066a(new e(callbacks, mediaId, receiver));
        }

        /* renamed from: e */
        public void m5057e(final InterfaceC1200n callbacks, final String pkg, final int pid, final int uid, final Bundle rootHints) {
            MediaBrowserServiceCompat.this.f8146j.m5066a(new f(callbacks, uid, pkg, pid, rootHints));
        }

        /* renamed from: f */
        public void m5058f(final String id, final IBinder token, final InterfaceC1200n callbacks) {
            MediaBrowserServiceCompat.this.f8146j.m5066a(new d(callbacks, id, token));
        }

        /* renamed from: g */
        public void m5059g(final String query, final Bundle extras, final ResultReceiver receiver, final InterfaceC1200n callbacks) {
            if (TextUtils.isEmpty(query) || receiver == null) {
                return;
            }
            MediaBrowserServiceCompat.this.f8146j.m5066a(new h(callbacks, query, extras, receiver));
        }

        /* renamed from: h */
        public void m5060h(final String action, final Bundle extras, final ResultReceiver receiver, final InterfaceC1200n callbacks) {
            if (TextUtils.isEmpty(action) || receiver == null) {
                return;
            }
            MediaBrowserServiceCompat.this.f8146j.m5066a(new i(callbacks, action, extras, receiver));
        }

        /* renamed from: i */
        public void m5061i(final InterfaceC1200n callbacks) {
            MediaBrowserServiceCompat.this.f8146j.m5066a(new g(callbacks));
        }
    }

    /* renamed from: androidx.media.MediaBrowserServiceCompat$n */
    /* loaded from: classes3.dex */
    public interface InterfaceC1200n {
        /* renamed from: a */
        void mo5062a(String mediaId, List<MediaBrowserCompat.MediaItem> list, Bundle options, Bundle notifyChildrenChangedOptions) throws RemoteException;

        IBinder asBinder();

        /* renamed from: b */
        void mo5063b() throws RemoteException;

        /* renamed from: c */
        void mo5064c(String root, MediaSessionCompat.Token session, Bundle extras) throws RemoteException;
    }

    /* renamed from: androidx.media.MediaBrowserServiceCompat$o */
    /* loaded from: classes3.dex */
    public static class C1201o implements InterfaceC1200n {

        /* renamed from: a */
        public final Messenger f8254a;

        public C1201o(Messenger callbacks) {
            this.f8254a = callbacks;
        }

        @Override // androidx.media.MediaBrowserServiceCompat.InterfaceC1200n
        /* renamed from: a */
        public void mo5062a(String mediaId, List<MediaBrowserCompat.MediaItem> list, Bundle options, Bundle notifyChildrenChangedOptions) throws RemoteException {
            Bundle bundle = new Bundle();
            bundle.putString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID, mediaId);
            bundle.putBundle(MediaBrowserProtocol.DATA_OPTIONS, options);
            bundle.putBundle(MediaBrowserProtocol.DATA_NOTIFY_CHILDREN_CHANGED_OPTIONS, notifyChildrenChangedOptions);
            if (list != null) {
                bundle.putParcelableArrayList(MediaBrowserProtocol.DATA_MEDIA_ITEM_LIST, list instanceof ArrayList ? (ArrayList) list : new ArrayList<>(list));
            }
            m5065d(3, bundle);
        }

        @Override // androidx.media.MediaBrowserServiceCompat.InterfaceC1200n
        public IBinder asBinder() {
            return this.f8254a.getBinder();
        }

        @Override // androidx.media.MediaBrowserServiceCompat.InterfaceC1200n
        /* renamed from: b */
        public void mo5063b() throws RemoteException {
            m5065d(2, null);
        }

        @Override // androidx.media.MediaBrowserServiceCompat.InterfaceC1200n
        /* renamed from: c */
        public void mo5064c(String root, MediaSessionCompat.Token session, Bundle extras) throws RemoteException {
            if (extras == null) {
                extras = new Bundle();
            }
            extras.putInt(MediaBrowserProtocol.EXTRA_SERVICE_VERSION, 2);
            Bundle bundle = new Bundle();
            bundle.putString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID, root);
            bundle.putParcelable(MediaBrowserProtocol.DATA_MEDIA_SESSION_TOKEN, session);
            bundle.putBundle(MediaBrowserProtocol.DATA_ROOT_HINTS, extras);
            m5065d(1, bundle);
        }

        /* renamed from: d */
        public final void m5065d(int what, Bundle data) throws RemoteException {
            Message obtain = Message.obtain();
            obtain.what = what;
            obtain.arg1 = 2;
            obtain.setData(data);
            this.f8254a.send(obtain);
        }
    }

    /* renamed from: androidx.media.MediaBrowserServiceCompat$p */
    /* loaded from: classes3.dex */
    public final class HandlerC1202p extends Handler {

        /* renamed from: a */
        public final C1199m f8255a;

        public HandlerC1202p() {
            this.f8255a = new C1199m();
        }

        /* renamed from: a */
        public void m5066a(Runnable r) {
            if (Thread.currentThread() == getLooper().getThread()) {
                r.run();
            } else {
                post(r);
            }
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            Bundle data = msg.getData();
            switch (msg.what) {
                case 1:
                    Bundle bundle = data.getBundle(MediaBrowserProtocol.DATA_ROOT_HINTS);
                    MediaSessionCompat.ensureClassLoader(bundle);
                    this.f8255a.m5054b(data.getString(MediaBrowserProtocol.DATA_PACKAGE_NAME), data.getInt("data_calling_pid"), data.getInt("data_calling_uid"), bundle, new C1201o(msg.replyTo));
                    return;
                case 2:
                    this.f8255a.m5055c(new C1201o(msg.replyTo));
                    return;
                case 3:
                    Bundle bundle2 = data.getBundle(MediaBrowserProtocol.DATA_OPTIONS);
                    MediaSessionCompat.ensureClassLoader(bundle2);
                    this.f8255a.m5053a(data.getString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID), BundleCompat.getBinder(data, MediaBrowserProtocol.DATA_CALLBACK_TOKEN), bundle2, new C1201o(msg.replyTo));
                    return;
                case 4:
                    this.f8255a.m5058f(data.getString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID), BundleCompat.getBinder(data, MediaBrowserProtocol.DATA_CALLBACK_TOKEN), new C1201o(msg.replyTo));
                    return;
                case 5:
                    this.f8255a.m5056d(data.getString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID), (ResultReceiver) data.getParcelable(MediaBrowserProtocol.DATA_RESULT_RECEIVER), new C1201o(msg.replyTo));
                    return;
                case 6:
                    Bundle bundle3 = data.getBundle(MediaBrowserProtocol.DATA_ROOT_HINTS);
                    MediaSessionCompat.ensureClassLoader(bundle3);
                    this.f8255a.m5057e(new C1201o(msg.replyTo), data.getString(MediaBrowserProtocol.DATA_PACKAGE_NAME), data.getInt("data_calling_pid"), data.getInt("data_calling_uid"), bundle3);
                    return;
                case 7:
                    this.f8255a.m5061i(new C1201o(msg.replyTo));
                    return;
                case 8:
                    Bundle bundle4 = data.getBundle(MediaBrowserProtocol.DATA_SEARCH_EXTRAS);
                    MediaSessionCompat.ensureClassLoader(bundle4);
                    this.f8255a.m5059g(data.getString(MediaBrowserProtocol.DATA_SEARCH_QUERY), bundle4, (ResultReceiver) data.getParcelable(MediaBrowserProtocol.DATA_RESULT_RECEIVER), new C1201o(msg.replyTo));
                    return;
                case 9:
                    Bundle bundle5 = data.getBundle(MediaBrowserProtocol.DATA_CUSTOM_ACTION_EXTRAS);
                    MediaSessionCompat.ensureClassLoader(bundle5);
                    this.f8255a.m5060h(data.getString(MediaBrowserProtocol.DATA_CUSTOM_ACTION), bundle5, (ResultReceiver) data.getParcelable(MediaBrowserProtocol.DATA_RESULT_RECEIVER), new C1201o(msg.replyTo));
                    return;
                default:
                    Log.w(MediaBrowserServiceCompat.f8135l, "Unhandled message: " + msg + "\n  Service version: 2\n  Client version: " + msg.arg1);
                    return;
            }
        }

        @Override // android.os.Handler
        public boolean sendMessageAtTime(Message msg, long uptimeMillis) {
            Bundle data = msg.getData();
            data.setClassLoader(MediaBrowserCompat.class.getClassLoader());
            data.putInt("data_calling_uid", Binder.getCallingUid());
            int callingPid = Binder.getCallingPid();
            if (callingPid > 0) {
                data.putInt("data_calling_pid", callingPid);
            } else if (!data.containsKey("data_calling_pid")) {
                data.putInt("data_calling_pid", -1);
            }
            return super.sendMessageAtTime(msg, uptimeMillis);
        }
    }

    /* renamed from: a */
    public void m5010a(String id, C1191e connection, IBinder token, Bundle options) {
        List<Pair<IBinder, Bundle>> list = connection.f8172g.get(id);
        if (list == null) {
            list = new ArrayList<>();
        }
        for (Pair<IBinder, Bundle> pair : list) {
            if (token == pair.first && MediaBrowserCompatUtils.areSameOptions(options, pair.second)) {
                return;
            }
        }
        list.add(new Pair<>(token, options));
        connection.f8172g.put(id, list);
        m5014e(id, connection, options, null);
        this.f8145i = connection;
        onSubscribe(id, options);
        this.f8145i = null;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void attachToBaseContext(Context base) {
        attachBaseContext(base);
    }

    /* renamed from: b */
    public List<MediaBrowserCompat.MediaItem> m5011b(List<MediaBrowserCompat.MediaItem> list, final Bundle options) {
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

    /* renamed from: c */
    public boolean m5012c(String pkg, int uid) {
        if (pkg == null) {
            return false;
        }
        for (String str : getPackageManager().getPackagesForUid(uid)) {
            if (str.equals(pkg)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: d */
    public void m5013d(final String action, Bundle extras, C1191e connection, final ResultReceiver receiver) {
        C1190d c1190d = new C1190d(action, receiver);
        this.f8145i = connection;
        onCustomAction(action, extras, c1190d);
        this.f8145i = null;
        if (c1190d.m5022c()) {
            return;
        }
        throw new IllegalStateException("onCustomAction must call detach() or sendResult() or sendError() before returning for action=" + action + " extras=" + extras);
    }

    @Override // android.app.Service
    public void dump(FileDescriptor fd, PrintWriter writer, String[] args) {
    }

    /* renamed from: e */
    public void m5014e(final String parentId, final C1191e connection, final Bundle subscribeOptions, final Bundle notifyChildrenChangedOptions) {
        C1187a c1187a = new C1187a(parentId, connection, parentId, subscribeOptions, notifyChildrenChangedOptions);
        this.f8145i = connection;
        if (subscribeOptions == null) {
            onLoadChildren(parentId, c1187a);
        } else {
            onLoadChildren(parentId, c1187a, subscribeOptions);
        }
        this.f8145i = null;
        if (c1187a.m5022c()) {
            return;
        }
        throw new IllegalStateException("onLoadChildren must call detach() or sendResult() before returning for package=" + connection.f8166a + " id=" + parentId);
    }

    /* renamed from: f */
    public void m5015f(String itemId, C1191e connection, final ResultReceiver receiver) {
        C1188b c1188b = new C1188b(itemId, receiver);
        this.f8145i = connection;
        onLoadItem(itemId, c1188b);
        this.f8145i = null;
        if (c1188b.m5022c()) {
            return;
        }
        throw new IllegalStateException("onLoadItem must call detach() or sendResult() before returning for id=" + itemId);
    }

    /* renamed from: g */
    public void m5016g(final String query, Bundle extras, C1191e connection, final ResultReceiver receiver) {
        C1189c c1189c = new C1189c(query, receiver);
        this.f8145i = connection;
        onSearch(query, extras, c1189c);
        this.f8145i = null;
        if (c1189c.m5022c()) {
            return;
        }
        throw new IllegalStateException("onSearch must call detach() or sendResult() before returning for query=" + query);
    }

    public final Bundle getBrowserRootHints() {
        return this.f8141e.mo5032b();
    }

    @NonNull
    public final MediaSessionManager.RemoteUserInfo getCurrentBrowserInfo() {
        return this.f8141e.mo5031a();
    }

    @Nullable
    public MediaSessionCompat.Token getSessionToken() {
        return this.f8147k;
    }

    /* renamed from: h */
    public boolean m5017h(String id, C1191e connection, IBinder token) {
        boolean z = false;
        try {
            if (token == null) {
                return connection.f8172g.remove(id) != null;
            }
            List<Pair<IBinder, Bundle>> list = connection.f8172g.get(id);
            if (list != null) {
                Iterator<Pair<IBinder, Bundle>> it2 = list.iterator();
                while (it2.hasNext()) {
                    if (token == it2.next().first) {
                        it2.remove();
                        z = true;
                    }
                }
                if (list.size() == 0) {
                    connection.f8172g.remove(id);
                }
            }
            return z;
        } finally {
            this.f8145i = connection;
            onUnsubscribe(id);
            this.f8145i = null;
        }
    }

    public void notifyChildrenChanged(@NonNull String parentId) {
        if (parentId != null) {
            this.f8141e.mo5035e(parentId, null);
            return;
        }
        throw new IllegalArgumentException("parentId cannot be null in notifyChildrenChanged");
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.f8141e.mo5033c(intent);
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        C1196j c1196j = new C1196j();
        this.f8141e = c1196j;
        c1196j.onCreate();
    }

    public void onCustomAction(@NonNull String action, Bundle extras, @NonNull Result<Bundle> result) {
        result.sendError(null);
    }

    @Nullable
    public abstract BrowserRoot onGetRoot(@NonNull String clientPackageName, int clientUid, @Nullable Bundle rootHints);

    public abstract void onLoadChildren(@NonNull String parentId, @NonNull Result<List<MediaBrowserCompat.MediaItem>> result);

    public void onLoadChildren(@NonNull String parentId, @NonNull Result<List<MediaBrowserCompat.MediaItem>> result, @NonNull Bundle options) {
        result.m5026g(1);
        onLoadChildren(parentId, result);
    }

    public void onLoadItem(String itemId, @NonNull Result<MediaBrowserCompat.MediaItem> result) {
        result.m5026g(2);
        result.sendResult(null);
    }

    public void onSearch(@NonNull String query, Bundle extras, @NonNull Result<List<MediaBrowserCompat.MediaItem>> result) {
        result.m5026g(4);
        result.sendResult(null);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public void onSubscribe(String id, Bundle option) {
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public void onUnsubscribe(String id) {
    }

    public void setSessionToken(MediaSessionCompat.Token token) {
        if (token == null) {
            throw new IllegalArgumentException("Session token may not be null");
        }
        if (this.f8147k != null) {
            throw new IllegalStateException("The session token has already been set");
        }
        this.f8147k = token;
        this.f8141e.mo5036f(token);
    }

    public void notifyChildrenChanged(@NonNull String parentId, @NonNull Bundle options) {
        if (parentId == null) {
            throw new IllegalArgumentException("parentId cannot be null in notifyChildrenChanged");
        }
        if (options != null) {
            this.f8141e.mo5035e(parentId, options);
            return;
        }
        throw new IllegalArgumentException("options cannot be null in notifyChildrenChanged");
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void notifyChildrenChanged(@NonNull MediaSessionManager.RemoteUserInfo remoteUserInfo, @NonNull String parentId, @NonNull Bundle options) {
        if (remoteUserInfo == null) {
            throw new IllegalArgumentException("remoteUserInfo cannot be null in notifyChildrenChanged");
        }
        if (parentId == null) {
            throw new IllegalArgumentException("parentId cannot be null in notifyChildrenChanged");
        }
        if (options != null) {
            this.f8141e.mo5034d(remoteUserInfo, parentId, options);
            return;
        }
        throw new IllegalArgumentException("options cannot be null in notifyChildrenChanged");
    }
}
