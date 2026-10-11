package com.onyx.android.sdk.hwr.service.resource;

import androidx.core.app.NotificationCompat;
import com.onyx.android.sdk.base.eventbus.EventBusHolder;
import com.onyx.android.sdk.hwr.data.bean.HWRResource;
import com.onyx.android.sdk.hwr.data.event.HWRLangDownloadEvent;
import com.onyx.galaxy.note.usercenter.data.JavascriptArgs;
import io.reactivex.rxjava3.core.Observable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00072\u0006\u0010\u0004\u001a\u00020\u0005H&J\b\u0010\b\u001a\u00020\u0003H\u0016J\u0018\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0018\u0010\f\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0015H\u0016¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceDownloader;", "", "delete", "", "resource", "Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;", "download", "Lio/reactivex/rxjava3/core/Observable;", "installDefaultResource", "onDownloadError", "e", "", JavascriptArgs.EVENT_DOWNLOAD_PROGRESS, "progress", "", "onDownloadSuccess", "publishEvent", NotificationCompat.CATEGORY_EVENT, "Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;", "setEventPublisher", "eventBusHolder", "Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public interface IHWRResourceDownloader {

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    @SourceDebugExtension({"SMAP\nIHWRResourceDownloader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IHWRResourceDownloader.kt\ncom/onyx/android/sdk/hwr/service/resource/IHWRResourceDownloader$DefaultImpls\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,25:1\n1#2:26\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class DefaultImpls {
        public static void delete(@NotNull IHWRResourceDownloader iHWRResourceDownloader, @NotNull HWRResource resource) {
            Intrinsics.checkNotNullParameter(resource, "resource");
        }

        public static void installDefaultResource(@NotNull IHWRResourceDownloader iHWRResourceDownloader) {
        }

        public static void onDownloadError(@NotNull IHWRResourceDownloader iHWRResourceDownloader, @NotNull HWRResource resource, @NotNull Throwable e) {
            Intrinsics.checkNotNullParameter(resource, "resource");
            Intrinsics.checkNotNullParameter(e, "e");
        }

        public static void onDownloadProgress(@NotNull IHWRResourceDownloader iHWRResourceDownloader, @NotNull HWRResource resource, double d) {
            Intrinsics.checkNotNullParameter(resource, "resource");
        }

        public static void onDownloadSuccess(@NotNull IHWRResourceDownloader iHWRResourceDownloader, @NotNull HWRResource resource) {
            Intrinsics.checkNotNullParameter(resource, "resource");
        }

        public static void publishEvent(@NotNull IHWRResourceDownloader iHWRResourceDownloader, @NotNull HWRLangDownloadEvent event, @NotNull HWRResource resource) {
            Intrinsics.checkNotNullParameter(event, "event");
            Intrinsics.checkNotNullParameter(resource, "resource");
        }

        @NotNull
        public static IHWRResourceDownloader setEventPublisher(@NotNull IHWRResourceDownloader iHWRResourceDownloader, @NotNull EventBusHolder eventBusHolder) {
            Intrinsics.checkNotNullParameter(eventBusHolder, "eventBusHolder");
            return iHWRResourceDownloader;
        }
    }

    void delete(@NotNull HWRResource resource);

    @NotNull
    Observable<HWRResource> download(@NotNull HWRResource resource);

    void installDefaultResource();

    void onDownloadError(@NotNull HWRResource resource, @NotNull Throwable e);

    void onDownloadProgress(@NotNull HWRResource resource, double progress);

    void onDownloadSuccess(@NotNull HWRResource resource);

    void publishEvent(@NotNull HWRLangDownloadEvent event, @NotNull HWRResource resource);

    @NotNull
    IHWRResourceDownloader setEventPublisher(@NotNull EventBusHolder eventBusHolder);
}
