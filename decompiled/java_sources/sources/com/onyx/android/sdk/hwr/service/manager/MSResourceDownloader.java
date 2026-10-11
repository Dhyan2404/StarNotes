package com.onyx.android.sdk.hwr.service.manager;

import com.liulishuo.okdownload.DownloadTask;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.common.download.FileDownloadRequest;
import com.onyx.android.sdk.data.common.download.OnyxDownloadManager;
import com.onyx.android.sdk.data.common.download.data.OnyxFileTransferStatus;
import com.onyx.android.sdk.hwr.C7404R;
import com.onyx.android.sdk.hwr.data.bean.HWRException;
import com.onyx.android.sdk.hwr.data.bean.HWRResource;
import com.onyx.android.sdk.hwr.data.constant.HWRValues;
import com.onyx.android.sdk.hwr.data.event.HWRLangDownloadEvent;
import com.onyx.android.sdk.hwr.request.HWRResourceUnzipRequest;
import com.onyx.android.sdk.hwr.service.manager.MSResourceDownloader;
import com.onyx.android.sdk.hwr.utils.MSResourceUtils;
import com.onyx.galaxy.note.usercenter.data.JavascriptArgs;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0005\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001a\u0010\u001bJ\u0016\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\n\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH\u0016J\u0018\u0010\r\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u000bH\u0016J\u0010\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0004J\u0010\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0002R.\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00120\u00118\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/service/manager/MSResourceDownloader;", "Lcom/onyx/android/sdk/hwr/service/manager/HWRBaseResourceDownloader;", "Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;", "resource", "Lio/reactivex/rxjava3/core/Observable;", "download", "", "delete", "", "progress", JavascriptArgs.EVENT_DOWNLOAD_PROGRESS, "", "e", "onDownloadError", "onDownloadSuccess", "onDownloadComplete", "c", "", "", "b", "Ljava/util/Map;", "getDownloadStatusMap", "()Ljava/util/Map;", "setDownloadStatusMap", "(Ljava/util/Map;)V", "downloadStatusMap", Constants.CONSTRUCTOR_NAME, "()V", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class MSResourceDownloader extends HWRBaseResourceDownloader {

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public Map<String, String> downloadStatusMap = new LinkedHashMap();

    /* renamed from: com.onyx.android.sdk.hwr.service.manager.MSResourceDownloader$a */
    /* loaded from: classes7.dex */
    public static final class C7440a<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ HWRResource f42598f;

        public C7440a(HWRResource hWRResource) {
            this.f42598f = hWRResource;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull OnyxFileTransferStatus<DownloadTask> status) {
            Intrinsics.checkNotNullParameter(status, "status");
            MSResourceDownloader.this.onDownloadProgress(this.f42598f, status.getProgress());
        }
    }

    /* renamed from: com.onyx.android.sdk.hwr.service.manager.MSResourceDownloader$b */
    /* loaded from: classes7.dex */
    public static final class C7441b<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ HWRResource f42600f;

        public C7441b(HWRResource hWRResource) {
            this.f42600f = hWRResource;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable e) {
            Intrinsics.checkNotNullParameter(e, "e");
            MSResourceDownloader.this.onDownloadError(this.f42600f, e);
        }
    }

    /* renamed from: com.onyx.android.sdk.hwr.service.manager.MSResourceDownloader$c */
    /* loaded from: classes7.dex */
    public static final class C7442c<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ HWRResource f42601e;

        public C7442c(HWRResource hWRResource) {
            this.f42601e = hWRResource;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HWRResource apply(@NotNull OnyxFileTransferStatus<DownloadTask> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f42601e;
        }
    }

    /* renamed from: b */
    public static final void m33371b(MSResourceDownloader this$0, HWRResource resource) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(resource, "$resource");
        this$0.onDownloadSuccess(resource);
    }

    /* renamed from: c */
    public final void m33372c(HWRResource resource) {
        try {
            MSResourceUtils mSResourceUtils = MSResourceUtils.INSTANCE;
            resource.setZipFile(mSResourceUtils.getHWRResSaveFilePath(resource));
            resource.setUnzipFile(mSResourceUtils.getHWRResSaveDirPath(resource));
            new HWRResourceUnzipRequest(resource).execute();
            onDownloadComplete(resource);
        } catch (Throwable th) {
            try {
                HWRException m33356of = HWRException.INSTANCE.m33356of(th, "Unzip Error");
                HWRLangDownloadEvent hWRLangDownloadEvent = new HWRLangDownloadEvent();
                hWRLangDownloadEvent.setUrl(resource.getUrl());
                hWRLangDownloadEvent.setStatus(4);
                hWRLangDownloadEvent.setE(m33356of);
                hWRLangDownloadEvent.setResource(resource);
                publishEvent(hWRLangDownloadEvent, resource);
                throw m33356of;
            } finally {
                Map<String, String> map = this.downloadStatusMap;
                TypeIntrinsics.asMutableMap(map).remove(resource.getUrl());
            }
        }
    }

    @Override // com.onyx.android.sdk.hwr.service.manager.HWRBaseResourceDownloader, com.onyx.android.sdk.hwr.service.resource.IHWRResourceDownloader
    public void delete(@NotNull HWRResource resource) {
        Intrinsics.checkNotNullParameter(resource, "resource");
        MSResourceUtils.INSTANCE.deleteHWRResource(resource);
    }

    @Override // com.onyx.android.sdk.hwr.service.resource.IHWRResourceDownloader
    @NotNull
    public Observable<HWRResource> download(@NotNull final HWRResource resource) {
        Intrinsics.checkNotNullParameter(resource, "resource");
        FileUtils fileUtils = FileUtils.INSTANCE;
        fileUtils.mkdirs(HWRValues.INSTANCE.getMY_SCRIPT_RESOURCE_DIR_PATH());
        resource.setZipFile(MSResourceUtils.INSTANCE.getHWRResSaveFilePath(resource));
        fileUtils.ensureFileExists(resource.getZipFile());
        Map<String, String> map = this.downloadStatusMap;
        String url = resource.getUrl();
        Intrinsics.checkNotNull(url);
        map.put(url, "0%");
        String url2 = resource.getUrl();
        Intrinsics.checkNotNull(url2);
        String zipFile = resource.getZipFile();
        Intrinsics.checkNotNull(zipFile);
        FileDownloadRequest fileDownloadRequest = new FileDownloadRequest(url2, zipFile);
        fileDownloadRequest.setForceReDownload(true);
        Observable map2 = OnyxDownloadManager.INSTANCE.createObservable(fileDownloadRequest).doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.i6j
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                MSResourceDownloader.m33371b(MSResourceDownloader.this, resource);
            }
        }).doOnNext(new C7440a(resource)).doOnError(new C7441b(resource)).map(new C7442c(resource));
        Intrinsics.checkNotNullExpressionValue(map2, "map(...)");
        return map2;
    }

    @NotNull
    public final Map<String, String> getDownloadStatusMap() {
        return this.downloadStatusMap;
    }

    public final void onDownloadComplete(@NotNull HWRResource resource) {
        Intrinsics.checkNotNullParameter(resource, "resource");
        resource.setExist(true);
        HWRLangDownloadEvent hWRLangDownloadEvent = new HWRLangDownloadEvent();
        hWRLangDownloadEvent.setUrl(resource.getUrl());
        hWRLangDownloadEvent.setStatus(3);
        hWRLangDownloadEvent.setProgress(100);
        hWRLangDownloadEvent.setResource(resource);
        publishEvent(hWRLangDownloadEvent, resource);
    }

    @Override // com.onyx.android.sdk.hwr.service.manager.HWRBaseResourceDownloader, com.onyx.android.sdk.hwr.service.resource.IHWRResourceDownloader
    public void onDownloadError(@NotNull HWRResource resource, @NotNull Throwable e) {
        Intrinsics.checkNotNullParameter(resource, "resource");
        Intrinsics.checkNotNullParameter(e, "e");
        Map<String, String> map = this.downloadStatusMap;
        TypeIntrinsics.asMutableMap(map).remove(resource.getUrl());
        HWRException m33356of = HWRException.INSTANCE.m33356of(e, "Download Error");
        HWRLangDownloadEvent hWRLangDownloadEvent = new HWRLangDownloadEvent();
        hWRLangDownloadEvent.setUrl(resource.getUrl());
        hWRLangDownloadEvent.setStatus(4);
        hWRLangDownloadEvent.setE(m33356of);
        hWRLangDownloadEvent.setResource(resource);
        publishEvent(hWRLangDownloadEvent, resource);
        throw m33356of;
    }

    @Override // com.onyx.android.sdk.hwr.service.manager.HWRBaseResourceDownloader, com.onyx.android.sdk.hwr.service.resource.IHWRResourceDownloader
    public void onDownloadProgress(@NotNull HWRResource resource, double progress) {
        Intrinsics.checkNotNullParameter(resource, "resource");
        Map<String, String> map = this.downloadStatusMap;
        String url = resource.getUrl();
        Intrinsics.checkNotNull(url);
        StringBuilder sb = new StringBuilder();
        int i = (int) progress;
        sb.append(i);
        sb.append('%');
        map.put(url, sb.toString());
        HWRLangDownloadEvent hWRLangDownloadEvent = new HWRLangDownloadEvent();
        hWRLangDownloadEvent.setUrl(resource.getUrl());
        hWRLangDownloadEvent.setStatus(1);
        hWRLangDownloadEvent.setProgress(i);
        hWRLangDownloadEvent.setResource(resource);
        publishEvent(hWRLangDownloadEvent, resource);
    }

    @Override // com.onyx.android.sdk.hwr.service.manager.HWRBaseResourceDownloader, com.onyx.android.sdk.hwr.service.resource.IHWRResourceDownloader
    public void onDownloadSuccess(@NotNull HWRResource resource) {
        Intrinsics.checkNotNullParameter(resource, "resource");
        Map<String, String> map = this.downloadStatusMap;
        String url = resource.getUrl();
        Intrinsics.checkNotNull(url);
        String string = ResManager.INSTANCE.getString(C7404R.string.unpacking);
        Intrinsics.checkNotNull(string);
        map.put(url, string);
        HWRLangDownloadEvent hWRLangDownloadEvent = new HWRLangDownloadEvent();
        hWRLangDownloadEvent.setUrl(resource.getUrl());
        hWRLangDownloadEvent.setStatus(2);
        hWRLangDownloadEvent.setProgress(100);
        hWRLangDownloadEvent.setResource(resource);
        publishEvent(hWRLangDownloadEvent, resource);
        m33372c(resource);
    }

    public final void setDownloadStatusMap(@NotNull Map<String, String> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        this.downloadStatusMap = map;
    }
}
