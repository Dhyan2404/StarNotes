package com.onyx.android.sdk.data.common.data;

import com.onyx.android.sdk.base.utils.RawResourceUtil;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.C7373R;
import com.onyx.android.sdk.data.utils.JSONUtils;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\u0006\u0010\u0000\u001a\u00020\u0001\u001a\u0014\u0010\u0002\u001a\u0004\u0018\u00010\u0003*\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0005¨\u0006\u0006"}, m61528d2 = {"loadMarketConfigs", "Lcom/onyx/android/sdk/data/common/data/MarketConfigList;", "find", "Lcom/onyx/android/sdk/data/common/data/MarketConfig;", "channel", "", "sdk-data_release"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nMarketConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MarketConfig.kt\ncom/onyx/android/sdk/data/common/data/MarketConfigKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,23:1\n1#2:24\n*E\n"})
/* loaded from: classes7.dex */
public final class MarketConfigKt {
    @Nullable
    public static final MarketConfig find(@NotNull MarketConfigList marketConfigList, @NotNull String channel) {
        MarketConfig marketConfig;
        Intrinsics.checkNotNullParameter(marketConfigList, "<this>");
        Intrinsics.checkNotNullParameter(channel, "channel");
        Iterator<MarketConfig> it2 = marketConfigList.iterator();
        while (true) {
            if (!it2.hasNext()) {
                marketConfig = null;
                break;
            }
            marketConfig = it2.next();
            if (Intrinsics.areEqual(marketConfig.getChannel(), channel)) {
                break;
            }
        }
        return marketConfig;
    }

    @NotNull
    public static final MarketConfigList loadMarketConfigs() {
        MarketConfigList marketConfigList = (MarketConfigList) JSONUtils.INSTANCE.parseObject(RawResourceUtil.INSTANCE.contentOfRawResource(ResManager.INSTANCE.getAppContext(), C7373R.raw.market_config), MarketConfigList.class);
        return marketConfigList == null ? new MarketConfigList() : marketConfigList;
    }
}
