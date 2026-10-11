package com.onyx.android.sdk.replicator.replicator.request;

import com.onyx.android.sdk.data.account.bean.DataResponse;
import com.onyx.android.sdk.data.account.model.OnyxAccountModel;
import com.onyx.android.sdk.data.cluster.model.ClusterInfo;
import com.onyx.android.sdk.data.common.cloud.BaseCloudRequest;
import com.onyx.android.sdk.data.common.cloud.p025v1.ServiceFactory;
import com.onyx.android.sdk.data.common.exception.ResponseException;
import com.onyx.android.sdk.data.couchbase.CouchDBManager;
import com.onyx.android.sdk.data.couchbase.bean.SyncGateway;
import com.onyx.android.sdk.data.sync.bean.SyncGatewayResponse;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import retrofit2.Response;

@Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\t\u0010\nJ\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0006\u0010\u0005\u001a\u00020\u0004R\u0014\u0010\b\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/replicator/request/GetSyncGatewayRequest;", "Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;", "", "execute", "Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;", "getSyncGateway", "a", "Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;", "syncGateway", Constants.CONSTRUCTOR_NAME, "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class GetSyncGatewayRequest extends BaseCloudRequest {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final SyncGateway syncGateway = new SyncGateway();

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    public /* bridge */ /* synthetic */ Object execute() {
        m72399execute();
        return Unit.INSTANCE;
    }

    @NotNull
    public final SyncGateway getSyncGateway() {
        return this.syncGateway;
    }

    /* renamed from: execute, reason: collision with other method in class */
    public void m72399execute() throws Exception {
        OnyxAccountModel loggedInAccount = CouchDBManager.INSTANCE.getOnyxAccountProvider().getLoggedInAccount();
        if (loggedInAccount != null) {
            Response<DataResponse<SyncGatewayResponse>> execute = ServiceFactory.INSTANCE.getSyncService(ClusterInfo.INSTANCE.getSendToBooxApiHost(getClusterInfo())).getSyncGateway(BaseCloudRequest.INSTANCE.getBearerToken(loggedInAccount.getToken())).execute();
            Intrinsics.checkNotNullExpressionValue(execute, "execute(...)");
            if (execute.isSuccessful()) {
                SyncGatewayResponse data = execute.body().getData();
                ClusterInfo clusterInfo = getClusterInfo();
                Intrinsics.checkNotNull(clusterInfo);
                String onyxCouchbaseWSSHost = clusterInfo.getCbConfig().getOnyxCouchbaseWSSHost();
                if (data != null) {
                    if (!StringUtils.isBlank(data.getCookieName()) && !StringUtils.isBlank(data.getSessionId()) && !StringUtils.isBlank(onyxCouchbaseWSSHost)) {
                        this.syncGateway.setUrl(onyxCouchbaseWSSHost).setAccount(loggedInAccount).setCookieName(data.getCookieName()).setSessionID(data.getSessionId()).setClusterInfo(getClusterInfo());
                        return;
                    }
                    throw new Exception("error sync gateway cookieName: " + data.getCookieName() + ", sessionId: " + data.getSessionId() + ", url: " + onyxCouchbaseWSSHost);
                }
                throw new Exception("error sync gateway response is null");
            }
            throw new ResponseException("get sync gateway error");
        }
        throw new Exception("null account logged");
    }
}
