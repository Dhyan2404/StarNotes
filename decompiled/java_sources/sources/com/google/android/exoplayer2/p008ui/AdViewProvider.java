package com.google.android.exoplayer2.p008ui;

import android.view.ViewGroup;
import androidx.annotation.Nullable;
import com.google.common.collect.ImmutableList;
import java.util.List;

/* loaded from: classes5.dex */
public interface AdViewProvider {
    default List<AdOverlayInfo> getAdOverlayInfos() {
        return ImmutableList.m26161of();
    }

    @Nullable
    ViewGroup getAdViewGroup();
}
