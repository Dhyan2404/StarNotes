package com.onyx.galaxy.note.editor.view.popup;

import android.util.Size;
import android.view.View;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.onyx.android.sdk.replicator.note.bean.SizeFormat;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.galaxy.note.common.view.BasePopupWindow;
import com.onyx.galaxy.note.databinding.PopupMarginSizeBinding;
import com.onyx.galaxy.note.editor.view.adapter.PageMarginSizeAdapter;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.h6m;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0017\u001a\u00020\u0010\u0012\u0006\u0010\u001d\u001a\u00020\u0018\u0012\f\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00060\u001e¢\u0006\u0004\b,\u0010-J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u001c\u0010\t\u001a\u00020\u00002\u0014\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0005J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\nJ\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u0002J\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\nJ\u0006\u0010\u000f\u001a\u00020\u0007R\"\u0010\u0017\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u0017\u0010\u001d\u001a\u00020\u00188\u0006¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR\u001a\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00060\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0014\u0010%\u001a\u00020\"8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010$R\u0014\u0010)\u001a\u00020&8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010(R$\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010+¨\u0006."}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/PageMarginSizePopup;", "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;", "", "size", "setTextSize", "Lkotlin/Function1;", "Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;", "", "callback", "setCallback", "Landroid/util/Size;", "setMinSelectSize", h6m.f71884i, "setMaxSelectSizeTimes", "setCurrentSize", "refresh", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "q", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "setEditorBundle", "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "editorBundle", "Landroid/view/View;", "r", "Landroid/view/View;", "getAnchorView", "()Landroid/view/View;", "anchorView", "", "s", "Ljava/util/List;", "list", "Lcom/onyx/galaxy/note/databinding/PopupMarginSizeBinding;", "t", "Lcom/onyx/galaxy/note/databinding/PopupMarginSizeBinding;", "binding", "Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginSizeAdapter;", "u", "Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginSizeAdapter;", "adapter", "v", "Lkotlin/jvm/functions/Function1;", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/view/View;Ljava/util/List;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nPageMarginSizePopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PageMarginSizePopup.kt\ncom/onyx/galaxy/note/editor/view/popup/PageMarginSizePopup\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,91:1\n1#2:92\n*E\n"})
/* loaded from: classes9.dex */
public final class PageMarginSizePopup extends BasePopupWindow {

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public EditorBundle editorBundle;

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final View anchorView;

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public final List<SizeFormat> list;

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public final PopupMarginSizeBinding binding;

    /* renamed from: u, reason: from kotlin metadata */
    @NotNull
    public final PageMarginSizeAdapter adapter;

    /* renamed from: v, reason: from kotlin metadata */
    @Nullable
    public Function1<? super SizeFormat, Unit> callback;

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public PageMarginSizePopup(@org.jetbrains.annotations.NotNull com.onyx.android.sdk.universal.editor.EditorBundle r5, @org.jetbrains.annotations.NotNull android.view.View r6, @org.jetbrains.annotations.NotNull java.util.List<? extends com.onyx.android.sdk.replicator.note.bean.SizeFormat> r7) {
        /*
            r4 = this;
            java.lang.String r0 = "editorBundle"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            java.lang.String r0 = "anchorView"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
            java.lang.String r0 = "list"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r0)
            android.content.Context r0 = r6.getContext()
            java.lang.String r1 = "getContext(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            r1 = 0
            r2 = 2
            r4.<init>(r0, r1, r2, r1)
            r4.editorBundle = r5
            r4.anchorView = r6
            r4.list = r7
            android.content.Context r5 = r4.getContext()
            android.view.LayoutInflater r5 = android.view.LayoutInflater.from(r5)
            com.onyx.galaxy.note.databinding.PopupMarginSizeBinding r5 = com.onyx.galaxy.note.databinding.PopupMarginSizeBinding.inflate(r5)
            java.lang.String r6 = "inflate(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r6)
            r4.binding = r5
            com.onyx.galaxy.note.editor.view.adapter.PageMarginSizeAdapter r6 = new com.onyx.galaxy.note.editor.view.adapter.PageMarginSizeAdapter
            com.onyx.android.sdk.universal.editor.EditorBundle r7 = r4.editorBundle
            r6.<init>(r7)
            r4.adapter = r6
            android.view.View r7 = r5.getRoot()
            java.lang.String r0 = "getRoot(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r7, r0)
            r4.setContentView(r7)
            com.onyx.android.sdk.theme.widgets.TintRecycleView r5 = r5.rvSize
            java.lang.String r7 = "rvSize"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r7)
            r7 = -2
            r4.setWidth(r7)
            r4.setHeight(r7)
            androidx.recyclerview.widget.LinearLayoutManager r7 = new androidx.recyclerview.widget.LinearLayoutManager
            android.content.Context r0 = r4.getContext()
            r1 = 1
            r2 = 0
            r7.<init>(r0, r1, r2)
            r5.setLayoutManager(r7)
            com.google.android.material.divider.MaterialDividerItemDecoration r7 = new com.google.android.material.divider.MaterialDividerItemDecoration
            android.content.Context r0 = r4.getContext()
            r7.<init>(r0, r1)
            com.onyx.android.sdk.base.utils.ResManager r0 = com.onyx.android.sdk.base.utils.ResManager.INSTANCE
            int r3 = com.onyx.galaxy.note.C10651R.color.page_margin_size_divider
            int r3 = r0.getColor(r3)
            r7.setDividerColor(r3)
            int r3 = com.onyx.android.sdk.device.C7384R.dimen.dp_10
            int r3 = r0.getDimensionPixelSize(r3)
            r7.setDividerInsetStart(r3)
            int r3 = com.onyx.android.sdk.device.C7384R.dimen.dp_10
            int r3 = r0.getDimensionPixelSize(r3)
            r7.setDividerInsetEnd(r3)
            r7.setLastItemDecorated(r2)
            int r2 = com.onyx.android.sdk.device.C7384R.dimen.dp_0_4
            int r0 = r0.getDimensionPixelSize(r2)
            r7.setDividerThickness(r0)
            r5.addItemDecoration(r7)
            r5.setAdapter(r6)
            com.sunia.HTREnginev2.ysk r5 = new com.sunia.HTREnginev2.ysk
            r5.<init>()
            r6.setOnItemClickListener(r5)
            r4.setOutsideTouchable(r1)
            int r5 = com.onyx.galaxy.note.C10651R.style.popupWindowAnimation
            r4.setAnimationStyle(r5)
            r4.refresh()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.editor.view.popup.PageMarginSizePopup.<init>(com.onyx.android.sdk.universal.editor.EditorBundle, android.view.View, java.util.List):void");
    }

    /* renamed from: l */
    public static final void m49123l(PageMarginSizePopup this$0, BaseQuickAdapter adapter, View view, int i) {
        Function1<? super SizeFormat, Unit> function1;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        SizeFormat sizeFormat = (SizeFormat) adapter.getItem(i);
        if (sizeFormat != null && (function1 = this$0.callback) != null) {
            function1.invoke(sizeFormat);
        }
        this$0.dismiss();
    }

    @NotNull
    public final View getAnchorView() {
        return this.anchorView;
    }

    @NotNull
    public final EditorBundle getEditorBundle() {
        return this.editorBundle;
    }

    public final void refresh() {
        this.adapter.submitList(this.list);
    }

    @NotNull
    public final PageMarginSizePopup setCallback(@Nullable Function1<? super SizeFormat, Unit> callback) {
        this.callback = callback;
        return this;
    }

    @NotNull
    public final PageMarginSizePopup setCurrentSize(@NotNull Size size) {
        Intrinsics.checkNotNullParameter(size, "size");
        this.adapter.setCurrentSize(size);
        return this;
    }

    public final void setEditorBundle(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<set-?>");
        this.editorBundle = editorBundle;
    }

    @NotNull
    public final PageMarginSizePopup setMaxSelectSizeTimes(float times) {
        this.adapter.setMaxSelectSizeTimes(times);
        return this;
    }

    @NotNull
    public final PageMarginSizePopup setMinSelectSize(@NotNull Size size) {
        Intrinsics.checkNotNullParameter(size, "size");
        this.adapter.setMinSelectSize(size);
        return this;
    }

    @NotNull
    public final PageMarginSizePopup setTextSize(float size) {
        this.adapter.setTextSize(size);
        return this;
    }
}
