package com.onyx.galaxy.note.editor.view.popup;

import android.app.Dialog;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.onyx.android.sdk.base.data.Tree;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.OnyxStatisticEvent;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.p039ui.CommonDialog;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualTocModel;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.events.app.DeleteTocEntryEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.common.view.BasePopupWindow;
import com.onyx.galaxy.note.databinding.PopupDocTocActionBinding;
import com.onyx.galaxy.note.editor.view.dialog.AddDocTocEntryDialog;
import com.onyx.galaxy.note.editor.view.dialog.AddSiblingDocTocEntryDialog;
import com.onyx.galaxy.note.editor.view.dialog.UpdateDocTocEntryTitleDialog;
import com.onyx.galaxy.note.editor.view.popup.DocTocActionPopup;
import com.onyx.galaxy.note.message.data.MessageConst;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010#\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \"2\u00020\u0001:\u0001\"B=\u0012\u0006\u0010\r\u001a\u00020\u000b\u0012\u0006\u0010\u001f\u001a\u00020\u001e\u0012\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e\u0012\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\b0\u0012\u0012\b\b\u0002\u0010\u0018\u001a\u00020\u0016¢\u0006\u0004\b \u0010!J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0002H\u0002J\b\u0010\u0007\u001a\u00020\u0002H\u0002J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH\u0002R\u0014\u0010\r\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\fR\u001a\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0010R\u001a\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\b0\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0018\u001a\u00020\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0017R\u001b\u0010\u001d\u001a\u00020\u00198BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u0013\u0010\u001c¨\u0006#"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/DocTocActionPopup;", "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;", "", "t", C4921e.f26528e, "p", "r", "q", "", "eventId", "y", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lcom/onyx/android/sdk/base/data/Tree;", "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;", "Lcom/onyx/android/sdk/base/data/Tree;", "tocEntry", "", "s", "Ljava/util/Set;", MessageConst.KEY_TITLE_LIST, "", Constants.HASIDCALL_INDEX_SIG, "full", "Lcom/onyx/galaxy/note/databinding/PopupDocTocActionBinding;", "u", "Lkotlin/Lazy;", "()Lcom/onyx/galaxy/note/databinding/PopupDocTocActionBinding;", "binding", "Landroid/content/Context;", "context", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;Lcom/onyx/android/sdk/base/data/Tree;Ljava/util/Set;Z)V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nDocTocActionPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DocTocActionPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/DocTocActionPopup\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,145:1\n256#2,2:146\n*S KotlinDebug\n*F\n+ 1 DocTocActionPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/DocTocActionPopup\n*L\n58#1:146,2\n*E\n"})
/* loaded from: classes9.dex */
public final class DocTocActionPopup extends BasePopupWindow {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final Tree<VirtualTocModel> tocEntry;

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public final Set<String> titleList;

    /* renamed from: t, reason: from kotlin metadata */
    public final boolean full;

    /* renamed from: u, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    @Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002JH\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\u0010\b\u0002\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\r2\u0010\b\u0002\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\r¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/DocTocActionPopup$Companion;", "", "()V", "showDeleteTocWarningDialog", "", "editorBundle", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "context", "Landroid/content/Context;", "entries", "", "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;", "doneAction", "Lkotlin/Function0;", "cancelAction", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ void showDeleteTocWarningDialog$default(Companion companion, EditorBundle editorBundle, Context context, List list, Function0 function0, Function0 function02, int i, Object obj) {
            companion.showDeleteTocWarningDialog(editorBundle, context, list, (i & 8) != 0 ? null : function0, (i & 16) != 0 ? null : function02);
        }

        public final void showDeleteTocWarningDialog(@NotNull final EditorBundle editorBundle, @NotNull Context context, @NotNull final List<VirtualTocModel> entries, @Nullable final Function0<Unit> doneAction, @Nullable final Function0<Unit> cancelAction) {
            Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(entries, "entries");
            new CommonDialog.Builder(context).setWarning(true).setTitle(C10651R.string.delete).setMessage(entries.size() > 1 ? C10651R.string.delete_more_toc_warning : C10651R.string.delete_child_toc_warning).setConfirmCallback(new Function2<CommonDialog, String, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.DocTocActionPopup$Companion$showDeleteTocWarningDialog$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(CommonDialog commonDialog, String str) {
                    invoke2(commonDialog, str);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull CommonDialog dialog, @NotNull String editTextStr) {
                    Intrinsics.checkNotNullParameter(dialog, "dialog");
                    Intrinsics.checkNotNullParameter(editTextStr, "editTextStr");
                    EditorBundleKt.postEvent(EditorBundle.this, new DeleteTocEntryEvent(entries));
                    Function0<Unit> function0 = doneAction;
                    if (function0 != null) {
                        function0.invoke();
                    }
                }
            }).setCancelCallback(new Function1<Dialog, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.DocTocActionPopup$Companion$showDeleteTocWarningDialog$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Dialog dialog) {
                    invoke2(dialog);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@Nullable Dialog dialog) {
                    Function0<Unit> function0 = cancelAction;
                    if (function0 != null) {
                        function0.invoke();
                    }
                }
            }).create().show();
        }

        public Companion() {
        }
    }

    public /* synthetic */ DocTocActionPopup(EditorBundle editorBundle, Context context, Tree tree, Set set, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(editorBundle, context, tree, set, (i & 16) != 0 ? false : z);
    }

    /* renamed from: u */
    public static final void m48680u(DocTocActionPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48684o();
    }

    /* renamed from: v */
    public static final void m48681v(DocTocActionPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48687r();
    }

    /* renamed from: w */
    public static final void m48682w(DocTocActionPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48686q();
    }

    /* renamed from: x */
    public static final void m48683x(DocTocActionPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48685p();
    }

    /* renamed from: o */
    public final void m48684o() {
        String str = this.full ? OnyxStatisticConstant.ID_CLICK_OUTLINE_ADD_CHILD_FULL_POPUP : OnyxStatisticConstant.ID_CLICK_OUTLINE_ADD_CHILD_POPUP;
        new AddDocTocEntryDialog(this.editorBundle, getContext(), this.tocEntry.getItem(), this.titleList, str, null, 32, null).show();
        dismiss();
        m48690y(str);
    }

    /* renamed from: p */
    public final void m48685p() {
        EditorBundle editorBundle = this.editorBundle;
        Context context = getContext();
        VirtualTocModel item = this.tocEntry.getItem();
        Intrinsics.checkNotNull(item);
        new AddSiblingDocTocEntryDialog(editorBundle, context, item, this.titleList).show();
        dismiss();
    }

    /* renamed from: q */
    public final void m48686q() {
        List listOf;
        Companion companion = INSTANCE;
        EditorBundle editorBundle = this.editorBundle;
        Context context = getContext();
        VirtualTocModel item = this.tocEntry.getItem();
        Intrinsics.checkNotNull(item);
        listOf = CollectionsKt__CollectionsJVMKt.listOf(item);
        Companion.showDeleteTocWarningDialog$default(companion, editorBundle, context, listOf, null, null, 24, null);
        dismiss();
    }

    /* renamed from: r */
    public final void m48687r() {
        String str = this.full ? OnyxStatisticConstant.ID_CLICK_OUTLINE_EDIT_FULL_POPUP : OnyxStatisticConstant.ID_CLICK_OUTLINE_EDIT_POPUP;
        EditorBundle editorBundle = this.editorBundle;
        Context context = getContext();
        VirtualTocModel item = this.tocEntry.getItem();
        Intrinsics.checkNotNull(item);
        new UpdateDocTocEntryTitleDialog(editorBundle, context, item, str).show();
        dismiss();
        m48690y(str);
    }

    /* renamed from: s */
    public final PopupDocTocActionBinding m48688s() {
        return (PopupDocTocActionBinding) this.binding.getValue();
    }

    /* renamed from: t */
    public final void m48689t() {
        View root = m48688s().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
        setOutsideTouchable(false);
        setFocusable(true);
        TintTextView addChildToc = m48688s().addChildToc;
        Intrinsics.checkNotNullExpressionValue(addChildToc, "addChildToc");
        addChildToc.setVisibility(true ^ this.tocEntry.exceedMaxLevel(20) ? 0 : 8);
        TintTextView addChildToc2 = m48688s().addChildToc;
        Intrinsics.checkNotNullExpressionValue(addChildToc2, "addChildToc");
        ViewKt.click$default(addChildToc2, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.b9f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DocTocActionPopup.m48680u(DocTocActionPopup.this, view);
            }
        }, 1, null);
        TintTextView editChildToc = m48688s().editChildToc;
        Intrinsics.checkNotNullExpressionValue(editChildToc, "editChildToc");
        ViewKt.click$default(editChildToc, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.c9f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DocTocActionPopup.m48681v(DocTocActionPopup.this, view);
            }
        }, 1, null);
        TintTextView deleteChildToc = m48688s().deleteChildToc;
        Intrinsics.checkNotNullExpressionValue(deleteChildToc, "deleteChildToc");
        ViewKt.click$default(deleteChildToc, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.d9f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DocTocActionPopup.m48682w(DocTocActionPopup.this, view);
            }
        }, 1, null);
        TintTextView addSiblingToc = m48688s().addSiblingToc;
        Intrinsics.checkNotNullExpressionValue(addSiblingToc, "addSiblingToc");
        ViewKt.click$default(addSiblingToc, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.e9f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DocTocActionPopup.m48683x(DocTocActionPopup.this, view);
            }
        }, 1, null);
    }

    /* renamed from: y */
    public final void m48690y(String eventId) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(OnyxStatisticConstant.KEY_NOTE_ID, EditorBundleKt.docId(this.editorBundle));
        StatisticsBundle.INSTANCE.postEvent(new OnyxStatisticEvent(eventId, linkedHashMap));
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DocTocActionPopup(@NotNull EditorBundle editorBundle, @NotNull final Context context, @NotNull Tree<VirtualTocModel> tocEntry, @NotNull Set<String> titleList, boolean z) {
        super(context, null, 2, null);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(tocEntry, "tocEntry");
        Intrinsics.checkNotNullParameter(titleList, "titleList");
        this.editorBundle = editorBundle;
        this.tocEntry = tocEntry;
        this.titleList = titleList;
        this.full = z;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<PopupDocTocActionBinding>() { // from class: com.onyx.galaxy.note.editor.view.popup.DocTocActionPopup$binding$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PopupDocTocActionBinding invoke() {
                return PopupDocTocActionBinding.inflate(LayoutInflater.from(context));
            }
        });
        this.binding = lazy;
        m48689t();
        m48690y(z ? OnyxStatisticConstant.ID_VIEW_OUTLINE_FULL_POPUP : OnyxStatisticConstant.ID_VIEW_OUTLINE_POPUP);
    }
}
