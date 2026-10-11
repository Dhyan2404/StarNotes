package com.onyx.android.sdk.hwr.service.manager;

import androidx.core.app.NotificationCompat;
import com.onyx.android.sdk.base.eventbus.EventBusHolder;
import com.onyx.android.sdk.hwr.data.bean.HWRResource;
import com.onyx.android.sdk.hwr.data.event.HWRLangDownloadEvent;
import com.onyx.android.sdk.hwr.service.resource.IHWRResourceDownloader;
import com.onyx.galaxy.note.usercenter.data.JavascriptArgs;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u0007\b&\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0014\u0010\u0015J\u0010\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0016J\u0018\u0010\r\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u000bH\u0016J\u0010\u0010\u000e\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0016J\u0018\u0010\u0011\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u000fH\u0016R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/service/manager/HWRBaseResourceDownloader;", "Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceDownloader;", "Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;", "eventBusHolder", "setEventPublisher", "Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;", NotificationCompat.CATEGORY_EVENT, "Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;", "resource", "", "publishEvent", "", "e", "onDownloadError", "onDownloadSuccess", "", "progress", JavascriptArgs.EVENT_DOWNLOAD_PROGRESS, "a", "Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;", Constants.CONSTRUCTOR_NAME, "()V", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public abstract class HWRBaseResourceDownloader implements IHWRResourceDownloader {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public EventBusHolder eventBusHolder = new EventBusHolder(null, 1, null);

    @Override // com.onyx.android.sdk.hwr.service.resource.IHWRResourceDownloader
    public void delete(@NotNull HWRResource hWRResource) {
        IHWRResourceDownloader.DefaultImpls.delete(this, hWRResource);
    }

    @Override // com.onyx.android.sdk.hwr.service.resource.IHWRResourceDownloader
    public void installDefaultResource() {
        IHWRResourceDownloader.DefaultImpls.installDefaultResource(this);
    }

    @Override // com.onyx.android.sdk.hwr.service.resource.IHWRResourceDownloader
    public void onDownloadError(@NotNull HWRResource resource, @NotNull Throwable e) {
        Intrinsics.checkNotNullParameter(resource, "resource");
        Intrinsics.checkNotNullParameter(e, "e");
        HWRLangDownloadEvent hWRLangDownloadEvent = new HWRLangDownloadEvent();
        hWRLangDownloadEvent.setStatus(4);
        hWRLangDownloadEvent.setE(e);
        publishEvent(hWRLangDownloadEvent, resource);
    }

    @Override // com.onyx.android.sdk.hwr.service.resource.IHWRResourceDownloader
    public void onDownloadProgress(@NotNull HWRResource resource, double progress) {
        Intrinsics.checkNotNullParameter(resource, "resource");
        HWRLangDownloadEvent hWRLangDownloadEvent = new HWRLangDownloadEvent();
        hWRLangDownloadEvent.setUrl(resource.getUrl());
        hWRLangDownloadEvent.setStatus(1);
        hWRLangDownloadEvent.setProgress((int) progress);
        hWRLangDownloadEvent.setResource(resource);
        publishEvent(hWRLangDownloadEvent, resource);
    }

    @Override // com.onyx.android.sdk.hwr.service.resource.IHWRResourceDownloader
    public void onDownloadSuccess(@NotNull HWRResource resource) {
        Intrinsics.checkNotNullParameter(resource, "resource");
        HWRLangDownloadEvent hWRLangDownloadEvent = new HWRLangDownloadEvent();
        hWRLangDownloadEvent.setStatus(3);
        publishEvent(hWRLangDownloadEvent, resource);
    }

    @Override // com.onyx.android.sdk.hwr.service.resource.IHWRResourceDownloader
    public void publishEvent(@NotNull HWRLangDownloadEvent event, @NotNull HWRResource resource) {
        Intrinsics.checkNotNullParameter(event, "event");
        Intrinsics.checkNotNullParameter(resource, "resource");
        event.setResource(resource);
        this.eventBusHolder.post(event);
    }

    @Override // com.onyx.android.sdk.hwr.service.resource.IHWRResourceDownloader
    @NotNull
    public HWRBaseResourceDownloader setEventPublisher(@NotNull EventBusHolder eventBusHolder) {
        Intrinsics.checkNotNullParameter(eventBusHolder, "eventBusHolder");
        this.eventBusHolder = eventBusHolder;
        return this;
    }
}
