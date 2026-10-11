package com.onyx.android.sdk.cloudstorage.provider.dropbox.request;

import com.dropbox.core.p006v2.DbxClientV2;
import com.dropbox.core.p006v2.files.ListFolderResult;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.base.utils.Debug;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\r\b\u0016\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0017\u0012\u0006\u0010\f\u001a\u00020\t\u0012\u0006\u0010\u0010\u001a\u00020\r¢\u0006\u0004\b\u0018\u0010\u0019J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016J\u0016\u0010\b\u001a\u00020\u00072\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005H\u0014R\u0014\u0010\f\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\"\u0010\u0017\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxFetchAllFileListRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "", "Lcom/dropbox/core/v2/files/Metadata;", "execute", "", "list", "", "onBatchList", "Lcom/dropbox/core/v2/DbxClientV2;", "a", "Lcom/dropbox/core/v2/DbxClientV2;", "dbxClient", "", "b", Constants.STRING_SIG, "path", "c", Constants.HASIDCALL_INDEX_SIG, "getRecursive", Constants.BOOLEAN_VALUE_SIG, "setRecursive", "(Z)V", "recursive", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/dropbox/core/v2/DbxClientV2;Ljava/lang/String;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nDropBoxFetchAllFileListRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DropBoxFetchAllFileListRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxFetchAllFileListRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,49:1\n1855#2,2:50\n*S KotlinDebug\n*F\n+ 1 DropBoxFetchAllFileListRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxFetchAllFileListRequest\n*L\n30#1:50,2\n*E\n"})
/* loaded from: classes7.dex */
public class DropBoxFetchAllFileListRequest extends RxBaseRequest<List<com.dropbox.core.p006v2.files.Metadata>> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final DbxClientV2 dbxClient;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final String path;

    /* renamed from: c, reason: from kotlin metadata */
    public boolean recursive;

    public DropBoxFetchAllFileListRequest(@NotNull DbxClientV2 dbxClient, @NotNull String path) {
        Intrinsics.checkNotNullParameter(dbxClient, "dbxClient");
        Intrinsics.checkNotNullParameter(path, "path");
        this.dbxClient = dbxClient;
        this.path = path;
        this.recursive = true;
    }

    public final boolean getRecursive() {
        return this.recursive;
    }

    public boolean onBatchList(@NotNull List<? extends com.dropbox.core.p006v2.files.Metadata> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        return false;
    }

    public final void setRecursive(boolean z) {
        this.recursive = z;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public List<com.dropbox.core.p006v2.files.Metadata> execute() {
        ArrayList arrayList = new ArrayList();
        ListFolderResult start = this.dbxClient.files().listFolderBuilder(this.path).withRecursive(Boolean.valueOf(this.recursive)).start();
        while (true) {
            List<com.dropbox.core.p006v2.files.Metadata> entries = start.getEntries();
            Intrinsics.checkNotNullExpressionValue(entries, "getEntries(...)");
            Iterator<T> it2 = entries.iterator();
            while (it2.hasNext()) {
                Debug.INSTANCE.m32035d(getClass(), ((com.dropbox.core.p006v2.files.Metadata) it2.next()).toString(), new Object[0]);
            }
            CollectionKt.safeAddAll(arrayList, start.getEntries());
            List<com.dropbox.core.p006v2.files.Metadata> entries2 = start.getEntries();
            Intrinsics.checkNotNullExpressionValue(entries2, "getEntries(...)");
            if (onBatchList(entries2) || !start.getHasMore()) {
                break;
            }
            start = this.dbxClient.files().listFolderContinue(start.getCursor());
        }
        return arrayList;
    }
}
