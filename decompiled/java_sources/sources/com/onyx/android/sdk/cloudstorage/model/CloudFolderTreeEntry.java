package com.onyx.android.sdk.cloudstorage.model;

import com.alibaba.fastjson2.annotation.JSONField;
import com.onyx.android.sdk.cloudstorage.model.common.TreeEntry;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\t\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00000\u0001B\t\b\u0016¢\u0006\u0004\b\u0017\u0010\u0018B\u0011\b\u0016\u0012\u0006\u0010\u0019\u001a\u00020\u0002¢\u0006\u0004\b\u0017\u0010\bR\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR(\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00000\t8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0014\u001a\u0004\u0018\u00010\u00118WX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0016\u001a\u0004\u0018\u00010\u00118WX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0013¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/model/CloudFolderTreeEntry;", "Lcom/onyx/android/sdk/cloudstorage/model/common/TreeEntry;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "entry", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "getEntry", "()Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "setEntry", "(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V", "", "a", "Ljava/util/List;", Constants.GET_CHILDREN, "()Ljava/util/List;", "setChildren", "(Ljava/util/List;)V", com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_CHILDREN_STRING, "", "getTitle", "()Ljava/lang/String;", "title", "getUniqueId", CouchFieldKey.KEY_UNIQUE_ID, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "cloudFile", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class CloudFolderTreeEntry implements TreeEntry<CloudFolderTreeEntry> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public List<CloudFolderTreeEntry> children;
    public CloudFileBean entry;

    public CloudFolderTreeEntry() {
        this.children = new ArrayList();
    }

    @Override // com.onyx.android.sdk.cloudstorage.model.common.TreeEntry
    @NotNull
    public List<CloudFolderTreeEntry> getChildren() {
        return this.children;
    }

    @NotNull
    public final CloudFileBean getEntry() {
        CloudFileBean cloudFileBean = this.entry;
        if (cloudFileBean != null) {
            return cloudFileBean;
        }
        Intrinsics.throwUninitializedPropertyAccessException("entry");
        return null;
    }

    @Override // com.onyx.android.sdk.cloudstorage.model.common.TreeEntry
    @JSONField(deserialize = false, serialize = false)
    @Nullable
    public String getTitle() {
        return getEntry().getName();
    }

    @Override // com.onyx.android.sdk.cloudstorage.model.common.TreeEntry
    @JSONField(deserialize = false, serialize = false)
    @Nullable
    public String getUniqueId() {
        return getEntry().getUniqueId();
    }

    public void setChildren(@NotNull List<CloudFolderTreeEntry> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.children = list;
    }

    public final void setEntry(@NotNull CloudFileBean cloudFileBean) {
        Intrinsics.checkNotNullParameter(cloudFileBean, "<set-?>");
        this.entry = cloudFileBean;
    }

    public CloudFolderTreeEntry(@NotNull CloudFileBean cloudFile) {
        Intrinsics.checkNotNullParameter(cloudFile, "cloudFile");
        this.children = new ArrayList();
        setEntry(cloudFile);
    }
}
