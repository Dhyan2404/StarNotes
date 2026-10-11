package com.onyx.android.sdk.cloudstorage.provider.webdav.request;

import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.cloudstorage.provider.webdav.WebDavClient;
import com.onyx.android.sdk.cloudstorage.provider.webdav.WebDavUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.thegrizzlylabs.sardineandroid.DavResource;
import java.io.File;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\u000b\u001a\u00020\b¢\u0006\u0004\b\u0014\u0010\u0015J\b\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\u0007\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\"\u0010\u0013\u001a\u00020\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavCreateFolderRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "Lcom/thegrizzlylabs/sardineandroid/DavResource;", "execute", "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavClient;", "a", "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavClient;", "webDavClient", "", "b", Constants.STRING_SIG, "path", "", "c", Constants.HASIDCALL_INDEX_SIG, "getCheckExist", Constants.BOOLEAN_VALUE_SIG, "setCheckExist", "(Z)V", "checkExist", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavClient;Ljava/lang/String;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class WebDavCreateFolderRequest extends RxBaseRequest<DavResource> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final WebDavClient webDavClient;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final String path;

    /* renamed from: c, reason: from kotlin metadata */
    public boolean checkExist;

    public WebDavCreateFolderRequest(@NotNull WebDavClient webDavClient, @NotNull String path) {
        Intrinsics.checkNotNullParameter(webDavClient, "webDavClient");
        Intrinsics.checkNotNullParameter(path, "path");
        this.webDavClient = webDavClient;
        this.path = path;
    }

    public final boolean getCheckExist() {
        return this.checkExist;
    }

    public final void setCheckExist(boolean z) {
        this.checkExist = z;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public DavResource execute() {
        boolean endsWith$default;
        Object first;
        WebDavUtils webDavUtils = WebDavUtils.INSTANCE;
        String webDavURL = this.webDavClient.getWebDavURL();
        Intrinsics.checkNotNull(webDavURL);
        String combineUrl = webDavUtils.combineUrl(webDavURL, this.path);
        String separator = File.separator;
        Intrinsics.checkNotNullExpressionValue(separator, "separator");
        endsWith$default = StringsKt__StringsJVMKt.endsWith$default(combineUrl, separator, false, 2, null);
        if (!endsWith$default) {
            combineUrl = combineUrl + separator;
        }
        if (!this.checkExist || !webDavUtils.exist(this.webDavClient, combineUrl)) {
            this.webDavClient.createDirectory(combineUrl);
        }
        List<DavResource> list = this.webDavClient.list(combineUrl, 0);
        Intrinsics.checkNotNullExpressionValue(list, "list(...)");
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) list);
        Intrinsics.checkNotNullExpressionValue(first, "first(...)");
        return (DavResource) first;
    }
}
