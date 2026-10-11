package com.couchbase.lite.internal;

import android.content.Context;
import androidx.core.app.NotificationCompat;
import androidx.work.CoroutineWorker;
import androidx.work.Data;
import androidx.work.WorkerParameters;
import com.couchbase.lite.CouchbaseLiteError;
import com.couchbase.lite.CouchbaseLiteException;
import com.couchbase.lite.ReplicatorActivityLevel;
import com.couchbase.lite.ReplicatorProgress;
import com.couchbase.lite.ReplicatorStatus;
import com.couchbase.lite.WorkManagerReplicatorFactory;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0018\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0002J\u001a\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0011\u0010\u000f\u001a\u00020\u0010H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0011J\u0012\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\nH\u0002\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0016"}, m61528d2 = {"Lcom/couchbase/lite/internal/ReplicatorWorker;", "Landroidx/work/CoroutineWorker;", "appContext", "Landroid/content/Context;", "params", "Landroidx/work/WorkerParameters;", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "buildData", "Landroidx/work/Data;", "tag", "", "status", "Lcom/couchbase/lite/ReplicatorStatus;", NotificationCompat.CATEGORY_ERROR, "", "doWork", "Landroidx/work/ListenableWorker$Result;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getFactory", "Lcom/couchbase/lite/WorkManagerReplicatorFactory;", "factoryClass", "Companion", "couchbase-lite-android-ee-ktx-3.2.2-21_release"}, m61529k = 1, m61530mv = {1, 8, 0}, m61532xi = 48)
/* loaded from: classes4.dex */
public final class ReplicatorWorker extends CoroutineWorker {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    public static final String KEY_REPLICATION_ACTIVITY_LEVEL = "com.couchbase.mobile.android.replicator.ACTIVITY_LEVEL";

    @NotNull
    public static final String KEY_REPLICATION_COMPLETED = "com.couchbase.mobile.android.replicator.progress.COMPLETED";

    @NotNull
    public static final String KEY_REPLICATION_ERROR_CODE = "com.couchbase.mobile.android.replicator.error.CODE";

    @NotNull
    public static final String KEY_REPLICATION_ERROR_MESSAGE = "com.couchbase.mobile.android.replicator.error.MESSAGE";

    @NotNull
    public static final String KEY_REPLICATION_TOTAL = "com.couchbase.mobile.android.replicator.progress.TOTAL";

    @NotNull
    public static final String KEY_REPLICATOR = "com.couchbase.mobile.android.replicator.ID";

    @NotNull
    private static final Map<String, ReplicatorActivityLevel> activityLevelFromString;

    @NotNull
    private static final List<ReplicatorActivityLevel> stopStates;

    @Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u001d\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\f0\u000b¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0017\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\f0\u0010¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, m61528d2 = {"Lcom/couchbase/lite/internal/ReplicatorWorker$Companion;", "", "()V", "KEY_REPLICATION_ACTIVITY_LEVEL", "", "KEY_REPLICATION_COMPLETED", "KEY_REPLICATION_ERROR_CODE", "KEY_REPLICATION_ERROR_MESSAGE", "KEY_REPLICATION_TOTAL", "KEY_REPLICATOR", "activityLevelFromString", "", "Lcom/couchbase/lite/ReplicatorActivityLevel;", "getActivityLevelFromString", "()Ljava/util/Map;", "stopStates", "", "getStopStates", "()Ljava/util/List;", "couchbase-lite-android-ee-ktx-3.2.2-21_release"}, m61529k = 1, m61530mv = {1, 8, 0}, m61532xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Map<String, ReplicatorActivityLevel> getActivityLevelFromString() {
            return ReplicatorWorker.activityLevelFromString;
        }

        @NotNull
        public final List<ReplicatorActivityLevel> getStopStates() {
            return ReplicatorWorker.stopStates;
        }

        private Companion() {
        }
    }

    static {
        List<ReplicatorActivityLevel> listOf;
        Map<String, ReplicatorActivityLevel> mapOf;
        ReplicatorActivityLevel replicatorActivityLevel = ReplicatorActivityLevel.OFFLINE;
        ReplicatorActivityLevel replicatorActivityLevel2 = ReplicatorActivityLevel.IDLE;
        ReplicatorActivityLevel replicatorActivityLevel3 = ReplicatorActivityLevel.STOPPED;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new ReplicatorActivityLevel[]{replicatorActivityLevel, replicatorActivityLevel2, replicatorActivityLevel3});
        stopStates = listOf;
        Pair m61535to = TuplesKt.m61535to(replicatorActivityLevel3.toString(), replicatorActivityLevel3);
        Pair m61535to2 = TuplesKt.m61535to(replicatorActivityLevel.toString(), replicatorActivityLevel);
        ReplicatorActivityLevel replicatorActivityLevel4 = ReplicatorActivityLevel.CONNECTING;
        Pair m61535to3 = TuplesKt.m61535to(replicatorActivityLevel4.toString(), replicatorActivityLevel4);
        Pair m61535to4 = TuplesKt.m61535to(replicatorActivityLevel2.toString(), replicatorActivityLevel2);
        ReplicatorActivityLevel replicatorActivityLevel5 = ReplicatorActivityLevel.BUSY;
        mapOf = MapsKt__MapsKt.mapOf(m61535to, m61535to2, m61535to3, m61535to4, TuplesKt.m61535to(replicatorActivityLevel5.toString(), replicatorActivityLevel5));
        activityLevelFromString = mapOf;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReplicatorWorker(@NotNull Context appContext, @NotNull WorkerParameters params) {
        super(appContext, params);
        Intrinsics.checkNotNullParameter(appContext, "appContext");
        Intrinsics.checkNotNullParameter(params, "params");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Data buildData(String tag, ReplicatorStatus status) {
        Data.Builder putString = new Data.Builder().putString(KEY_REPLICATOR, tag).putString(KEY_REPLICATION_ACTIVITY_LEVEL, status.getActivityLevel().toString());
        Intrinsics.checkNotNullExpressionValue(putString, "Builder()\n            .p…activityLevel.toString())");
        ReplicatorProgress progress = status.getProgress();
        putString.putLong(KEY_REPLICATION_COMPLETED, progress.getCompleted()).putLong(KEY_REPLICATION_TOTAL, progress.getTotal());
        CouchbaseLiteException error = status.getError();
        if (error != null) {
            putString.putInt(KEY_REPLICATION_ERROR_CODE, error.getCode()).putString(KEY_REPLICATION_ERROR_MESSAGE, error.getMessage());
        }
        Data build = putString.build();
        Intrinsics.checkNotNullExpressionValue(build, "dataBuilder.build()");
        return build;
    }

    private final WorkManagerReplicatorFactory getFactory(String factoryClass) {
        if (factoryClass == null) {
            throw new IllegalArgumentException("Factory class name is null");
        }
        try {
            Object newInstance = Class.forName(factoryClass).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            Intrinsics.checkNotNull(newInstance, "null cannot be cast to non-null type com.couchbase.lite.WorkManagerReplicatorFactory");
            return (WorkManagerReplicatorFactory) newInstance;
        } catch (Exception e) {
            throw new CouchbaseLiteError("Failed creating factory " + factoryClass, e);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0112, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x010f, code lost:
    
        if (r14 == null) goto L22;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v11, types: [T, com.couchbase.lite.Replicator] */
    /* JADX WARN: Type inference failed for: r2v1, types: [T, java.lang.String] */
    @Override // androidx.work.CoroutineWorker
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object doWork(@org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super androidx.work.ListenableWorker.Result> r15) {
        /*
            Method dump skipped, instructions count: 286
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.couchbase.lite.internal.ReplicatorWorker.doWork(kotlin.coroutines.Continuation):java.lang.Object");
    }

    private final Data buildData(String tag, Throwable err) {
        int code;
        String str;
        Throwable th = err;
        while (th != null && !(th instanceof CouchbaseLiteException)) {
            th = th.getCause();
        }
        if (!(th instanceof CouchbaseLiteException)) {
            str = err.getMessage();
            code = 10;
        } else {
            CouchbaseLiteException couchbaseLiteException = (CouchbaseLiteException) th;
            String message = couchbaseLiteException.getMessage();
            code = couchbaseLiteException.getCode();
            str = message;
        }
        Data.Builder builder = new Data.Builder();
        if (tag == null) {
            tag = "unknown";
        }
        Data.Builder putInt = builder.putString(KEY_REPLICATOR, tag).putString(KEY_REPLICATION_ACTIVITY_LEVEL, ReplicatorActivityLevel.STOPPED.toString()).putInt(KEY_REPLICATION_ERROR_CODE, code);
        if (str == null || str.length() == 0) {
            str = "error";
        }
        Data build = putInt.putString(KEY_REPLICATION_ERROR_MESSAGE, str).build();
        Intrinsics.checkNotNullExpressionValue(build, "Builder()\n            .p…msg)\n            .build()");
        return build;
    }
}
