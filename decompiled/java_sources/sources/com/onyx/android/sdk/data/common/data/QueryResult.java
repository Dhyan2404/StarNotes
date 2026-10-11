package com.onyx.android.sdk.data.common.data;

import com.alibaba.fastjson2.annotation.JSONField;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.data.common.exception.ContentException;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0003\u0018\u0000 &*\u0004\b\u0000\u0010\u00012\u00020\u0002:\u0001&B\u0005¢\u0006\u0002\u0010\u0003J\u0015\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00018\u0000¢\u0006\u0002\u0010\u001fJ\u0014\u0010 \u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010!\u001a\u00020\u0011J\f\u0010\"\u001a\b\u0012\u0004\u0012\u00028\u00000\u0017J\b\u0010#\u001a\u00020$H\u0007J\b\u0010%\u001a\u00020$H\u0007R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR \u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R&\u0010\u0016\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00178\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001b¨\u0006'"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/data/QueryResult;", "T", "Ljava/io/Serializable;", "()V", "count", "", "getCount", "()J", "setCount", "(J)V", "exception", "Lcom/onyx/android/sdk/data/common/exception/ContentException;", "getException", "()Lcom/onyx/android/sdk/data/common/exception/ContentException;", "setException", "(Lcom/onyx/android/sdk/data/common/exception/ContentException;)V", "fetchSource", "", "getFetchSource", "()I", "setFetchSource", "(I)V", "list", "", "getList", "()Ljava/util/List;", "setList", "(Ljava/util/List;)V", "add", "", "t", "(Ljava/lang/Object;)V", "copy", "limit", "ensureList", "hasException", "", "isContentEmpty", "Companion", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nQueryResult.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QueryResult.kt\ncom/onyx/android/sdk/data/common/data/QueryResult\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,65:1\n1#2:66\n*E\n"})
/* loaded from: classes7.dex */
public final class QueryResult<T> implements Serializable {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    private long count;

    @JSONField(deserialize = false, serialize = false)
    @Nullable
    private ContentException exception;
    private int fetchSource;

    @JSONField(alternateNames = {"results"})
    @Nullable
    private List<T> list;

    @Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001c\u0010\u0003\u001a\u00020\u0004\"\u0004\b\u0001\u0010\u00052\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u0002H\u0005\u0018\u00010\u0007¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/data/QueryResult$Companion;", "", "()V", "isValidQueryResult", "", "T", Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, "Lcom/onyx/android/sdk/data/common/data/QueryResult;", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final <T> boolean isValidQueryResult(@Nullable QueryResult<T> result) {
            if (result == null) {
                return false;
            }
            return !result.isContentEmpty();
        }

        private Companion() {
        }
    }

    public final void add(@Nullable T t) {
        if (t != null) {
            ensureList().add(t);
        }
    }

    @NotNull
    public final QueryResult<T> copy(int limit) {
        QueryResult<T> queryResult = new QueryResult<>();
        queryResult.count = this.count;
        queryResult.fetchSource = this.fetchSource;
        queryResult.list = new ArrayList();
        for (int i = 0; i < CollectionKt.getSize(this.list) && i < limit; i++) {
            CollectionKt.safeAdd(queryResult.list, CollectionKt.getElement(this.list, i));
        }
        return queryResult;
    }

    @NotNull
    public final List<T> ensureList() {
        List<T> mutableList;
        List<T> list = this.list;
        if (list == null) {
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) CollectionKt.ensureList(list));
            this.list = mutableList;
        }
        List<T> list2 = this.list;
        Intrinsics.checkNotNull(list2);
        return list2;
    }

    public final long getCount() {
        return this.count;
    }

    @Nullable
    public final ContentException getException() {
        return this.exception;
    }

    public final int getFetchSource() {
        return this.fetchSource;
    }

    @Nullable
    public final List<T> getList() {
        return this.list;
    }

    @JSONField(deserialize = false, serialize = false)
    public final boolean hasException() {
        return this.exception != null;
    }

    @JSONField(deserialize = false, serialize = false)
    public final boolean isContentEmpty() {
        return this.count <= 0 || CollectionKt.isNullOrEmpty(this.list);
    }

    public final void setCount(long j) {
        this.count = j;
    }

    public final void setException(@Nullable ContentException contentException) {
        this.exception = contentException;
    }

    public final void setFetchSource(int i) {
        this.fetchSource = i;
    }

    public final void setList(@Nullable List<T> list) {
        this.list = list;
    }
}
