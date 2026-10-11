package com.onyx.galaxy.note.editor.event;

import com.onyx.android.sdk.replicator.note.p035db.model.FontModel;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/event/InkFontItemSelectedEvent;", "", "Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;", "a", "Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;", "getModel", "()Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;", "model", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class InkFontItemSelectedEvent {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final FontModel model;

    public InkFontItemSelectedEvent(@NotNull FontModel model) {
        Intrinsics.checkNotNullParameter(model, "model");
        this.model = model;
    }

    @NotNull
    public final FontModel getModel() {
        return this.model;
    }
}
