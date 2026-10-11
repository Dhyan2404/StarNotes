package com.onyx.android.sdk.hwr.sunia.resource;

import com.onyx.android.sdk.hwr.data.bean.HWRInput;
import com.onyx.android.sdk.hwr.data.bean.HWRResource;
import com.onyx.android.sdk.hwr.data.constant.HWRRecognizerTypeKt;
import com.onyx.android.sdk.hwr.service.resource.IHWRResourceChecker;
import com.onyx.android.sdk.hwr.sunia.data.p125const.SuniaConstant;
import com.onyx.android.sdk.hwr.sunia.utils.SuNiaResource;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\b\u0010\b\u001a\u00020\u0004H\u0016J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\f\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000bH\u0016¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/sunia/resource/SuNiaResourceChecker;", "Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceChecker;", "()V", "checkResource", "", "input", "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;", "checkTextResource", "isDefaultResourceInstalled", "isResourceDownloaded", "resource", "Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;", "isResourceDownloading", "sdk-sunia_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class SuNiaResourceChecker implements IHWRResourceChecker {

    @NotNull
    public static final SuNiaResourceChecker INSTANCE = new SuNiaResourceChecker();

    @Override // com.onyx.android.sdk.hwr.service.resource.IHWRResourceChecker
    public boolean checkExtendResource(@NotNull HWRInput hWRInput) {
        return IHWRResourceChecker.DefaultImpls.checkExtendResource(this, hWRInput);
    }

    @Override // com.onyx.android.sdk.hwr.service.resource.IHWRResourceChecker
    public boolean checkGestureResource(@NotNull HWRInput hWRInput) {
        return IHWRResourceChecker.DefaultImpls.checkGestureResource(this, hWRInput);
    }

    @Override // com.onyx.android.sdk.hwr.service.resource.IHWRResourceChecker
    public boolean checkResource(@NotNull HWRInput input) {
        Intrinsics.checkNotNullParameter(input, "input");
        return checkTextResource(input);
    }

    @Override // com.onyx.android.sdk.hwr.service.resource.IHWRResourceChecker
    public boolean checkShapeResource(@NotNull HWRInput hWRInput) {
        return IHWRResourceChecker.DefaultImpls.checkShapeResource(this, hWRInput);
    }

    @Override // com.onyx.android.sdk.hwr.service.resource.IHWRResourceChecker
    public boolean checkTextResource(@NotNull HWRInput input) {
        Intrinsics.checkNotNullParameter(input, "input");
        if (!input.getIsTextEnable()) {
            return true;
        }
        HWRResource hWRResource = new HWRResource();
        hWRResource.setEngineType(HWRRecognizerTypeKt.getEngineType(input.getRecognizerType()));
        hWRResource.setLang(input.getLang());
        hWRResource.setContentType(input.getContentType());
        return SuNiaResource.INSTANCE.isResourceInstalled(hWRResource);
    }

    @Override // com.onyx.android.sdk.hwr.service.resource.IHWRResourceChecker
    public boolean isDefaultResourceInstalled() {
        return SuNiaResource.INSTANCE.isDefaultResourceInstalled();
    }

    @Override // com.onyx.android.sdk.hwr.service.resource.IHWRResourceChecker
    public boolean isResourceDownloaded(@NotNull HWRResource resource) {
        Intrinsics.checkNotNullParameter(resource, "resource");
        return SuniaConstant.INSTANCE.getINTERNAL_LANG_LIST().contains(resource.getLang()) ? isDefaultResourceInstalled() : SuNiaResource.INSTANCE.isResourceInstalled(resource);
    }

    @Override // com.onyx.android.sdk.hwr.service.resource.IHWRResourceChecker
    public boolean isResourceDownloading(@NotNull HWRResource resource) {
        Intrinsics.checkNotNullParameter(resource, "resource");
        return SuNiaResource.INSTANCE.isDownloading(resource);
    }
}
