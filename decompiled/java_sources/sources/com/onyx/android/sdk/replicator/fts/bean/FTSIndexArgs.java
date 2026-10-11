package com.onyx.android.sdk.replicator.fts.bean;

import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0012\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0002\u0012\b\b\u0002\u0010\b\u001a\u00020\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0004\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0002HÆ\u0003J'\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0006\u001a\u00020\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u00022\b\b\u0002\u0010\b\u001a\u00020\u0002HÆ\u0001J\t\u0010\u000b\u001a\u00020\nHÖ\u0001J\t\u0010\r\u001a\u00020\fHÖ\u0001J\u0013\u0010\u000f\u001a\u00020\u00022\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\"\u0010\u0006\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\"\u0010\u0007\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0011\u001a\u0004\b\u0017\u0010\u0013\"\u0004\b\u0018\u0010\u0015R\"\u0010\b\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u0011\u001a\u0004\b\u001a\u0010\u0013\"\u0004\b\u001b\u0010\u0015¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/fts/bean/FTSIndexArgs;", "", "", "component1", "component2", "component3", "searchIndexOnly", "pauseBackgroundTask", "unloadPage", "copy", "", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "getSearchIndexOnly", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, "setSearchIndexOnly", "(Z)V", "b", "getPauseBackgroundTask", "setPauseBackgroundTask", "c", "getUnloadPage", "setUnloadPage", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(ZZZ)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class FTSIndexArgs {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    public boolean searchIndexOnly;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    public boolean pauseBackgroundTask;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    public boolean unloadPage;

    public FTSIndexArgs() {
        this(false, false, false, 7, null);
    }

    public static /* synthetic */ FTSIndexArgs copy$default(FTSIndexArgs fTSIndexArgs, boolean z, boolean z2, boolean z3, int i, Object obj) {
        if ((i & 1) != 0) {
            z = fTSIndexArgs.searchIndexOnly;
        }
        if ((i & 2) != 0) {
            z2 = fTSIndexArgs.pauseBackgroundTask;
        }
        if ((i & 4) != 0) {
            z3 = fTSIndexArgs.unloadPage;
        }
        return fTSIndexArgs.copy(z, z2, z3);
    }

    /* renamed from: component1, reason: from getter */
    public final boolean getSearchIndexOnly() {
        return this.searchIndexOnly;
    }

    /* renamed from: component2, reason: from getter */
    public final boolean getPauseBackgroundTask() {
        return this.pauseBackgroundTask;
    }

    /* renamed from: component3, reason: from getter */
    public final boolean getUnloadPage() {
        return this.unloadPage;
    }

    @NotNull
    public final FTSIndexArgs copy(boolean searchIndexOnly, boolean pauseBackgroundTask, boolean unloadPage) {
        return new FTSIndexArgs(searchIndexOnly, pauseBackgroundTask, unloadPage);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof FTSIndexArgs)) {
            return false;
        }
        FTSIndexArgs fTSIndexArgs = (FTSIndexArgs) other;
        return this.searchIndexOnly == fTSIndexArgs.searchIndexOnly && this.pauseBackgroundTask == fTSIndexArgs.pauseBackgroundTask && this.unloadPage == fTSIndexArgs.unloadPage;
    }

    public final boolean getPauseBackgroundTask() {
        return this.pauseBackgroundTask;
    }

    public final boolean getSearchIndexOnly() {
        return this.searchIndexOnly;
    }

    public final boolean getUnloadPage() {
        return this.unloadPage;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r2v0, types: [boolean] */
    public int hashCode() {
        boolean z = this.searchIndexOnly;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        int i = r0 * 31;
        ?? r2 = this.pauseBackgroundTask;
        int i2 = r2;
        if (r2 != 0) {
            i2 = 1;
        }
        int i3 = (i + i2) * 31;
        boolean z2 = this.unloadPage;
        return i3 + (z2 ? 1 : z2 ? 1 : 0);
    }

    public final void setPauseBackgroundTask(boolean z) {
        this.pauseBackgroundTask = z;
    }

    public final void setSearchIndexOnly(boolean z) {
        this.searchIndexOnly = z;
    }

    public final void setUnloadPage(boolean z) {
        this.unloadPage = z;
    }

    @NotNull
    public String toString() {
        return "FTSIndexArgs(searchIndexOnly=" + this.searchIndexOnly + ", pauseBackgroundTask=" + this.pauseBackgroundTask + ", unloadPage=" + this.unloadPage + ')';
    }

    public FTSIndexArgs(boolean z, boolean z2, boolean z3) {
        this.searchIndexOnly = z;
        this.pauseBackgroundTask = z2;
        this.unloadPage = z3;
    }

    public /* synthetic */ FTSIndexArgs(boolean z, boolean z2, boolean z3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? false : z, (i & 2) != 0 ? true : z2, (i & 4) != 0 ? false : z3);
    }
}
