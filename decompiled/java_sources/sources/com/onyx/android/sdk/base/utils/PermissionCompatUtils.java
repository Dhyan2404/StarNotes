package com.onyx.android.sdk.base.utils;

import com.blankj.utilcode.util.PermissionUtils;
import java.util.Collection;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u001e\n\u0002\u0010\u000e\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/base/utils/PermissionCompatUtils;", "", "()V", "hasMediaOfUserSelectedPermission", "", "collection", "", "", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class PermissionCompatUtils {

    @NotNull
    public static final PermissionCompatUtils INSTANCE = new PermissionCompatUtils();

    public final boolean hasMediaOfUserSelectedPermission(@NotNull Collection<String> collection) {
        Intrinsics.checkNotNullParameter(collection, "collection");
        return collection.contains("android.permission.READ_MEDIA_VISUAL_USER_SELECTED") && PermissionUtils.isGranted("android.permission.READ_MEDIA_VISUAL_USER_SELECTED");
    }
}
