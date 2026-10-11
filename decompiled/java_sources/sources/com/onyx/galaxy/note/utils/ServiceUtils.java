package com.onyx.galaxy.note.utils;

import com.onyx.android.sdk.data.common.cloud.p025v1.ServiceFactory;
import io.reactivex.rxjava3.core.Observable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0005¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/galaxy/note/utils/ServiceUtils;", "", "()V", "loadWechatQrCodeUrl", "Lio/reactivex/rxjava3/core/Observable;", "", "action", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class ServiceUtils {

    @NotNull
    public static final ServiceUtils INSTANCE = new ServiceUtils();

    @NotNull
    public final Observable<String> loadWechatQrCodeUrl(@NotNull String action) {
        Intrinsics.checkNotNullParameter(action, "action");
        return ServiceFactory.INSTANCE.loadOnyxApiV2Url("passport/wechat/qrcode?&action=" + action);
    }
}
