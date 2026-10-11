package com.onyx.android.sdk.statistics;

import dagger.hilt.EntryPoint;
import dagger.hilt.InstallIn;
import dagger.hilt.components.SingletonComponent;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@EntryPoint
@Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\bg\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&¨\u0006\u0004"}, m61528d2 = {"Lcom/onyx/android/sdk/statistics/IStatisticsEntryPoint;", "", "getStatistics", "Lcom/onyx/android/sdk/statistics/IStatistics;", "sdk-statistics_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@InstallIn({SingletonComponent.class})
/* loaded from: classes8.dex */
public interface IStatisticsEntryPoint {
    @NotNull
    IStatistics getStatistics();
}
