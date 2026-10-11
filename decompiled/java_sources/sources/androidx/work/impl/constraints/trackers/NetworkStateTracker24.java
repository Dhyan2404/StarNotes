package androidx.work.impl.constraints.trackers;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import androidx.annotation.RequiresApi;
import androidx.work.Logger;
import androidx.work.impl.constraints.NetworkState;
import androidx.work.impl.utils.NetworkApi21;
import androidx.work.impl.utils.NetworkApi24;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@RequiresApi(24)
@Metadata(m61527d1 = {"\u00003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004*\u0001\u000b\b\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0013\u0010\u0014J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0016J\b\u0010\u0006\u001a\u00020\u0004H\u0016R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0015"}, m61528d2 = {"Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;", "Landroidx/work/impl/constraints/trackers/ConstraintTracker;", "Landroidx/work/impl/constraints/NetworkState;", "readSystemState", "", "startTracking", "stopTracking", "Landroid/net/ConnectivityManager;", C6997f.f39671c, "Landroid/net/ConnectivityManager;", "connectivityManager", "androidx/work/impl/constraints/trackers/NetworkStateTracker24$networkCallback$1", C6998g.f39679a, "Landroidx/work/impl/constraints/trackers/NetworkStateTracker24$networkCallback$1;", "networkCallback", "Landroid/content/Context;", "context", "Landroidx/work/impl/utils/taskexecutor/TaskExecutor;", "taskExecutor", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;)V", "work-runtime_release"}, m61529k = 1, m61530mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class NetworkStateTracker24 extends ConstraintTracker<NetworkState> {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final ConnectivityManager connectivityManager;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final NetworkStateTracker24$networkCallback$1 networkCallback;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r2v4, types: [androidx.work.impl.constraints.trackers.NetworkStateTracker24$networkCallback$1] */
    public NetworkStateTracker24(@NotNull Context context, @NotNull TaskExecutor taskExecutor) {
        super(context, taskExecutor);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(taskExecutor, "taskExecutor");
        Object systemService = getAppContext().getSystemService("connectivity");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
        this.connectivityManager = (ConnectivityManager) systemService;
        this.networkCallback = new ConnectivityManager.NetworkCallback() { // from class: androidx.work.impl.constraints.trackers.NetworkStateTracker24$networkCallback$1
            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onCapabilitiesChanged(@NotNull Network network, @NotNull NetworkCapabilities capabilities) {
                String str;
                ConnectivityManager connectivityManager;
                Intrinsics.checkNotNullParameter(network, "network");
                Intrinsics.checkNotNullParameter(capabilities, "capabilities");
                Logger logger = Logger.get();
                str = NetworkStateTrackerKt.f11718a;
                logger.debug(str, "Network capabilities changed: " + capabilities);
                NetworkStateTracker24 networkStateTracker24 = NetworkStateTracker24.this;
                connectivityManager = networkStateTracker24.connectivityManager;
                networkStateTracker24.setState(NetworkStateTrackerKt.getActiveNetworkState(connectivityManager));
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onLost(@NotNull Network network) {
                String str;
                ConnectivityManager connectivityManager;
                Intrinsics.checkNotNullParameter(network, "network");
                Logger logger = Logger.get();
                str = NetworkStateTrackerKt.f11718a;
                logger.debug(str, "Network connection lost");
                NetworkStateTracker24 networkStateTracker24 = NetworkStateTracker24.this;
                connectivityManager = networkStateTracker24.connectivityManager;
                networkStateTracker24.setState(NetworkStateTrackerKt.getActiveNetworkState(connectivityManager));
            }
        };
    }

    @Override // androidx.work.impl.constraints.trackers.ConstraintTracker
    public void startTracking() {
        String str;
        String str2;
        String str3;
        try {
            Logger logger = Logger.get();
            str3 = NetworkStateTrackerKt.f11718a;
            logger.debug(str3, "Registering network callback");
            NetworkApi24.registerDefaultNetworkCallbackCompat(this.connectivityManager, this.networkCallback);
        } catch (IllegalArgumentException e) {
            Logger logger2 = Logger.get();
            str2 = NetworkStateTrackerKt.f11718a;
            logger2.error(str2, "Received exception while registering network callback", e);
        } catch (SecurityException e2) {
            Logger logger3 = Logger.get();
            str = NetworkStateTrackerKt.f11718a;
            logger3.error(str, "Received exception while registering network callback", e2);
        }
    }

    @Override // androidx.work.impl.constraints.trackers.ConstraintTracker
    public void stopTracking() {
        String str;
        String str2;
        String str3;
        try {
            Logger logger = Logger.get();
            str3 = NetworkStateTrackerKt.f11718a;
            logger.debug(str3, "Unregistering network callback");
            NetworkApi21.unregisterNetworkCallbackCompat(this.connectivityManager, this.networkCallback);
        } catch (IllegalArgumentException e) {
            Logger logger2 = Logger.get();
            str2 = NetworkStateTrackerKt.f11718a;
            logger2.error(str2, "Received exception while unregistering network callback", e);
        } catch (SecurityException e2) {
            Logger logger3 = Logger.get();
            str = NetworkStateTrackerKt.f11718a;
            logger3.error(str, "Received exception while unregistering network callback", e2);
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.work.impl.constraints.trackers.ConstraintTracker
    @NotNull
    public NetworkState readSystemState() {
        return NetworkStateTrackerKt.getActiveNetworkState(this.connectivityManager);
    }
}
