package com.onyx.android.sdk.cloudstorage.provider.webdav.request;

import android.annotation.SuppressLint;
import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.provider.webdav.WebDavClient;
import com.onyx.android.sdk.cloudstorage.provider.webdav.WebDavUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.thegrizzlylabs.sardineandroid.DavResource;
import com.thegrizzlylabs.sardineandroid.impl.SardineException;
import java.io.File;
import java.util.List;
import java.util.Optional;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0017\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\u0006\u0010\f\u001a\u00020\t¢\u0006\u0004\b\r\u0010\u000eJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0017R\u0014\u0010\b\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0016\u0010\f\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavFetchFileRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "Ljava/util/Optional;", "Lcom/thegrizzlylabs/sardineandroid/DavResource;", "execute", "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavClient;", "a", "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavClient;", "webDavClient", "", "b", Constants.STRING_SIG, "cloudPath", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavClient;Ljava/lang/String;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class WebDavFetchFileRequest extends RxBaseRequest<Optional<DavResource>> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final WebDavClient webDavClient;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public String cloudPath;

    public WebDavFetchFileRequest(@NotNull WebDavClient webDavClient, @NotNull String cloudPath) {
        Intrinsics.checkNotNullParameter(webDavClient, "webDavClient");
        Intrinsics.checkNotNullParameter(cloudPath, "cloudPath");
        this.webDavClient = webDavClient;
        this.cloudPath = cloudPath;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @SuppressLint({"NewApi"})
    @NotNull
    public Optional<DavResource> execute() {
        boolean startsWith$default;
        Object firstOrNull;
        if (this.cloudPath.length() == 0) {
            Optional<DavResource> empty = Optional.empty();
            Intrinsics.checkNotNullExpressionValue(empty, "empty(...)");
            return empty;
        }
        String str = this.cloudPath;
        String separator = File.separator;
        Intrinsics.checkNotNullExpressionValue(separator, "separator");
        DavResource davResource = null;
        startsWith$default = StringsKt__StringsJVMKt.startsWith$default(str, separator, false, 2, null);
        if (!startsWith$default) {
            this.cloudPath = separator + this.cloudPath;
        }
        WebDavUtils webDavUtils = WebDavUtils.INSTANCE;
        String webDavURL = this.webDavClient.getWebDavURL();
        Intrinsics.checkNotNull(webDavURL);
        String combineUrl = webDavUtils.combineUrl(webDavURL, this.cloudPath);
        Debug.INSTANCE.m32035d(WebDavFetchFileRequest.class, "fetch url:" + combineUrl, new Object[0]);
        try {
            List<DavResource> list = this.webDavClient.list(combineUrl, 0);
            if (list != null) {
                firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) list);
                davResource = (DavResource) firstOrNull;
            }
            Optional<DavResource> ofNullable = Optional.ofNullable(davResource);
            Intrinsics.checkNotNullExpressionValue(ofNullable, "ofNullable(...)");
            return ofNullable;
        } catch (SardineException e) {
            if (e.getStatusCode() == 404) {
                Optional<DavResource> empty2 = Optional.empty();
                Intrinsics.checkNotNullExpressionValue(empty2, "empty(...)");
                return empty2;
            }
            throw e;
        }
    }
}
