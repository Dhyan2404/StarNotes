package com.onyx.android.sdk.cloudstorage.provider.dropbox.event;

import com.dropbox.core.oauth.DbxCredential;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\n\u0010\bR$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/event/DropBoxCredentialEvent;", "", "Lcom/dropbox/core/oauth/DbxCredential;", "a", "Lcom/dropbox/core/oauth/DbxCredential;", "getCredential", "()Lcom/dropbox/core/oauth/DbxCredential;", "setCredential", "(Lcom/dropbox/core/oauth/DbxCredential;)V", "credential", Constants.CONSTRUCTOR_NAME, "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class DropBoxCredentialEvent {

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public DbxCredential credential;

    public DropBoxCredentialEvent(@Nullable DbxCredential dbxCredential) {
        this.credential = dbxCredential;
    }

    @Nullable
    public final DbxCredential getCredential() {
        return this.credential;
    }

    public final void setCredential(@Nullable DbxCredential dbxCredential) {
        this.credential = dbxCredential;
    }
}
