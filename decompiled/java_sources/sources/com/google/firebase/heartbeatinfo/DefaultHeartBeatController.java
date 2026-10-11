package com.google.firebase.heartbeatinfo;

import android.content.Context;
import android.util.Base64OutputStream;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.core.os.UserManagerCompat;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.FirebaseApp;
import com.google.firebase.annotations.concurrent.Background;
import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.ComponentFactory;
import com.google.firebase.components.Dependency;
import com.google.firebase.components.Qualified;
import com.google.firebase.heartbeatinfo.DefaultHeartBeatController;
import com.google.firebase.heartbeatinfo.HeartBeatInfo;
import com.google.firebase.inject.Provider;
import com.google.firebase.platforminfo.UserAgentPublisher;
import com.sunia.HTREnginev2.wfh;
import java.io.ByteArrayOutputStream;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.zip.GZIPOutputStream;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes6.dex */
public class DefaultHeartBeatController implements HeartBeatController, HeartBeatInfo {

    /* renamed from: a */
    public final Provider<wfh> f35888a;

    /* renamed from: b */
    public final Context f35889b;

    /* renamed from: c */
    public final Provider<UserAgentPublisher> f35890c;

    /* renamed from: d */
    public final Set<HeartBeatConsumer> f35891d;

    /* renamed from: e */
    public final Executor f35892e;

    public DefaultHeartBeatController(final Context context, final String str, Set<HeartBeatConsumer> set, Provider<UserAgentPublisher> provider, Executor executor) {
        this((Provider<wfh>) new Provider() { // from class: com.sunia.HTREnginev2.oze
            @Override // com.google.firebase.inject.Provider
            public final Object get() {
                wfh m28119g;
                m28119g = DefaultHeartBeatController.m28119g(context, str);
                return m28119g;
            }
        }, set, executor, provider, context);
    }

    @NonNull
    public static Component<DefaultHeartBeatController> component() {
        final Qualified qualified = Qualified.qualified(Background.class, Executor.class);
        return Component.builder(DefaultHeartBeatController.class, HeartBeatController.class, HeartBeatInfo.class).add(Dependency.required((Class<?>) Context.class)).add(Dependency.required((Class<?>) FirebaseApp.class)).add(Dependency.setOf((Class<?>) HeartBeatConsumer.class)).add(Dependency.requiredProvider((Class<?>) UserAgentPublisher.class)).add(Dependency.required((Qualified<?>) qualified)).factory(new ComponentFactory() { // from class: com.sunia.HTREnginev2.nze
            @Override // com.google.firebase.components.ComponentFactory
            public final Object create(ComponentContainer componentContainer) {
                DefaultHeartBeatController m28117e;
                m28117e = DefaultHeartBeatController.m28117e(Qualified.this, componentContainer);
                return m28117e;
            }
        }).build();
    }

    /* renamed from: e */
    public static /* synthetic */ DefaultHeartBeatController m28117e(Qualified qualified, ComponentContainer componentContainer) {
        return new DefaultHeartBeatController((Context) componentContainer.get(Context.class), ((FirebaseApp) componentContainer.get(FirebaseApp.class)).getPersistenceKey(), (Set<HeartBeatConsumer>) componentContainer.setOf(HeartBeatConsumer.class), (Provider<UserAgentPublisher>) componentContainer.getProvider(UserAgentPublisher.class), (Executor) componentContainer.get(qualified));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public /* synthetic */ String m28118f() throws Exception {
        String byteArrayOutputStream;
        synchronized (this) {
            wfh wfhVar = this.f35888a.get();
            List<HeartBeatResult> m58059c = wfhVar.m58059c();
            wfhVar.m58058b();
            JSONArray jSONArray = new JSONArray();
            for (int i = 0; i < m58059c.size(); i++) {
                HeartBeatResult heartBeatResult = m58059c.get(i);
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("agent", heartBeatResult.getUserAgent());
                jSONObject.put("dates", new JSONArray((Collection<?>) heartBeatResult.getUsedDates()));
                jSONArray.put(jSONObject);
            }
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("heartbeats", jSONArray);
            jSONObject2.put("version", "2");
            ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
            Base64OutputStream base64OutputStream = new Base64OutputStream(byteArrayOutputStream2, 11);
            try {
                GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(base64OutputStream);
                try {
                    gZIPOutputStream.write(jSONObject2.toString().getBytes("UTF-8"));
                    gZIPOutputStream.close();
                    base64OutputStream.close();
                    byteArrayOutputStream = byteArrayOutputStream2.toString("UTF-8");
                } finally {
                }
            } finally {
            }
        }
        return byteArrayOutputStream;
    }

    /* renamed from: g */
    public static /* synthetic */ wfh m28119g(Context context, String str) {
        return new wfh(context, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public /* synthetic */ Void m28120h() throws Exception {
        synchronized (this) {
            this.f35888a.get().m58069m(System.currentTimeMillis(), this.f35890c.get().getUserAgent());
        }
        return null;
    }

    @Override // com.google.firebase.heartbeatinfo.HeartBeatInfo
    @NonNull
    public synchronized HeartBeatInfo.HeartBeat getHeartBeatCode(@NonNull String str) {
        long currentTimeMillis = System.currentTimeMillis();
        wfh wfhVar = this.f35888a.get();
        if (!wfhVar.m58067k(currentTimeMillis)) {
            return HeartBeatInfo.HeartBeat.NONE;
        }
        wfhVar.m58065i();
        return HeartBeatInfo.HeartBeat.GLOBAL;
    }

    @Override // com.google.firebase.heartbeatinfo.HeartBeatController
    public Task<String> getHeartBeatsHeader() {
        return UserManagerCompat.isUserUnlocked(this.f35889b) ^ true ? Tasks.forResult("") : Tasks.call(this.f35892e, new Callable() { // from class: com.sunia.HTREnginev2.lze
            @Override // java.util.concurrent.Callable
            public final Object call() {
                String m28118f;
                m28118f = DefaultHeartBeatController.this.m28118f();
                return m28118f;
            }
        });
    }

    public Task<Void> registerHeartBeat() {
        if (this.f35891d.size() > 0 && !(!UserManagerCompat.isUserUnlocked(this.f35889b))) {
            return Tasks.call(this.f35892e, new Callable() { // from class: com.sunia.HTREnginev2.mze
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    Void m28120h;
                    m28120h = DefaultHeartBeatController.this.m28120h();
                    return m28120h;
                }
            });
        }
        return Tasks.forResult(null);
    }

    @VisibleForTesting
    public DefaultHeartBeatController(Provider<wfh> provider, Set<HeartBeatConsumer> set, Executor executor, Provider<UserAgentPublisher> provider2, Context context) {
        this.f35888a = provider;
        this.f35891d = set;
        this.f35892e = executor;
        this.f35890c = provider2;
        this.f35889b = context;
    }
}
