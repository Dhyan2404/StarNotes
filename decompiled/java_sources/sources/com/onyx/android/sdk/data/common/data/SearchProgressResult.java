package com.onyx.android.sdk.data.common.data;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u000b\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0016\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u00132\u0006\u0010!\u001a\u00020\u0013R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0015\"\u0004\b\u001a\u0010\u0017R\u001a\u0010\u001b\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u000f\"\u0004\b\u001d\u0010\u0011¨\u0006\""}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;", "", "()V", "currentSearchId", "", "getCurrentSearchId", "()Ljava/lang/String;", "setCurrentSearchId", "(Ljava/lang/String;)V", "currentSearchName", "getCurrentSearchName", "setCurrentSearchName", "maxSearchCount", "", "getMaxSearchCount", "()I", "setMaxSearchCount", "(I)V", "maxSearchProgress", "", "getMaxSearchProgress", "()F", "setMaxSearchProgress", "(F)V", "searchProgress", "getSearchProgress", "setSearchProgress", "searchedCount", "getSearchedCount", "setSearchedCount", "updateSearchProgress", "", "totalProgress", "deltaProgress", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class SearchProgressResult {

    @NotNull
    private String currentSearchId = "";

    @NotNull
    private String currentSearchName = "";
    private int maxSearchCount;
    private float maxSearchProgress;
    private float searchProgress;
    private int searchedCount;

    @NotNull
    public final String getCurrentSearchId() {
        return this.currentSearchId;
    }

    @NotNull
    public final String getCurrentSearchName() {
        return this.currentSearchName;
    }

    public final int getMaxSearchCount() {
        return this.maxSearchCount;
    }

    public final float getMaxSearchProgress() {
        return this.maxSearchProgress;
    }

    public final float getSearchProgress() {
        return this.searchProgress;
    }

    public final int getSearchedCount() {
        return this.searchedCount;
    }

    public final void setCurrentSearchId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.currentSearchId = str;
    }

    public final void setCurrentSearchName(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.currentSearchName = str;
    }

    public final void setMaxSearchCount(int i) {
        this.maxSearchCount = i;
    }

    public final void setMaxSearchProgress(float f) {
        this.maxSearchProgress = f;
    }

    public final void setSearchProgress(float f) {
        this.searchProgress = f;
    }

    public final void setSearchedCount(int i) {
        this.searchedCount = i;
    }

    public final void updateSearchProgress(float totalProgress, float deltaProgress) {
        if (totalProgress > 0.0f) {
            this.maxSearchProgress = totalProgress;
        }
        this.searchProgress += deltaProgress;
    }
}
