package com.onyx.android.sdk.universal.editor.events.note;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\n\u0010\bR$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/note/BeforeChangePenArgsEvent;", "", "", "a", Constants.STRING_SIG, "getNextSelectId", "()Ljava/lang/String;", "setNextSelectId", "(Ljava/lang/String;)V", "nextSelectId", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class BeforeChangePenArgsEvent {

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public String nextSelectId;

    public BeforeChangePenArgsEvent(@Nullable String str) {
        this.nextSelectId = str;
    }

    @Nullable
    public final String getNextSelectId() {
        return this.nextSelectId;
    }

    public final void setNextSelectId(@Nullable String str) {
        this.nextSelectId = str;
    }
}
