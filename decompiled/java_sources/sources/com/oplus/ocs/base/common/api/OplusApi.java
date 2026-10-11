package com.oplus.ocs.base.common.api;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.oplus.ocs.base.common.AuthResult;
import com.oplus.ocs.base.common.CapabilityInfo;
import com.oplus.ocs.base.common.api.Api;
import com.oplus.ocs.base.common.api.Api.ApiOptions;
import com.oplus.ocs.base.common.api.OplusApi;
import com.oplus.ocs.base.common.api.TaskListenerHolder;
import com.oplus.ocs.base.internal.ClientSettings;
import com.oplus.ocs.base.task.Task;
import com.oplus.ocs.base.task.TaskImpl;
import com.oplus.ocs.base.utils.C13071a;
import com.oplus.ocs.base.utils.C13074d;
import com.oplus.ocs.base.utils.ServiceCheck;

/* loaded from: classes9.dex */
public abstract class OplusApi<O extends Api.ApiOptions, R extends OplusApi> {

    /* renamed from: a */
    O f63009a;

    /* renamed from: b */
    private Context f63010b;

    /* renamed from: c */
    private Api<O> f63011c;

    /* renamed from: d */
    private C13045l f63012d;

    /* renamed from: e */
    private ClientSettings f63013e;

    /* renamed from: f */
    private boolean f63014f;

    public OplusApi(Context context, Api<O> api, ClientSettings clientSettings) {
        this(context, api, null, clientSettings, true);
    }

    public static boolean checkInternal(Context context) {
        return ServiceCheck.m52221a(context);
    }

    public R addOnConnectionFailedListener(OnConnectionFailedListener onConnectionFailedListener) {
        return addOnConnectionFailedListener(onConnectionFailedListener, new Handler(Looper.getMainLooper()));
    }

    public R addOnConnectionSucceedListener(OnConnectionSucceedListener onConnectionSucceedListener) {
        return addOnConnectionSucceedListener(onConnectionSucceedListener, new Handler(Looper.getMainLooper()));
    }

    public void addThis2Cache() {
        if (this.f63014f) {
            this.f63012d.m52199a(this, this.f63013e);
        }
    }

    public void checkAuthResult(CapabilityInfo capabilityInfo) {
    }

    public void checkCapability() {
        if (this.f63012d != null) {
            C13045l.m52190a(this);
        }
    }

    public boolean checkExist() {
        return ServiceCheck.check(this.f63010b, "com.coloros.ocs.opencapabilityservice") || ServiceCheck.check(this.f63010b, "com.oplus.ocs");
    }

    public void disconnect() {
        if (this.f63014f) {
            C13045l c13045l = this.f63012d;
            Api<O> api = this.f63011c;
            Message obtainMessage = c13045l.f63074b.obtainMessage();
            obtainMessage.what = 1;
            obtainMessage.obj = api;
            c13045l.f63074b.sendMessage(obtainMessage);
        }
    }

    public <TResult> Task<TResult> doRegisterListener(TaskListenerHolder.SuccessNotifier<TResult> successNotifier, TaskListenerHolder.FailureNotifier<TResult> failureNotifier) {
        return doRegisterListener(Looper.getMainLooper(), successNotifier, failureNotifier);
    }

    public Api<O> getApi() {
        return this.f63011c;
    }

    public AuthResult getAuthResult() {
        if (this.f63014f) {
            return C13045l.m52195d(this);
        }
        return null;
    }

    public String getClientName() {
        return "";
    }

    public IBinder getRemoteService() {
        if (this.f63014f) {
            return C13045l.m52193b(this);
        }
        return null;
    }

    public int getRemoteVersion() {
        if (this.f63014f) {
            return C13045l.m52194c(this);
        }
        return 0;
    }

    public abstract int getVersion();

    public abstract boolean hasFeature(String str);

    public abstract void init();

    public boolean isConnected() {
        if (this.f63014f) {
            return C13045l.m52196e(this);
        }
        return true;
    }

    public void releaseClientKey() {
        if (this.f63014f) {
            C13045l.m52189a(this.f63011c.getClientKey());
        }
    }

    public OplusApi(Activity activity, Api<O> api, O o, ClientSettings clientSettings) {
        this(activity, api, o, clientSettings, true);
    }

    public R addOnConnectionFailedListener(OnConnectionFailedListener onConnectionFailedListener, Handler handler) {
        if (this.f63014f) {
            C13045l.m52191a(this, onConnectionFailedListener, handler);
        }
        return this;
    }

    public R addOnConnectionSucceedListener(final OnConnectionSucceedListener onConnectionSucceedListener, Handler handler) {
        if (this.f63014f) {
            this.f63012d.m52198a(this, onConnectionSucceedListener, handler);
        } else if (onConnectionSucceedListener != null) {
            if (handler == null) {
                onConnectionSucceedListener.onConnectionSucceed();
            } else {
                handler.post(new Runnable() { // from class: com.oplus.ocs.base.common.api.OplusApi.1
                    @Override // java.lang.Runnable
                    public void run() {
                        onConnectionSucceedListener.onConnectionSucceed();
                    }
                });
            }
        }
        return this;
    }

    public <TResult> Task<TResult> doRegisterListener(Looper looper, TaskListenerHolder.SuccessNotifier<TResult> successNotifier, TaskListenerHolder.FailureNotifier<TResult> failureNotifier) {
        C13071a.m52225a("capability doRegisterListener");
        TaskImpl taskImpl = new TaskImpl();
        TaskListenerHolder taskListenerHolder = new TaskListenerHolder(looper, taskImpl, successNotifier, failureNotifier);
        if (this.f63014f) {
            C13045l.m52192a(this, taskListenerHolder);
        }
        return taskImpl;
    }

    public OplusApi(Context context, Api<O> api, O o, ClientSettings clientSettings) {
        this(context, api, o, clientSettings, true);
    }

    public OplusApi(Context context, Api<O> api, O o, ClientSettings clientSettings, boolean z) {
        C13074d.m52235a(context, "Null context is not permitted.");
        C13074d.m52235a(api, "Api must not be null.");
        this.f63010b = context;
        this.f63011c = api;
        this.f63009a = o;
        this.f63013e = clientSettings;
        this.f63014f = z;
        if (z) {
            C13045l m52188a = C13045l.m52188a(context);
            this.f63012d = m52188a;
            m52188a.m52199a(this, this.f63013e);
        } else {
            if (api.isAuth()) {
                return;
            }
            String clientName = getClientName();
            if (TextUtils.isEmpty(clientName)) {
                Object buildClient = getApi().getClientBuilder().buildClient(this.f63010b, Looper.getMainLooper(), clientSettings, null);
                if (buildClient instanceof BaseClient) {
                    clientName = ((BaseClient) buildClient).getClientName();
                }
            }
            String str = clientName;
            if (TextUtils.isEmpty(str)) {
                return;
            }
            Context context2 = this.f63010b;
            new InternalClient(context2, context2.getPackageName(), str, 0, false, null).connect4Stat();
        }
    }
}
