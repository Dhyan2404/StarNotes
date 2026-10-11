package com.onyx.android.sdk.hwr.sunia.resource;

import com.liulishuo.okdownload.DownloadTask;
import com.onyx.android.sdk.base.extension.Paths;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.data.common.data.DataScope;
import com.onyx.android.sdk.data.common.data.FunctionKey;
import com.onyx.android.sdk.data.common.data.StorageLocation;
import com.onyx.android.sdk.data.common.download.FileDownloadRequest;
import com.onyx.android.sdk.data.common.download.OnyxDownloadManager;
import com.onyx.android.sdk.data.common.download.data.OnyxFileTransferStatus;
import com.onyx.android.sdk.data.common.path.PathManager;
import com.onyx.android.sdk.data.utils.ZipUtils;
import com.onyx.android.sdk.hwr.data.bean.HWRResource;
import com.onyx.android.sdk.hwr.data.constant.HWRValues;
import com.onyx.android.sdk.hwr.service.manager.HWRBaseResourceDownloader;
import com.onyx.android.sdk.hwr.sunia.data.p125const.SuniaConstant;
import com.onyx.android.sdk.hwr.sunia.resource.SuNiaResourceDownloader;
import com.onyx.android.sdk.hwr.sunia.utils.SuNiaResource;
import com.onyx.android.sdk.replicator.note.proto.doc.shape.ShapeDocumentUtils;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.nio.file.Path;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\b2\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\b\u0010\t\u001a\u00020\u0004H\u0016¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/sunia/resource/SuNiaResourceDownloader;", "Lcom/onyx/android/sdk/hwr/service/manager/HWRBaseResourceDownloader;", "()V", "delete", "", "resource", "Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;", "download", "Lio/reactivex/rxjava3/core/Observable;", "installDefaultResource", "sdk-sunia_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nSuNiaResourceDownloader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SuNiaResourceDownloader.kt\ncom/onyx/android/sdk/hwr/sunia/resource/SuNiaResourceDownloader\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,78:1\n1855#2,2:79\n*S KotlinDebug\n*F\n+ 1 SuNiaResourceDownloader.kt\ncom/onyx/android/sdk/hwr/sunia/resource/SuNiaResourceDownloader\n*L\n38#1:79,2\n*E\n"})
/* loaded from: classes7.dex */
public final class SuNiaResourceDownloader extends HWRBaseResourceDownloader {

    /* renamed from: com.onyx.android.sdk.hwr.sunia.resource.SuNiaResourceDownloader$a */
    /* loaded from: classes7.dex */
    public static final class C7446a<T> implements Predicate {

        /* renamed from: e */
        public static final C7446a<T> f42655e = new C7446a<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull OnyxFileTransferStatus<DownloadTask> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2.isCompleted();
        }
    }

    /* renamed from: com.onyx.android.sdk.hwr.sunia.resource.SuNiaResourceDownloader$b */
    /* loaded from: classes7.dex */
    public static final class C7447b<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ String f42656e;

        /* renamed from: f */
        public final /* synthetic */ String f42657f;

        /* renamed from: g */
        public final /* synthetic */ HWRResource f42658g;

        public C7447b(String str, String str2, HWRResource hWRResource) {
            this.f42656e = str;
            this.f42657f = str2;
            this.f42658g = hWRResource;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull OnyxFileTransferStatus<DownloadTask> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ZipUtils.INSTANCE.decompressV2(this.f42656e, this.f42657f);
            FileUtils.INSTANCE.deleteFile(this.f42656e);
            SuNiaResource.setResourceInstalled$default(SuNiaResource.INSTANCE, this.f42658g, false, 2, null);
        }
    }

    /* renamed from: com.onyx.android.sdk.hwr.sunia.resource.SuNiaResourceDownloader$c */
    /* loaded from: classes7.dex */
    public static final class C7448c<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ HWRResource f42660f;

        public C7448c(HWRResource hWRResource) {
            this.f42660f = hWRResource;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SuNiaResourceDownloader.this.onDownloadError(this.f42660f, it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.hwr.sunia.resource.SuNiaResourceDownloader$d */
    /* loaded from: classes7.dex */
    public static final class C7449d<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ HWRResource f42661e;

        public C7449d(HWRResource hWRResource) {
            this.f42661e = hWRResource;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HWRResource apply(@NotNull OnyxFileTransferStatus<DownloadTask> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f42661e;
        }
    }

    /* renamed from: c */
    public static final void m33394c(SuNiaResourceDownloader this$0, HWRResource resource) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(resource, "$resource");
        this$0.onDownloadSuccess(resource);
    }

    /* renamed from: d */
    public static final void m33395d(HWRResource resource) {
        Intrinsics.checkNotNullParameter(resource, "$resource");
        SuNiaResource.INSTANCE.removeDownloadingResource(resource);
    }

    @Override // com.onyx.android.sdk.hwr.service.manager.HWRBaseResourceDownloader, com.onyx.android.sdk.hwr.service.resource.IHWRResourceDownloader
    public void delete(@NotNull HWRResource resource) {
        Intrinsics.checkNotNullParameter(resource, "resource");
        SuNiaResource suNiaResource = SuNiaResource.INSTANCE;
        FileUtils.INSTANCE.deleteFile(suNiaResource.getResourceUnzipPath(resource), true);
        suNiaResource.setResourceInstalled(resource, false);
    }

    @Override // com.onyx.android.sdk.hwr.service.resource.IHWRResourceDownloader
    @NotNull
    public Observable<HWRResource> download(@NotNull final HWRResource resource) {
        Intrinsics.checkNotNullParameter(resource, "resource");
        String randomCacheFile = PathManager.INSTANCE.getRandomCacheFile();
        SuNiaResource suNiaResource = SuNiaResource.INSTANCE;
        String resourceZipPath = suNiaResource.getResourceZipPath(resource);
        String resourceUnzipPath = suNiaResource.getResourceUnzipPath(resource);
        String url = resource.getUrl();
        if (url == null) {
            url = "";
        }
        FileDownloadRequest fileDownloadRequest = new FileDownloadRequest(url, randomCacheFile);
        fileDownloadRequest.setTag(resourceZipPath);
        fileDownloadRequest.setForceReDownload(true);
        fileDownloadRequest.setFileMd5(resource.getMd5());
        fileDownloadRequest.setTargetPath(resourceZipPath);
        suNiaResource.addDownloadingResource(resource);
        onDownloadProgress(resource, 0.0d);
        Observable map = OnyxDownloadManager.INSTANCE.createObservable(fileDownloadRequest).filter(C7446a.f42655e).observeOn(Schedulers.m61350io()).doOnNext(new C7447b(resourceZipPath, resourceUnzipPath, resource)).observeOn(AndroidSchedulers.mainThread()).doOnError(new C7448c(resource)).doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.m4n
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                SuNiaResourceDownloader.m33394c(SuNiaResourceDownloader.this, resource);
            }
        }).doFinally(new Action() { // from class: com.sunia.HTREnginev2.n4n
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                SuNiaResourceDownloader.m33395d(HWRResource.this);
            }
        }).map(new C7449d(resource));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @Override // com.onyx.android.sdk.hwr.service.manager.HWRBaseResourceDownloader, com.onyx.android.sdk.hwr.service.resource.IHWRResourceDownloader
    public void installDefaultResource() {
        if (SuNiaResource.INSTANCE.isDefaultResourceInstalled()) {
            return;
        }
        Path path = Paths.INSTANCE.toPath(PathManager.INSTANCE.getDirectory(StorageLocation.PRIVATE_FILE, DataScope.APP, FunctionKey.HWR));
        Iterator<T> it2 = SuniaConstant.INSTANCE.getINTERNAL_LANG_LIST().iterator();
        while (it2.hasNext()) {
            String str = "sunia/" + ((String) it2.next()) + ShapeDocumentUtils.SHAPE_FILE_END;
            Path resolve = path.resolve(HWRValues.ENGINE_SUNIA);
            Intrinsics.checkNotNullExpressionValue(resolve, "resolve(...)");
            ZipUtils.INSTANCE.decompressAssetToFolder(str, resolve.toAbsolutePath().toString());
        }
        SuNiaResource.INSTANCE.setDefaultResourceInstalled();
    }
}
