package com.onyx.android.sdk.universal.editor.events.note;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/note/StartUniversalShapeDrawingEvent;", "", "", "a", Constants.HASIDCALL_INDEX_SIG, "getUserProvider", Constants.BOOLEAN_VALUE_SIG, "userProvider", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Z)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class StartUniversalShapeDrawingEvent {

    /* renamed from: a, reason: from kotlin metadata */
    public final boolean userProvider;

    public StartUniversalShapeDrawingEvent(boolean z) {
        this.userProvider = z;
    }

    public final boolean getUserProvider() {
        return this.userProvider;
    }
}
