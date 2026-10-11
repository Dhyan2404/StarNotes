package com.onyx.galaxy.note.editor.view.popup;

import android.app.Activity;
import android.view.ViewGroup;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.flexbox.FlexboxLayoutManager;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintRecycleView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.adapter.SelectMultiFolderAdapter;
import com.onyx.galaxy.note.category.view.adapter.SelectMultiTagAdapter;
import com.onyx.galaxy.note.category.view.adapter.TextLabelAdapter;
import com.onyx.galaxy.note.common.data.ManageFolderContext;
import com.onyx.galaxy.note.common.data.ManageTagContext;
import com.onyx.galaxy.note.common.view.BasePopupWindow;
import com.onyx.galaxy.note.databinding.ItemTextLabelBinding;
import com.onyx.galaxy.note.databinding.LayoutSearchScopePreviewBinding;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u0012\u0006\u0010\u0012\u001a\u00020\u000f¢\u0006\u0004\b\u0017\u0010\u0018J\b\u0010\u0003\u001a\u00020\u0002H\u0014J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0002H\u0002R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0014\u0010\u0012\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0016\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/SearchScopePreviewPopup;", "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;", "", "onShow", C4921e.f26537n, "l", "m", "Landroid/app/Activity;", "q", "Landroid/app/Activity;", "uiContext", "Lcom/onyx/galaxy/note/common/data/ManageFolderContext;", "r", "Lcom/onyx/galaxy/note/common/data/ManageFolderContext;", "manageFolderContext", "Lcom/onyx/galaxy/note/common/data/ManageTagContext;", "s", "Lcom/onyx/galaxy/note/common/data/ManageTagContext;", "manageTagContext", "Lcom/onyx/galaxy/note/databinding/LayoutSearchScopePreviewBinding;", "t", "Lcom/onyx/galaxy/note/databinding/LayoutSearchScopePreviewBinding;", "binding", Constants.CONSTRUCTOR_NAME, "(Landroid/app/Activity;Lcom/onyx/galaxy/note/common/data/ManageFolderContext;Lcom/onyx/galaxy/note/common/data/ManageTagContext;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSearchScopePreviewPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchScopePreviewPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/SearchScopePreviewPopup\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,99:1\n256#2,2:100\n256#2,2:102\n256#2,2:104\n256#2,2:106\n256#2,2:108\n256#2,2:110\n*S KotlinDebug\n*F\n+ 1 SearchScopePreviewPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/SearchScopePreviewPopup\n*L\n59#1:100,2\n60#1:102,2\n61#1:104,2\n81#1:106,2\n82#1:108,2\n83#1:110,2\n*E\n"})
/* loaded from: classes9.dex */
public final class SearchScopePreviewPopup extends BasePopupWindow {

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public final Activity uiContext;

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final ManageFolderContext manageFolderContext;

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public final ManageTagContext manageTagContext;

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public final LayoutSearchScopePreviewBinding binding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SearchScopePreviewPopup(@NotNull Activity uiContext, @NotNull ManageFolderContext manageFolderContext, @NotNull ManageTagContext manageTagContext) {
        super(uiContext, null, 2, null);
        Intrinsics.checkNotNullParameter(uiContext, "uiContext");
        Intrinsics.checkNotNullParameter(manageFolderContext, "manageFolderContext");
        Intrinsics.checkNotNullParameter(manageTagContext, "manageTagContext");
        this.uiContext = uiContext;
        this.manageFolderContext = manageFolderContext;
        this.manageTagContext = manageTagContext;
        LayoutSearchScopePreviewBinding inflate = LayoutSearchScopePreviewBinding.inflate(uiContext.getLayoutInflater());
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        setTouchModal(true);
        setOutsideTouchable(true);
        setFocusable(true);
        TintLinearLayout root = inflate.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
    }

    /* renamed from: k */
    public final void m49394k() {
        int max = Math.max(this.manageFolderContext.getSelectedFolderNames().size(), this.manageTagContext.getSelectedTagNames().size());
        final int dimens = max >= 10 ? ResManager.INSTANCE.getDimens(C7384R.dimen.dp_300) : max >= 3 ? ResManager.INSTANCE.getDimens(C7384R.dimen.dp_248) : ResManager.INSTANCE.getDimens(C7384R.dimen.dp_132);
        TintRecycleView folderListView = this.binding.folderListView;
        Intrinsics.checkNotNullExpressionValue(folderListView, "folderListView");
        ViewKt.setLayoutParams(folderListView, new Function1<ViewGroup.LayoutParams, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.SearchScopePreviewPopup$estimateRowWidth$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(ViewGroup.LayoutParams layoutParams) {
                invoke2(layoutParams);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull ViewGroup.LayoutParams setLayoutParams) {
                Intrinsics.checkNotNullParameter(setLayoutParams, "$this$setLayoutParams");
                setLayoutParams.width = dimens;
            }
        });
        TintRecycleView tagListView = this.binding.tagListView;
        Intrinsics.checkNotNullExpressionValue(tagListView, "tagListView");
        ViewKt.setLayoutParams(tagListView, new Function1<ViewGroup.LayoutParams, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.SearchScopePreviewPopup$estimateRowWidth$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(ViewGroup.LayoutParams layoutParams) {
                invoke2(layoutParams);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull ViewGroup.LayoutParams setLayoutParams) {
                Intrinsics.checkNotNullParameter(setLayoutParams, "$this$setLayoutParams");
                setLayoutParams.width = dimens;
            }
        });
    }

    /* renamed from: l */
    public final void m49395l() {
        boolean selectAll = this.manageFolderContext.getSelectAll();
        boolean isEmpty = this.manageFolderContext.getSelectedFolderNames().isEmpty();
        TintRecycleView folderListView = this.binding.folderListView;
        Intrinsics.checkNotNullExpressionValue(folderListView, "folderListView");
        folderListView.setVisibility(!selectAll && !isEmpty ? 0 : 8);
        TintTextView folderEmptyText = this.binding.folderEmptyText;
        Intrinsics.checkNotNullExpressionValue(folderEmptyText, "folderEmptyText");
        folderEmptyText.setVisibility(!selectAll && isEmpty ? 0 : 8);
        TintTextView folderAllText = this.binding.folderAllText;
        Intrinsics.checkNotNullExpressionValue(folderAllText, "folderAllText");
        folderAllText.setVisibility(selectAll ? 0 : 8);
        TextLabelAdapter textLabelAdapter = new TextLabelAdapter(new Function1<String, String>() { // from class: com.onyx.galaxy.note.editor.view.popup.SearchScopePreviewPopup$initFolderList$adapter$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final String invoke(@NotNull String id) {
                ManageFolderContext manageFolderContext;
                ManageFolderContext manageFolderContext2;
                String str;
                int lastIndex;
                Intrinsics.checkNotNullParameter(id, "id");
                manageFolderContext = SearchScopePreviewPopup.this.manageFolderContext;
                int indexOf = manageFolderContext.getSelectedFolderIds().indexOf(id);
                manageFolderContext2 = SearchScopePreviewPopup.this.manageFolderContext;
                List<String> selectedFolderNames = manageFolderContext2.getSelectedFolderNames();
                if (indexOf >= 0) {
                    lastIndex = CollectionsKt__CollectionsKt.getLastIndex(selectedFolderNames);
                    if (indexOf <= lastIndex) {
                        str = selectedFolderNames.get(indexOf);
                        return str;
                    }
                }
                str = "";
                return str;
            }
        }, new Function2<ItemTextLabelBinding, String, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.SearchScopePreviewPopup$initFolderList$adapter$2
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(ItemTextLabelBinding itemTextLabelBinding, String str) {
                invoke2(itemTextLabelBinding, str);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull ItemTextLabelBinding binding, @NotNull String data) {
                Intrinsics.checkNotNullParameter(binding, "binding");
                Intrinsics.checkNotNullParameter(data, "data");
                binding.getRoot().setBackgroundDrawable(ThemeUtils.getThemeDrawable(Intrinsics.areEqual(data, SelectMultiFolderAdapter.Companion.getUNCLASSIFIED_FOLDER_ID()) ? C10651R.drawable.bg_text_label_default : C10651R.drawable.bg_text_label));
            }
        });
        this.binding.folderListView.setLayoutManager(new FlexboxLayoutManager(this.uiContext, 0));
        this.binding.folderListView.setAdapter(textLabelAdapter);
        textLabelAdapter.submitList(this.manageFolderContext.getSelectedFolderIds());
    }

    /* renamed from: m */
    public final void m49396m() {
        boolean selectAll = this.manageTagContext.getSelectAll();
        boolean isEmpty = this.manageTagContext.getSelectedTagNames().isEmpty();
        TintRecycleView tagListView = this.binding.tagListView;
        Intrinsics.checkNotNullExpressionValue(tagListView, "tagListView");
        tagListView.setVisibility(!selectAll && !isEmpty ? 0 : 8);
        TintTextView tagEmptyText = this.binding.tagEmptyText;
        Intrinsics.checkNotNullExpressionValue(tagEmptyText, "tagEmptyText");
        tagEmptyText.setVisibility(!selectAll && isEmpty ? 0 : 8);
        TintTextView tagAllText = this.binding.tagAllText;
        Intrinsics.checkNotNullExpressionValue(tagAllText, "tagAllText");
        tagAllText.setVisibility(selectAll ? 0 : 8);
        TextLabelAdapter textLabelAdapter = new TextLabelAdapter(new Function1<String, String>() { // from class: com.onyx.galaxy.note.editor.view.popup.SearchScopePreviewPopup$initTagListList$adapter$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final String invoke(@NotNull String id) {
                ManageTagContext manageTagContext;
                ManageTagContext manageTagContext2;
                String str;
                int lastIndex;
                Intrinsics.checkNotNullParameter(id, "id");
                manageTagContext = SearchScopePreviewPopup.this.manageTagContext;
                int indexOf = manageTagContext.getSelectedTagIds().indexOf(id);
                manageTagContext2 = SearchScopePreviewPopup.this.manageTagContext;
                List<String> selectedTagNames = manageTagContext2.getSelectedTagNames();
                if (indexOf >= 0) {
                    lastIndex = CollectionsKt__CollectionsKt.getLastIndex(selectedTagNames);
                    if (indexOf <= lastIndex) {
                        str = selectedTagNames.get(indexOf);
                        return str;
                    }
                }
                str = "";
                return str;
            }
        }, new Function2<ItemTextLabelBinding, String, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.SearchScopePreviewPopup$initTagListList$adapter$2
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(ItemTextLabelBinding itemTextLabelBinding, String str) {
                invoke2(itemTextLabelBinding, str);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull ItemTextLabelBinding binding, @NotNull String data) {
                Intrinsics.checkNotNullParameter(binding, "binding");
                Intrinsics.checkNotNullParameter(data, "data");
                binding.getRoot().setBackgroundDrawable(ThemeUtils.getThemeDrawable(Intrinsics.areEqual(data, SelectMultiTagAdapter.INSTANCE.getUNCLASSIFIED_TAG_ID()) ? C10651R.drawable.bg_text_label_default : C10651R.drawable.bg_text_label));
            }
        });
        this.binding.tagListView.setLayoutManager(new FlexboxLayoutManager(this.uiContext, 0));
        this.binding.tagListView.setAdapter(textLabelAdapter);
        textLabelAdapter.submitList(this.manageTagContext.getSelectedTagIds());
    }

    @Override // com.onyx.galaxy.note.common.view.BasePopupWindow
    public void onShow() {
        super.onShow();
        m49394k();
        m49395l();
        m49396m();
    }
}
