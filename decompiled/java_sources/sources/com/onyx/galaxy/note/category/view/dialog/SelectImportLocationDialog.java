package com.onyx.galaxy.note.category.view.dialog;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.fragment.app.C1126e;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.chad.library.adapter4.viewholder.DataBindingHolder;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TreeNode;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.extension.UriKt;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.p039ui.AutoSizeDialog;
import com.onyx.android.sdk.p039ui.MaxLengthInputTextEdit;
import com.onyx.android.sdk.replicator.note.bean.NoteModelBean;
import com.onyx.android.sdk.replicator.note.bean.NoteTagBean;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.editor.data.ImportSelectedContext;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.dialog.SelectImportLocationDialog;
import com.onyx.galaxy.note.common.data.ManageFolderContext;
import com.onyx.galaxy.note.common.data.ManageTagContext;
import com.onyx.galaxy.note.databinding.DialogSelectImportLocationBinding;
import com.onyx.galaxy.note.databinding.TagsLinearlayoutChildLayoutBinding;
import com.onyx.galaxy.note.utils.TagColorUtils;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.subjects.PublishSubject;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import onyx.org.apache.commons.io.FilenameUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u00016B5\u0012\u0006\u00103\u001a\u000202\u0012\u0006\u0010\u000e\u001a\u00020\n\u0012\u0006\u0010\u0014\u001a\u00020\u000f\u0012\u0006\u0010\u0018\u001a\u00020\u0015\u0012\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u001a0\u0019¢\u0006\u0004\b4\u00105J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\b\u0010\u0006\u001a\u00020\u0004H\u0016J\b\u0010\u0007\u001a\u00020\u0004H\u0002J\b\u0010\b\u001a\u00020\u0004H\u0002J\b\u0010\t\u001a\u00020\u0004H\u0002R\u0017\u0010\u000e\u001a\u00020\n8\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u000b\u001a\u0004\b\f\u0010\rR\u0017\u0010\u0014\u001a\u00020\u000f8\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0018\u001a\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u001d\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u001a0\u00198\u0006¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR\u001b\u0010%\u001a\u00020 8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$R\u001b\u0010)\u001a\u00020&8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\"\u001a\u0004\b'\u0010(R*\u00101\u001a\n\u0012\u0004\u0012\u00020+\u0018\u00010*8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010,\u001a\u0004\b-\u0010.\"\u0004\b/\u00100¨\u00067"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/dialog/SelectImportLocationDialog;", "Lcom/onyx/android/sdk/ui/AutoSizeDialog;", "Landroid/os/Bundle;", C1126e.f7693h, "", "onCreate", "dismiss", C6999h.f39688c, "m", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/galaxy/note/common/data/ManageFolderContext;", "Lcom/onyx/galaxy/note/common/data/ManageFolderContext;", "getManageFolderContext", "()Lcom/onyx/galaxy/note/common/data/ManageFolderContext;", "manageFolderContext", "Lcom/onyx/galaxy/note/common/data/ManageTagContext;", "i", "Lcom/onyx/galaxy/note/common/data/ManageTagContext;", "getManageTagContext", "()Lcom/onyx/galaxy/note/common/data/ManageTagContext;", "manageTagContext", "Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;", "j", "Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;", "importSelectedContext", "", "Landroid/net/Uri;", C4921e.f26537n, "Ljava/util/List;", "getUriList", "()Ljava/util/List;", "uriList", "Lcom/onyx/galaxy/note/databinding/DialogSelectImportLocationBinding;", "l", "Lkotlin/Lazy;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/DialogSelectImportLocationBinding;", "binding", "Lcom/onyx/galaxy/note/category/view/dialog/SelectImportLocationDialog$TagsAdapter;", C6998g.f39679a, "()Lcom/onyx/galaxy/note/category/view/dialog/SelectImportLocationDialog$TagsAdapter;", "tagsAdapter", "Lio/reactivex/rxjava3/subjects/PublishSubject;", "", "Lio/reactivex/rxjava3/subjects/PublishSubject;", "getPublishSubject", "()Lio/reactivex/rxjava3/subjects/PublishSubject;", "setPublishSubject", "(Lio/reactivex/rxjava3/subjects/PublishSubject;)V", "publishSubject", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/galaxy/note/common/data/ManageFolderContext;Lcom/onyx/galaxy/note/common/data/ManageTagContext;Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;Ljava/util/List;)V", "TagsAdapter", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSelectImportLocationDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectImportLocationDialog.kt\ncom/onyx/galaxy/note/category/view/dialog/SelectImportLocationDialog\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,164:1\n1603#2,9:165\n1855#2:174\n1856#2:176\n1612#2:177\n1549#2:178\n1620#2,3:179\n1#3:175\n*S KotlinDebug\n*F\n+ 1 SelectImportLocationDialog.kt\ncom/onyx/galaxy/note/category/view/dialog/SelectImportLocationDialog\n*L\n121#1:165,9\n121#1:174\n121#1:176\n121#1:177\n124#1:178\n124#1:179,3\n121#1:175\n*E\n"})
/* loaded from: classes17.dex */
public final class SelectImportLocationDialog extends AutoSizeDialog {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final ManageFolderContext manageFolderContext;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final ManageTagContext manageTagContext;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final ImportSelectedContext importSelectedContext;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final List<Uri> uriList;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public final Lazy tagsAdapter;

    /* renamed from: n, reason: from kotlin metadata */
    @Nullable
    public PublishSubject<Boolean> publishSubject;

    @Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002 \u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u0001B\u0007¢\u0006\u0004\b\u0015\u0010\u0016J4\u0010\u000b\u001a\u00020\n2\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\b\u001a\u00020\u00042\u0014\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0002H\u0014J&\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u0004H\u0014R\u0016\u0010\u0014\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/dialog/SelectImportLocationDialog$TagsAdapter;", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "Lkotlin/Pair;", "", "", "Lcom/chad/library/adapter4/viewholder/DataBindingHolder;", "Lcom/onyx/galaxy/note/databinding/TagsLinearlayoutChildLayoutBinding;", "holder", "position", "item", "", "onBindViewHolder", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", "r", "I", "horizontalMargin", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    @SourceDebugExtension({"SMAP\nSelectImportLocationDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectImportLocationDialog.kt\ncom/onyx/galaxy/note/category/view/dialog/SelectImportLocationDialog$TagsAdapter\n+ 2 ViewGroup.kt\nandroidx/core/view/ViewGroupKt\n*L\n1#1,164:1\n199#2,2:165\n*S KotlinDebug\n*F\n+ 1 SelectImportLocationDialog.kt\ncom/onyx/galaxy/note/category/view/dialog/SelectImportLocationDialog$TagsAdapter\n*L\n152#1:165,2\n*E\n"})
    /* loaded from: classes9.dex */
    public static final class TagsAdapter extends BaseQuickAdapter<Pair<? extends String, ? extends Integer>, DataBindingHolder<TagsLinearlayoutChildLayoutBinding>> {

        /* renamed from: r, reason: from kotlin metadata */
        public int horizontalMargin;

        public TagsAdapter() {
            super(null, 1, null);
            this.horizontalMargin = (int) ResManager.INSTANCE.getDimension(C10651R.dimen.tag_divider);
        }

        @Override // com.chad.library.adapter4.BaseQuickAdapter
        public /* bridge */ /* synthetic */ void onBindViewHolder(DataBindingHolder<TagsLinearlayoutChildLayoutBinding> dataBindingHolder, int i, Pair<? extends String, ? extends Integer> pair) {
            onBindViewHolder2(dataBindingHolder, i, (Pair<String, Integer>) pair);
        }

        /* renamed from: onBindViewHolder, reason: avoid collision after fix types in other method */
        public void onBindViewHolder2(@NotNull DataBindingHolder<TagsLinearlayoutChildLayoutBinding> holder, int position, @Nullable Pair<String, Integer> item) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            if (item == null) {
                return;
            }
            View root = holder.getBinding().getRoot();
            Intrinsics.checkNotNull(root, "null cannot be cast to non-null type android.widget.TextView");
            TextView textView = (TextView) root;
            textView.setTextColor(ThemeUtils.getColorById(C7996R.color.theme_text_color_02));
            textView.setText(item.getFirst());
            textView.setBackground(TagColorUtils.INSTANCE.generateTagDrawable(item.getSecond().intValue()));
            ViewGroup.LayoutParams layoutParams = textView.getLayoutParams();
            Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.LayoutParams");
            ((RecyclerView.LayoutParams) layoutParams).setMargins(position == 0 ? 0 : this.horizontalMargin, 0, this.horizontalMargin, 0);
        }

        @Override // com.chad.library.adapter4.BaseQuickAdapter
        @NotNull
        public DataBindingHolder<TagsLinearlayoutChildLayoutBinding> onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(parent, "parent");
            return new DataBindingHolder<>(TagsLinearlayoutChildLayoutBinding.inflate(LayoutInflater.from(context), parent, false));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public SelectImportLocationDialog(@NotNull final Context context, @NotNull ManageFolderContext manageFolderContext, @NotNull ManageTagContext manageTagContext, @NotNull ImportSelectedContext importSelectedContext, @NotNull List<? extends Uri> uriList) {
        super(context);
        Lazy lazy;
        Lazy lazy2;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(manageFolderContext, "manageFolderContext");
        Intrinsics.checkNotNullParameter(manageTagContext, "manageTagContext");
        Intrinsics.checkNotNullParameter(importSelectedContext, "importSelectedContext");
        Intrinsics.checkNotNullParameter(uriList, "uriList");
        this.manageFolderContext = manageFolderContext;
        this.manageTagContext = manageTagContext;
        this.importSelectedContext = importSelectedContext;
        this.uriList = uriList;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<DialogSelectImportLocationBinding>() { // from class: com.onyx.galaxy.note.category.view.dialog.SelectImportLocationDialog$binding$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final DialogSelectImportLocationBinding invoke() {
                return DialogSelectImportLocationBinding.inflate(LayoutInflater.from(context));
            }
        });
        this.binding = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<TagsAdapter>() { // from class: com.onyx.galaxy.note.category.view.dialog.SelectImportLocationDialog$tagsAdapter$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final SelectImportLocationDialog.TagsAdapter invoke() {
                return new SelectImportLocationDialog.TagsAdapter();
            }
        });
        this.tagsAdapter = lazy2;
    }

    /* renamed from: i */
    public static final void m44495i(SelectImportLocationDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    /* renamed from: j */
    public static final void m44496j(SelectImportLocationDialog this$0, boolean z, Uri firstUri, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(firstUri, "$firstUri");
        ImportSelectedContext importSelectedContext = this$0.importSelectedContext;
        if (z) {
            String valueOf = String.valueOf(this$0.getBinding().tdFileBaseName.getText());
            if (valueOf.length() == 0) {
                valueOf = String.valueOf(this$0.getBinding().tdFileBaseName.getHint());
            }
            FileUtils fileUtils = FileUtils.INSTANCE;
            Context context = this$0.getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            String combine = fileUtils.combine(valueOf, FilenameUtils.getExtension(UriKt.getFileName(firstUri, context)));
            if (combine == null) {
                combine = "";
            }
            Context context2 = this$0.getContext();
            Intrinsics.checkNotNullExpressionValue(context2, "getContext(...)");
            importSelectedContext.setModifyItem(new ImportSelectedContext.ModifyItem(combine, UriKt.getFileName(firstUri, context2)));
        }
        importSelectedContext.setSelectedFolderId(this$0.manageFolderContext.getOldParentId());
        importSelectedContext.setSelectedFolderName(this$0.manageFolderContext.getSelectedFolderName());
        importSelectedContext.setSelectedTagIdList(this$0.manageTagContext.getSelectedTagIds());
        importSelectedContext.setSelectedTagNameList(this$0.manageTagContext.getSelectedTagNames());
        PublishSubject<Boolean> publishSubject = this$0.publishSubject;
        if (publishSubject != null) {
            publishSubject.onNext(Boolean.TRUE);
        }
        this$0.dismiss();
    }

    /* renamed from: k */
    public static final void m44497k(final SelectImportLocationDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Context context = this$0.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        new SelectImportFolderDialog(context, this$0.manageFolderContext, new Function0<Unit>() { // from class: com.onyx.galaxy.note.category.view.dialog.SelectImportLocationDialog$initView$4$1
            {
                super(0);
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                SelectImportLocationDialog.this.m44501m();
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }
        }).show();
    }

    /* renamed from: l */
    public static final void m44498l(final SelectImportLocationDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Context context = this$0.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        ManageTagContext manageTagContext = this$0.manageTagContext;
        new SelectImportTagDialog(context, manageTagContext, CollectionKt.copy(manageTagContext.getSelectedTagIds()), new Function0<Unit>() { // from class: com.onyx.galaxy.note.category.view.dialog.SelectImportLocationDialog$initView$5$1
            {
                super(0);
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                SelectImportLocationDialog.this.m44502n();
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }
        }).show();
    }

    @Override // com.onyx.android.sdk.p039ui.AutoSizeDialog, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        PublishSubject<Boolean> publishSubject = this.publishSubject;
        if (publishSubject != null) {
            publishSubject.onComplete();
        }
    }

    /* renamed from: g */
    public final TagsAdapter m44499g() {
        return (TagsAdapter) this.tagsAdapter.getValue();
    }

    @NotNull
    public final DialogSelectImportLocationBinding getBinding() {
        return (DialogSelectImportLocationBinding) this.binding.getValue();
    }

    @NotNull
    public final ManageFolderContext getManageFolderContext() {
        return this.manageFolderContext;
    }

    @NotNull
    public final ManageTagContext getManageTagContext() {
        return this.manageTagContext;
    }

    @Nullable
    public final PublishSubject<Boolean> getPublishSubject() {
        return this.publishSubject;
    }

    @NotNull
    public final List<Uri> getUriList() {
        return this.uriList;
    }

    /* renamed from: h */
    public final void m44500h() {
        Object first;
        String originFileName;
        setCancelable(false);
        setCanceledOnTouchOutside(false);
        TintTextView tvCancel = getBinding().tvCancel;
        Intrinsics.checkNotNullExpressionValue(tvCancel, "tvCancel");
        ViewKt.click$default(tvCancel, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.lem
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SelectImportLocationDialog.m44495i(SelectImportLocationDialog.this, view);
            }
        }, 1, null);
        final boolean z = !this.importSelectedContext.isMultipleDoc();
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) this.uriList);
        final Uri uri = (Uri) first;
        TintTextView tvImport = getBinding().tvImport;
        Intrinsics.checkNotNullExpressionValue(tvImport, "tvImport");
        ViewKt.click$default(tvImport, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.mem
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SelectImportLocationDialog.m44496j(SelectImportLocationDialog.this, z, uri, view);
            }
        }, 1, null);
        com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrGone(getBinding().llSingleFile, z);
        com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrGone(getBinding().llMultipleFile, !z);
        getBinding().tvMultipleFileCount.setText(ResManager.INSTANCE.getString(C10651R.string.multiple_files, String.valueOf(this.importSelectedContext.getTotalDocCount())));
        com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrGone(getBinding().tilName, z);
        com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrGone(getBinding().tvNameTitle, z);
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        String fileName = UriKt.getFileName(uri, context);
        MaxLengthInputTextEdit maxLengthInputTextEdit = getBinding().tdFileBaseName;
        String modifyName = this.importSelectedContext.getModifyName();
        if (modifyName == null) {
            modifyName = FileUtils.INSTANCE.getFileBaseName(fileName);
        }
        maxLengthInputTextEdit.setText(modifyName);
        MaxLengthInputTextEdit maxLengthInputTextEdit2 = getBinding().tdFileBaseName;
        String modifyName2 = this.importSelectedContext.getModifyName();
        if (modifyName2 == null) {
            modifyName2 = FileUtils.INSTANCE.getFileBaseName(fileName);
        }
        maxLengthInputTextEdit2.setHint(modifyName2);
        TintTextView tintTextView = getBinding().tvFileName;
        ImportSelectedContext.ModifyItem modifyItem = this.importSelectedContext.getModifyItem();
        if (modifyItem != null && (originFileName = modifyItem.getOriginFileName()) != null) {
            fileName = originFileName;
        }
        tintTextView.setText(fileName);
        m44501m();
        TintLinearLayout llFolders = getBinding().llFolders;
        Intrinsics.checkNotNullExpressionValue(llFolders, "llFolders");
        ViewKt.click$default(llFolders, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.nem
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SelectImportLocationDialog.m44497k(SelectImportLocationDialog.this, view);
            }
        }, 1, null);
        m44502n();
        TintLinearLayout llTag = getBinding().llTag;
        Intrinsics.checkNotNullExpressionValue(llTag, "llTag");
        ViewKt.click$default(llTag, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.oem
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SelectImportLocationDialog.m44498l(SelectImportLocationDialog.this, view);
            }
        }, 1, null);
    }

    /* renamed from: m */
    public final void m44501m() {
        NoteModelBean data;
        TreeNode<NoteModelBean> findNode = this.manageFolderContext.getRootNode().findNode(this.manageFolderContext.getSelectNoteId());
        String title = (findNode == null || (data = findNode.getData()) == null) ? null : data.getTitle();
        if (title == null) {
            title = "";
        }
        TintTextView tintTextView = getBinding().tvFoldersName;
        StringBuilder sb = new StringBuilder();
        sb.append(ResManager.INSTANCE.getString(C10651R.string.all_note));
        if (StringKt.isNotEmpty(title)) {
            sb.append("; ");
            sb.append(title);
        }
        tintTextView.setText(sb);
    }

    /* renamed from: n */
    public final void m44502n() {
        int collectionSizeOrDefault;
        List mutableList;
        List<String> selectedTagIds = this.manageTagContext.getSelectedTagIds();
        ArrayList<NoteTagBean> arrayList = new ArrayList();
        Iterator<T> it2 = selectedTagIds.iterator();
        while (it2.hasNext()) {
            TreeNode<NoteTagBean> findNode = this.manageTagContext.getRootNode().findNode((String) it2.next());
            NoteTagBean data = findNode != null ? findNode.getData() : null;
            if (data != null) {
                arrayList.add(data);
            }
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
        for (NoteTagBean noteTagBean : arrayList) {
            arrayList2.add(TuplesKt.m61535to(noteTagBean.getContent(), Integer.valueOf(noteTagBean.getStyle().getColor())));
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList2);
        com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrGone(getBinding().tvAddTag, mutableList.isEmpty());
        getBinding().rvTags.setAdapter(m44499g());
        m44499g().submitList(mutableList);
    }

    @Override // android.app.Dialog
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063299, this, savedInstanceState);
    }

    public final void setPublishSubject(@Nullable PublishSubject<Boolean> publishSubject) {
        this.publishSubject = publishSubject;
    }
}
