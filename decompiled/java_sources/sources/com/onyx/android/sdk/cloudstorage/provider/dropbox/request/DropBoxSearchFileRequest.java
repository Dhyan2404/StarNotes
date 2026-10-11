package com.onyx.android.sdk.cloudstorage.provider.dropbox.request;

import com.dropbox.core.p006v2.DbxClientV2;
import com.dropbox.core.p006v2.files.SearchMatchV2;
import com.dropbox.core.p006v2.files.SearchV2Result;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.onyx.android.sdk.cloudstorage.model.QueryListResult;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0017\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\u0006\u0010\f\u001a\u00020\t¢\u0006\u0004\b\r\u0010\u000eJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016R\u0014\u0010\b\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0014\u0010\f\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxSearchFileRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;", "Lcom/dropbox/core/v2/files/Metadata;", "execute", "Lcom/dropbox/core/v2/DbxClientV2;", "a", "Lcom/dropbox/core/v2/DbxClientV2;", Constant.CLIENT, "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", "b", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", "args", Constants.CONSTRUCTOR_NAME, "(Lcom/dropbox/core/v2/DbxClientV2;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nDropBoxSearchFileRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DropBoxSearchFileRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxSearchFileRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,43:1\n1855#2,2:44\n*S KotlinDebug\n*F\n+ 1 DropBoxSearchFileRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxSearchFileRequest\n*L\n28#1:44,2\n*E\n"})
/* loaded from: classes7.dex */
public final class DropBoxSearchFileRequest extends RxBaseRequest<QueryListResult<com.dropbox.core.p006v2.files.Metadata>> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final DbxClientV2 client;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final CloudFileQueryArgs args;

    public DropBoxSearchFileRequest(@NotNull DbxClientV2 client, @NotNull CloudFileQueryArgs args) {
        Intrinsics.checkNotNullParameter(client, "client");
        Intrinsics.checkNotNullParameter(args, "args");
        this.client = client;
        this.args = args;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public QueryListResult<com.dropbox.core.p006v2.files.Metadata> execute() {
        QueryListResult<com.dropbox.core.p006v2.files.Metadata> queryListResult = new QueryListResult<>();
        SearchV2Result searchV2 = this.client.files().searchV2(this.args.getQuery());
        while (true) {
            List<SearchMatchV2> matches = searchV2.getMatches();
            Intrinsics.checkNotNullExpressionValue(matches, "getMatches(...)");
            Iterator<T> it2 = matches.iterator();
            while (it2.hasNext()) {
                CollectionKt.safeAdd(queryListResult.ensureList(), ((SearchMatchV2) it2.next()).getMetadata().getMetadataValue());
            }
            if (!searchV2.getHasMore()) {
                queryListResult.setFetchSource(1);
                queryListResult.setCount(queryListResult.ensureList().size());
                return queryListResult;
            }
            searchV2 = this.client.files().searchContinueV2(searchV2.getCursor());
        }
    }
}
