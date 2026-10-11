package com.onyx.android.sdk.hwr.service.resource;

import com.onyx.android.sdk.hwr.data.bean.HWRInput;
import com.onyx.android.sdk.hwr.data.bean.HWRResource;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\b\u0010\n\u001a\u00020\u0003H\u0016J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\rH\u0016J\u0010\u0010\u000e\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\rH\u0016¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceChecker;", "", "checkExtendResource", "", "input", "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;", "checkGestureResource", "checkResource", "checkShapeResource", "checkTextResource", "isDefaultResourceInstalled", "isResourceDownloaded", "resource", "Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;", "isResourceDownloading", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public interface IHWRResourceChecker {

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class DefaultImpls {
        public static boolean checkExtendResource(@NotNull IHWRResourceChecker iHWRResourceChecker, @NotNull HWRInput input) {
            Intrinsics.checkNotNullParameter(input, "input");
            return false;
        }

        public static boolean checkGestureResource(@NotNull IHWRResourceChecker iHWRResourceChecker, @NotNull HWRInput input) {
            Intrinsics.checkNotNullParameter(input, "input");
            return false;
        }

        public static boolean checkResource(@NotNull IHWRResourceChecker iHWRResourceChecker, @NotNull HWRInput input) {
            Intrinsics.checkNotNullParameter(input, "input");
            return false;
        }

        public static boolean checkShapeResource(@NotNull IHWRResourceChecker iHWRResourceChecker, @NotNull HWRInput input) {
            Intrinsics.checkNotNullParameter(input, "input");
            return false;
        }

        public static boolean checkTextResource(@NotNull IHWRResourceChecker iHWRResourceChecker, @NotNull HWRInput input) {
            Intrinsics.checkNotNullParameter(input, "input");
            return false;
        }

        public static boolean isDefaultResourceInstalled(@NotNull IHWRResourceChecker iHWRResourceChecker) {
            return false;
        }

        public static boolean isResourceDownloaded(@NotNull IHWRResourceChecker iHWRResourceChecker, @NotNull HWRResource resource) {
            Intrinsics.checkNotNullParameter(resource, "resource");
            return false;
        }

        public static boolean isResourceDownloading(@NotNull IHWRResourceChecker iHWRResourceChecker, @NotNull HWRResource resource) {
            Intrinsics.checkNotNullParameter(resource, "resource");
            return false;
        }
    }

    boolean checkExtendResource(@NotNull HWRInput input);

    boolean checkGestureResource(@NotNull HWRInput input);

    boolean checkResource(@NotNull HWRInput input);

    boolean checkShapeResource(@NotNull HWRInput input);

    boolean checkTextResource(@NotNull HWRInput input);

    boolean isDefaultResourceInstalled();

    boolean isResourceDownloaded(@NotNull HWRResource resource);

    boolean isResourceDownloading(@NotNull HWRResource resource);
}
