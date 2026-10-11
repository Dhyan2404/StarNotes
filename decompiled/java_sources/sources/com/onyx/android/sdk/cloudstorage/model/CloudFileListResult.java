package com.onyx.android.sdk.cloudstorage.model;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u001a2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001aB\u0007\b\u0016¢\u0006\u0002\u0010\u0003B\u0017\b\u0016\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0000\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\u0013\u001a\u00020\u00002\b\u0010\u0014\u001a\u0004\u0018\u00010\u0000J\b\u0010\u0015\u001a\u00020\u0016H\u0016J\u000e\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0019R&\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001c\u0010\u000e\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;", "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "()V", "resultList", "", "(Ljava/util/List;)V", "conflictFileBeanMap", "", "", "getConflictFileBeanMap", "()Ljava/util/Map;", "setConflictFileBeanMap", "(Ljava/util/Map;)V", "operationJson", "getOperationJson", "()Ljava/lang/String;", "setOperationJson", "(Ljava/lang/String;)V", RequestParameters.SUBRESOURCE_APPEND, Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, "hasException", "", "hasMoreData", CouchFieldKey.KEY_PROVIDER, "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;", "Companion", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class CloudFileListResult extends QueryListResult<CloudFileBean> {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    private Map<String, CloudFileBean> conflictFileBeanMap = new HashMap();

    @Nullable
    private String operationJson;

    @Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006J.\u0010\b\u001a\u00020\u0004\"\u0004\b\u0000\u0010\t2\f\u0010\n\u001a\b\u0012\u0004\u0012\u0002H\t0\u000b2\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u0002H\t\u0012\u0004\u0012\u00020\u00070\r¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult$Companion;", "", "()V", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;", "list", "", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "from", "T", "originResult", "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;", Constants.EXSLT_ELEMNAME_FUNCTION_STRING, "Lkotlin/Function1;", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    @SourceDebugExtension({"SMAP\nCloudFileListResult.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CloudFileListResult.kt\ncom/onyx/android/sdk/cloudstorage/model/CloudFileListResult$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,70:1\n1855#2,2:71\n*S KotlinDebug\n*F\n+ 1 CloudFileListResult.kt\ncom/onyx/android/sdk/cloudstorage/model/CloudFileListResult$Companion\n*L\n57#1:71,2\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final CloudFileListResult create(@NotNull List<CloudFileBean> list) {
            List mutableList;
            Intrinsics.checkNotNullParameter(list, "list");
            CloudFileListResult cloudFileListResult = new CloudFileListResult();
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) list);
            cloudFileListResult.setList(mutableList);
            cloudFileListResult.setCount(list.size());
            return cloudFileListResult;
        }

        @NotNull
        public final <T> CloudFileListResult from(@NotNull QueryListResult<T> originResult, @NotNull Function1<? super T, CloudFileBean> function) {
            Intrinsics.checkNotNullParameter(originResult, "originResult");
            Intrinsics.checkNotNullParameter(function, "function");
            ArrayList arrayList = new ArrayList();
            Iterator<T> it2 = originResult.ensureList().iterator();
            while (it2.hasNext()) {
                arrayList.add(function.invoke(it2.next()));
            }
            CloudFileListResult create = create(arrayList);
            create.setCount(originResult.getCount());
            create.setFetchSource(originResult.getFetchSource());
            create.setCursor(originResult.getCursor());
            create.setCode(originResult.getCode());
            create.setMessage(originResult.getMessage());
            return create;
        }

        public Companion() {
        }
    }

    public CloudFileListResult() {
    }

    @NotNull
    public final CloudFileListResult append(@Nullable CloudFileListResult result) {
        if (result != null) {
            ensureList().addAll(result.ensureList());
        }
        long count = getCount();
        Intrinsics.checkNotNull(result);
        setCount(count + result.getCount());
        return this;
    }

    @NotNull
    public final Map<String, CloudFileBean> getConflictFileBeanMap() {
        return this.conflictFileBeanMap;
    }

    @Nullable
    public final String getOperationJson() {
        return this.operationJson;
    }

    @Override // com.onyx.android.sdk.cloudstorage.model.QueryListResult
    public boolean hasException() {
        return getCode() != 0;
    }

    public final boolean hasMoreData(@NotNull Provider provider) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        boolean isPageCursorProvider = provider.getIsPageCursorProvider();
        return (isPageCursorProvider && StringKt.isNotBlank(getCursor())) || (!isPageCursorProvider && (CollectionKt.ensureList(getList()).isEmpty() ^ true));
    }

    public final void setConflictFileBeanMap(@NotNull Map<String, CloudFileBean> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        this.conflictFileBeanMap = map;
    }

    public final void setOperationJson(@Nullable String str) {
        this.operationJson = str;
    }

    public CloudFileListResult(@Nullable List<CloudFileListResult> list) {
        if (list != null) {
            Iterator<CloudFileListResult> it2 = list.iterator();
            while (it2.hasNext()) {
                ensureList().addAll(it2.next().ensureList());
            }
            setCount(ensureList().size());
        }
    }
}
