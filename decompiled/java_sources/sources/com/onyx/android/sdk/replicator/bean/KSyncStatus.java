package com.onyx.android.sdk.replicator.bean;

import com.alibaba.fastjson2.annotation.JSONField;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u001c\n\u0002\u0010\u000b\n\u0002\b\u000f\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\bB\u0010CJ\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0006\u001a\u00020\u0005J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\tJ\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\tJ\u0010\u0010\u0010\u001a\u00020\u00002\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eJ\u0010\u0010\u0011\u001a\u00020\u00002\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eJ\u000e\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0012J\u0016\u0010\u0016\u001a\u00020\u00002\u000e\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0014J\u0014\u0010\u0019\u001a\u00020\u00182\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00020\u0012J\u0010\u0010\u001b\u001a\u00020\u00182\b\u0010\u001a\u001a\u0004\u0018\u00010\u0000J\u0010\u0010\u001c\u001a\u00020\u00182\b\u0010\u001a\u001a\u0004\u0018\u00010\u0000J\b\u0010\u001d\u001a\u00020\tH\u0007R$\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u00028\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$R$\u0010\n\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\t8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(R$\u0010\f\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\t8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b)\u0010&\u001a\u0004\b*\u0010(R\u001e\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010,R(\u00101\u001a\u0004\u0018\u00010\u000e2\b\u0010\u001e\u001a\u0004\u0018\u00010\u000e8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b-\u0010.\u001a\u0004\b/\u00100R(\u00104\u001a\u0004\u0018\u00010\u000e2\b\u0010\u001e\u001a\u0004\u0018\u00010\u000e8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b2\u0010.\u001a\u0004\b3\u00100R\u0011\u00106\u001a\u0002058G¢\u0006\u0006\u001a\u0004\b6\u00107R\u0011\u00108\u001a\u0002058G¢\u0006\u0006\u001a\u0004\b8\u00107R\u0011\u00109\u001a\u0002058G¢\u0006\u0006\u001a\u0004\b9\u00107R\u0011\u0010:\u001a\u0002058G¢\u0006\u0006\u001a\u0004\b:\u00107R\u0011\u0010;\u001a\u0002058G¢\u0006\u0006\u001a\u0004\b;\u00107R\u0011\u0010<\u001a\u0002058G¢\u0006\u0006\u001a\u0004\b<\u00107R\u0011\u0010>\u001a\u00020\u00028G¢\u0006\u0006\u001a\u0004\b=\u0010\"R\u0011\u0010A\u001a\u00020\u00058G¢\u0006\u0006\u001a\u0004\b?\u0010@¨\u0006D"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;", "", "", "status", "setStatus", "", "getError", "error", "setError", "", OneDriverConstants.OPERATION_STATUS_COMPLETED, "setCompleted", "total", "setTotal", "Ljava/util/Date;", "at", "setPullAt", "setPushAt", "", "getErrorTypeList", "", "errorTypeList", "setErrorTypeList", "list", "", "addErrorTypeList", "mergeStatus", "merge", "mergeLatestSyncTime", "getLatestSyncTime", "<set-?>", "a", "I", "getStatus", "()I", "b", Constants.STRING_SIG, "c", "J", "getCompleted", "()J", "d", "getTotal", "e", "Ljava/util/List;", C6997f.f39671c, "Ljava/util/Date;", "getPullAt", "()Ljava/util/Date;", "pullAt", C6998g.f39679a, "getPushAt", "pushAt", "", "isSyncing", Constants.BOOLEAN_VALUE_SIG, "isSyncDisabled", "isSyncSuccess", "isSyncFail", "isSyncFinish", "isSyncStop", "getProgress", "progress", "getDebugInfoString", "()Ljava/lang/String;", "debugInfoString", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class KSyncStatus {

    /* renamed from: a, reason: from kotlin metadata */
    public int status = 4;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public String error;

    /* renamed from: c, reason: from kotlin metadata */
    public long completed;

    /* renamed from: d, reason: from kotlin metadata */
    public long total;

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public List<Integer> errorTypeList;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public Date pullAt;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public Date pushAt;

    public final void addErrorTypeList(@NotNull List<Integer> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        if (list.isEmpty()) {
            return;
        }
        if (this.errorTypeList == null) {
            this.errorTypeList = new ArrayList();
        }
        Iterator<Integer> it2 = list.iterator();
        while (it2.hasNext()) {
            int intValue = it2.next().intValue();
            List<Integer> list2 = this.errorTypeList;
            Intrinsics.checkNotNull(list2);
            if (!list2.contains(Integer.valueOf(intValue))) {
                List<Integer> list3 = this.errorTypeList;
                Intrinsics.checkNotNull(list3);
                list3.add(Integer.valueOf(intValue));
            }
        }
    }

    public final long getCompleted() {
        return this.completed;
    }

    @JSONField(serialize = false)
    @NotNull
    public final String getDebugInfoString() {
        StringBuilder sb = new StringBuilder();
        sb.append("KSyncStatus{status=");
        sb.append(SyncStatus.INSTANCE.toString(this.status));
        sb.append(", progress=");
        sb.append(getProgress());
        sb.append(", error='");
        sb.append(this.error);
        sb.append("', pullTime=");
        DateTimeUtil dateTimeUtil = DateTimeUtil.INSTANCE;
        sb.append(dateTimeUtil.safelyGetTime(this.pullAt));
        sb.append(", pushTime=");
        sb.append(dateTimeUtil.safelyGetTime(this.pushAt));
        sb.append('}');
        return sb.toString();
    }

    @NotNull
    public final String getError() {
        String str = this.error;
        return str == null ? "" : str;
    }

    @Nullable
    public final List<Integer> getErrorTypeList() {
        return this.errorTypeList;
    }

    @JSONField(serialize = false)
    public final long getLatestSyncTime() {
        long coerceAtLeast;
        Date date = this.pullAt;
        long time = date != null ? date.getTime() : 0L;
        Date date2 = this.pushAt;
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(time, date2 != null ? date2.getTime() : 0L);
        return coerceAtLeast;
    }

    @JSONField(serialize = false)
    public final int getProgress() {
        if (this.total == 0) {
            return 0;
        }
        return (int) Math.floor((((float) this.completed) / ((float) r0)) * 100);
    }

    @Nullable
    public final Date getPullAt() {
        return this.pullAt;
    }

    @Nullable
    public final Date getPushAt() {
        return this.pushAt;
    }

    public final int getStatus() {
        return this.status;
    }

    public final long getTotal() {
        return this.total;
    }

    @JSONField(serialize = false)
    public final boolean isSyncDisabled() {
        return this.status == 7;
    }

    @JSONField(serialize = false)
    public final boolean isSyncFail() {
        return this.status == 3;
    }

    @JSONField(serialize = false)
    public final boolean isSyncFinish() {
        return isSyncFail() || isSyncSuccess();
    }

    @JSONField(serialize = false)
    public final boolean isSyncStop() {
        return this.status == 4;
    }

    @JSONField(serialize = false)
    public final boolean isSyncSuccess() {
        return this.status == 2;
    }

    @JSONField(serialize = false)
    public final boolean isSyncing() {
        return this.status == 1;
    }

    public final void merge(@Nullable KSyncStatus mergeStatus) {
        if (mergeStatus == null) {
            return;
        }
        Date date = mergeStatus.pullAt;
        if (date != null && this.pullAt == null) {
            setPullAt(date);
        }
        Date date2 = mergeStatus.pushAt;
        if (date2 == null || this.pushAt != null) {
            return;
        }
        setPushAt(date2);
    }

    public final void mergeLatestSyncTime(@Nullable KSyncStatus mergeStatus) {
        long coerceAtLeast;
        long coerceAtLeast2;
        if (mergeStatus == null) {
            return;
        }
        if (mergeStatus.pullAt != null) {
            Date date = mergeStatus.pullAt;
            Intrinsics.checkNotNull(date);
            long time = date.getTime();
            Date date2 = this.pullAt;
            coerceAtLeast2 = RangesKt___RangesKt.coerceAtLeast(time, date2 != null ? date2.getTime() : 0L);
            setPullAt(new Date(coerceAtLeast2));
        }
        if (mergeStatus.pushAt != null) {
            Date date3 = mergeStatus.pushAt;
            Intrinsics.checkNotNull(date3);
            long time2 = date3.getTime();
            Date date4 = this.pushAt;
            coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(time2, date4 != null ? date4.getTime() : 0L);
            setPushAt(new Date(coerceAtLeast));
        }
    }

    @NotNull
    public final KSyncStatus setCompleted(long completed) {
        this.completed = completed;
        return this;
    }

    @NotNull
    public final KSyncStatus setError(@Nullable String error) {
        this.error = error;
        return this;
    }

    @NotNull
    public final KSyncStatus setErrorTypeList(@Nullable List<Integer> errorTypeList) {
        this.errorTypeList = errorTypeList;
        return this;
    }

    @NotNull
    public final KSyncStatus setPullAt(@Nullable Date at) {
        this.pullAt = at;
        return this;
    }

    @NotNull
    public final KSyncStatus setPushAt(@Nullable Date at) {
        this.pushAt = at;
        return this;
    }

    @NotNull
    public final KSyncStatus setStatus(int status) {
        this.status = status;
        return this;
    }

    @NotNull
    public final KSyncStatus setTotal(long total) {
        this.total = total;
        return this;
    }
}
