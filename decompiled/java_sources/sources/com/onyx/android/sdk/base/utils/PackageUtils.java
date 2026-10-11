package com.onyx.android.sdk.base.utils;

import android.content.Context;
import com.blankj.utilcode.util.AppUtils;
import com.onyx.galaxy.note.message.data.MessageConst;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0006\u0010\u0007\u001a\u00020\bJ\u000e\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nJ\u0006\u0010\u000b\u001a\u00020\u0006¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/base/utils/PackageUtils;", "", "()V", "checkPackageExist", "", MessageConst.KEY_PACKAGE_NAME, "", "getAppVersionCode", "", "context", "Landroid/content/Context;", "getAppVersionNameAndCode", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class PackageUtils {

    @NotNull
    public static final PackageUtils INSTANCE = new PackageUtils();

    public final boolean checkPackageExist(@NotNull String packageName) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        try {
            return ResManager.INSTANCE.getAppContext().getPackageManager().getPackageInfo(packageName, 0) != null;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public final long getAppVersionCode() {
        return getAppVersionCode(ResManager.INSTANCE.getAppContext());
    }

    @NotNull
    public final String getAppVersionNameAndCode() {
        return AppUtils.getAppVersionName() + '-' + AppUtils.getAppVersionCode();
    }

    public final long getAppVersionCode(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).getLongVersionCode();
    }
}
