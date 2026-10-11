package com.onyx.android.sdk.cloudstorage.model;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.alibaba.fastjson2.annotation.JSONField;
import com.google.android.gms.actions.SearchIntents;
import com.onyx.android.sdk.base.data.SortBy;
import com.onyx.android.sdk.base.data.SortOrder;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunQueryArgs;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010 \n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u0000 S2\u00020\u0001:\u0001SB\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010O\u001a\u00020P2\u0006\u0010Q\u001a\u00020\nJ\u0006\u0010R\u001a\u00020\u0000R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR \u0010\t\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR \u0010\u0012\u001a\u00020\u0013X\u0086\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0014\u0010\u0002\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\u00020\u001aX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u001a\u0010\u001f\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u0016\"\u0004\b!\u0010\u0018R\u001c\u0010\"\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\u0006\"\u0004\b$\u0010\bR\u001a\u0010%\u001a\u00020&X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R\u001a\u0010+\u001a\u00020,X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b-\u0010.\"\u0004\b/\u00100R\u001c\u00101\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b2\u0010\u0006\"\u0004\b3\u0010\bR\u001a\u00104\u001a\u00020\u001aX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b5\u0010\u001c\"\u0004\b6\u0010\u001eR\u001a\u00107\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b8\u0010\u0006\"\u0004\b9\u0010\bR\u001c\u0010:\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b;\u0010\u0006\"\u0004\b<\u0010\bR\"\u0010=\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010>X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b?\u0010@\"\u0004\bA\u0010BR\u001a\u0010C\u001a\u00020\u001aX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bD\u0010\u001c\"\u0004\bE\u0010\u001eR\u001a\u0010F\u001a\u00020\u001aX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bG\u0010\u001c\"\u0004\bH\u0010\u001eR\u001a\u0010I\u001a\u00020JX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bK\u0010L\"\u0004\bM\u0010N¨\u0006T"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", "Ljava/io/Serializable;", "()V", "accountId", "", "getAccountId", "()Ljava/lang/String;", "setAccountId", "(Ljava/lang/String;)V", "conditionGroup", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "getConditionGroup", "()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "setConditionGroup", "(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)V", "cursor", "getCursor", "setCursor", "fetchPolicy", "", "getFetchPolicy$annotations", "getFetchPolicy", "()I", "setFetchPolicy", "(I)V", "filterParent", "", "getFilterParent", Constants.BOOLEAN_VALUE_SIG, "setFilterParent", "(Z)V", "limit", "getLimit", "setLimit", HuaweiYunQueryArgs.QUERY_PARENT_MIMETYPE, "getMimeType", "setMimeType", TypedValues.CycleType.S_WAVE_OFFSET, "", "getOffset", "()J", "setOffset", "(J)V", com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_ORDER, "Lcom/onyx/android/sdk/base/data/SortOrder;", "getOrder", "()Lcom/onyx/android/sdk/base/data/SortOrder;", "setOrder", "(Lcom/onyx/android/sdk/base/data/SortOrder;)V", CouchFieldKey.KEY_PARENT_ID, "getParentId", "setParentId", "precisionSearch", "getPrecisionSearch", "setPrecisionSearch", CouchFieldKey.KEY_PROVIDER, "getProvider", "setProvider", SearchIntents.EXTRA_QUERY, "getQuery", "setQuery", "queryIdList", "", "getQueryIdList", "()Ljava/util/List;", "setQueryIdList", "(Ljava/util/List;)V", "recursionSearch", "getRecursionSearch", "setRecursionSearch", "saveToLocal", "getSaveToLocal", "setSaveToLocal", "sortBy", "Lcom/onyx/android/sdk/base/data/SortBy;", "getSortBy", "()Lcom/onyx/android/sdk/base/data/SortBy;", "setSortBy", "(Lcom/onyx/android/sdk/base/data/SortBy;)V", "andWith", "", "newCondition", "copy", "Companion", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class CloudFileQueryArgs implements Serializable {
    public static final int DEFAULT_LIMIT = 50;

    @Nullable
    private String accountId;

    @JSONField(deserialize = false, serialize = false)
    @Nullable
    private CBQueryArgs conditionGroup;

    @Nullable
    private String cursor;
    private boolean filterParent;

    @Nullable
    private String mimeType;
    private long offset;

    @Nullable
    private String parentId;
    private boolean precisionSearch;

    @Nullable
    private String query;

    @Nullable
    private List<String> queryIdList;
    private boolean recursionSearch;
    private int limit = 50;

    @NotNull
    private String provider = Provider.BAIDU_YUN.getTitle();

    @NotNull
    private SortBy sortBy = SortBy.Name;

    @NotNull
    private SortOrder order = SortOrder.Desc;
    private int fetchPolicy = 1;
    private boolean saveToLocal = true;

    public static /* synthetic */ void getFetchPolicy$annotations() {
    }

    public final void andWith(@NotNull CBQueryArgs newCondition) {
        Intrinsics.checkNotNullParameter(newCondition, "newCondition");
        CBQueryArgs cBQueryArgs = this.conditionGroup;
        if (cBQueryArgs == null) {
            this.conditionGroup = newCondition;
        } else {
            Intrinsics.checkNotNull(cBQueryArgs);
            this.conditionGroup = cBQueryArgs.andWith(newCondition.getWhereEx());
        }
    }

    @NotNull
    public final CloudFileQueryArgs copy() {
        JSONUtils jSONUtils = JSONUtils.INSTANCE;
        Object parseObject = jSONUtils.parseObject(jSONUtils.toJSONString(this), (Class<Object>) CloudFileQueryArgs.class);
        Intrinsics.checkNotNull(parseObject);
        return (CloudFileQueryArgs) parseObject;
    }

    @Nullable
    public final String getAccountId() {
        return this.accountId;
    }

    @Nullable
    public final CBQueryArgs getConditionGroup() {
        return this.conditionGroup;
    }

    @Nullable
    public final String getCursor() {
        return this.cursor;
    }

    public final int getFetchPolicy() {
        return this.fetchPolicy;
    }

    public final boolean getFilterParent() {
        return this.filterParent;
    }

    public final int getLimit() {
        return this.limit;
    }

    @Nullable
    public final String getMimeType() {
        return this.mimeType;
    }

    public final long getOffset() {
        return this.offset;
    }

    @NotNull
    public final SortOrder getOrder() {
        return this.order;
    }

    @Nullable
    public final String getParentId() {
        return this.parentId;
    }

    public final boolean getPrecisionSearch() {
        return this.precisionSearch;
    }

    @NotNull
    public final String getProvider() {
        return this.provider;
    }

    @Nullable
    public final String getQuery() {
        return this.query;
    }

    @Nullable
    public final List<String> getQueryIdList() {
        return this.queryIdList;
    }

    public final boolean getRecursionSearch() {
        return this.recursionSearch;
    }

    public final boolean getSaveToLocal() {
        return this.saveToLocal;
    }

    @NotNull
    public final SortBy getSortBy() {
        return this.sortBy;
    }

    public final void setAccountId(@Nullable String str) {
        this.accountId = str;
    }

    public final void setConditionGroup(@Nullable CBQueryArgs cBQueryArgs) {
        this.conditionGroup = cBQueryArgs;
    }

    public final void setCursor(@Nullable String str) {
        this.cursor = str;
    }

    public final void setFetchPolicy(int i) {
        this.fetchPolicy = i;
    }

    public final void setFilterParent(boolean z) {
        this.filterParent = z;
    }

    public final void setLimit(int i) {
        this.limit = i;
    }

    public final void setMimeType(@Nullable String str) {
        this.mimeType = str;
    }

    public final void setOffset(long j) {
        this.offset = j;
    }

    public final void setOrder(@NotNull SortOrder sortOrder) {
        Intrinsics.checkNotNullParameter(sortOrder, "<set-?>");
        this.order = sortOrder;
    }

    public final void setParentId(@Nullable String str) {
        this.parentId = str;
    }

    public final void setPrecisionSearch(boolean z) {
        this.precisionSearch = z;
    }

    public final void setProvider(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.provider = str;
    }

    public final void setQuery(@Nullable String str) {
        this.query = str;
    }

    public final void setQueryIdList(@Nullable List<String> list) {
        this.queryIdList = list;
    }

    public final void setRecursionSearch(boolean z) {
        this.recursionSearch = z;
    }

    public final void setSaveToLocal(boolean z) {
        this.saveToLocal = z;
    }

    public final void setSortBy(@NotNull SortBy sortBy) {
        Intrinsics.checkNotNullParameter(sortBy, "<set-?>");
        this.sortBy = sortBy;
    }
}
