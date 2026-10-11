package com.onyx.galaxy.note.editor.view.popup;

import android.view.View;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.theme.widgets.TintRecycleView;
import com.onyx.galaxy.note.common.view.BasePopupWindow;
import com.onyx.galaxy.note.databinding.PopupMarginStyleBinding;
import com.onyx.galaxy.note.editor.data.PageMarginTemplateStyle;
import com.onyx.galaxy.note.editor.view.adapter.PageMarginTemplateStyleAdapter;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u001d\u0012\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\t0\u000f\u0012\u0006\u0010\u001a\u001a\u00020\u0015¢\u0006\u0004\b*\u0010+J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u001c\u0010\f\u001a\u00020\u00002\u0014\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n\u0018\u00010\bJ\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\tR\u001d\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\t0\u000f8\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u0017\u0010\u001a\u001a\u00020\u00158\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u0014\u0010\u001e\u001a\u00020\u001b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0016\u0010!\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 R$\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n\u0018\u00010\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R\u001b\u0010)\u001a\u00020$8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(¨\u0006,"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/PageMarginStylePopup;", "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;", "", "width", "setLayoutWidth", "", "size", "setTextSize", "Lkotlin/Function1;", "Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateStyle;", "", "callback", "setCallback", "style", "setCurrentStyle", "", "q", "Ljava/util/List;", "getDataList", "()Ljava/util/List;", "dataList", "Landroid/view/View;", "r", "Landroid/view/View;", "getAnchorView", "()Landroid/view/View;", "anchorView", "Lcom/onyx/galaxy/note/databinding/PopupMarginStyleBinding;", "s", "Lcom/onyx/galaxy/note/databinding/PopupMarginStyleBinding;", "binding", "t", "I", "layoutWidth", "u", "Lkotlin/jvm/functions/Function1;", "Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginTemplateStyleAdapter;", "v", "Lkotlin/Lazy;", "m", "()Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginTemplateStyleAdapter;", "adapter", Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;Landroid/view/View;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nPageMarginStylePopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PageMarginStylePopup.kt\ncom/onyx/galaxy/note/editor/view/popup/PageMarginStylePopup\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,83:1\n1#2:84\n*E\n"})
/* loaded from: classes9.dex */
public final class PageMarginStylePopup extends BasePopupWindow {

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public final List<PageMarginTemplateStyle> dataList;

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final View anchorView;

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public final PopupMarginStyleBinding binding;

    /* renamed from: t, reason: from kotlin metadata */
    public int layoutWidth;

    /* renamed from: u, reason: from kotlin metadata */
    @Nullable
    public Function1<? super PageMarginTemplateStyle, Unit> callback;

    /* renamed from: v, reason: from kotlin metadata */
    @NotNull
    public final Lazy adapter;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public PageMarginStylePopup(@org.jetbrains.annotations.NotNull java.util.List<com.onyx.galaxy.note.editor.data.PageMarginTemplateStyle> r6, @org.jetbrains.annotations.NotNull android.view.View r7) {
        /*
            r5 = this;
            java.lang.String r0 = "dataList"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
            java.lang.String r0 = "anchorView"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r0)
            android.content.Context r0 = r7.getContext()
            java.lang.String r1 = "getContext(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            r1 = 0
            r2 = 2
            r5.<init>(r0, r1, r2, r1)
            r5.dataList = r6
            r5.anchorView = r7
            android.content.Context r7 = r7.getContext()
            android.view.LayoutInflater r7 = android.view.LayoutInflater.from(r7)
            com.onyx.galaxy.note.databinding.PopupMarginStyleBinding r7 = com.onyx.galaxy.note.databinding.PopupMarginStyleBinding.inflate(r7)
            java.lang.String r0 = "inflate(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r7, r0)
            r5.binding = r7
            com.onyx.android.sdk.base.utils.ResManager r0 = com.onyx.android.sdk.base.utils.ResManager.INSTANCE
            int r1 = com.onyx.android.sdk.device.C7384R.dimen.dp_120
            int r1 = r0.getDimens(r1)
            r5.layoutWidth = r1
            com.onyx.galaxy.note.editor.view.popup.PageMarginStylePopup$adapter$2 r1 = new kotlin.jvm.functions.Function0<com.onyx.galaxy.note.editor.view.adapter.PageMarginTemplateStyleAdapter>() { // from class: com.onyx.galaxy.note.editor.view.popup.PageMarginStylePopup$adapter$2
                static {
                    /*
                        com.onyx.galaxy.note.editor.view.popup.PageMarginStylePopup$adapter$2 r0 = new com.onyx.galaxy.note.editor.view.popup.PageMarginStylePopup$adapter$2
                        r0.<init>()
                        
                        // error: 0x0005: SPUT (r0 I:com.onyx.galaxy.note.editor.view.popup.PageMarginStylePopup$adapter$2) com.onyx.galaxy.note.editor.view.popup.PageMarginStylePopup$adapter$2.INSTANCE com.onyx.galaxy.note.editor.view.popup.PageMarginStylePopup$adapter$2
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.editor.view.popup.PageMarginStylePopup$adapter$2.<clinit>():void");
                }

                {
                    /*
                        r1 = this;
                        r0 = 0
                        r1.<init>(r0)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.editor.view.popup.PageMarginStylePopup$adapter$2.<init>():void");
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ com.onyx.galaxy.note.editor.view.adapter.PageMarginTemplateStyleAdapter invoke() {
                    /*
                        r0 = this;
                        com.onyx.galaxy.note.editor.view.adapter.PageMarginTemplateStyleAdapter r0 = r0.invoke()
                        return r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.editor.view.popup.PageMarginStylePopup$adapter$2.invoke():java.lang.Object");
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                @org.jetbrains.annotations.NotNull
                public final com.onyx.galaxy.note.editor.view.adapter.PageMarginTemplateStyleAdapter invoke() {
                    /*
                        r0 = this;
                        com.onyx.galaxy.note.editor.view.adapter.PageMarginTemplateStyleAdapter r0 = new com.onyx.galaxy.note.editor.view.adapter.PageMarginTemplateStyleAdapter
                        r0.<init>()
                        return r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.editor.view.popup.PageMarginStylePopup$adapter$2.invoke():com.onyx.galaxy.note.editor.view.adapter.PageMarginTemplateStyleAdapter");
                }
            }
            kotlin.Lazy r1 = kotlin.LazyKt.lazy(r1)
            r5.adapter = r1
            android.view.View r1 = r7.getRoot()
            java.lang.String r2 = "getRoot(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r2)
            r5.setContentView(r1)
            com.onyx.android.sdk.theme.widgets.TintRecycleView r7 = r7.rvSize
            java.lang.String r1 = "rvSize"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r7, r1)
            r1 = -2
            r5.setWidth(r1)
            r5.setHeight(r1)
            androidx.recyclerview.widget.LinearLayoutManager r1 = new androidx.recyclerview.widget.LinearLayoutManager
            android.content.Context r2 = r5.getContext()
            r3 = 1
            r4 = 0
            r1.<init>(r2, r3, r4)
            r7.setLayoutManager(r1)
            com.google.android.material.divider.MaterialDividerItemDecoration r1 = new com.google.android.material.divider.MaterialDividerItemDecoration
            android.content.Context r2 = r5.getContext()
            r1.<init>(r2, r3)
            int r2 = com.onyx.galaxy.note.C10651R.color.page_margin_size_divider
            int r2 = r0.getColor(r2)
            r1.setDividerColor(r2)
            int r2 = com.onyx.android.sdk.device.C7384R.dimen.dp_10
            int r2 = r0.getDimensionPixelSize(r2)
            r1.setDividerInsetStart(r2)
            int r2 = com.onyx.android.sdk.device.C7384R.dimen.dp_10
            int r2 = r0.getDimensionPixelSize(r2)
            r1.setDividerInsetEnd(r2)
            r1.setLastItemDecorated(r4)
            int r2 = com.onyx.android.sdk.device.C7384R.dimen.dp_0_4
            int r0 = r0.getDimensionPixelSize(r2)
            r1.setDividerThickness(r0)
            r7.addItemDecoration(r1)
            com.onyx.galaxy.note.editor.view.adapter.PageMarginTemplateStyleAdapter r0 = r5.m49126m()
            r7.setAdapter(r0)
            com.onyx.galaxy.note.editor.view.adapter.PageMarginTemplateStyleAdapter r7 = r5.m49126m()
            com.sunia.HTREnginev2.zsk r0 = new com.sunia.HTREnginev2.zsk
            r0.<init>()
            r7.setOnItemClickListener(r0)
            r5.setOutsideTouchable(r3)
            int r7 = com.onyx.galaxy.note.C10651R.style.popupWindowAnimation
            r5.setAnimationStyle(r7)
            com.onyx.galaxy.note.editor.view.adapter.PageMarginTemplateStyleAdapter r5 = r5.m49126m()
            r5.submitList(r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.editor.view.popup.PageMarginStylePopup.<init>(java.util.List, android.view.View):void");
    }

    /* renamed from: l */
    public static final void m49125l(PageMarginStylePopup this$0, BaseQuickAdapter adapter, View view, int i) {
        Function1<? super PageMarginTemplateStyle, Unit> function1;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        PageMarginTemplateStyle pageMarginTemplateStyle = (PageMarginTemplateStyle) adapter.getItem(i);
        if (pageMarginTemplateStyle != null && (function1 = this$0.callback) != null) {
            function1.invoke(pageMarginTemplateStyle);
        }
        this$0.dismiss();
    }

    @NotNull
    public final View getAnchorView() {
        return this.anchorView;
    }

    @NotNull
    public final List<PageMarginTemplateStyle> getDataList() {
        return this.dataList;
    }

    /* renamed from: m */
    public final PageMarginTemplateStyleAdapter m49126m() {
        return (PageMarginTemplateStyleAdapter) this.adapter.getValue();
    }

    @NotNull
    public final PageMarginStylePopup setCallback(@Nullable Function1<? super PageMarginTemplateStyle, Unit> callback) {
        this.callback = callback;
        return this;
    }

    @NotNull
    public final PageMarginStylePopup setCurrentStyle(@NotNull PageMarginTemplateStyle style) {
        Intrinsics.checkNotNullParameter(style, "style");
        m49126m().selectItem(style);
        return this;
    }

    @NotNull
    public final PageMarginStylePopup setLayoutWidth(int width) {
        this.layoutWidth = width;
        TintRecycleView rvSize = this.binding.rvSize;
        Intrinsics.checkNotNullExpressionValue(rvSize, "rvSize");
        ViewKt.setLayoutWidth(rvSize, this.layoutWidth);
        return this;
    }

    @NotNull
    public final PageMarginStylePopup setTextSize(float size) {
        m49126m().setTextSize(size);
        return this;
    }
}
