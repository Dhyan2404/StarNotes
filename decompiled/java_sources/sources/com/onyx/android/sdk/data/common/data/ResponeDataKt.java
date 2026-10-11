package com.onyx.android.sdk.data.common.data;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u001c\u0010\u0000\u001a\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003*\n\u0012\u0004\u0012\u0002H\u0002\u0018\u00010\u0004¨\u0006\u0005"}, m61528d2 = {FirebaseAnalytics.Param.SUCCESS, "", "T", "", "Lcom/onyx/android/sdk/data/common/data/ResponeData;", "sdk-data_release"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class ResponeDataKt {
    public static final <T> boolean success(@Nullable ResponeData<T> responeData) {
        return responeData != null && responeData.isSuccess();
    }
}
