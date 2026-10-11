package com.onyx.android.sdk.hwr.service.resource;

import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.utils.ZipUtils;
import com.onyx.android.sdk.hwr.data.bean.HWRException;
import com.onyx.android.sdk.hwr.data.bean.HWRResource;
import com.onyx.android.sdk.hwr.data.constant.HWRValues;
import com.onyx.android.sdk.hwr.service.manager.HWRBaseResourceDownloader;
import com.onyx.android.sdk.hwr.service.manager.MLModelManager;
import com.onyx.android.sdk.hwr.service.util.MLResource;
import com.onyx.android.sdk.replicator.note.proto.doc.shape.ShapeDocumentUtils;
import io.reactivex.rxjava3.core.Observable;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\b2\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\b\u0010\t\u001a\u00020\u0004H\u0016¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/service/resource/MLResourceDownloader;", "Lcom/onyx/android/sdk/hwr/service/manager/HWRBaseResourceDownloader;", "()V", "delete", "", "resource", "Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;", "download", "Lio/reactivex/rxjava3/core/Observable;", "installDefaultResource", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nMLResourceDownloader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MLResourceDownloader.kt\ncom/onyx/android/sdk/hwr/service/resource/MLResourceDownloader\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,49:1\n1855#2,2:50\n*S KotlinDebug\n*F\n+ 1 MLResourceDownloader.kt\ncom/onyx/android/sdk/hwr/service/resource/MLResourceDownloader\n*L\n20#1:50,2\n*E\n"})
/* loaded from: classes7.dex */
public final class MLResourceDownloader extends HWRBaseResourceDownloader {
    @Override // com.onyx.android.sdk.hwr.service.manager.HWRBaseResourceDownloader, com.onyx.android.sdk.hwr.service.resource.IHWRResourceDownloader
    public void delete(@NotNull HWRResource resource) {
        Intrinsics.checkNotNullParameter(resource, "resource");
        MLModelManager mLModelManager = MLModelManager.INSTANCE;
        mLModelManager.deleteModel(mLModelManager.selectModel(resource));
        MLResource.INSTANCE.setResourceInstalled(resource, false);
    }

    @Override // com.onyx.android.sdk.hwr.service.resource.IHWRResourceDownloader
    @NotNull
    public Observable<HWRResource> download(@NotNull HWRResource resource) {
        Intrinsics.checkNotNullParameter(resource, "resource");
        try {
            MLResource mLResource = MLResource.INSTANCE;
            mLResource.addDownloadingResource(resource);
            MLModelManager mLModelManager = MLModelManager.INSTANCE;
            mLModelManager.downloadModel(mLModelManager.selectModel(resource));
            MLResource.setResourceInstalled$default(mLResource, resource, false, 2, null);
            onDownloadSuccess(resource);
            mLResource.removeDownloadingResource(resource);
        } catch (Throwable th) {
            try {
                onDownloadError(resource, HWRException.INSTANCE.m33356of(th, "Download Error"));
            } catch (Throwable unused) {
            }
            MLResource.INSTANCE.removeDownloadingResource(resource);
        }
        Observable<HWRResource> just = Observable.just(resource);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    @Override // com.onyx.android.sdk.hwr.service.manager.HWRBaseResourceDownloader, com.onyx.android.sdk.hwr.service.resource.IHWRResourceDownloader
    public void installDefaultResource() {
        MLResource mLResource = MLResource.INSTANCE;
        if (mLResource.isDefaultResourceInstalled()) {
            return;
        }
        for (String str : mLResource.getINTERNAL_LANG_LIST()) {
            StringBuilder sb = new StringBuilder();
            sb.append(HWRValues.PATH_MLKIT_RES_PREFIX);
            String lowerCase = str.toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
            sb.append(lowerCase);
            sb.append(ShapeDocumentUtils.SHAPE_FILE_END);
            String sb2 = sb.toString();
            String absolutePath = ResManager.INSTANCE.getAppContext().getDataDir().getAbsolutePath();
            ZipUtils zipUtils = ZipUtils.INSTANCE;
            Intrinsics.checkNotNull(absolutePath);
            zipUtils.decompressAssetToFolder(sb2, absolutePath);
        }
        MLResource.INSTANCE.setDefaultResourceInstalled();
    }
}
