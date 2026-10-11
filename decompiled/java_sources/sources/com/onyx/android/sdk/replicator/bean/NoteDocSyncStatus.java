package com.onyx.android.sdk.replicator.bean;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\t\n\u0002\b\r\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010!\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010%\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b \n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\bv\u0010wJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u000e\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\n\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u0002J\u0016\u0010\r\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u000f\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\u0004J\u000e\u0010\u0010\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000bJ\u0006\u0010\u0011\u001a\u00020\u0002J\u0006\u0010\u0012\u001a\u00020\u0002J\u0010\u0010\u0014\u001a\u00020\u00002\b\u0010\u0013\u001a\u0004\u0018\u00010\u000bJ\u000e\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0002J\u000e\u0010\u0019\u001a\u00020\b2\u0006\u0010\u0018\u001a\u00020\u0017J\u000e\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0017J\u000e\u0010\u001c\u001a\u00020\b2\u0006\u0010\u001b\u001a\u00020\u0004J\u0006\u0010\u001d\u001a\u00020\u0004J\u000e\u0010\u001e\u001a\u00020\b2\u0006\u0010\u0018\u001a\u00020\u0017J\u000e\u0010\u001f\u001a\u00020\b2\u0006\u0010\u0018\u001a\u00020\u0017J\u000e\u0010 \u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0017J\u000e\u0010!\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0017J\u000e\u0010\"\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0017J\u000e\u0010$\u001a\u00020\u00002\u0006\u0010#\u001a\u00020\u0004J\u0014\u0010'\u001a\u00020\b2\f\u0010&\u001a\b\u0012\u0004\u0012\u00020\u00020%J\u000e\u0010)\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010(J\u0006\u0010*\u001a\u00020\bJ\u0006\u0010+\u001a\u00020\u0004J\u0006\u0010,\u001a\u00020\u0004J\u0006\u0010-\u001a\u00020\u0004J\u0006\u0010.\u001a\u00020\u0004J\u0006\u0010/\u001a\u00020\u0004J\u0006\u00100\u001a\u00020\u0004J\b\u00101\u001a\u00020\u000bH\u0016J\u0006\u00102\u001a\u00020\u000bJ\u0006\u00103\u001a\u00020\u000bR\u0014\u00107\u001a\u0002048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b5\u00106R\u0014\u00109\u001a\u0002048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b8\u00106R \u0010<\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00020:8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010;R\u001e\u0010>\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0007\u0010=R$\u0010\u0013\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010?\u001a\u0004\b@\u0010A\"\u0004\b\u0014\u0010BR\"\u0010H\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bC\u0010D\u001a\u0004\bE\u0010F\"\u0004\b\u0016\u0010GR\"\u0010L\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bI\u0010D\u001a\u0004\bJ\u0010F\"\u0004\bK\u0010GR\u0014\u0010P\u001a\u00020M8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bN\u0010OR\u0014\u0010T\u001a\u00020Q8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bR\u0010SR\u0014\u0010V\u001a\u00020M8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bU\u0010OR\u0014\u0010X\u001a\u00020M8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bW\u0010OR\u0014\u0010Z\u001a\u00020Q8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bY\u0010SR\u0014\u0010\\\u001a\u00020M8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b[\u0010OR\u0014\u0010^\u001a\u00020M8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b]\u0010OR\u0014\u0010`\u001a\u00020M8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b_\u0010OR\u0014\u0010b\u001a\u00020M8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\ba\u0010OR\u0014\u0010d\u001a\u00020Q8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bc\u0010SR\u0014\u0010f\u001a\u00020\u00178BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b8\u0010eR\u0014\u0010g\u001a\u00020\u00178BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b5\u0010eR\u0011\u0010i\u001a\u00020\u00028F¢\u0006\u0006\u001a\u0004\bh\u0010FR\u0011\u0010j\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\bj\u0010kR\u0011\u0010l\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\bl\u0010kR\u0011\u0010m\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\bm\u0010kR\u0011\u0010n\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\bn\u0010kR\u0011\u0010o\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\bo\u0010kR\u0011\u0010p\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\bp\u0010kR\u0011\u0010q\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\bq\u0010kR\u0011\u0010u\u001a\u00020r8F¢\u0006\u0006\u001a\u0004\bs\u0010t¨\u0006x"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;", "", "", "status", "", "c", "e", "d", "", "setShapeStatus", "setDataStatus", "", "requestId", "setRequestStatus", "preparing", "setPreparingStart", "removeRequestStatus", "getShapeStatus", "getDataStatus", "error", "setError", "code", "setErrorCode", "", "count", "addTotalPullShapeCount", "setCompletedPullDataCount", "saving", "setHandlingOldShapeData", "getHandlingOldShapeData", "setTotalShapeCount", "setCompletedShapeCount", "setTotalDataCount", "setCompletedDataCount", "setCompletedPushDataCount", "pushed", "setShapePushed", "", "types", "addErrorTypes", "", "getErrorTypes", "updateSyncCloudSuccess", "hasPullShapeData", "hasPullDocData", "hasPushDocData", "isPreparingStart", "hasSyncData", "hasPushedData", "toString", "toDataString", "toShortString", "Ljava/util/concurrent/atomic/AtomicInteger;", "a", "Ljava/util/concurrent/atomic/AtomicInteger;", CouchFieldKey.KEY_SHAPE_STATUS, "b", "dataStatus", "", "Ljava/util/Map;", "requestStatusMap", "Ljava/util/List;", "errorTypes", Constants.STRING_SIG, "getError", "()Ljava/lang/String;", "(Ljava/lang/String;)V", C6997f.f39671c, "I", "getErrorCode", "()I", "(I)V", "errorCode", C6998g.f39679a, "getSyncCloudFileStatus", "setSyncCloudFileStatus", "syncCloudFileStatus", "Ljava/util/concurrent/atomic/AtomicLong;", C6999h.f39688c, "Ljava/util/concurrent/atomic/AtomicLong;", "totalPullShapeCount", "Ljava/util/concurrent/atomic/AtomicBoolean;", "i", "Ljava/util/concurrent/atomic/AtomicBoolean;", "handlingOldShapeData", "j", "totalShapeCount", C4921e.f26537n, "completedShapeCount", "l", "shapePushed", "m", "totalDataCount", GoogleApiAvailabilityLight.f29016b, "completedDataCount", C4921e.f26528e, "completedPushDataCount", "p", "completedPullDataCount", "q", "preparingStart", "()J", "total", OneDriverConstants.OPERATION_STATUS_COMPLETED, "getRequestStatus", "requestStatus", "isShapeReplicatorError", Constants.BOOLEAN_VALUE_SIG, "isSyncCloudFileSuccess", "isShapeStatusFinished", "isDataStatusFinished", "isRequestStatusFinished", "isFinished", "isSyncSuccess", "Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;", "getKSyncStatusWithCloudFile", "()Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;", "kSyncStatusWithCloudFile", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class NoteDocSyncStatus {

    /* renamed from: d, reason: from kotlin metadata */
    @Nullable
    public List<Integer> errorTypes;

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public String error;

    /* renamed from: f, reason: from kotlin metadata */
    public int errorCode;

    /* renamed from: g, reason: from kotlin metadata */
    public int syncCloudFileStatus;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final AtomicInteger shapeStatus = new AtomicInteger(4);

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final AtomicInteger dataStatus = new AtomicInteger(4);

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final Map<String, Integer> requestStatusMap = new ConcurrentHashMap();

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final AtomicLong totalPullShapeCount = new AtomicLong();

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final AtomicBoolean handlingOldShapeData = new AtomicBoolean();

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final AtomicLong totalShapeCount = new AtomicLong();

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final AtomicLong completedShapeCount = new AtomicLong();

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final AtomicBoolean shapePushed = new AtomicBoolean();

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public final AtomicLong totalDataCount = new AtomicLong();

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public final AtomicLong completedDataCount = new AtomicLong();

    /* renamed from: o, reason: from kotlin metadata */
    @NotNull
    public final AtomicLong completedPushDataCount = new AtomicLong();

    /* renamed from: p, reason: from kotlin metadata */
    @NotNull
    public final AtomicLong completedPullDataCount = new AtomicLong();

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public final AtomicBoolean preparingStart = new AtomicBoolean();

    /* renamed from: a */
    public final long m34902a() {
        return this.completedShapeCount.get() + this.completedDataCount.get();
    }

    public final void addErrorTypes(@NotNull List<Integer> types) {
        Intrinsics.checkNotNullParameter(types, "types");
        if (types.isEmpty()) {
            return;
        }
        if (this.errorTypes == null) {
            this.errorTypes = new ArrayList();
        }
        Iterator<Integer> it2 = types.iterator();
        while (it2.hasNext()) {
            int intValue = it2.next().intValue();
            List<Integer> list = this.errorTypes;
            Intrinsics.checkNotNull(list);
            if (!list.contains(Integer.valueOf(intValue))) {
                List<Integer> list2 = this.errorTypes;
                Intrinsics.checkNotNull(list2);
                list2.add(Integer.valueOf(intValue));
            }
        }
    }

    public final void addTotalPullShapeCount(long count) {
        this.totalPullShapeCount.addAndGet(count);
    }

    /* renamed from: b */
    public final long m34903b() {
        return this.totalShapeCount.get() + this.totalDataCount.get();
    }

    /* renamed from: c */
    public final boolean m34904c(int status) {
        return status != 1;
    }

    /* renamed from: d */
    public final boolean m34905d(int status) {
        return status == 3;
    }

    /* renamed from: e */
    public final boolean m34906e(int status) {
        return status == 1;
    }

    public final int getDataStatus() {
        return this.dataStatus.get();
    }

    @Nullable
    public final String getError() {
        return this.error;
    }

    public final int getErrorCode() {
        return this.errorCode;
    }

    @Nullable
    public final List<Integer> getErrorTypes() {
        return this.errorTypes;
    }

    public final boolean getHandlingOldShapeData() {
        return this.handlingOldShapeData.get();
    }

    @NotNull
    public final KSyncStatus getKSyncStatusWithCloudFile() {
        KSyncStatus completed = new KSyncStatus().setErrorTypeList(getErrorTypes()).setTotal(m34903b()).setCompleted(m34902a());
        if (isFinished()) {
            completed.setStatus((isSyncSuccess() && isSyncCloudFileSuccess()) ? 2 : 3);
        } else {
            completed.setStatus(1);
        }
        return completed;
    }

    public final int getRequestStatus() {
        Iterator<Map.Entry<String, Integer>> it2 = this.requestStatusMap.entrySet().iterator();
        boolean z = false;
        while (it2.hasNext()) {
            int intValue = it2.next().getValue().intValue();
            if (m34906e(intValue)) {
                return 1;
            }
            if (m34905d(intValue)) {
                z = true;
            }
        }
        return z ? 3 : 2;
    }

    public final int getShapeStatus() {
        return this.shapeStatus.get();
    }

    public final int getSyncCloudFileStatus() {
        return this.syncCloudFileStatus;
    }

    public final boolean hasPullDocData() {
        return this.completedPullDataCount.get() > 0;
    }

    public final boolean hasPullShapeData() {
        return this.totalPullShapeCount.get() > 0;
    }

    public final boolean hasPushDocData() {
        return this.completedPushDataCount.get() > 0;
    }

    public final boolean hasPushedData() {
        return this.shapePushed.get() || this.completedPushDataCount.get() > 0;
    }

    public final boolean hasSyncData() {
        return m34903b() > 0 || hasPullShapeData() || hasPushedData();
    }

    public final boolean isDataStatusFinished() {
        return m34904c(getDataStatus());
    }

    public final boolean isFinished() {
        return isShapeStatusFinished() && isDataStatusFinished() && isRequestStatusFinished() && !getHandlingOldShapeData() && !isPreparingStart();
    }

    public final boolean isPreparingStart() {
        return this.preparingStart.get();
    }

    public final boolean isRequestStatusFinished() {
        return m34904c(getRequestStatus());
    }

    public final boolean isShapeReplicatorError() {
        return getShapeStatus() == 3;
    }

    public final boolean isShapeStatusFinished() {
        return m34904c(getShapeStatus());
    }

    public final boolean isSyncCloudFileSuccess() {
        return this.syncCloudFileStatus == 2;
    }

    public final boolean isSyncSuccess() {
        return (!isFinished() || getDataStatus() == 3 || getShapeStatus() == 3 || getRequestStatus() == 3) ? false : true;
    }

    public final void removeRequestStatus(@NotNull String requestId) {
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        this.requestStatusMap.remove(requestId);
    }

    @NotNull
    public final NoteDocSyncStatus setCompletedDataCount(long count) {
        this.completedDataCount.set(count);
        return this;
    }

    @NotNull
    public final NoteDocSyncStatus setCompletedPullDataCount(long count) {
        this.completedPullDataCount.set(count);
        return this;
    }

    @NotNull
    public final NoteDocSyncStatus setCompletedPushDataCount(long count) {
        this.completedPushDataCount.set(count);
        return this;
    }

    public final void setCompletedShapeCount(long count) {
        this.completedShapeCount.set(count);
    }

    public final void setDataStatus(int status) {
        this.dataStatus.set(status);
    }

    /* renamed from: setError, reason: collision with other method in class */
    public final void m72338setError(@Nullable String str) {
        this.error = str;
    }

    /* renamed from: setErrorCode, reason: collision with other method in class */
    public final void m72339setErrorCode(int i) {
        this.errorCode = i;
    }

    public final void setHandlingOldShapeData(boolean saving) {
        this.handlingOldShapeData.set(saving);
    }

    public final void setPreparingStart(boolean preparing) {
        this.preparingStart.set(preparing);
    }

    public final void setRequestStatus(@NotNull String requestId, int status) {
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        this.requestStatusMap.put(requestId, Integer.valueOf(status));
    }

    @NotNull
    public final NoteDocSyncStatus setShapePushed(boolean pushed) {
        this.shapePushed.set(pushed);
        return this;
    }

    public final void setShapeStatus(int status) {
        this.shapeStatus.set(status);
    }

    public final void setSyncCloudFileStatus(int i) {
        this.syncCloudFileStatus = i;
    }

    @NotNull
    public final NoteDocSyncStatus setTotalDataCount(long count) {
        this.totalDataCount.set(count);
        return this;
    }

    public final void setTotalShapeCount(long count) {
        this.totalShapeCount.set(count);
    }

    @NotNull
    public final String toDataString() {
        return "totalShapeCount: " + this.totalShapeCount.get() + ", completedShapeCount: " + this.completedShapeCount.get() + ", totalDataCount: " + this.totalDataCount.get() + ", completedDataCount: " + this.completedDataCount.get();
    }

    @NotNull
    public final String toShortString() {
        return "s: " + isSyncSuccess() + ", tsc: " + this.totalShapeCount.get() + ", csc: " + this.completedShapeCount.get() + ", tdc: " + this.totalDataCount.get() + ", cdc: " + this.completedDataCount.get();
    }

    @NotNull
    public String toString() {
        return "shapeStatus: " + getShapeStatus() + ",dataStatus: " + getDataStatus() + ", requestStatus: " + getRequestStatus() + ", totalShapeCount: " + this.totalShapeCount.get() + ", completedShapeCount: " + this.completedShapeCount.get() + ", totalDataCount: " + this.totalDataCount.get() + ", completedDataCount: " + this.completedDataCount.get() + ", handlingOldShapeData: " + this.handlingOldShapeData.get() + ", preparingStart: " + isPreparingStart() + ", error: " + this.error + ", errorCode: " + this.errorCode + ", errorTypes: " + JSONUtils.INSTANCE.toJson(this.errorTypes);
    }

    public final void updateSyncCloudSuccess() {
        if (this.syncCloudFileStatus == 1) {
            this.syncCloudFileStatus = 2;
        }
    }

    @NotNull
    public final NoteDocSyncStatus setError(@Nullable String error) {
        this.error = error;
        return this;
    }

    @NotNull
    public final NoteDocSyncStatus setErrorCode(int code) {
        this.errorCode = code;
        return this;
    }
}
