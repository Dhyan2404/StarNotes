package com.onyx.android.sdk.cloudstorage.provider.webdav.request;

import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.base.utils.Benchmark;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.provider.webdav.WebDavClient;
import com.onyx.android.sdk.cloudstorage.provider.webdav.WebDavUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.thegrizzlylabs.sardineandroid.DavResource;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0011\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0017\u0012\u0006\u0010\u0013\u001a\u00020\u0011\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b \u0010!J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016J\u0016\u0010\u0007\u001a\u00020\u00062\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u001e\u0010\u000b\u001a\u00020\u00062\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\n\u001a\u00020\tH\u0002J\u0016\u0010\f\u001a\u00020\u00062\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u0016\u0010\u000e\u001a\u00020\r2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u001e\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\rH\u0002R\u0014\u0010\u0013\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0012R\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\u0014R\"\u0010\u000f\u001a\u00020\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001d\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR\u001d\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006¢\u0006\f\n\u0004\b\f\u0010\u001a\u001a\u0004\b\u001e\u0010\u001c¨\u0006\""}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavFetchAllFileListRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "", "Lcom/thegrizzlylabs/sardineandroid/DavResource;", "execute", "resultList", "", "b", "list", "", "path", "c", "e", "", "d", "recursive", "a", "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavClient;", "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavClient;", "webDavClient", Constants.STRING_SIG, Constants.HASIDCALL_INDEX_SIG, "getRecursive", Constants.BOOLEAN_VALUE_SIG, "setRecursive", "(Z)V", "Ljava/util/List;", "getFolderList", "()Ljava/util/List;", "folderList", "getFileList", "fileList", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavClient;Ljava/lang/String;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nWebDavFetchAllFileListRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WebDavFetchAllFileListRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavFetchAllFileListRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,111:1\n1855#2,2:112\n*S KotlinDebug\n*F\n+ 1 WebDavFetchAllFileListRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavFetchAllFileListRequest\n*L\n44#1:112,2\n*E\n"})
/* loaded from: classes7.dex */
public final class WebDavFetchAllFileListRequest extends RxBaseRequest<List<DavResource>> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final WebDavClient webDavClient;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final String path;

    /* renamed from: c, reason: from kotlin metadata */
    public boolean recursive;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final List<DavResource> folderList;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final List<DavResource> fileList;

    public WebDavFetchAllFileListRequest(@NotNull WebDavClient webDavClient, @NotNull String path) {
        Intrinsics.checkNotNullParameter(webDavClient, "webDavClient");
        Intrinsics.checkNotNullParameter(path, "path");
        this.webDavClient = webDavClient;
        this.path = path;
        this.recursive = true;
        this.folderList = new ArrayList();
        this.fileList = new ArrayList();
    }

    /* renamed from: a */
    public final List<DavResource> m32874a(String path, boolean recursive) throws Exception {
        WebDavUtils webDavUtils = WebDavUtils.INSTANCE;
        String webDavURL = this.webDavClient.getWebDavURL();
        Intrinsics.checkNotNull(webDavURL);
        List<DavResource> list = this.webDavClient.list(webDavUtils.combineUrl(webDavURL, path), recursive ? -1 : 1);
        Comparable<DavResource> comparable = new Comparable<DavResource>() { // from class: com.onyx.android.sdk.cloudstorage.provider.webdav.request.WebDavFetchAllFileListRequest$fetchList$comparable$1
            @Override // java.lang.Comparable
            public int compareTo(@NotNull DavResource other) {
                Intrinsics.checkNotNullParameter(other, "other");
                return 0;
            }
        };
        Intrinsics.checkNotNull(list);
        CollectionKt.safelyRemove(list, comparable, true);
        return list;
    }

    /* renamed from: b */
    public final void m32875b(List<DavResource> resultList) throws Exception {
        for (DavResource davResource : resultList) {
            if (davResource.isDirectory()) {
                String path = davResource.getPath();
                Intrinsics.checkNotNullExpressionValue(path, "getPath(...)");
                m32876c(resultList, path);
            }
        }
    }

    /* renamed from: c */
    public final void m32876c(List<DavResource> list, String path) throws Exception {
        List<DavResource> m32874a = m32874a(path, false);
        CollectionKt.safeAddAll(list, m32874a);
        for (DavResource davResource : m32874a) {
            if (davResource.isDirectory()) {
                String path2 = davResource.getPath();
                Intrinsics.checkNotNullExpressionValue(path2, "getPath(...)");
                m32876c(list, path2);
            }
        }
    }

    /* renamed from: d */
    public final boolean m32877d(List<DavResource> list) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (DavResource davResource : list) {
            FileUtils fileUtils = FileUtils.INSTANCE;
            String path = davResource.getPath();
            Intrinsics.checkNotNull(path);
            String parent = fileUtils.getParent(path);
            if (parent != null) {
                linkedHashSet.add(parent);
            }
            if (linkedHashSet.size() > 1) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: e */
    public final void m32878e(List<DavResource> list) {
        for (DavResource davResource : list) {
            if (davResource.isDirectory()) {
                this.folderList.add(davResource);
            } else {
                this.fileList.add(davResource);
            }
        }
    }

    @NotNull
    public final List<DavResource> getFileList() {
        return this.fileList;
    }

    @NotNull
    public final List<DavResource> getFolderList() {
        return this.folderList;
    }

    public final boolean getRecursive() {
        return this.recursive;
    }

    public final void setRecursive(boolean z) {
        this.recursive = z;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public List<DavResource> execute() {
        Benchmark benchmark = new Benchmark();
        List<DavResource> m32874a = m32874a(this.path, this.recursive);
        if (this.recursive && !m32877d(m32874a)) {
            m32875b(m32874a);
            m32878e(m32874a);
            m32874a.clear();
            List<DavResource> list = m32874a;
            CollectionKt.safeAddAll(list, this.folderList);
            CollectionKt.safeAddAll(list, this.fileList);
            if (Debug.INSTANCE.getDebug()) {
                for (DavResource davResource : m32874a) {
                    Debug.INSTANCE.m32035d(WebDavFetchAllFileListRequest.class, "dav,resource:" + davResource, new Object[0]);
                }
            }
            benchmark.report(this.webDavClient.getWebDavURL() + " fetch webdav all by recursive:" + this.recursive);
            return m32874a;
        }
        m32878e(m32874a);
        return m32874a;
    }
}
