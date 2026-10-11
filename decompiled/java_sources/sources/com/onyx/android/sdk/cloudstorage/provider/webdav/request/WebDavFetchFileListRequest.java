package com.onyx.android.sdk.cloudstorage.provider.webdav.request;

import com.onyx.android.sdk.base.data.SortBy;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.onyx.android.sdk.cloudstorage.model.QueryListResult;
import com.onyx.android.sdk.cloudstorage.provider.webdav.WebDavProvider;
import com.onyx.android.sdk.cloudstorage.provider.webdav.WebDavUtils;
import com.sun.org.apache.bcel.internal.Constants;
import com.thegrizzlylabs.sardineandroid.DavResource;
import com.thegrizzlylabs.sardineandroid.impl.SardineException;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0017\u0012\u0006\u0010\u000b\u001a\u00020\t\u0012\u0006\u0010\u000f\u001a\u00020\f¢\u0006\u0004\b\u0010\u0010\u0011J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016J\u0016\u0010\b\u001a\u00020\u00072\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005H\u0002R\u0014\u0010\u000b\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\nR\u0014\u0010\u000f\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavFetchFileListRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;", "Lcom/thegrizzlylabs/sardineandroid/DavResource;", "execute", "", "list", "", "a", "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;", "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;", "webDavProvider", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", "b", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", "queryArgs", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class WebDavFetchFileListRequest extends RxBaseRequest<QueryListResult<DavResource>> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final WebDavProvider webDavProvider;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final CloudFileQueryArgs queryArgs;

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[SortBy.values().length];
            try {
                iArr[SortBy.Name.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[SortBy.Size.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public WebDavFetchFileListRequest(@NotNull WebDavProvider webDavProvider, @NotNull CloudFileQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(webDavProvider, "webDavProvider");
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        this.webDavProvider = webDavProvider;
        this.queryArgs = queryArgs;
    }

    /* renamed from: a */
    public final void m32879a(List<DavResource> list) {
        int i = WhenMappings.$EnumSwitchMapping$0[this.queryArgs.getSortBy().ordinal()];
        if (i == 1) {
            WebDavUtils.INSTANCE.sortListByName(list, this.queryArgs.getOrder());
        } else if (i != 2) {
            WebDavUtils.INSTANCE.sortListByTime(list, this.queryArgs.getOrder());
        } else {
            WebDavUtils.INSTANCE.sortListBySize(list, this.queryArgs.getOrder());
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public QueryListResult<DavResource> execute() {
        try {
            String cloudFilePath = this.webDavProvider.getCloudStorageRecordProvider().getCloudFilePath(this.queryArgs.getParentId(), "", true);
            WebDavUtils webDavUtils = WebDavUtils.INSTANCE;
            String webDavURL = this.webDavProvider.getWebDavClient().getWebDavURL();
            Intrinsics.checkNotNull(webDavURL);
            Intrinsics.checkNotNull(cloudFilePath);
            List<DavResource> list = this.webDavProvider.getWebDavClient().list(webDavUtils.combineUrl(webDavURL, cloudFilePath));
            Intrinsics.checkNotNullExpressionValue(list, "list(...)");
            CollectionKt.safelyRemove(list, new Comparable<DavResource>() { // from class: com.onyx.android.sdk.cloudstorage.provider.webdav.request.WebDavFetchFileListRequest$execute$comparable$1
                @Override // java.lang.Comparable
                public int compareTo(@NotNull DavResource other) {
                    Intrinsics.checkNotNullParameter(other, "other");
                    return 0;
                }
            }, true);
            QueryListResult<DavResource> queryListResult = new QueryListResult<>();
            queryListResult.setFetchSource(1);
            queryListResult.setCount(list.size());
            if (this.queryArgs.getOffset() < queryListResult.getCount()) {
                m32879a(list);
                queryListResult.setList(CollectionKt.safelySubList(list, (int) this.queryArgs.getOffset(), (int) Math.min(this.queryArgs.getOffset() + this.queryArgs.getLimit(), queryListResult.getCount())));
            }
            return queryListResult;
        } catch (SardineException e) {
            throw WebDavUtils.INSTANCE.webDavErrorToStandard(e);
        }
    }
}
