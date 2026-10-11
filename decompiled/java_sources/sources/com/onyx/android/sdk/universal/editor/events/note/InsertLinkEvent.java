package com.onyx.android.sdk.universal.editor.events.note;

import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeLinkBean;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\b¢\u0006\u0004\b\u000e\u0010\u000fR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/note/InsertLinkEvent;", "", "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;", "a", "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;", "getLinkBean", "()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;", "linkBean", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "b", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "getStartPoint", "()Lcom/onyx/android/sdk/base/data/TouchPoint;", "startPoint", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;Lcom/onyx/android/sdk/base/data/TouchPoint;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class InsertLinkEvent {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final ShapeLinkBean linkBean;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final TouchPoint startPoint;

    public InsertLinkEvent(@NotNull ShapeLinkBean linkBean, @NotNull TouchPoint startPoint) {
        Intrinsics.checkNotNullParameter(linkBean, "linkBean");
        Intrinsics.checkNotNullParameter(startPoint, "startPoint");
        this.linkBean = linkBean;
        this.startPoint = startPoint;
    }

    @NotNull
    public final ShapeLinkBean getLinkBean() {
        return this.linkBean;
    }

    @NotNull
    public final TouchPoint getStartPoint() {
        return this.startPoint;
    }
}
