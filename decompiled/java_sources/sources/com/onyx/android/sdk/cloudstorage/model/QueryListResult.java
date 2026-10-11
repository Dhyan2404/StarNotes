package com.onyx.android.sdk.cloudstorage.model;

import com.alibaba.fastjson2.annotation.JSONField;
import com.onyx.android.sdk.data.common.data.ResultCode;
import com.onyx.android.sdk.data.common.exception.ContentException;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0016\u0018\u0000 (*\u0004\b\u0000\u0010\u00012\u00020\u0002:\u0001(B\u0005¢\u0006\u0002\u0010\u0003J\u0015\u0010 \u001a\u00020!2\b\u0010\"\u001a\u0004\u0018\u00018\u0000¢\u0006\u0002\u0010#J\u000e\u0010$\u001a\b\u0012\u0004\u0012\u00028\u00000\u001bH\u0007J\n\u0010%\u001a\u0004\u0018\u00010&H\u0016J\b\u0010'\u001a\u00020\u0017H\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u0011\u0010\u0016\u001a\u00020\u00178G¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0018R\u0011\u0010\u0019\u001a\u00020\u00178G¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u0018R&\u0010\u001a\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u001b8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001f¨\u0006)"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;", "T", "Lcom/onyx/android/sdk/data/common/data/ResultCode;", "()V", "count", "", "getCount", "()J", "setCount", "(J)V", "cursor", "", "getCursor", "()Ljava/lang/String;", "setCursor", "(Ljava/lang/String;)V", "fetchSource", "", "getFetchSource", "()I", "setFetchSource", "(I)V", "isContentEmpty", "", Constants.BOOLEAN_VALUE_SIG, "isFetchFromCloud", "list", "", "getList", "()Ljava/util/List;", "setList", "(Ljava/util/List;)V", "add", "", "t", "(Ljava/lang/Object;)V", "ensureList", "getException", "Lcom/onyx/android/sdk/data/common/exception/ContentException;", "hasException", "Companion", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public class QueryListResult<T> extends ResultCode {
    public static final int CLOUD = 1;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    private long count;

    @Nullable
    private String cursor;
    private int fetchSource;

    @JSONField(alternateNames = {"results"})
    @Nullable
    private List<T> list;

    @Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0014\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0002\b\u0003\u0018\u00010\bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult$Companion;", "", "()V", "CLOUD", "", "isValidQueryResult", "", com.sun.org.apache.xalan.internal.templates.Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean isValidQueryResult(@Nullable QueryListResult<?> result) {
            return (result == null || result.isContentEmpty()) ? false : true;
        }

        public Companion() {
        }
    }

    public final void add(@Nullable T t) {
        if (t == null) {
            return;
        }
        List<T> ensureList = ensureList();
        this.list = ensureList;
        Intrinsics.checkNotNull(ensureList);
        ensureList.add(t);
    }

    @JSONField(deserialize = false, serialize = false)
    @NotNull
    public final List<T> ensureList() {
        if (this.list == null) {
            this.list = new ArrayList();
        }
        List<T> list = this.list;
        Intrinsics.checkNotNull(list);
        return list;
    }

    public final long getCount() {
        return this.count;
    }

    @Nullable
    public final String getCursor() {
        return this.cursor;
    }

    @Nullable
    public ContentException getException() {
        if (hasException()) {
            return ContentException.INSTANCE.exceptionFromCode(getCode(), getMessage());
        }
        return null;
    }

    public final int getFetchSource() {
        return this.fetchSource;
    }

    @Nullable
    public final List<T> getList() {
        return this.list;
    }

    public boolean hasException() {
        return getCode() != 0;
    }

    @JSONField(deserialize = false, serialize = false)
    public final boolean isContentEmpty() {
        if (this.count > 0) {
            List<T> list = this.list;
            Intrinsics.checkNotNull(list);
            if (!list.isEmpty()) {
                return false;
            }
        }
        return true;
    }

    @JSONField(deserialize = false, serialize = false)
    public final boolean isFetchFromCloud() {
        return this.fetchSource == 1;
    }

    public final void setCount(long j) {
        this.count = j;
    }

    public final void setCursor(@Nullable String str) {
        this.cursor = str;
    }

    public final void setFetchSource(int i) {
        this.fetchSource = i;
    }

    public final void setList(@Nullable List<T> list) {
        this.list = list;
    }
}
