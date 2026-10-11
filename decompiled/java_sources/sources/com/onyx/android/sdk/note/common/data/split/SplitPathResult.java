package com.onyx.android.sdk.note.common.data.split;

import android.graphics.Path;
import com.onyx.android.sdk.base.data.TouchPointList;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0010\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001c\u0010\u001dJ\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u0014\u0010\b\u001a\u00020\u00002\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005J\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005J\u0014\u0010\u000b\u001a\u00020\u00002\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005J\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005J\u0014\u0010\u0010\u001a\u00020\u00002\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\rR\u001c\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u001c\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u0012R0\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r2\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u000e0\r8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u0015\u0010\u0012\u001a\u0004\b\u0016\u0010\u0017R$\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u00028\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/split/SplitPathResult;", "", "", "pathErased", "setPathErased", "", "Lcom/onyx/android/sdk/base/data/TouchPointList;", "splitSegmentList", "setSplitSegmentList", "getSplitSegmentList", "removeSegmentList", "setRemoveSegmentList", "getRemoveSegmentList", "", "Landroid/graphics/Path;", "notHitTestPaths", "setNotHitTestPaths", "a", "Ljava/util/List;", "b", "<set-?>", "c", "getNotHitTestPaths", "()Ljava/util/List;", "d", Constants.HASIDCALL_INDEX_SIG, "isPathErased", Constants.BOOLEAN_VALUE_SIG, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class SplitPathResult {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public List<TouchPointList> splitSegmentList = new ArrayList();

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public List<TouchPointList> removeSegmentList = new ArrayList();

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public List<? extends Path> notHitTestPaths = new ArrayList();

    /* renamed from: d, reason: from kotlin metadata */
    public boolean isPathErased;

    @NotNull
    public final List<Path> getNotHitTestPaths() {
        return this.notHitTestPaths;
    }

    @NotNull
    public final List<TouchPointList> getRemoveSegmentList() {
        return this.removeSegmentList;
    }

    @NotNull
    public final List<TouchPointList> getSplitSegmentList() {
        return this.splitSegmentList;
    }

    /* renamed from: isPathErased, reason: from getter */
    public final boolean getIsPathErased() {
        return this.isPathErased;
    }

    @NotNull
    public final SplitPathResult setNotHitTestPaths(@NotNull List<? extends Path> notHitTestPaths) {
        Intrinsics.checkNotNullParameter(notHitTestPaths, "notHitTestPaths");
        this.notHitTestPaths = notHitTestPaths;
        return this;
    }

    @NotNull
    public final SplitPathResult setPathErased(boolean pathErased) {
        this.isPathErased = pathErased;
        return this;
    }

    @NotNull
    public final SplitPathResult setRemoveSegmentList(@NotNull List<TouchPointList> removeSegmentList) {
        Intrinsics.checkNotNullParameter(removeSegmentList, "removeSegmentList");
        this.removeSegmentList = removeSegmentList;
        return this;
    }

    @NotNull
    public final SplitPathResult setSplitSegmentList(@NotNull List<TouchPointList> splitSegmentList) {
        Intrinsics.checkNotNullParameter(splitSegmentList, "splitSegmentList");
        this.splitSegmentList = splitSegmentList;
        return this;
    }
}
