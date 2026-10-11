package androidx.activity;

import androidx.activity.FullyDrawnReporter;
import androidx.annotation.GuardedBy;
import androidx.annotation.RestrictTo;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.data.account.bean.DevicePushAction;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u0012\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005¢\u0006\u0004\b(\u0010)J\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0004\u001a\u00020\u0002J\u0014\u0010\u0007\u001a\u00020\u00022\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005J\u0014\u0010\b\u001a\u00020\u00022\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005J\b\u0010\t\u001a\u00020\u0002H\u0007J\b\u0010\n\u001a\u00020\u0002H\u0002R\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u001a\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000fR\u0014\u0010\u0013\u001a\u00020\u00018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0017\u001a\u00020\u00148\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0016\u0010\u001b\u001a\u00020\u00188\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001d\u001a\u00020\u00188\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001aR \u0010!\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u00050\u001e8\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0014\u0010%\u001a\u00020\"8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010$R\u0011\u0010&\u001a\u00020\u00188F¢\u0006\u0006\u001a\u0004\b&\u0010'¨\u0006*"}, m61528d2 = {"Landroidx/activity/FullyDrawnReporter;", "", "", "addReporter", "removeReporter", "Lkotlin/Function0;", "callback", "addOnReportDrawnListener", "removeOnReportDrawnListener", "fullyDrawnReported", "b", "Ljava/util/concurrent/Executor;", "a", "Ljava/util/concurrent/Executor;", "executor", "Lkotlin/jvm/functions/Function0;", "reportFullyDrawn", "c", Constants.OBJECT_SIG, DevicePushAction.LOCK_DEVICE, "", "d", "I", "reporterCount", "", "e", Constants.HASIDCALL_INDEX_SIG, "reportPosted", C6997f.f39671c, "reportedFullyDrawn", "", C6998g.f39679a, "Ljava/util/List;", "onReportCallbacks", "Ljava/lang/Runnable;", C6999h.f39688c, "Ljava/lang/Runnable;", "reportRunnable", "isFullyDrawnReported", Constants.BOOLEAN_VALUE_SIG, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/util/concurrent/Executor;Lkotlin/jvm/functions/Function0;)V", "activity_release"}, m61529k = 1, m61530mv = {1, 8, 0})
@SourceDebugExtension({"SMAP\nFullyDrawnReporter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FullyDrawnReporter.kt\nandroidx/activity/FullyDrawnReporter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,190:1\n1#2:191\n1855#3,2:192\n*S KotlinDebug\n*F\n+ 1 FullyDrawnReporter.kt\nandroidx/activity/FullyDrawnReporter\n*L\n154#1:192,2\n*E\n"})
/* loaded from: classes3.dex */
public final class FullyDrawnReporter {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Executor executor;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final Function0<Unit> reportFullyDrawn;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final Object lock;

    /* renamed from: d, reason: from kotlin metadata */
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    public int reporterCount;

    /* renamed from: e, reason: from kotlin metadata */
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    public boolean reportPosted;

    /* renamed from: f, reason: from kotlin metadata */
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    public boolean reportedFullyDrawn;

    /* renamed from: g, reason: from kotlin metadata */
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    @NotNull
    public final List<Function0<Unit>> onReportCallbacks;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Runnable reportRunnable;

    public FullyDrawnReporter(@NotNull Executor executor, @NotNull Function0<Unit> reportFullyDrawn) {
        Intrinsics.checkNotNullParameter(executor, "executor");
        Intrinsics.checkNotNullParameter(reportFullyDrawn, "reportFullyDrawn");
        this.executor = executor;
        this.reportFullyDrawn = reportFullyDrawn;
        this.lock = new Object();
        this.onReportCallbacks = new ArrayList();
        this.reportRunnable = new Runnable() { // from class: com.sunia.HTREnginev2.pwg
            @Override // java.lang.Runnable
            public final void run() {
                FullyDrawnReporter.m251c(FullyDrawnReporter.this);
            }
        };
    }

    /* renamed from: c */
    public static final void m251c(FullyDrawnReporter this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        synchronized (this$0.lock) {
            this$0.reportPosted = false;
            if (this$0.reporterCount == 0 && !this$0.reportedFullyDrawn) {
                this$0.reportFullyDrawn.invoke();
                this$0.fullyDrawnReported();
            }
            Unit unit = Unit.INSTANCE;
        }
    }

    public final void addOnReportDrawnListener(@NotNull Function0<Unit> callback) {
        boolean z;
        Intrinsics.checkNotNullParameter(callback, "callback");
        synchronized (this.lock) {
            if (this.reportedFullyDrawn) {
                z = true;
            } else {
                this.onReportCallbacks.add(callback);
                z = false;
            }
        }
        if (z) {
            callback.invoke();
        }
    }

    public final void addReporter() {
        synchronized (this.lock) {
            if (!this.reportedFullyDrawn) {
                this.reporterCount++;
            }
            Unit unit = Unit.INSTANCE;
        }
    }

    /* renamed from: b */
    public final void m252b() {
        if (this.reportPosted || this.reporterCount != 0) {
            return;
        }
        this.reportPosted = true;
        this.executor.execute(this.reportRunnable);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final void fullyDrawnReported() {
        synchronized (this.lock) {
            this.reportedFullyDrawn = true;
            Iterator<T> it2 = this.onReportCallbacks.iterator();
            while (it2.hasNext()) {
                ((Function0) it2.next()).invoke();
            }
            this.onReportCallbacks.clear();
            Unit unit = Unit.INSTANCE;
        }
    }

    public final boolean isFullyDrawnReported() {
        boolean z;
        synchronized (this.lock) {
            z = this.reportedFullyDrawn;
        }
        return z;
    }

    public final void removeOnReportDrawnListener(@NotNull Function0<Unit> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        synchronized (this.lock) {
            this.onReportCallbacks.remove(callback);
            Unit unit = Unit.INSTANCE;
        }
    }

    public final void removeReporter() {
        int i;
        synchronized (this.lock) {
            if (!this.reportedFullyDrawn && (i = this.reporterCount) > 0) {
                this.reporterCount = i - 1;
                m252b();
            }
            Unit unit = Unit.INSTANCE;
        }
    }
}
