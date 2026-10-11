package com.onyx.android.sdk.data;

import com.alibaba.fastjson2.annotation.JSONCreator;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.couchbase.base.BaseReplicatorModel;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u0000 \r2\u00020\u0001:\u0001\rB\u0007\b\u0017¢\u0006\u0002\u0010\u0002B\u0017\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\b\u0010\u000b\u001a\u00020\fH\u0016R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\b\"\u0004\b\t\u0010\n¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/data/OnyxNoteRecordModel;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;", "()V", "noteId", "", OnyxNoteRecordModel.KEY_IS_UPLOADED, "", "(Ljava/lang/String;Z)V", Constants.BOOLEAN_VALUE_SIG, "setUploaded", "(Z)V", "beforeSave", "", "Companion", "sdk-statistics_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class OnyxNoteRecordModel extends BaseReplicatorModel {

    @NotNull
    public static final String KEY_IS_UPLOADED = "isUploaded";
    private boolean isUploaded;

    @JSONCreator
    public OnyxNoteRecordModel() {
    }

    @Override // com.onyx.android.sdk.data.couchbase.base.BaseReplicatorModel
    public void beforeSave() {
        super.beforeSave();
        setUser(AccountDataBundle.INSTANCE.getSyncUserId());
    }

    /* renamed from: isUploaded, reason: from getter */
    public final boolean getIsUploaded() {
        return this.isUploaded;
    }

    public final void setUploaded(boolean z) {
        this.isUploaded = z;
    }

    public OnyxNoteRecordModel(@NotNull String noteId, boolean z) {
        Intrinsics.checkNotNullParameter(noteId, "noteId");
        setUniqueId(noteId);
        this.isUploaded = z;
    }
}
