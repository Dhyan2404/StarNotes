package com.onyx.android.sdk.hwr.data.bundle;

import com.onyx.android.sdk.base.eventbus.EventBusHolder;
import com.onyx.android.sdk.data.cluster.ClusterManager;
import com.onyx.android.sdk.data.cluster.model.ClusterInfo;
import com.onyx.android.sdk.hwr.service.manager.HWRRecognizerManager;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.sod;
import io.reactivex.rxjava3.core.Scheduler;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000e\n\u0002\b\u000f\u0018\u0000 -2\u00020\u0001:\u0001-B\u0007¢\u0006\u0004\b+\u0010,J\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\u0007\u001a\u00020\u0006R\"\u0010\u000f\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\"\u0010\u0017\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\"\u0010\u001e\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\"\u0010&\u001a\u00020\u001f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\"\u0010*\u001a\u00020\u001f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b'\u0010!\u001a\u0004\b(\u0010#\"\u0004\b)\u0010%¨\u0006."}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;", "", "Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;", "updateCurrentClusterInfo", "Lio/reactivex/rxjava3/core/Scheduler;", "getHwrObserveOn", "", "destroy", "Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;", "a", "Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;", "getRecognizerManager", "()Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;", "setRecognizerManager", "(Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;)V", "recognizerManager", "Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;", "b", "Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;", "getEventBusHolder", "()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;", "setEventBusHolder", "(Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;)V", "eventBusHolder", "c", "Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;", "getClusterInfo", "()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;", "setClusterInfo", "(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)V", "clusterInfo", "", "d", Constants.STRING_SIG, "getModel", "()Ljava/lang/String;", "setModel", "(Ljava/lang/String;)V", "model", "e", "getFingerprint", "setFingerprint", sod.f84348A, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class HWRBundle {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: f */
    @NotNull
    public static HWRBundle f42507f = new HWRBundle();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public HWRRecognizerManager recognizerManager = new HWRRecognizerManager();

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public EventBusHolder eventBusHolder = new EventBusHolder(null, 1, 0 == true ? 1 : 0);

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public ClusterInfo clusterInfo = new ClusterInfo();

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public String model = "";

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public String fingerprint = "";

    @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle$Companion;", "", "()V", "Empty", "Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;", "getEmpty", "()Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;", "setEmpty", "(Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;)V", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final HWRBundle getEmpty() {
            return HWRBundle.f42507f;
        }

        public final void setEmpty(@NotNull HWRBundle hWRBundle) {
            Intrinsics.checkNotNullParameter(hWRBundle, "<set-?>");
            HWRBundle.f42507f = hWRBundle;
        }

        public Companion() {
        }
    }

    public final void destroy() {
        this.recognizerManager.destroyAll();
    }

    @NotNull
    public final ClusterInfo getClusterInfo() {
        return this.clusterInfo;
    }

    @NotNull
    public final EventBusHolder getEventBusHolder() {
        return this.eventBusHolder;
    }

    @NotNull
    public final String getFingerprint() {
        return this.fingerprint;
    }

    @NotNull
    public final Scheduler getHwrObserveOn() {
        return this.recognizerManager.getRecognizeScheduler().getObserveOn();
    }

    @NotNull
    public final String getModel() {
        return this.model;
    }

    @NotNull
    public final HWRRecognizerManager getRecognizerManager() {
        return this.recognizerManager;
    }

    public final void setClusterInfo(@NotNull ClusterInfo clusterInfo) {
        Intrinsics.checkNotNullParameter(clusterInfo, "<set-?>");
        this.clusterInfo = clusterInfo;
    }

    public final void setEventBusHolder(@NotNull EventBusHolder eventBusHolder) {
        Intrinsics.checkNotNullParameter(eventBusHolder, "<set-?>");
        this.eventBusHolder = eventBusHolder;
    }

    public final void setFingerprint(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.fingerprint = str;
    }

    public final void setModel(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.model = str;
    }

    public final void setRecognizerManager(@NotNull HWRRecognizerManager hWRRecognizerManager) {
        Intrinsics.checkNotNullParameter(hWRRecognizerManager, "<set-?>");
        this.recognizerManager = hWRRecognizerManager;
    }

    @NotNull
    public final ClusterInfo updateCurrentClusterInfo() {
        ClusterInfo curClusterInfo = ClusterManager.INSTANCE.getCurClusterInfo();
        this.clusterInfo = curClusterInfo;
        return curClusterInfo;
    }
}
