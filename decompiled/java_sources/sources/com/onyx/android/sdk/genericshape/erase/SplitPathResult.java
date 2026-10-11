package com.onyx.android.sdk.genericshape.erase;

import com.onyx.android.sdk.base.data.TouchPointList;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\t0\bJ\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\t0\bJ\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0004J\u0014\u0010\u000f\u001a\u00020\u00002\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bJ\u0014\u0010\u0010\u001a\u00020\u00002\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\bR\u001e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/genericshape/erase/SplitPathResult;", "", "()V", "<set-?>", "", "isPathErased", Constants.BOOLEAN_VALUE_SIG, "removeSegmentList", "", "Lcom/onyx/android/sdk/base/data/TouchPointList;", "splitSegmentList", "getRemoveSegmentList", "getSplitSegmentList", "setPathErased", "pathErased", "setRemoveSegmentList", "setSplitSegmentList", "sdk-genericshape_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class SplitPathResult {
    private boolean isPathErased;

    @NotNull
    private List<TouchPointList> splitSegmentList = new ArrayList();

    @NotNull
    private List<TouchPointList> removeSegmentList = new ArrayList();

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
