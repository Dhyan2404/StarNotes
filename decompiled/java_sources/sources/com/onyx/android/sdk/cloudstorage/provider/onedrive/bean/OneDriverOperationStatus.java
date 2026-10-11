package com.onyx.android.sdk.cloudstorage.provider.onedrive.bean;

import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0005R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001a\u0010\f\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\t\"\u0004\b\u0014\u0010\u000bR\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\t\"\u0004\b\u0017\u0010\u000b¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverOperationStatus;", "Ljava/io/Serializable;", "()V", "isComplete", "", Constants.BOOLEAN_VALUE_SIG, "operation", "", "getOperation", "()Ljava/lang/String;", "setOperation", "(Ljava/lang/String;)V", "percentageComplete", "", "getPercentageComplete", "()F", "setPercentageComplete", "(F)V", CouchFieldKey.KEY_RESOURCE_ID, "getResourceId", "setResourceId", "status", "getStatus", "setStatus", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class OneDriverOperationStatus implements Serializable {

    @Nullable
    private String operation;
    private float percentageComplete;

    @Nullable
    private String resourceId;

    @Nullable
    private String status;

    @Nullable
    public final String getOperation() {
        return this.operation;
    }

    public final float getPercentageComplete() {
        return this.percentageComplete;
    }

    @Nullable
    public final String getResourceId() {
        return this.resourceId;
    }

    @Nullable
    public final String getStatus() {
        return this.status;
    }

    public final boolean isComplete() {
        boolean equals$default;
        equals$default = StringsKt__StringsJVMKt.equals$default(this.status, OneDriverConstants.OPERATION_STATUS_COMPLETED, false, 2, null);
        return equals$default;
    }

    public final void setOperation(@Nullable String str) {
        this.operation = str;
    }

    public final void setPercentageComplete(float f) {
        this.percentageComplete = f;
    }

    public final void setResourceId(@Nullable String str) {
        this.resourceId = str;
    }

    public final void setStatus(@Nullable String str) {
        this.status = str;
    }
}
