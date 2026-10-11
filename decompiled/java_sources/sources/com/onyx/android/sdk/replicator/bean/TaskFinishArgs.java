package com.onyx.android.sdk.replicator.bean;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u000e\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0002R$\u0010\n\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00028\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR$\u0010\r\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00028\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\f\u0010\t\u001a\u0004\b\r\u0010\u000b¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/bean/TaskFinishArgs;", "", "", "post", "setPostProgress", "syncNext", "setSyncNext", "<set-?>", "a", Constants.HASIDCALL_INDEX_SIG, "isPostProgress", Constants.BOOLEAN_VALUE_SIG, "b", "isSyncNext", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class TaskFinishArgs {

    /* renamed from: a, reason: from kotlin metadata */
    public boolean isPostProgress;

    /* renamed from: b, reason: from kotlin metadata */
    public boolean isSyncNext;

    /* renamed from: isPostProgress, reason: from getter */
    public final boolean getIsPostProgress() {
        return this.isPostProgress;
    }

    /* renamed from: isSyncNext, reason: from getter */
    public final boolean getIsSyncNext() {
        return this.isSyncNext;
    }

    @NotNull
    public final TaskFinishArgs setPostProgress(boolean post) {
        this.isPostProgress = post;
        return this;
    }

    @NotNull
    public final TaskFinishArgs setSyncNext(boolean syncNext) {
        this.isSyncNext = syncNext;
        return this;
    }
}
