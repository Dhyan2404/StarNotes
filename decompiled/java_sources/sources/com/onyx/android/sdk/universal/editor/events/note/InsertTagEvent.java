package com.onyx.android.sdk.universal.editor.events.note;

import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeTagBean;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\b\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\b\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u000e¢\u0006\u0004\b\u0014\u0010\u0015R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u0017\u0010\u0013\u001a\u00020\u000e8\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/note/InsertTagEvent;", "", "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;", "a", "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;", "getTagBean", "()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;", "tagBean", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "b", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "getStartPoint", "()Lcom/onyx/android/sdk/base/data/TouchPoint;", "startPoint", "", "c", Constants.HASIDCALL_INDEX_SIG, "getAutoSelect", Constants.BOOLEAN_VALUE_SIG, "autoSelect", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;Lcom/onyx/android/sdk/base/data/TouchPoint;Z)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class InsertTagEvent {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final ShapeTagBean tagBean;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final TouchPoint startPoint;

    /* renamed from: c, reason: from kotlin metadata */
    public final boolean autoSelect;

    public InsertTagEvent(@NotNull ShapeTagBean tagBean, @NotNull TouchPoint startPoint, boolean z) {
        Intrinsics.checkNotNullParameter(tagBean, "tagBean");
        Intrinsics.checkNotNullParameter(startPoint, "startPoint");
        this.tagBean = tagBean;
        this.startPoint = startPoint;
        this.autoSelect = z;
    }

    public final boolean getAutoSelect() {
        return this.autoSelect;
    }

    @NotNull
    public final TouchPoint getStartPoint() {
        return this.startPoint;
    }

    @NotNull
    public final ShapeTagBean getTagBean() {
        return this.tagBean;
    }

    public /* synthetic */ InsertTagEvent(ShapeTagBean shapeTagBean, TouchPoint touchPoint, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(shapeTagBean, touchPoint, (i & 4) != 0 ? false : z);
    }
}
