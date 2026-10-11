package com.oplus.ocs.base.common.api;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import com.oplus.ocs.base.common.AuthResult;
import com.oplus.ocs.base.common.CapabilityInfo;
import com.oplus.ocs.base.common.HandlerC13030a;
import com.oplus.ocs.base.common.api.Api;
import com.oplus.ocs.base.common.api.Api.ApiOptions;
import com.oplus.ocs.base.internal.ClientSettings;
import com.oplus.ocs.base.utils.C13071a;
import com.oplus.ocs.base.utils.C13074d;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.oplus.ocs.base.common.api.l */
/* loaded from: classes9.dex */
public class C13045l<O extends Api.ApiOptions> implements Handler.Callback {

    /* renamed from: c */
    static Map<Api.ClientKey, OplusApiClient> f63070c = new ConcurrentHashMap();

    /* renamed from: d */
    private static final String f63071d = "l";

    /* renamed from: f */
    private static volatile C13045l f63072f;

    /* renamed from: a */
    Context f63073a;

    /* renamed from: b */
    HandlerC13030a f63074b;

    /* renamed from: e */
    private Looper f63075e;

    private C13045l(Context context, Looper looper) {
        if (context.getApplicationContext() != null) {
            this.f63073a = context.getApplicationContext();
        } else {
            this.f63073a = context;
        }
        this.f63075e = looper;
        this.f63074b = new HandlerC13030a(this.f63075e, this);
    }

    /* renamed from: a */
    public static C13045l m52188a(Context context) {
        if (f63072f == null) {
            synchronized (C13045l.class) {
                if (f63072f == null) {
                    HandlerThread handlerThread = new HandlerThread("OplusApiManager", 9);
                    handlerThread.start();
                    if (handlerThread.getLooper() != null) {
                        f63072f = new C13045l(context, handlerThread.getLooper());
                    } else {
                        f63072f = new C13045l(context, Looper.getMainLooper());
                    }
                }
            }
        }
        return f63072f;
    }

    /* renamed from: b */
    public static IBinder m52193b(OplusApi oplusApi) {
        OplusApiClient oplusApiClient;
        C13074d.m52235a(oplusApi, "oplusApi not be null");
        if (!f63070c.containsKey(oplusApi.getApi().getClientKey()) || (oplusApiClient = f63070c.get(oplusApi.getApi().getClientKey())) == null) {
            return null;
        }
        return oplusApiClient.getRemoteService();
    }

    /* renamed from: c */
    public static int m52194c(OplusApi oplusApi) {
        OplusApiClient oplusApiClient;
        C13074d.m52235a(oplusApi, "oplusApi not be null");
        if (!f63070c.containsKey(oplusApi.getApi().getClientKey()) || (oplusApiClient = f63070c.get(oplusApi.getApi().getClientKey())) == null) {
            return 0;
        }
        return oplusApiClient.getRemoteVersion();
    }

    /* renamed from: d */
    public static AuthResult m52195d(OplusApi oplusApi) {
        OplusApiClient oplusApiClient;
        C13074d.m52235a(oplusApi, "oplusApi not be null");
        if (!f63070c.containsKey(oplusApi.getApi().getClientKey()) || (oplusApiClient = f63070c.get(oplusApi.getApi().getClientKey())) == null) {
            return null;
        }
        return oplusApiClient.getAuthResult();
    }

    /* renamed from: e */
    public static boolean m52196e(OplusApi oplusApi) {
        OplusApiClient oplusApiClient;
        C13074d.m52235a(oplusApi, "oplusApi not be null");
        if (!f63070c.containsKey(oplusApi.getApi().getClientKey()) || (oplusApiClient = f63070c.get(oplusApi.getApi().getClientKey())) == null) {
            return false;
        }
        return oplusApiClient.isConnected();
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        OplusApiClient oplusApiClient;
        Api api;
        OplusApiClient oplusApiClient2;
        C13071a.m52226a(f63071d, "handle message " + message.what);
        int i = message.what;
        if (i == 0) {
            Api api2 = (Api) message.obj;
            if (api2 == null || api2.getClientKey() == null || (oplusApiClient = f63070c.get(api2.getClientKey())) == null) {
                return false;
            }
            oplusApiClient.connect();
            return false;
        }
        if (i != 1 || (api = (Api) message.obj) == null || api.getClientKey() == null || (oplusApiClient2 = f63070c.get(api.getClientKey())) == null) {
            return false;
        }
        oplusApiClient2.disconnect();
        m52189a(api.getClientKey());
        return false;
    }

    /* renamed from: a */
    public final void m52197a(Api api) {
        Message obtainMessage = this.f63074b.obtainMessage();
        obtainMessage.what = 0;
        obtainMessage.obj = api;
        this.f63074b.sendMessage(obtainMessage);
    }

    /* renamed from: a */
    public final void m52199a(final OplusApi oplusApi, ClientSettings clientSettings) {
        C13074d.m52235a(oplusApi, "oplusApi not be null");
        C13074d.m52235a(clientSettings, "clientsettings not be null");
        if (f63070c.containsKey(oplusApi.getApi().getClientKey())) {
            return;
        }
        C13046m c13046m = new C13046m(this.f63073a, oplusApi.getApi(), oplusApi.f63009a, clientSettings);
        c13046m.setOnClearListener(new InterfaceC13043j() { // from class: com.oplus.ocs.base.common.api.l.1
            @Override // com.oplus.ocs.base.common.api.InterfaceC13043j
            /* renamed from: a */
            public final void mo52187a() {
                C13045l.m52189a(oplusApi.getApi().getClientKey());
            }
        });
        c13046m.setOnCapabilityAuthListener(new InterfaceC13042i() { // from class: com.oplus.ocs.base.common.api.l.2
            @Override // com.oplus.ocs.base.common.api.InterfaceC13042i
            /* renamed from: a */
            public final void mo52157a(CapabilityInfo capabilityInfo) {
                if (capabilityInfo != null) {
                    oplusApi.checkAuthResult(capabilityInfo);
                }
            }
        });
        f63070c.put(oplusApi.getApi().getClientKey(), c13046m);
        m52197a(oplusApi.getApi());
    }

    /* renamed from: a */
    public static void m52190a(OplusApi oplusApi) {
        CapabilityInfo capabilityInfo = CapabilityApiClient.getCapabilityInfo(oplusApi.getApi());
        if (capabilityInfo != null) {
            oplusApi.checkAuthResult(capabilityInfo);
        }
    }

    /* renamed from: a */
    public final void m52198a(OplusApi oplusApi, final OnConnectionSucceedListener onConnectionSucceedListener, Handler handler) {
        OplusApiClient oplusApiClient;
        C13074d.m52235a(oplusApi, "oplusApi not be null");
        if (!f63070c.containsKey(oplusApi.getApi().getClientKey()) || (oplusApiClient = f63070c.get(oplusApi.getApi().getClientKey())) == null) {
            return;
        }
        if (oplusApi.isConnected()) {
            new Handler(handler == null ? Looper.getMainLooper() : handler.getLooper()) { // from class: com.oplus.ocs.base.common.api.l.4
                @Override // android.os.Handler
                public final void handleMessage(Message message) {
                    super.handleMessage(message);
                    OnConnectionSucceedListener onConnectionSucceedListener2 = onConnectionSucceedListener;
                    if (onConnectionSucceedListener2 != null) {
                        onConnectionSucceedListener2.onConnectionSucceed();
                    }
                }
            }.sendEmptyMessage(0);
        } else {
            oplusApiClient.setOnConnectionSucceedListener(onConnectionSucceedListener, handler);
        }
    }

    /* renamed from: a */
    public static void m52191a(OplusApi oplusApi, OnConnectionFailedListener onConnectionFailedListener, Handler handler) {
        OplusApiClient oplusApiClient;
        C13074d.m52235a(oplusApi, "oplusApi not be null");
        if (!f63070c.containsKey(oplusApi.getApi().getClientKey()) || (oplusApiClient = f63070c.get(oplusApi.getApi().getClientKey())) == null) {
            return;
        }
        oplusApiClient.setOnConnectionFailedListener(onConnectionFailedListener, handler);
    }

    /* renamed from: a */
    public static <T> void m52192a(OplusApi oplusApi, TaskListenerHolder<T> taskListenerHolder) {
        OplusApiClient oplusApiClient;
        C13071a.m52226a(f63071d, "addQueue " + oplusApi.getClass().getSimpleName());
        C13074d.m52235a(oplusApi, "oplusApi not be null");
        if (!f63070c.containsKey(oplusApi.getApi().getClientKey()) || (oplusApiClient = f63070c.get(oplusApi.getApi().getClientKey())) == null) {
            return;
        }
        oplusApiClient.addQueue(taskListenerHolder);
    }

    /* renamed from: a */
    public static void m52189a(Api.ClientKey clientKey) {
        f63070c.remove(clientKey);
    }
}
