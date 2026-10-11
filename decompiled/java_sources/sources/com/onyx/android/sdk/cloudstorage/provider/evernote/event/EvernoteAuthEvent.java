package com.onyx.android.sdk.cloudstorage.provider.evernote.event;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\t\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0002¢\u0006\u0004\b\n\u0010\bR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/evernote/event/EvernoteAuthEvent;", "", "", "a", Constants.HASIDCALL_INDEX_SIG, "getSuccess", Constants.BOOLEAN_VALUE_SIG, "setSuccess", "(Z)V", FirebaseAnalytics.Param.SUCCESS, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class EvernoteAuthEvent {

    /* renamed from: a, reason: from kotlin metadata */
    public boolean success;

    public EvernoteAuthEvent(boolean z) {
        this.success = z;
    }

    public final boolean getSuccess() {
        return this.success;
    }

    public final void setSuccess(boolean z) {
        this.success = z;
    }
}
