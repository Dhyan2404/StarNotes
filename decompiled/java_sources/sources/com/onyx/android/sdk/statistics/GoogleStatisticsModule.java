package com.onyx.android.sdk.statistics;

import dagger.Binds;
import dagger.Module;
import dagger.hilt.InstallIn;
import dagger.hilt.components.SingletonComponent;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bg\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H'¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/android/sdk/statistics/GoogleStatisticsModule;", "", "getStatistics", "Lcom/onyx/android/sdk/statistics/IStatistics;", "impl", "Lcom/onyx/android/sdk/statistics/GoogleStatistics;", "sdk-statistics_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@Module
@InstallIn({SingletonComponent.class})
/* loaded from: classes8.dex */
public interface GoogleStatisticsModule {
    @Binds
    @NotNull
    IStatistics getStatistics(@NotNull GoogleStatistics impl);
}
