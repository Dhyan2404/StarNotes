package com.onyx.android.sdk.textbox.listener;

import android.R;
import android.graphics.Rect;
import android.view.ActionMode;
import android.view.GestureDetector;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.inputmethod.InputConnection;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.textbox.C8002R;
import com.onyx.android.sdk.textbox.data.TransformType;
import com.onyx.android.sdk.textbox.widget.RichEditor;
import com.onyx.android.sdk.textbox.widget.TextBoxView;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0015\u001a\u00020\u0013¢\u0006\u0004\b \u0010!J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J*\u0010\r\u001a\u00020\u00062\b\u0010\b\u001a\u0004\u0018\u00010\u00022\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\nH\u0016J\u0010\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0006\u0010\u000f\u001a\u00020\u0004J\u000e\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002J\b\u0010\u0012\u001a\u00020\u0011H\u0002R\u0016\u0010\u0015\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0003\u0010\u0014R\u001b\u0010\u001b\u001a\u00020\u00168BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001e¨\u0006\""}, m61528d2 = {"Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener;", "Landroid/view/GestureDetector$SimpleOnGestureListener;", "Landroid/view/MotionEvent;", "e", "", "onLongPress", "", "onDown", "e1", "e2", "", "distanceX", "distanceY", "onScroll", "onSingleTapUp", "destroyActionMode", "onFinish", "Landroid/view/ActionMode$Callback;", "a", "Lcom/onyx/android/sdk/textbox/widget/RichEditor;", "Lcom/onyx/android/sdk/textbox/widget/RichEditor;", "richEditor", "Lcom/onyx/android/sdk/textbox/widget/TextBoxView;", C6997f.f39671c, "Lkotlin/Lazy;", "b", "()Lcom/onyx/android/sdk/textbox/widget/TextBoxView;", "textBoxView", "Landroid/view/ActionMode;", C6998g.f39679a, "Landroid/view/ActionMode;", "actionMode", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/textbox/widget/RichEditor;)V", "sdk-textbox_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class RichEditorGestureListener extends GestureDetector.SimpleOnGestureListener {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public RichEditor richEditor;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final Lazy textBoxView;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public ActionMode actionMode;

    public RichEditorGestureListener(@NotNull RichEditor richEditor) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(richEditor, "richEditor");
        this.richEditor = richEditor;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<TextBoxView>() { // from class: com.onyx.android.sdk.textbox.listener.RichEditorGestureListener$textBoxView$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final TextBoxView invoke() {
                RichEditor richEditor2;
                richEditor2 = RichEditorGestureListener.this.richEditor;
                ViewParent findParent = ViewKt.findParent(richEditor2, TextBoxView.class);
                Intrinsics.checkNotNull(findParent, "null cannot be cast to non-null type com.onyx.android.sdk.textbox.widget.TextBoxView");
                return (TextBoxView) findParent;
            }
        });
        this.textBoxView = lazy;
    }

    /* renamed from: a */
    public final ActionMode.Callback m36155a() {
        return new ActionMode.Callback2() { // from class: com.onyx.android.sdk.textbox.listener.RichEditorGestureListener$getActionModeCallback$1
            @Override // android.view.ActionMode.Callback
            public boolean onActionItemClicked(@NotNull ActionMode mode, @NotNull MenuItem item) {
                RichEditor richEditor;
                Intrinsics.checkNotNullParameter(mode, "mode");
                Intrinsics.checkNotNullParameter(item, "item");
                if (item.getItemId() == C8002R.id.item_action_paste) {
                    richEditor = RichEditorGestureListener.this.richEditor;
                    InputConnection inputConnection = richEditor.getInputConnection();
                    if (inputConnection != null) {
                        inputConnection.performContextMenuAction(R.id.paste);
                    }
                }
                RichEditorGestureListener.this.destroyActionMode();
                return true;
            }

            @Override // android.view.ActionMode.Callback
            public boolean onCreateActionMode(@NotNull ActionMode mode, @NotNull Menu menu) {
                Intrinsics.checkNotNullParameter(mode, "mode");
                Intrinsics.checkNotNullParameter(menu, "menu");
                mode.getMenuInflater().inflate(C8002R.menu.menu, menu);
                return true;
            }

            @Override // android.view.ActionMode.Callback
            public void onDestroyActionMode(@NotNull ActionMode mode) {
                Intrinsics.checkNotNullParameter(mode, "mode");
                RichEditorGestureListener.this.actionMode = null;
            }

            @Override // android.view.ActionMode.Callback2
            public void onGetContentRect(@NotNull ActionMode mode, @NotNull View view, @NotNull Rect outRect) {
                RichEditor richEditor;
                Intrinsics.checkNotNullParameter(mode, "mode");
                Intrinsics.checkNotNullParameter(view, "view");
                Intrinsics.checkNotNullParameter(outRect, "outRect");
                richEditor = RichEditorGestureListener.this.richEditor;
                if (richEditor.isVertical()) {
                    outRect.set(0, 0, 0, view.getHeight() * 2);
                } else {
                    outRect.set(0, 0, 0, 0);
                }
            }

            @Override // android.view.ActionMode.Callback
            public boolean onPrepareActionMode(@NotNull ActionMode mode, @NotNull Menu menu) {
                Intrinsics.checkNotNullParameter(mode, "mode");
                Intrinsics.checkNotNullParameter(menu, "menu");
                return false;
            }
        };
    }

    /* renamed from: b */
    public final TextBoxView m36156b() {
        return (TextBoxView) this.textBoxView.getValue();
    }

    public final void destroyActionMode() {
        ActionMode actionMode = this.actionMode;
        if (actionMode != null) {
            Intrinsics.checkNotNull(actionMode);
            actionMode.finish();
            this.actionMode = null;
        }
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onDown(@NotNull MotionEvent e) {
        Intrinsics.checkNotNullParameter(e, "e");
        Debug.INSTANCE.m32059w(RichEditorGestureListener.class, "editor on down: " + m36156b().isTextBoxMovable(), new Object[0]);
        m36156b().handleTouch(this.richEditor, e, TransformType.TRANSLATE);
        destroyActionMode();
        return false;
    }

    public final boolean onFinish(@NotNull MotionEvent e) {
        Intrinsics.checkNotNullParameter(e, "e");
        if (e.getAction() != 1 && e.getAction() != 3) {
            return false;
        }
        m36156b().handleTouch(this.richEditor, e, TransformType.TRANSLATE);
        return false;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public void onLongPress(@NotNull MotionEvent e) {
        Intrinsics.checkNotNullParameter(e, "e");
        m36156b().setTextBoxMovable(false);
        if (StringUtils.isBlank(this.richEditor.getMContents())) {
            this.actionMode = this.richEditor.startActionMode(m36155a(), 1);
        }
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onScroll(@Nullable MotionEvent e1, @NotNull MotionEvent e2, float distanceX, float distanceY) {
        Intrinsics.checkNotNullParameter(e2, "e2");
        m36156b().handleTouch(this.richEditor, e2, TransformType.TRANSLATE);
        return false;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onSingleTapUp(@NotNull MotionEvent e) {
        Intrinsics.checkNotNullParameter(e, "e");
        if (m36156b().isReadOnly()) {
            m36156b().enterEditingMode();
            return false;
        }
        m36156b().handleTouch(this.richEditor, e, TransformType.TRANSLATE);
        return false;
    }
}
