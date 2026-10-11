package com.oplus.ocs.base.common.api;

import android.content.Context;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.oplus.ocs.base.common.AuthResult;
import com.oplus.ocs.base.common.api.Api.ApiOptions;
import com.oplus.ocs.base.internal.ClientSettings;
import com.oplus.ocs.base.utils.C13074d;

/* loaded from: classes9.dex */
public class Api<O extends ApiOptions> {
    private AbstractClientBuilder<?, O> mClientBuilder;
    private ClientKey<?> mClientKey;
    private boolean mIsAuth;
    private String mName;

    /* loaded from: classes9.dex */
    public static abstract class AbstractClientBuilder<T extends Client, O> extends BaseClientBuilder<T, O> {
        public abstract T buildClient(Context context, Looper looper, ClientSettings clientSettings, O o);
    }

    /* loaded from: classes9.dex */
    public interface AnyClient {
    }

    /* loaded from: classes9.dex */
    public static class AnyClientKey<C extends AnyClient> {
    }

    /* loaded from: classes9.dex */
    public interface ApiOptions {

        /* loaded from: classes9.dex */
        public interface HasOptions extends ApiOptions {
        }

        /* loaded from: classes9.dex */
        public static class NoOptions implements NotRequiredOptions {
            private NoOptions() {
            }
        }

        /* loaded from: classes9.dex */
        public interface NotRequiredOptions extends ApiOptions {
        }

        /* loaded from: classes9.dex */
        public interface Optional extends HasOptions, NotRequiredOptions {
        }
    }

    /* loaded from: classes9.dex */
    public static abstract class BaseClientBuilder<T extends AnyClient, O> {
        public static final int API_PRIORITY_GAMES = 1;
        public static final int API_PRIORITY_OTHER = Integer.MAX_VALUE;
        public static final int API_PRIORITY_PLUS = 2;

        public int getPriority() {
            return Integer.MAX_VALUE;
        }
    }

    /* loaded from: classes9.dex */
    public interface Client extends AnyClient {
        <T> void addQueue(TaskListenerHolder<T> taskListenerHolder);

        void connect();

        void disconnect();

        AuthResult getAuthResult();

        Looper getLooper();

        int getMinApkVersion();

        IBinder getRemoteService();

        boolean isConnected();

        boolean isConnecting();

        void setOnCapabilityAuthListener(InterfaceC13042i interfaceC13042i);

        void setOnClearListener(InterfaceC13043j interfaceC13043j);

        void setOnConnectionFailedListener(OnConnectionFailedListener onConnectionFailedListener, Handler handler);

        void setOnConnectionSucceedListener(OnConnectionSucceedListener onConnectionSucceedListener, Handler handler);
    }

    /* loaded from: classes9.dex */
    public static class ClientKey<C extends Client> extends AnyClientKey<C> {
    }

    /* loaded from: classes9.dex */
    public interface SimpleClient<T extends IInterface> extends AnyClient {
        T createServiceInterface(IBinder iBinder);

        Context getContext();

        String getServiceDescriptor();

        String getStartServiceAction();

        void setState(int i, T t);
    }

    public <C extends Client> Api(String str, AbstractClientBuilder<C, O> abstractClientBuilder, ClientKey<C> clientKey) {
        this(str, abstractClientBuilder, clientKey, true);
    }

    public BaseClientBuilder<?, O> getBaseClientBuilder() {
        return this.mClientBuilder;
    }

    public AbstractClientBuilder<?, O> getClientBuilder() {
        C13074d.m52237a(this.mClientBuilder != null, "The ClientBuilder is null");
        return this.mClientBuilder;
    }

    public ClientKey<?> getClientKey() {
        ClientKey<?> clientKey = this.mClientKey;
        if (clientKey != null) {
            return clientKey;
        }
        throw new IllegalStateException("This API was constructed with null clientKey.");
    }

    public String getName() {
        return this.mName;
    }

    public boolean isAuth() {
        return this.mIsAuth;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <C extends Client> Api(String str, AbstractClientBuilder<C, O> abstractClientBuilder, ClientKey<C> clientKey, boolean z) {
        C13074d.m52235a(abstractClientBuilder, "can not construct whit the null AbstractClientBuilder");
        C13074d.m52235a(clientKey, "can not construct with the null ClientKey");
        this.mName = str;
        this.mClientBuilder = abstractClientBuilder;
        this.mClientKey = clientKey;
        this.mIsAuth = z;
    }
}
