package com.onyx.android.sdk.replicator.bean;

import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.replicator.utils.KSyncLogUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010%\n\u0002\b\u001b\u0018\u0000 82\u00020\u0001:\u00018B\u0007¢\u0006\u0004\b6\u00107J\u0010\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u000e\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006J\u000e\u0010\n\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006J\u000e\u0010\f\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\u0002J\u0010\u0010\r\u001a\u00020\b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u000e\u001a\u00020\b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u000f\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u0010\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u0011\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0018\u0010\u0014\u001a\u00020\b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0013\u001a\u00020\u0012J\u0006\u0010\u0015\u001a\u00020\bJ\u0010\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J*\u0010\u001d\u001a\u00020\b2\u0006\u0010\u0019\u001a\u00020\u00182\u0018\u0010\u001c\u001a\u0014\u0012\u0004\u0012\u00020\u0012\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00160\u001b0\u001aH\u0002R\"\u0010 \u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0004\u0012\u00020\u00160\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001fR\u0011\u0010#\u001a\u00020\u00128F¢\u0006\u0006\u001a\u0004\b!\u0010\"R\u0011\u0010%\u001a\u00020\u00128F¢\u0006\u0006\u001a\u0004\b$\u0010\"R\u0011\u0010'\u001a\u00020\u00128F¢\u0006\u0006\u001a\u0004\b&\u0010\"R\u0011\u0010)\u001a\u00020\u00128F¢\u0006\u0006\u001a\u0004\b(\u0010\"R\u0011\u0010+\u001a\u00020\u00128F¢\u0006\u0006\u001a\u0004\b*\u0010\"R\u0017\u0010.\u001a\b\u0012\u0004\u0012\u00020\u00120\u001b8F¢\u0006\u0006\u001a\u0004\b,\u0010-R\u0011\u0010/\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b/\u00100R\u0011\u00101\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b1\u00100R\u0011\u00102\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b2\u00100R\u0011\u00103\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b3\u00100R\u0014\u00105\u001a\u00020\u00128BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b4\u0010\"¨\u00069"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/bean/TaskManager;", "", "", "key", "", "containsTask", "Lcom/onyx/android/sdk/replicator/bean/StartTaskBean;", "bean", "", "startPush", "startPull", "printPrefix", "printTaskResult", "placeTaskHolder", "onTaskSuccess", "isTaskSyncingOrFinished", "isTaskSyncFinished", "isTaskSyncSuccess", "", "errorType", "onTaskFail", "close", "Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;", "b", "Ljava/lang/StringBuilder;", "log", "", "", "pullTaskMap", "a", "", "Ljava/util/Map;", "ossTaskMap", "getSyncSuccessTaskCount", "()I", "syncSuccessTaskCount", "getPushSuccessTaskCount", "pushSuccessTaskCount", "getPullSuccessTaskCount", "pullSuccessTaskCount", "getSyncFinishTaskCount", "syncFinishTaskCount", "getTotalTaskCount", "totalTaskCount", "getErrorTypes", "()Ljava/util/List;", "errorTypes", "isAllTaskFinished", Constants.BOOLEAN_VALUE_SIG, "isAllTaskSuccess", "isPushTaskSuccess", "isSyncTaskOutOfLimit", "c", "syncingTaskCount", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class TaskManager {

    /* renamed from: b */
    public static final int f45261b = 4;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Map<String, OssTaskHolder> ossTaskMap = new HashMap();

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: c */
    @NotNull
    public static AtomicInteger f45262c = new AtomicInteger();

    @Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u000b\u001a\u00020\fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\n¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/bean/TaskManager$Companion;", "", "()V", "MAX_DOC_POINT_FILE_SYNC_TASK", "", "taskFinishCount", "Ljava/util/concurrent/atomic/AtomicInteger;", "getTaskFinishCount", "()Ljava/util/concurrent/atomic/AtomicInteger;", "setTaskFinishCount", "(Ljava/util/concurrent/atomic/AtomicInteger;)V", "resetTaskFinishCount", "", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final AtomicInteger getTaskFinishCount() {
            return TaskManager.f45262c;
        }

        public final void resetTaskFinishCount() {
            getTaskFinishCount().set(0);
        }

        public final void setTaskFinishCount(@NotNull AtomicInteger atomicInteger) {
            Intrinsics.checkNotNullParameter(atomicInteger, "<set-?>");
            TaskManager.f45262c = atomicInteger;
        }

        public Companion() {
        }
    }

    /* renamed from: a */
    public final void m34924a(StringBuilder log, Map<Integer, ? extends List<OssTaskHolder>> pullTaskMap) {
        for (Map.Entry<Integer, ? extends List<OssTaskHolder>> entry : pullTaskMap.entrySet()) {
            int intValue = entry.getKey().intValue();
            Iterator<OssTaskHolder> it2 = entry.getValue().iterator();
            int i = 0;
            int i2 = 0;
            while (it2.hasNext()) {
                if (it2.next().getStatus() == 3) {
                    i++;
                } else {
                    i2++;
                }
            }
            if (i > 0 || i2 > 0) {
                log.append("record: ");
                log.append(intValue);
                if (i > 0) {
                    log.append("，s:");
                    log.append(i);
                }
                if (i2 > 0) {
                    log.append("，f:");
                    log.append(i2);
                }
                log.append(",");
            }
        }
    }

    /* renamed from: b */
    public final OssTaskHolder m34925b(StartTaskBean bean) {
        OssTaskHolder ossTaskHolder = this.ossTaskMap.get(bean.getKey());
        if (ossTaskHolder == null) {
            ossTaskHolder = new OssTaskHolder();
            this.ossTaskMap.put(bean.getKey(), ossTaskHolder);
        }
        ossTaskHolder.setSyncRecordType(bean.getSyncRecordType());
        return ossTaskHolder;
    }

    /* renamed from: c */
    public final int m34926c() {
        Iterator<Map.Entry<String, OssTaskHolder>> it2 = this.ossTaskMap.entrySet().iterator();
        int i = 0;
        while (it2.hasNext()) {
            if (it2.next().getValue().isSyncing()) {
                i++;
            }
        }
        return i;
    }

    public final void close() {
        Iterator<Map.Entry<String, OssTaskHolder>> it2 = this.ossTaskMap.entrySet().iterator();
        while (it2.hasNext()) {
            it2.next().getValue().cancelTask();
        }
        this.ossTaskMap.clear();
    }

    public final boolean containsTask(@Nullable String key) {
        return this.ossTaskMap.containsKey(key);
    }

    @NotNull
    public final List<Integer> getErrorTypes() {
        ArrayList arrayList = new ArrayList();
        Iterator<Map.Entry<String, OssTaskHolder>> it2 = this.ossTaskMap.entrySet().iterator();
        while (it2.hasNext()) {
            OssTaskHolder value = it2.next().getValue();
            int errorType = value.getErrorType();
            if (value.isSyncError() && !arrayList.contains(Integer.valueOf(errorType))) {
                arrayList.add(Integer.valueOf(errorType));
            }
        }
        return arrayList;
    }

    public final int getPullSuccessTaskCount() {
        Iterator<Map.Entry<String, OssTaskHolder>> it2 = this.ossTaskMap.entrySet().iterator();
        int i = 0;
        while (it2.hasNext()) {
            OssTaskHolder value = it2.next().getValue();
            if (value.isPullType() && value.isSuccess()) {
                i++;
            }
        }
        return i;
    }

    public final int getPushSuccessTaskCount() {
        Iterator<Map.Entry<String, OssTaskHolder>> it2 = this.ossTaskMap.entrySet().iterator();
        int i = 0;
        while (it2.hasNext()) {
            OssTaskHolder value = it2.next().getValue();
            if (value.isPushType() && value.isSuccess()) {
                i++;
            }
        }
        return i;
    }

    public final int getSyncFinishTaskCount() {
        Iterator<Map.Entry<String, OssTaskHolder>> it2 = this.ossTaskMap.entrySet().iterator();
        int i = 0;
        while (it2.hasNext()) {
            if (it2.next().getValue().isFinished()) {
                i++;
            }
        }
        return i;
    }

    public final int getSyncSuccessTaskCount() {
        Iterator<Map.Entry<String, OssTaskHolder>> it2 = this.ossTaskMap.entrySet().iterator();
        int i = 0;
        while (it2.hasNext()) {
            if (it2.next().getValue().isSuccess()) {
                i++;
            }
        }
        return i;
    }

    public final int getTotalTaskCount() {
        return CollectionKt.getSize(this.ossTaskMap);
    }

    public final boolean isAllTaskFinished() {
        return getSyncFinishTaskCount() == getTotalTaskCount();
    }

    public final boolean isAllTaskSuccess() {
        return getSyncSuccessTaskCount() == getTotalTaskCount();
    }

    public final boolean isPushTaskSuccess() {
        Iterator<Map.Entry<String, OssTaskHolder>> it2 = this.ossTaskMap.entrySet().iterator();
        while (it2.hasNext()) {
            OssTaskHolder value = it2.next().getValue();
            if (value.isPushType() && !value.isSuccess()) {
                return false;
            }
        }
        return true;
    }

    public final boolean isSyncTaskOutOfLimit() {
        return m34926c() > 4;
    }

    public final boolean isTaskSyncFinished(@Nullable String key) {
        OssTaskHolder ossTaskHolder = this.ossTaskMap.get(key);
        return ossTaskHolder != null && ossTaskHolder.isFinished();
    }

    public final boolean isTaskSyncSuccess(@Nullable String key) {
        OssTaskHolder ossTaskHolder = this.ossTaskMap.get(key);
        return ossTaskHolder != null && ossTaskHolder.isSuccess();
    }

    public final boolean isTaskSyncingOrFinished(@Nullable String key) {
        OssTaskHolder ossTaskHolder = this.ossTaskMap.get(key);
        return ossTaskHolder != null && ossTaskHolder.isSyncingOrFinished();
    }

    public final void onTaskFail(@Nullable String key, int errorType) {
        OssTaskHolder ossTaskHolder = this.ossTaskMap.get(key);
        if (ossTaskHolder != null) {
            ossTaskHolder.syncError(errorType);
        }
    }

    public final void onTaskSuccess(@Nullable String key) {
        f45262c.addAndGet(1);
        OssTaskHolder ossTaskHolder = this.ossTaskMap.get(key);
        if (ossTaskHolder != null) {
            ossTaskHolder.syncSuccess();
        }
    }

    public final void placeTaskHolder(@Nullable String key) {
        if (containsTask(key)) {
            return;
        }
        this.ossTaskMap.put(key, new OssTaskHolder());
    }

    public final void printTaskResult(@NotNull String printPrefix) {
        Intrinsics.checkNotNullParameter(printPrefix, "printPrefix");
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        Iterator<Map.Entry<String, OssTaskHolder>> it2 = this.ossTaskMap.entrySet().iterator();
        while (it2.hasNext()) {
            OssTaskHolder value = it2.next().getValue();
            if (value.isPullType()) {
                CollectionKt.ensureList((HashMap<Integer, List<V>>) hashMap, Integer.valueOf(value.getSyncRecordType())).add(value);
            } else {
                CollectionKt.ensureList((HashMap<Integer, List<V>>) hashMap2, Integer.valueOf(value.getSyncRecordType())).add(value);
            }
        }
        StringBuilder sb = new StringBuilder(printPrefix);
        if (CollectionKt.isNonBlank(hashMap)) {
            sb.append(",  pull: ");
            m34924a(sb, hashMap);
        }
        if (CollectionKt.isNonBlank(hashMap2)) {
            sb.append(",  push: ");
            m34924a(sb, hashMap2);
        }
        KSyncLogUtils kSyncLogUtils = KSyncLogUtils.INSTANCE;
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "toString(...)");
        kSyncLogUtils.m35864d(TaskManager.class, sb2);
    }

    public final void startPull(@NotNull StartTaskBean bean) {
        Intrinsics.checkNotNullParameter(bean, "bean");
        m34925b(bean).setTaskDisposable(bean.getTaskDisposable()).startPull();
    }

    public final void startPush(@NotNull StartTaskBean bean) {
        Intrinsics.checkNotNullParameter(bean, "bean");
        m34925b(bean).setTaskDisposable(bean.getTaskDisposable()).startPush();
    }
}
