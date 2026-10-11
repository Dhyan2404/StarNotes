package androidx.work.impl.constraints.trackers;

import android.content.Context;
import androidx.annotation.RestrictTo;
import androidx.work.Logger;
import androidx.work.impl.constraints.ConstraintListener;
import androidx.work.impl.constraints.trackers.ConstraintTracker;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.onyx.android.sdk.data.account.bean.DevicePushAction;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u000e\b'\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u0019\b\u0004\u0012\u0006\u0010$\u001a\u00020\u0010\u0012\u0006\u0010\u000f\u001a\u00020\f¢\u0006\u0004\b%\u0010&J\u0014\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003J\u0014\u0010\u0007\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003J\u000f\u0010\b\u001a\u00028\u0000H&¢\u0006\u0004\b\b\u0010\tJ\b\u0010\n\u001a\u00020\u0005H&J\b\u0010\u000b\u001a\u00020\u0005H&R\u0014\u0010\u000f\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u001a\u0010\u0015\u001a\u00020\u00108\u0004X\u0084\u0004¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0018\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R \u0010\u001c\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00030\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0018\u0010\u001e\u001a\u0004\u0018\u00018\u00008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u0017R$\u0010#\u001a\u00028\u00002\u0006\u0010\u001f\u001a\u00028\u00008F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b \u0010\t\"\u0004\b!\u0010\"¨\u0006'"}, m61528d2 = {"Landroidx/work/impl/constraints/trackers/ConstraintTracker;", "T", "", "Landroidx/work/impl/constraints/ConstraintListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "", "addListener", "removeListener", "readSystemState", "()Ljava/lang/Object;", "startTracking", "stopTracking", "Landroidx/work/impl/utils/taskexecutor/TaskExecutor;", "a", "Landroidx/work/impl/utils/taskexecutor/TaskExecutor;", "taskExecutor", "Landroid/content/Context;", "b", "Landroid/content/Context;", "getAppContext", "()Landroid/content/Context;", "appContext", "c", Constants.OBJECT_SIG, DevicePushAction.LOCK_DEVICE, "Ljava/util/LinkedHashSet;", "d", "Ljava/util/LinkedHashSet;", "listeners", "e", "currentState", "newState", "getState", "setState", "(Ljava/lang/Object;)V", "state", "context", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;)V", "work-runtime_release"}, m61529k = 1, m61530mv = {1, 8, 0})
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
@SourceDebugExtension({"SMAP\nConstraintTracker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConstraintTracker.kt\nandroidx/work/impl/constraints/trackers/ConstraintTracker\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,124:1\n1855#2,2:125\n*S KotlinDebug\n*F\n+ 1 ConstraintTracker.kt\nandroidx/work/impl/constraints/trackers/ConstraintTracker\n*L\n96#1:125,2\n*E\n"})
/* loaded from: classes3.dex */
public abstract class ConstraintTracker<T> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final TaskExecutor taskExecutor;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final Context appContext;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final Object lock;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final LinkedHashSet<ConstraintListener<T>> listeners;

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public T currentState;

    public ConstraintTracker(@NotNull Context context, @NotNull TaskExecutor taskExecutor) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(taskExecutor, "taskExecutor");
        this.taskExecutor = taskExecutor;
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "context.applicationContext");
        this.appContext = applicationContext;
        this.lock = new Object();
        this.listeners = new LinkedHashSet<>();
    }

    /* renamed from: b */
    public static final void m7083b(List listenersList, ConstraintTracker this$0) {
        Intrinsics.checkNotNullParameter(listenersList, "$listenersList");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Iterator<T> it2 = listenersList.iterator();
        while (it2.hasNext()) {
            ((ConstraintListener) it2.next()).onConstraintChanged(this$0.currentState);
        }
    }

    public final void addListener(@NotNull ConstraintListener<T> listener) {
        String str;
        Intrinsics.checkNotNullParameter(listener, "listener");
        synchronized (this.lock) {
            if (this.listeners.add(listener)) {
                if (this.listeners.size() == 1) {
                    this.currentState = readSystemState();
                    Logger logger = Logger.get();
                    str = ConstraintTrackerKt.f11714a;
                    logger.debug(str, getClass().getSimpleName() + ": initial state = " + this.currentState);
                    startTracking();
                }
                listener.onConstraintChanged(this.currentState);
            }
            Unit unit = Unit.INSTANCE;
        }
    }

    @NotNull
    public final Context getAppContext() {
        return this.appContext;
    }

    public final T getState() {
        T t = this.currentState;
        return t == null ? readSystemState() : t;
    }

    public abstract T readSystemState();

    public final void removeListener(@NotNull ConstraintListener<T> listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        synchronized (this.lock) {
            if (this.listeners.remove(listener) && this.listeners.isEmpty()) {
                stopTracking();
            }
            Unit unit = Unit.INSTANCE;
        }
    }

    public final void setState(T t) {
        final List list;
        synchronized (this.lock) {
            T t2 = this.currentState;
            if (t2 == null || !Intrinsics.areEqual(t2, t)) {
                this.currentState = t;
                list = CollectionsKt___CollectionsKt.toList(this.listeners);
                this.taskExecutor.getMainThreadExecutor().execute(new Runnable() { // from class: com.sunia.HTREnginev2.cae
                    @Override // java.lang.Runnable
                    public final void run() {
                        ConstraintTracker.m7083b(list, this);
                    }
                });
                Unit unit = Unit.INSTANCE;
            }
        }
    }

    public abstract void startTracking();

    public abstract void stopTracking();
}
