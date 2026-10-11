package com.onyx.android.sdk.replicator.note.bean;

import android.content.res.ColorStateList;
import com.blankj.utilcode.util.ColorUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.replicator.C7594R;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncTagModel;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\b\u0016¢\u0006\u0002\u0010\u0002B\u000f\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0001¢\u0006\u0002\u0010\u0004J\u0006\u0010\u000b\u001a\u00020\fJ\u0006\u0010\r\u001a\u00020\u000eR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\n¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;", "()V", "bean", "(Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;)V", "saved", "", "getSaved", Constants.BOOLEAN_VALUE_SIG, "setSaved", "(Z)V", "getIconColorStateList", "Landroid/content/res/ColorStateList;", "setNotSaved", "", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class NoteTagBean extends SyncTagModel {
    private boolean saved;

    public NoteTagBean() {
        this.saved = true;
    }

    @NotNull
    public final ColorStateList getIconColorStateList() {
        ColorStateList valueOf = ColorStateList.valueOf(ColorUtils.setAlphaComponent(getStyle().getColor(), ResManager.INSTANCE.getInteger(C7594R.integer.tree_tag_icon_alpha)));
        Intrinsics.checkNotNullExpressionValue(valueOf, "valueOf(...)");
        return valueOf;
    }

    public final boolean getSaved() {
        return this.saved;
    }

    public final void setNotSaved() {
        this.saved = false;
    }

    public final void setSaved(boolean z) {
        this.saved = z;
    }

    public NoteTagBean(@NotNull SyncTagModel bean) {
        Intrinsics.checkNotNullParameter(bean, "bean");
        this.saved = true;
        updateModelField(bean);
    }
}
