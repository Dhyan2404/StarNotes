package com.onyx.android.sdk.data.message.model;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0001*\u00020\u0002¨\u0006\u0004"}, m61528d2 = {"canShow", "", "Lcom/onyx/android/sdk/data/message/model/NotificationModel;", "isOutsideTimeBound", "sdk-data_release"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class NotificationModelKt {
    /* JADX WARN: Code restructure failed: missing block: B:3:0x0015, code lost:
    
        r0 = kotlin.text.StringsKt__StringNumberConversionsKt.toLongOrNull(r0);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean canShow(@org.jetbrains.annotations.NotNull com.onyx.android.sdk.data.message.model.NotificationModel r7) {
        /*
            java.lang.String r0 = "<this>"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r0)
            com.onyx.android.sdk.data.message.model.NotificationComponents r0 = r7.getComponents()
            com.onyx.android.sdk.data.message.model.ComponentAttributes r0 = r0.getVersion()
            java.lang.String r0 = r0.getValue()
            r1 = 0
            if (r0 == 0) goto L20
            java.lang.Long r0 = kotlin.text.StringsKt.toLongOrNull(r0)
            if (r0 == 0) goto L20
            long r3 = r0.longValue()
            goto L21
        L20:
            r3 = r1
        L21:
            int r0 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            r1 = 0
            if (r0 <= 0) goto L31
            com.onyx.android.sdk.base.utils.PackageUtils r0 = com.onyx.android.sdk.base.utils.PackageUtils.INSTANCE
            long r5 = r0.getAppVersionCode()
            int r0 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r0 > 0) goto L31
            return r1
        L31:
            boolean r0 = isOutsideTimeBound(r7)
            if (r0 == 0) goto L38
            return r1
        L38:
            boolean r7 = r7.getCacheable()
            if (r7 != 0) goto L4d
            com.onyx.android.sdk.base.utils.NetworkUtils r7 = com.onyx.android.sdk.base.utils.NetworkUtils.INSTANCE
            com.onyx.android.sdk.base.utils.ResManager r0 = com.onyx.android.sdk.base.utils.ResManager.INSTANCE
            android.content.Context r0 = r0.getAppContext()
            boolean r7 = r7.isNetworkConnected(r0)
            if (r7 != 0) goto L4d
            return r1
        L4d:
            r7 = 1
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.data.message.model.NotificationModelKt.canShow(com.onyx.android.sdk.data.message.model.NotificationModel):boolean");
    }

    public static final boolean isOutsideTimeBound(@NotNull NotificationModel notificationModel) {
        Intrinsics.checkNotNullParameter(notificationModel, "<this>");
        long currentTimeMillis = System.currentTimeMillis();
        if (notificationModel.getEffectiveDate() <= 0 || currentTimeMillis >= notificationModel.getEffectiveDate()) {
            return notificationModel.getExpiredDate() > 0 && currentTimeMillis > notificationModel.getExpiredDate();
        }
        return true;
    }
}
