package com.onyx.android.sdk.universal.editor.events.app;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u001b\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0002\u0012\b\b\u0002\u0010\n\u001a\u00020\u0002¢\u0006\u0004\b\u000b\u0010\fR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\n\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\b\u0010\u0004\u001a\u0004\b\t\u0010\u0006¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/app/CloseDocumentEvent;", "", "", "a", Constants.HASIDCALL_INDEX_SIG, "getSave", Constants.BOOLEAN_VALUE_SIG, "save", "b", "getCleanContentView", "cleanContentView", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(ZZ)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class CloseDocumentEvent {

    /* renamed from: a, reason: from kotlin metadata */
    public final boolean save;

    /* renamed from: b, reason: from kotlin metadata */
    public final boolean cleanContentView;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public CloseDocumentEvent() {
        /*
            r3 = this;
            r0 = 3
            r1 = 0
            r2 = 0
            r3.<init>(r2, r2, r0, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.universal.editor.events.app.CloseDocumentEvent.<init>():void");
    }

    public final boolean getCleanContentView() {
        return this.cleanContentView;
    }

    public final boolean getSave() {
        return this.save;
    }

    public CloseDocumentEvent(boolean z, boolean z2) {
        this.save = z;
        this.cleanContentView = z2;
    }

    public /* synthetic */ CloseDocumentEvent(boolean z, boolean z2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? true : z, (i & 2) != 0 ? false : z2);
    }
}
