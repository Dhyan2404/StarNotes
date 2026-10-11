package com.onyx.android.sdk.textbox.listener;

import android.R;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.textbox.C8002R;
import com.onyx.android.sdk.textbox.widget.RichEditor;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0017\u001a\u00020\u0015\u0012\u0006\u0010\u001b\u001a\u00020\u0018¢\u0006\u0004\b \u0010!J\u001c\u0010\u0007\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016J\u001a\u0010\b\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016J\u001c\u0010\u000b\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016J\u0012\u0010\r\u001a\u00020\f2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\"\u0010\u0012\u001a\u00020\f2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016J\u0010\u0010\u0014\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\u0002H\u0002R\u0016\u0010\u0017\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0016R\u0016\u0010\u001b\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001f\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001e¨\u0006\""}, m61528d2 = {"Lcom/onyx/android/sdk/textbox/listener/ActionModeCallbackWrapper;", "Landroid/view/ActionMode$Callback2;", "Landroid/view/ActionMode;", Constants.ATTRNAME_MODE, "Landroid/view/Menu;", "menu", "", "onCreateActionMode", "onPrepareActionMode", "Landroid/view/MenuItem;", "item", "onActionItemClicked", "", "onDestroyActionMode", "Landroid/view/View;", "view", "Landroid/graphics/Rect;", "outRect", "onGetContentRect", "actionMode", "a", "Lcom/onyx/android/sdk/textbox/widget/RichEditor;", "Lcom/onyx/android/sdk/textbox/widget/RichEditor;", "editor", "Landroid/view/ActionMode$Callback;", "b", "Landroid/view/ActionMode$Callback;", "callback", "", "c", "I", "actionModePadding", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/textbox/widget/RichEditor;Landroid/view/ActionMode$Callback;)V", "sdk-textbox_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ActionModeCallbackWrapper extends ActionMode.Callback2 {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public RichEditor editor;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public ActionMode.Callback callback;

    /* renamed from: c, reason: from kotlin metadata */
    public int actionModePadding;

    public ActionModeCallbackWrapper(@NotNull RichEditor editor, @NotNull ActionMode.Callback callback) {
        Intrinsics.checkNotNullParameter(editor, "editor");
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.editor = editor;
        this.callback = callback;
        this.actionModePadding = ResManager.INSTANCE.getDimens(C8002R.dimen.action_mode_top_padding);
    }

    /* renamed from: a */
    public final void m36153a(ActionMode actionMode) {
        Menu menu = actionMode.getMenu();
        String string = ResManager.INSTANCE.getString(R.string.paste_as_plain_text);
        int size = menu.size();
        for (int i = 0; i < size; i++) {
            MenuItem item = menu.getItem(i);
            if (TextUtils.equals(item.getTitle(), string)) {
                item.setVisible(false);
                return;
            }
        }
    }

    @Override // android.view.ActionMode.Callback
    public boolean onActionItemClicked(@Nullable ActionMode mode, @Nullable MenuItem item) {
        return this.callback.onActionItemClicked(mode, item);
    }

    @Override // android.view.ActionMode.Callback
    public boolean onCreateActionMode(@Nullable ActionMode mode, @Nullable Menu menu) {
        return this.callback.onCreateActionMode(mode, menu);
    }

    @Override // android.view.ActionMode.Callback
    public void onDestroyActionMode(@Nullable ActionMode mode) {
        this.editor.setMovable(true);
        this.callback.onDestroyActionMode(mode);
        this.editor.releaseActionMode();
    }

    @Override // android.view.ActionMode.Callback2
    public void onGetContentRect(@Nullable ActionMode mode, @NotNull View view, @NotNull Rect outRect) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(outRect, "outRect");
        ActionMode.Callback callback = this.callback;
        if (!(callback instanceof ActionMode.Callback2)) {
            super.onGetContentRect(mode, view, outRect);
            return;
        }
        Intrinsics.checkNotNull(callback, "null cannot be cast to non-null type android.view.ActionMode.Callback2");
        ((ActionMode.Callback2) callback).onGetContentRect(mode, view, outRect);
        outRect.set(outRect.left, (outRect.top + view.getTop()) - this.actionModePadding, outRect.right, outRect.bottom);
    }

    @Override // android.view.ActionMode.Callback
    public boolean onPrepareActionMode(@NotNull ActionMode mode, @Nullable Menu menu) {
        Intrinsics.checkNotNullParameter(mode, "mode");
        this.editor.setMovable(false);
        boolean onPrepareActionMode = this.callback.onPrepareActionMode(mode, menu);
        m36153a(mode);
        return onPrepareActionMode;
    }
}
