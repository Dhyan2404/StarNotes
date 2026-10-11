package com.onyx.android.sdk.data.couchbase.bean;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\b$\b\u0086\b\u0018\u00002\u00020\u0001BW\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0005\u0012\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t\u0012\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t\u0012\b\b\u0002\u0010\f\u001a\u00020\u0005¢\u0006\u0002\u0010\rJ\t\u0010\"\u001a\u00020\u0003HÆ\u0003J\t\u0010#\u001a\u00020\u0005HÆ\u0003J\t\u0010$\u001a\u00020\u0005HÆ\u0003J\t\u0010%\u001a\u00020\u0005HÆ\u0003J\u000f\u0010&\u001a\b\u0012\u0004\u0012\u00020\n0\tHÆ\u0003J\u000f\u0010'\u001a\b\u0012\u0004\u0012\u00020\n0\tHÆ\u0003J\t\u0010(\u001a\u00020\u0005HÆ\u0003J[\u0010)\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00052\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\b\b\u0002\u0010\f\u001a\u00020\u0005HÆ\u0001J\u0013\u0010*\u001a\u00020\u00052\b\u0010+\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010,\u001a\u00020\u0003HÖ\u0001J\t\u0010-\u001a\u00020\nHÖ\u0001R\u001a\u0010\f\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u000f\"\u0004\b\u0013\u0010\u0011R \u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u000f\"\u0004\b\u0019\u0010\u0011R\u001a\u0010\u0007\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u000f\"\u0004\b\u001b\u0010\u0011R \u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0015\"\u0004\b\u001d\u0010\u0017R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!¨\u0006."}, m61528d2 = {"Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;", "", "triggerSource", "", "force", "", "resetCheckpoint", "syncAll", "syncDocIdList", "", "", "libraryDocIdList", "enableLog", "(IZZZLjava/util/List;Ljava/util/List;Z)V", "getEnableLog", Constants.BOOLEAN_VALUE_SIG, "setEnableLog", "(Z)V", "getForce", "setForce", "getLibraryDocIdList", "()Ljava/util/List;", "setLibraryDocIdList", "(Ljava/util/List;)V", "getResetCheckpoint", "setResetCheckpoint", "getSyncAll", "setSyncAll", "getSyncDocIdList", "setSyncDocIdList", "getTriggerSource", "()I", "setTriggerSource", "(I)V", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "equals", com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER, "hashCode", "toString", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final /* data */ class StartReplicatorBean {
    private boolean enableLog;
    private boolean force;

    @NotNull
    private List<String> libraryDocIdList;
    private boolean resetCheckpoint;
    private boolean syncAll;

    @NotNull
    private List<String> syncDocIdList;
    private int triggerSource;

    public StartReplicatorBean() {
        this(0, false, false, false, null, null, false, 127, null);
    }

    public static /* synthetic */ StartReplicatorBean copy$default(StartReplicatorBean startReplicatorBean, int i, boolean z, boolean z2, boolean z3, List list, List list2, boolean z4, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = startReplicatorBean.triggerSource;
        }
        if ((i2 & 2) != 0) {
            z = startReplicatorBean.force;
        }
        boolean z5 = z;
        if ((i2 & 4) != 0) {
            z2 = startReplicatorBean.resetCheckpoint;
        }
        boolean z6 = z2;
        if ((i2 & 8) != 0) {
            z3 = startReplicatorBean.syncAll;
        }
        boolean z7 = z3;
        if ((i2 & 16) != 0) {
            list = startReplicatorBean.syncDocIdList;
        }
        List list3 = list;
        if ((i2 & 32) != 0) {
            list2 = startReplicatorBean.libraryDocIdList;
        }
        List list4 = list2;
        if ((i2 & 64) != 0) {
            z4 = startReplicatorBean.enableLog;
        }
        return startReplicatorBean.copy(i, z5, z6, z7, list3, list4, z4);
    }

    /* renamed from: component1, reason: from getter */
    public final int getTriggerSource() {
        return this.triggerSource;
    }

    /* renamed from: component2, reason: from getter */
    public final boolean getForce() {
        return this.force;
    }

    /* renamed from: component3, reason: from getter */
    public final boolean getResetCheckpoint() {
        return this.resetCheckpoint;
    }

    /* renamed from: component4, reason: from getter */
    public final boolean getSyncAll() {
        return this.syncAll;
    }

    @NotNull
    public final List<String> component5() {
        return this.syncDocIdList;
    }

    @NotNull
    public final List<String> component6() {
        return this.libraryDocIdList;
    }

    /* renamed from: component7, reason: from getter */
    public final boolean getEnableLog() {
        return this.enableLog;
    }

    @NotNull
    public final StartReplicatorBean copy(int triggerSource, boolean force, boolean resetCheckpoint, boolean syncAll, @NotNull List<String> syncDocIdList, @NotNull List<String> libraryDocIdList, boolean enableLog) {
        Intrinsics.checkNotNullParameter(syncDocIdList, "syncDocIdList");
        Intrinsics.checkNotNullParameter(libraryDocIdList, "libraryDocIdList");
        return new StartReplicatorBean(triggerSource, force, resetCheckpoint, syncAll, syncDocIdList, libraryDocIdList, enableLog);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof StartReplicatorBean)) {
            return false;
        }
        StartReplicatorBean startReplicatorBean = (StartReplicatorBean) other;
        return this.triggerSource == startReplicatorBean.triggerSource && this.force == startReplicatorBean.force && this.resetCheckpoint == startReplicatorBean.resetCheckpoint && this.syncAll == startReplicatorBean.syncAll && Intrinsics.areEqual(this.syncDocIdList, startReplicatorBean.syncDocIdList) && Intrinsics.areEqual(this.libraryDocIdList, startReplicatorBean.libraryDocIdList) && this.enableLog == startReplicatorBean.enableLog;
    }

    public final boolean getEnableLog() {
        return this.enableLog;
    }

    public final boolean getForce() {
        return this.force;
    }

    @NotNull
    public final List<String> getLibraryDocIdList() {
        return this.libraryDocIdList;
    }

    public final boolean getResetCheckpoint() {
        return this.resetCheckpoint;
    }

    public final boolean getSyncAll() {
        return this.syncAll;
    }

    @NotNull
    public final List<String> getSyncDocIdList() {
        return this.syncDocIdList;
    }

    public final int getTriggerSource() {
        return this.triggerSource;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = Integer.hashCode(this.triggerSource) * 31;
        boolean z = this.force;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        int i2 = (hashCode + i) * 31;
        boolean z2 = this.resetCheckpoint;
        int i3 = z2;
        if (z2 != 0) {
            i3 = 1;
        }
        int i4 = (i2 + i3) * 31;
        boolean z3 = this.syncAll;
        int i5 = z3;
        if (z3 != 0) {
            i5 = 1;
        }
        int hashCode2 = (((((i4 + i5) * 31) + this.syncDocIdList.hashCode()) * 31) + this.libraryDocIdList.hashCode()) * 31;
        boolean z4 = this.enableLog;
        return hashCode2 + (z4 ? 1 : z4 ? 1 : 0);
    }

    public final void setEnableLog(boolean z) {
        this.enableLog = z;
    }

    public final void setForce(boolean z) {
        this.force = z;
    }

    public final void setLibraryDocIdList(@NotNull List<String> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.libraryDocIdList = list;
    }

    public final void setResetCheckpoint(boolean z) {
        this.resetCheckpoint = z;
    }

    public final void setSyncAll(boolean z) {
        this.syncAll = z;
    }

    public final void setSyncDocIdList(@NotNull List<String> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.syncDocIdList = list;
    }

    public final void setTriggerSource(int i) {
        this.triggerSource = i;
    }

    @NotNull
    public String toString() {
        return "StartReplicatorBean(triggerSource=" + this.triggerSource + ", force=" + this.force + ", resetCheckpoint=" + this.resetCheckpoint + ", syncAll=" + this.syncAll + ", syncDocIdList=" + this.syncDocIdList + ", libraryDocIdList=" + this.libraryDocIdList + ", enableLog=" + this.enableLog + ')';
    }

    public StartReplicatorBean(int i, boolean z, boolean z2, boolean z3, @NotNull List<String> syncDocIdList, @NotNull List<String> libraryDocIdList, boolean z4) {
        Intrinsics.checkNotNullParameter(syncDocIdList, "syncDocIdList");
        Intrinsics.checkNotNullParameter(libraryDocIdList, "libraryDocIdList");
        this.triggerSource = i;
        this.force = z;
        this.resetCheckpoint = z2;
        this.syncAll = z3;
        this.syncDocIdList = syncDocIdList;
        this.libraryDocIdList = libraryDocIdList;
        this.enableLog = z4;
    }

    public /* synthetic */ StartReplicatorBean(int i, boolean z, boolean z2, boolean z3, List list, List list2, boolean z4, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 2 : i, (i2 & 2) != 0 ? false : z, (i2 & 4) != 0 ? false : z2, (i2 & 8) != 0 ? false : z3, (i2 & 16) != 0 ? new ArrayList() : list, (i2 & 32) != 0 ? new ArrayList() : list2, (i2 & 64) == 0 ? z4 : false);
    }
}
