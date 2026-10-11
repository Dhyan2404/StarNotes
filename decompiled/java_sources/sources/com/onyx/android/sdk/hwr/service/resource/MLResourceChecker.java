package com.onyx.android.sdk.hwr.service.resource;

import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.hwr.data.bean.HWRInput;
import com.onyx.android.sdk.hwr.data.bean.HWRResource;
import com.onyx.android.sdk.hwr.data.constant.HWRRecognizerType;
import com.onyx.android.sdk.hwr.data.constant.HWRValues;
import com.onyx.android.sdk.hwr.service.resource.IHWRResourceChecker;
import com.onyx.android.sdk.hwr.service.util.MLResource;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\t\u001a\u00020\u0004H\u0016J\u0010\u0010\f\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nH\u0016J\u0010\u0010\r\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nH\u0016J\u0018\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000eH\u0002¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/service/resource/MLResourceChecker;", "Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceChecker;", "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;", "input", "", "checkResource", "checkTextResource", "checkGestureResource", "checkShapeResource", "isDefaultResourceInstalled", "Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;", "resource", "isResourceDownloaded", "isResourceDownloading", "", CouchFieldKey.KEY_CONTENT_TYPE, "lang", "a", Constants.CONSTRUCTOR_NAME, "()V", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class MLResourceChecker implements IHWRResourceChecker {

    @NotNull
    public static final MLResourceChecker INSTANCE = new MLResourceChecker();

    /* renamed from: a */
    public final boolean m33386a(String contentType, String lang) {
        HWRResource hWRResource = new HWRResource();
        hWRResource.setContentType(contentType);
        hWRResource.setLang(lang);
        return MLResource.INSTANCE.isResourceInstalled(hWRResource);
    }

    @Override // com.onyx.android.sdk.hwr.service.resource.IHWRResourceChecker
    public boolean checkExtendResource(@NotNull HWRInput hWRInput) {
        return IHWRResourceChecker.DefaultImpls.checkExtendResource(this, hWRInput);
    }

    @Override // com.onyx.android.sdk.hwr.service.resource.IHWRResourceChecker
    public boolean checkGestureResource(@NotNull HWRInput input) {
        Intrinsics.checkNotNullParameter(input, "input");
        if (input.getIsGestureEnable()) {
            return m33386a(HWRValues.PART_TYPE_GESTURE, input.getLang());
        }
        return true;
    }

    @Override // com.onyx.android.sdk.hwr.service.resource.IHWRResourceChecker
    public boolean checkResource(@NotNull HWRInput input) {
        Intrinsics.checkNotNullParameter(input, "input");
        return input.getRecognizerType() == HWRRecognizerType.ML_MIXED ? checkTextResource(input) && checkGestureResource(input) && checkShapeResource(input) : m33386a(input.getContentType(), input.getLang());
    }

    @Override // com.onyx.android.sdk.hwr.service.resource.IHWRResourceChecker
    public boolean checkShapeResource(@NotNull HWRInput input) {
        Intrinsics.checkNotNullParameter(input, "input");
        if (input.getIsShapeEnable()) {
            return m33386a(HWRValues.PART_TYPE_SHAPE, input.getLang());
        }
        return true;
    }

    @Override // com.onyx.android.sdk.hwr.service.resource.IHWRResourceChecker
    public boolean checkTextResource(@NotNull HWRInput input) {
        Intrinsics.checkNotNullParameter(input, "input");
        if (input.getIsTextEnable()) {
            return m33386a("Text", input.getLang());
        }
        return true;
    }

    @Override // com.onyx.android.sdk.hwr.service.resource.IHWRResourceChecker
    public boolean isDefaultResourceInstalled() {
        return MLResource.INSTANCE.isDefaultResourceInstalled();
    }

    @Override // com.onyx.android.sdk.hwr.service.resource.IHWRResourceChecker
    public boolean isResourceDownloaded(@NotNull HWRResource resource) {
        Intrinsics.checkNotNullParameter(resource, "resource");
        MLResource mLResource = MLResource.INSTANCE;
        return mLResource.getINTERNAL_LANG_LIST().contains(resource.getLang()) ? isDefaultResourceInstalled() : mLResource.isResourceInstalled(resource);
    }

    @Override // com.onyx.android.sdk.hwr.service.resource.IHWRResourceChecker
    public boolean isResourceDownloading(@NotNull HWRResource resource) {
        Intrinsics.checkNotNullParameter(resource, "resource");
        return MLResource.INSTANCE.isDownloading(resource);
    }
}
