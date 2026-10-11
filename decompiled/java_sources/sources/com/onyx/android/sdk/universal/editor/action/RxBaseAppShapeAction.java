package com.onyx.android.sdk.universal.editor.action;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\b&\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u0003B\u000f\u0012\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000fR\"\u0010\u000b\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\n¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppShapeAction;", "", "T", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", C6999h.f39688c, Constants.HASIDCALL_INDEX_SIG, "getPostShapeChangedEvent", Constants.BOOLEAN_VALUE_SIG, "setPostShapeChangedEvent", "(Z)V", "postShapeChangedEvent", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public abstract class RxBaseAppShapeAction<T> extends RxBaseAppAction<T> {

    /* renamed from: h, reason: from kotlin metadata */
    public boolean postShapeChangedEvent;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RxBaseAppShapeAction(@NotNull EditorBundle editorBundle) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.postShapeChangedEvent = true;
    }

    public final boolean getPostShapeChangedEvent() {
        return this.postShapeChangedEvent;
    }

    public final void setPostShapeChangedEvent(boolean z) {
        this.postShapeChangedEvent = z;
    }
}
