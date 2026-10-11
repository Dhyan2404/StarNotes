package com.onyx.galaxy.note.editor.view.popup;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.onyx.galaxy.note.common.view.BasePopupWindow;
import com.onyx.galaxy.note.databinding.PopupTextSizeSpaceBinding;
import com.onyx.galaxy.note.editor.view.adapter.TextSizeSpaceAdapter;
import com.onyx.galaxy.note.editor.view.toolbar.DockType;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010\u000f\u001a\u00020\f¢\u0006\u0004\b\u001f\u0010 J\u0014\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002J\u0016\u0010\t\u001a\u00020\u00002\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0007J\u0006\u0010\n\u001a\u00020\u0005J\b\u0010\u000b\u001a\u00020\u0005H\u0002R\u0014\u0010\u000f\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u001c\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u001b\u0010\u001c\u001a\u00020\u00178FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b¨\u0006!"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/TextSizeSpacePopup;", "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;", "", "", "list", "", "setData", "Lcom/chad/library/adapter4/BaseQuickAdapter$OnItemClickListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "setOnItemClickListener", "show", C4921e.f26537n, "Landroid/view/View;", "q", "Landroid/view/View;", "anchorView", "", "r", "Ljava/util/List;", "Lcom/onyx/galaxy/note/editor/view/adapter/TextSizeSpaceAdapter;", "s", "Lcom/onyx/galaxy/note/editor/view/adapter/TextSizeSpaceAdapter;", "listAdapter", "Lcom/onyx/galaxy/note/databinding/PopupTextSizeSpaceBinding;", "t", "Lkotlin/Lazy;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/PopupTextSizeSpaceBinding;", "binding", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Landroid/view/View;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class TextSizeSpacePopup extends BasePopupWindow {

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public final View anchorView;

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public List<String> list;

    /* renamed from: s, reason: from kotlin metadata */
    @Nullable
    public TextSizeSpaceAdapter listAdapter;

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TextSizeSpacePopup(@NotNull final Context context, @NotNull View anchorView) {
        super(context, DockType.TOP);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(anchorView, "anchorView");
        this.anchorView = anchorView;
        this.list = new ArrayList();
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<PopupTextSizeSpaceBinding>() { // from class: com.onyx.galaxy.note.editor.view.popup.TextSizeSpacePopup$binding$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PopupTextSizeSpaceBinding invoke() {
                return PopupTextSizeSpaceBinding.inflate(LayoutInflater.from(context));
            }
        });
        this.binding = lazy;
        View root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
        setInputMethodMode(2);
        setFocusable(true);
        m49681k();
    }

    @NotNull
    public final PopupTextSizeSpaceBinding getBinding() {
        return (PopupTextSizeSpaceBinding) this.binding.getValue();
    }

    /* renamed from: k */
    public final void m49681k() {
        getBinding().list.setLayoutManager(new LinearLayoutManager(getContext()));
        this.listAdapter = new TextSizeSpaceAdapter();
        getBinding().list.setAdapter(this.listAdapter);
    }

    public final void setData(@NotNull List<String> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        this.list.clear();
        this.list.addAll(list);
    }

    @NotNull
    public final TextSizeSpacePopup setOnItemClickListener(@Nullable BaseQuickAdapter.OnItemClickListener<String> listener) {
        TextSizeSpaceAdapter textSizeSpaceAdapter = this.listAdapter;
        if (textSizeSpaceAdapter != null) {
            textSizeSpaceAdapter.setOnItemClickListener(listener);
        }
        TextSizeSpaceAdapter textSizeSpaceAdapter2 = this.listAdapter;
        if (textSizeSpaceAdapter2 != null) {
            textSizeSpaceAdapter2.submitList(this.list);
        }
        return this;
    }

    public final void show() {
        super.show(this.anchorView);
    }
}
