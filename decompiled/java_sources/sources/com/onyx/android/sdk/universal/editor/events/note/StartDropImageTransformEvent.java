package com.onyx.android.sdk.universal.editor.events.note;

import com.onyx.android.sdk.note.common.data.shape.ShapeTransformBean;
import com.onyx.android.sdk.universal.editor.config.EditorConstants;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\b¢\u0006\u0004\b\u000e\u0010\u000fR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/note/StartDropImageTransformEvent;", "", "", "a", Constants.STRING_SIG, "getDocId", "()Ljava/lang/String;", EditorConstants.ARGS_DOC_ID, "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;", "b", "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;", "getTransformBean", "()Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;", "transformBean", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class StartDropImageTransformEvent {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final String docId;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final ShapeTransformBean transformBean;

    public StartDropImageTransformEvent(@NotNull String docId, @NotNull ShapeTransformBean transformBean) {
        Intrinsics.checkNotNullParameter(docId, "docId");
        Intrinsics.checkNotNullParameter(transformBean, "transformBean");
        this.docId = docId;
        this.transformBean = transformBean;
    }

    @NotNull
    public final String getDocId() {
        return this.docId;
    }

    @NotNull
    public final ShapeTransformBean getTransformBean() {
        return this.transformBean;
    }
}
