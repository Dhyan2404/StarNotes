package com.onyx.android.sdk.cloudstorage.provider.onxy.request;

import com.alibaba.sdk.android.oss.model.OSSObjectSummary;
import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.onyx.android.sdk.cloudstorage.model.QueryListResult;
import com.onyx.android.sdk.cloudstorage.provider.onxy.OnyxCloudUtils;
import com.onyx.android.sdk.data.common.oss.RxOSSManager;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsKt;
import onyx.org.apache.commons.io.FilenameUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0017\u0012\u0006\u0010\t\u001a\u00020\u0007\u0012\u0006\u0010\r\u001a\u00020\n¢\u0006\u0004\b\u000e\u0010\u000fJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005H\u0002R\u0014\u0010\t\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\bR\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxSearchFileRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;", "Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;", "execute", "", "a", "Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;", "Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;", "rxOSSManager", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", "b", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", "args", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nOnyxSearchFileRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OnyxSearchFileRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxSearchFileRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,46:1\n1855#2,2:47\n*S KotlinDebug\n*F\n+ 1 OnyxSearchFileRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxSearchFileRequest\n*L\n37#1:47,2\n*E\n"})
/* loaded from: classes7.dex */
public final class OnyxSearchFileRequest extends RxBaseRequest<QueryListResult<OSSObjectSummary>> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final RxOSSManager rxOSSManager;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final CloudFileQueryArgs args;

    public OnyxSearchFileRequest(@NotNull RxOSSManager rxOSSManager, @NotNull CloudFileQueryArgs args) {
        Intrinsics.checkNotNullParameter(rxOSSManager, "rxOSSManager");
        Intrinsics.checkNotNullParameter(args, "args");
        this.rxOSSManager = rxOSSManager;
        this.args = args;
    }

    /* renamed from: a */
    public final List<OSSObjectSummary> m32809a() throws Exception {
        boolean contains$default;
        ArrayList arrayList = new ArrayList();
        for (OSSObjectSummary oSSObjectSummary : new OnyxFetchAllFileListRequest(this.rxOSSManager).execute()) {
            OnyxCloudUtils onyxCloudUtils = OnyxCloudUtils.INSTANCE;
            String key = oSSObjectSummary.getKey();
            Intrinsics.checkNotNullExpressionValue(key, "getKey(...)");
            String name = FilenameUtils.getName(onyxCloudUtils.getCloudFilePath(key));
            Intrinsics.checkNotNull(name);
            String query = this.args.getQuery();
            Intrinsics.checkNotNull(query);
            contains$default = StringsKt__StringsKt.contains$default((CharSequence) name, (CharSequence) query, false, 2, (Object) null);
            if (contains$default) {
                arrayList.add(oSSObjectSummary);
            }
        }
        return arrayList;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public QueryListResult<OSSObjectSummary> execute() {
        QueryListResult<OSSObjectSummary> queryListResult = new QueryListResult<>();
        queryListResult.setList(m32809a());
        queryListResult.setFetchSource(1);
        queryListResult.setCount(queryListResult.ensureList().size());
        return queryListResult;
    }
}
