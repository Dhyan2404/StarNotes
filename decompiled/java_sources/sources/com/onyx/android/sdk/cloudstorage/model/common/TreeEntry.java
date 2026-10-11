package com.onyx.android.sdk.cloudstorage.model.common;

import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\bf\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002R\u001a\u0010\u0003\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0004X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\bX¦\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0014\u0010\u000b\u001a\u0004\u0018\u00010\bX¦\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\n¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/model/common/TreeEntry;", "T", "", Constants.ELEMNAME_CHILDREN_STRING, "", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.GET_CHILDREN, "()Ljava/util/List;", "title", "", "getTitle", "()Ljava/lang/String;", CouchFieldKey.KEY_UNIQUE_ID, "getUniqueId", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public interface TreeEntry<T> {
    @Nullable
    List<T> getChildren();

    @Nullable
    String getTitle();

    @Nullable
    String getUniqueId();
}
