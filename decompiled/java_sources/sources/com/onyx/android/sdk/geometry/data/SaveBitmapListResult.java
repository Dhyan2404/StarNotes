package com.onyx.android.sdk.geometry.data;

import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B%\u0012\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0006J\u0006\u0010\n\u001a\u00020\u000bJ\u0006\u0010\f\u001a\u00020\rR\u0017\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\b¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/data/SaveBitmapListResult;", "", "successList", "", "Lcom/onyx/android/sdk/geometry/data/SliceInfo;", "failList", "(Ljava/util/List;Ljava/util/List;)V", "getFailList", "()Ljava/util/List;", "getSuccessList", "getDebugString", "", "isSuccess", "", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class SaveBitmapListResult {

    @NotNull
    private final List<SliceInfo> failList;

    @NotNull
    private final List<SliceInfo> successList;

    /* JADX WARN: Multi-variable type inference failed */
    public SaveBitmapListResult() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    @NotNull
    public final String getDebugString() {
        return "successList = " + this.successList.size() + ", failList = " + this.failList.size();
    }

    @NotNull
    public final List<SliceInfo> getFailList() {
        return this.failList;
    }

    @NotNull
    public final List<SliceInfo> getSuccessList() {
        return this.successList;
    }

    public final boolean isSuccess() {
        return this.failList.isEmpty() && (this.successList.isEmpty() ^ true);
    }

    public SaveBitmapListResult(@NotNull List<SliceInfo> successList, @NotNull List<SliceInfo> failList) {
        Intrinsics.checkNotNullParameter(successList, "successList");
        Intrinsics.checkNotNullParameter(failList, "failList");
        this.successList = successList;
        this.failList = failList;
    }

    public /* synthetic */ SaveBitmapListResult(List list, List list2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new ArrayList() : list, (i & 2) != 0 ? new ArrayList() : list2);
    }
}
