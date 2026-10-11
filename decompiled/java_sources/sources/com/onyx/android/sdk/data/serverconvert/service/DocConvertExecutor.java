package com.onyx.android.sdk.data.serverconvert.service;

import com.onyx.android.sdk.data.common.cloud.p025v1.ServiceFactory;
import com.onyx.android.sdk.data.serverconvert.bean.ConvertParamsBean;
import com.onyx.android.sdk.data.serverconvert.bean.ConvertRequestBody;
import com.onyx.android.sdk.data.serverconvert.bean.ConvertServerConfigResponse;
import com.onyx.android.sdk.data.serverconvert.bean.DocConvertAsyncResponse;
import com.onyx.android.sdk.data.serverconvert.bean.QueryConvertResultResponse;
import com.onyx.android.sdk.data.serverconvert.convertor.bean.DocConvertBean;
import com.onyx.android.sdk.data.serverconvert.convertor.bean.DocConvertResponse;
import com.onyx.android.sdk.data.serverconvert.convertor.bean.QueryBean;
import com.onyx.android.sdk.data.serverconvert.convertor.bean.QueryResponse;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001e\u0010\u0003\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\b\b\u0002\u0010\b\u001a\u00020\tJ\u0010\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\f\u001a\u00020\rJ\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fJ\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u0013J\u000e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\t¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/data/serverconvert/service/DocConvertExecutor;", "", "()V", "docConvertAsync", "Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertAsyncResponse;", "list", "", "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertParamsBean;", "targetFormat", "", "docConvertV2", "Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/DocConvertResponse;", "convertBean", "Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/DocConvertBean;", "getConvertConfig", "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertServerConfigResponse;", "queryConvertResultV2", "Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/QueryResponse;", "queryBean", "Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/QueryBean;", "queryConvertStatusRequest", "Lcom/onyx/android/sdk/data/serverconvert/bean/QueryConvertResultResponse;", "ticket", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class DocConvertExecutor {
    public static /* synthetic */ DocConvertAsyncResponse docConvertAsync$default(DocConvertExecutor docConvertExecutor, List list, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = "pdf";
        }
        return docConvertExecutor.docConvertAsync(list, str);
    }

    @NotNull
    public final DocConvertAsyncResponse docConvertAsync(@NotNull List<ConvertParamsBean> list, @NotNull String targetFormat) {
        Intrinsics.checkNotNullParameter(list, "list");
        Intrinsics.checkNotNullParameter(targetFormat, "targetFormat");
        ConvertRequestBody convertRequestBody = new ConvertRequestBody(null, null, 3, null);
        convertRequestBody.setTarget(targetFormat);
        convertRequestBody.setComponents(list);
        DocConvertAsyncResponse body = ServiceFactory.INSTANCE.getDocConvertServiceSync().docConvertASync(convertRequestBody).execute().body();
        Intrinsics.checkNotNullExpressionValue(body, "body(...)");
        return body;
    }

    @Nullable
    public final DocConvertResponse docConvertV2(@NotNull DocConvertBean convertBean) {
        Intrinsics.checkNotNullParameter(convertBean, "convertBean");
        return ServiceFactory.INSTANCE.getDocConvertServiceSync().docConvertV2(convertBean).execute().body();
    }

    @Nullable
    public final ConvertServerConfigResponse getConvertConfig() {
        return ((DocServerConfigService) ServiceFactory.INSTANCE.getOnyxApiV1Service(DocServerConfigService.class)).getSSLSeverInfo().execute().body();
    }

    @Nullable
    public final QueryResponse queryConvertResultV2(@NotNull QueryBean queryBean) {
        Intrinsics.checkNotNullParameter(queryBean, "queryBean");
        return ServiceFactory.INSTANCE.getDocConvertServiceSync().queryDocConvertResultV2(queryBean).execute().body();
    }

    @NotNull
    public final QueryConvertResultResponse queryConvertStatusRequest(@NotNull String ticket) {
        Intrinsics.checkNotNullParameter(ticket, "ticket");
        QueryConvertResultResponse body = ServiceFactory.INSTANCE.getDocConvertServiceSync().queryDocConvertResult(ticket).execute().body();
        Intrinsics.checkNotNullExpressionValue(body, "body(...)");
        return body;
    }
}
