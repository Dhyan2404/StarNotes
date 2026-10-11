package com.onyx.android.sdk.replicator.fts.model;

import com.onyx.android.sdk.data.couchbase.base.BaseReplicatorModel;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.Serializable;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0010\u001a\u00020\u0011H\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/fts/model/FTSDocTaskModel;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;", "Ljava/io/Serializable;", "()V", "indexed", "", "getIndexed", Constants.BOOLEAN_VALUE_SIG, "setIndexed", "(Z)V", "priority", "", "getPriority", "()I", "setPriority", "(I)V", "toString", "", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class FTSDocTaskModel extends BaseReplicatorModel implements Serializable {
    private boolean indexed;
    private int priority;

    public final boolean getIndexed() {
        return this.indexed;
    }

    public final int getPriority() {
        return this.priority;
    }

    public final void setIndexed(boolean z) {
        this.indexed = z;
    }

    public final void setPriority(int i) {
        this.priority = i;
    }

    @NotNull
    public String toString() {
        return this.indexed + ' ' + getUniqueId();
    }
}
