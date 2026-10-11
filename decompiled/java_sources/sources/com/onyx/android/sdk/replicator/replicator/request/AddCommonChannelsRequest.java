package com.onyx.android.sdk.replicator.replicator.request;

import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.Benchmark;
import com.onyx.android.sdk.data.account.bean.DataResponse;
import com.onyx.android.sdk.data.account.model.OnyxAccountModel;
import com.onyx.android.sdk.data.cluster.model.ClusterInfo;
import com.onyx.android.sdk.data.common.cloud.BaseCloudRequest;
import com.onyx.android.sdk.data.common.cloud.p025v1.ServiceFactory;
import com.onyx.android.sdk.data.common.exception.ResponseException;
import com.onyx.android.sdk.data.couchbase.CouchDBManager;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.data.sync.bean.ChannelResponseBean;
import com.onyx.android.sdk.data.sync.bean.UpdateSyncChannelBody;
import com.onyx.android.sdk.replicator.utils.SyncConstant;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.StringUtils;
import retrofit2.Response;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010!\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\t\u0010\nJ\b\u0010\u0003\u001a\u00020\u0002H\u0016J \u0010\b\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\u0006H\u0002¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/replicator/request/AddCommonChannelsRequest;", "Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;", "", "execute", "", CouchFieldKey.KEY_PARENT_ID, "", "channels", "a", Constants.CONSTRUCTOR_NAME, "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class AddCommonChannelsRequest extends BaseCloudRequest {
    /* renamed from: a */
    public final void m35779a(String parentId, List<String> channels) {
        if (StringUtils.isNotBlank(parentId)) {
            CollectionKt.safeAdd(channels, CouchUtils.INSTANCE.dbFullName(parentId, SyncConstant.FAMILY_CHANNEL));
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    public /* bridge */ /* synthetic */ Object execute() {
        m72398execute();
        return Unit.INSTANCE;
    }

    /* renamed from: execute, reason: collision with other method in class */
    public void m72398execute() throws Exception {
        OnyxAccountModel loggedInAccount = CouchDBManager.INSTANCE.getOnyxAccountProvider().getLoggedInAccount();
        if (loggedInAccount != null) {
            Benchmark benchmark = new Benchmark();
            ArrayList arrayList = new ArrayList();
            CouchUtils couchUtils = CouchUtils.INSTANCE;
            arrayList.add(couchUtils.dbFullName(loggedInAccount.getUniqueId(), "NOTE_TREE"));
            arrayList.add(couchUtils.dbFullName(loggedInAccount.getUniqueId(), SyncConstant.READER_LIBRARY_DB_NAME));
            arrayList.add(couchUtils.dbFullName(loggedInAccount.getUniqueId(), SyncConstant.CALENDAR_LIBRARY_DB_NAME));
            arrayList.add(couchUtils.dbFullName(loggedInAccount.getUniqueId(), SyncConstant.CONFIG_DB_NAME));
            arrayList.add(couchUtils.dbFullName(loggedInAccount.getUniqueId(), "APP_DATA"));
            arrayList.add(couchUtils.dbFullName(loggedInAccount.getUniqueId(), com.onyx.android.sdk.data.common.sync.SyncConstant.MESSAGE_DB_NAME));
            arrayList.add(couchUtils.dbFullName(loggedInAccount.getUniqueId(), SyncConstant.CLOUD_CONFIG_CHANNEL));
            m35779a(loggedInAccount.getParent(), arrayList);
            Response<DataResponse<ChannelResponseBean>> execute = ServiceFactory.INSTANCE.getSyncService(ClusterInfo.INSTANCE.getSendToBooxApiHost(getClusterInfo())).updateSyncChannels(BaseCloudRequest.INSTANCE.getBearerToken(loggedInAccount.getToken()), new UpdateSyncChannelBody().setAction("add").setChannels((List<String>) arrayList)).execute();
            Intrinsics.checkNotNullExpressionValue(execute, "execute(...)");
            benchmark.report("add common channel");
            if (execute.isSuccessful()) {
                return;
            }
            throw new ResponseException("add common channel error: " + execute.message());
        }
        throw new Exception("null account logged");
    }
}
