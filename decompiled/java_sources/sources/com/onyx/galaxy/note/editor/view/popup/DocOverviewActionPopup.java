package com.onyx.galaxy.note.editor.view.popup;

import android.app.Dialog;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.NoteOutlineAddFrom;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.OnyxStatisticEvent;
import com.onyx.android.sdk.event.StatisticsNoteOutlineAddEvent;
import com.onyx.android.sdk.p039ui.CommonDialog;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualTocModel;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.action.page.GetPageIdFromIndexAction;
import com.onyx.android.sdk.universal.editor.bean.CloneState;
import com.onyx.android.sdk.universal.editor.bean.PasteState;
import com.onyx.android.sdk.universal.editor.data.CopyPageArgs;
import com.onyx.android.sdk.universal.editor.data.PastePagedArgs;
import com.onyx.android.sdk.universal.editor.data.RotatePageArgs;
import com.onyx.android.sdk.universal.editor.events.app.ClonePageEvent;
import com.onyx.android.sdk.universal.editor.events.app.CopyPageEvent;
import com.onyx.android.sdk.universal.editor.events.app.InsertPageAfterSpecifiedPageEvent;
import com.onyx.android.sdk.universal.editor.events.app.PastePageEvent;
import com.onyx.android.sdk.universal.editor.events.app.RemovePagesEvent;
import com.onyx.android.sdk.universal.editor.events.app.RotatePageEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.action.template.AddPagesToCustomPaperAction;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.common.view.BasePopupWindow;
import com.onyx.galaxy.note.databinding.PopupDocOverviewActionBinding;
import com.onyx.galaxy.note.editor.view.dialog.AddToDocTocDialog;
import com.onyx.galaxy.note.editor.view.popup.DocOverviewActionPopup;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 $2\u00020\u0001:\u0001$B)\u0012\u0006\u0010\u0012\u001a\u00020\u000f\u0012\u0006\u0010!\u001a\u00020 \u0012\u0006\u0010\u0016\u001a\u00020\u0013\u0012\b\b\u0002\u0010\u001a\u001a\u00020\u0017¢\u0006\u0004\b\"\u0010#J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0002H\u0002J\b\u0010\u0007\u001a\u00020\u0002H\u0002J\b\u0010\b\u001a\u00020\u0002H\u0002J\b\u0010\t\u001a\u00020\u0002H\u0002J\b\u0010\n\u001a\u00020\u0002H\u0002J\b\u0010\u000b\u001a\u00020\u0002H\u0002J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\fH\u0002R\u0014\u0010\u0012\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0016\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0014\u0010\u001a\u001a\u00020\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u001b\u0010\u001f\u001a\u00020\u001b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0004\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e¨\u0006%"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;", "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;", "", "A", "t", "v", "J", "M", "y", "w", "K", "x", "", "eventId", "L", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "q", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "", "r", "I", "pageIndex", "", "s", Constants.HASIDCALL_INDEX_SIG, "full", "Lcom/onyx/galaxy/note/databinding/PopupDocOverviewActionBinding;", "Lkotlin/Lazy;", "z", "()Lcom/onyx/galaxy/note/databinding/PopupDocOverviewActionBinding;", "binding", "Landroid/content/Context;", "context", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;IZ)V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class DocOverviewActionPopup extends BasePopupWindow {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    public static final String TAG = "DocOverviewActionPopup";

    @NotNull
    public static final String TAG_FULL = "DocOverviewActionPopup_Full";

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: r, reason: from kotlin metadata */
    public final int pageIndex;

    /* renamed from: s */
    public final boolean full;

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    @Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J0\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010JD\u0010\u0011\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\t2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00040\r2\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00070\u00142\u0010\b\u0002\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0014JD\u0010\u0016\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\t2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r2\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00070\u00142\u0010\b\u0002\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup$Companion;", "", "()V", "TAG", "", "TAG_FULL", "addToCustomPaper", "", "context", "Landroid/content/Context;", "editorBundle", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "pageIndexList", "", "", "onFinally", "Lio/reactivex/rxjava3/functions/Action;", "deletePages", "pageIdList", "doneAction", "Lkotlin/Function0;", "cancelAction", "rotatePages", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ void addToCustomPaper$default(Companion companion, Context context, EditorBundle editorBundle, List list, Action action, int i, Object obj) {
            if ((i & 8) != 0) {
                action = null;
            }
            companion.addToCustomPaper(context, editorBundle, list, action);
        }

        /* renamed from: b */
        public static final void m48674b(Action action) {
            if (action != null) {
                action.run();
            }
        }

        public static /* synthetic */ void deletePages$default(Companion companion, EditorBundle editorBundle, Context context, List list, Function0 function0, Function0 function02, int i, Object obj) {
            if ((i & 16) != 0) {
                function02 = null;
            }
            companion.deletePages(editorBundle, context, list, function0, function02);
        }

        public static /* synthetic */ void rotatePages$default(Companion companion, EditorBundle editorBundle, Context context, List list, Function0 function0, Function0 function02, int i, Object obj) {
            if ((i & 16) != 0) {
                function02 = null;
            }
            companion.rotatePages(editorBundle, context, list, function0, function02);
        }

        public final void addToCustomPaper(@NotNull Context context, @NotNull EditorBundle editorBundle, @NotNull List<Integer> pageIndexList, @Nullable final Action onFinally) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
            Intrinsics.checkNotNullParameter(pageIndexList, "pageIndexList");
            if (pageIndexList.isEmpty()) {
                return;
            }
            new AddPagesToCustomPaperAction(editorBundle, pageIndexList).setActivityContext(context).build().doFinally(new Action() { // from class: com.sunia.HTREnginev2.e8f
                @Override // io.reactivex.rxjava3.functions.Action
                public final void run() {
                    DocOverviewActionPopup.Companion.m48674b(Action.this);
                }
            }).subscribe();
        }

        public final void deletePages(@NotNull final EditorBundle editorBundle, @NotNull Context context, @NotNull final List<String> pageIdList, @NotNull final Function0<Unit> doneAction, @Nullable final Function0<Unit> cancelAction) {
            Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(pageIdList, "pageIdList");
            Intrinsics.checkNotNullParameter(doneAction, "doneAction");
            new CommonDialog.Builder(context).setTitle(C10651R.string.delete).setWarning(true).setMessage(C10651R.string.delete_current_page_warning).setConfirmCallback(new Function2<CommonDialog, String, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.DocOverviewActionPopup$Companion$deletePages$1
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
                    EditorBundleKt.postEvent(EditorBundle.this, new RemovePagesEvent(pageIdList));
                    doneAction.invoke();
                }
            }).setCancelCallback(new Function1<Dialog, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.DocOverviewActionPopup$Companion$deletePages$2
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

        public final void rotatePages(@NotNull EditorBundle editorBundle, @NotNull Context context, @NotNull List<Integer> pageIndexList, @NotNull Function0<Unit> doneAction, @Nullable Function0<Unit> cancelAction) {
            List mutableList;
            Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(pageIndexList, "pageIndexList");
            Intrinsics.checkNotNullParameter(doneAction, "doneAction");
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) pageIndexList);
            EditorBundleKt.postEvent(editorBundle, new RotatePageEvent(new RotatePageArgs(mutableList, 0, false, 6, null)));
        }

        public Companion() {
        }
    }

    public /* synthetic */ DocOverviewActionPopup(EditorBundle editorBundle, Context context, int i, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(editorBundle, context, i, (i2 & 8) != 0 ? false : z);
    }

    /* renamed from: B */
    public static final void m48644B(DocOverviewActionPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48663J();
    }

    /* renamed from: C */
    public static final void m48645C(DocOverviewActionPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48671y();
    }

    /* renamed from: D */
    public static final void m48646D(DocOverviewActionPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48666M();
    }

    /* renamed from: E */
    public static final void m48647E(DocOverviewActionPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48669w();
    }

    /* renamed from: F */
    public static final void m48648F(DocOverviewActionPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48664K();
    }

    /* renamed from: G */
    public static final void m48649G(DocOverviewActionPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48670x();
    }

    /* renamed from: H */
    public static final void m48650H(DocOverviewActionPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48668v();
    }

    /* renamed from: I */
    public static final void m48651I(DocOverviewActionPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48667t();
    }

    /* renamed from: u */
    public static final void m48661u(DocOverviewActionPopup this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    /* renamed from: A */
    public final void m48662A() {
        View root = m48672z().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
        setOutsideTouchable(false);
        setFocusable(true);
        ViewKt.setViewVisibleOrGone(m48672z().pastePage, GlobalBundle.INSTANCE.isCanPastePage(EditorBundleKt.docId(this.editorBundle)));
        TintTextView addPageAfterCurrentPage = m48672z().addPageAfterCurrentPage;
        Intrinsics.checkNotNullExpressionValue(addPageAfterCurrentPage, "addPageAfterCurrentPage");
        com.onyx.android.sdk.extension.ViewKt.shortClick(addPageAfterCurrentPage, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.w7f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DocOverviewActionPopup.m48644B(DocOverviewActionPopup.this, view);
            }
        });
        TintTextView duplicateCurrentPage = m48672z().duplicateCurrentPage;
        Intrinsics.checkNotNullExpressionValue(duplicateCurrentPage, "duplicateCurrentPage");
        com.onyx.android.sdk.extension.ViewKt.shortClick(duplicateCurrentPage, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.x7f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DocOverviewActionPopup.m48645C(DocOverviewActionPopup.this, view);
            }
        });
        TintTextView rotateCurrentPage = m48672z().rotateCurrentPage;
        Intrinsics.checkNotNullExpressionValue(rotateCurrentPage, "rotateCurrentPage");
        com.onyx.android.sdk.extension.ViewKt.shortClick(rotateCurrentPage, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.y7f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DocOverviewActionPopup.m48646D(DocOverviewActionPopup.this, view);
            }
        });
        m48672z().cloneCurrentPage.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.z7f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DocOverviewActionPopup.m48647E(DocOverviewActionPopup.this, view);
            }
        });
        m48672z().pastePage.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.a8f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DocOverviewActionPopup.m48648F(DocOverviewActionPopup.this, view);
            }
        });
        TintTextView deleteCurrentPage = m48672z().deleteCurrentPage;
        Intrinsics.checkNotNullExpressionValue(deleteCurrentPage, "deleteCurrentPage");
        com.onyx.android.sdk.extension.ViewKt.click$default(deleteCurrentPage, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.b8f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DocOverviewActionPopup.m48649G(DocOverviewActionPopup.this, view);
            }
        }, 1, null);
        TintTextView addToToc = m48672z().addToToc;
        Intrinsics.checkNotNullExpressionValue(addToToc, "addToToc");
        com.onyx.android.sdk.extension.ViewKt.shortClick(addToToc, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.c8f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DocOverviewActionPopup.m48650H(DocOverviewActionPopup.this, view);
            }
        });
        TintTextView addToCustomPaper = m48672z().addToCustomPaper;
        Intrinsics.checkNotNullExpressionValue(addToCustomPaper, "addToCustomPaper");
        com.onyx.android.sdk.extension.ViewKt.shortClick(addToCustomPaper, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.d8f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DocOverviewActionPopup.m48651I(DocOverviewActionPopup.this, view);
            }
        });
    }

    /* renamed from: J */
    public final void m48663J() {
        EditorBundleKt.postEvent(this.editorBundle, new InsertPageAfterSpecifiedPageEvent(this.pageIndex));
        dismiss();
        m48665L(this.full ? OnyxStatisticConstant.ID_CLICK_PAGE_ADD_FULL_POPUP : OnyxStatisticConstant.ID_CLICK_PAGE_ADD_POPUP);
    }

    /* renamed from: K */
    public final void m48664K() {
        List listOf;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(new PastePagedArgs.PastePageInfo(this.pageIndex + 1));
        EditorBundleKt.postEvent(this.editorBundle, new PastePageEvent(new PasteState.Create(new PastePagedArgs(listOf))));
        dismiss();
    }

    /* renamed from: L */
    public final void m48665L(String eventId) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(OnyxStatisticConstant.KEY_NOTE_ID, EditorBundleKt.docId(this.editorBundle));
        StatisticsBundle.INSTANCE.postEvent(new OnyxStatisticEvent(eventId, linkedHashMap));
    }

    /* renamed from: M */
    public final void m48666M() {
        Companion.rotatePages$default(INSTANCE, this.editorBundle, getContext(), CollectionKt.asList(Integer.valueOf(this.pageIndex)), new Function0<Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.DocOverviewActionPopup$rotateCurrentPage$1
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }
        }, null, 16, null);
        dismiss();
    }

    /* renamed from: t */
    public final void m48667t() {
        List<Integer> listOf;
        Companion companion = INSTANCE;
        Context context = getContext();
        EditorBundle editorBundle = this.editorBundle;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(Integer.valueOf(this.pageIndex));
        companion.addToCustomPaper(context, editorBundle, listOf, new Action() { // from class: com.sunia.HTREnginev2.v7f
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                DocOverviewActionPopup.m48661u(DocOverviewActionPopup.this);
            }
        });
        m48665L(this.full ? OnyxStatisticConstant.ID_CLICK_CUSTOM_TEMPLATE_FULL_POPUP : OnyxStatisticConstant.ID_CLICK_CUSTOM_TEMPLATE_POPUP);
    }

    /* renamed from: v */
    public final void m48668v() {
        VirtualTocModel virtualTocModel = new VirtualTocModel("", this.pageIndex);
        virtualTocModel.ensureUniqueIdExist();
        new AddToDocTocDialog(this.editorBundle, getContext(), virtualTocModel, null, new Function0<Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.DocOverviewActionPopup$addToToc$1
            {
                super(0);
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                boolean z;
                z = DocOverviewActionPopup.this.full;
                StatisticsBundle.INSTANCE.postEvent(new StatisticsNoteOutlineAddEvent(z ? NoteOutlineAddFrom.FULL_DOC_OVERVIEW_OPTION : NoteOutlineAddFrom.SLIDE_DOC_OVERVIEW_OPTION));
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }
        }, 8, null).show();
        dismiss();
        m48665L(this.full ? OnyxStatisticConstant.ID_CLICK_OUTLINE_ADD_FULL_POPUP : OnyxStatisticConstant.ID_CLICK_OUTLINE_ADD_POPUP);
    }

    /* renamed from: w */
    public final void m48669w() {
        GlobalBundle.INSTANCE.getClonePageInfo().setDocId(EditorBundleKt.docId(this.editorBundle));
        int i = this.pageIndex;
        EditorBundleKt.postEvent(this.editorBundle, new ClonePageEvent(new CloneState.Create(CollectionKt.asList(new CopyPageArgs(i, i + 1, true)))));
        dismiss();
    }

    /* renamed from: x */
    public final void m48670x() {
        List listOf;
        dismiss();
        if (EditorBundleKt.pageCount(this.editorBundle) <= 1) {
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.prohibit_delete_all_page_warning, false, 2, (Object) null);
            return;
        }
        EditorBundle editorBundle = this.editorBundle;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(Integer.valueOf(this.pageIndex));
        new GetPageIdFromIndexAction(editorBundle, listOf).build().doOnNext(new Consumer() { // from class: com.onyx.galaxy.note.editor.view.popup.DocOverviewActionPopup$deleteCurrentPage$1
            @Override // io.reactivex.rxjava3.functions.Consumer
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final void accept(@NotNull List<String> it2) {
                EditorBundle editorBundle2;
                Intrinsics.checkNotNullParameter(it2, "it");
                DocOverviewActionPopup.Companion companion = DocOverviewActionPopup.INSTANCE;
                editorBundle2 = DocOverviewActionPopup.this.editorBundle;
                Context context = DocOverviewActionPopup.this.getContext();
                final DocOverviewActionPopup docOverviewActionPopup = DocOverviewActionPopup.this;
                Function0<Unit> function0 = new Function0<Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.DocOverviewActionPopup$deleteCurrentPage$1.1
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Unit invoke() {
                        invoke2();
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        boolean z;
                        DocOverviewActionPopup.this.dismiss();
                        DocOverviewActionPopup docOverviewActionPopup2 = DocOverviewActionPopup.this;
                        z = docOverviewActionPopup2.full;
                        docOverviewActionPopup2.m48665L(z ? OnyxStatisticConstant.ID_CLICK_NOTEEDITOR_DOCSOVERVIEW_DELETE_FULL_CONFIRM_POPUP : OnyxStatisticConstant.ID_CLICK_NOTEEDITOR_DOCSOVERVIEW_CONFIRM_POPUP);
                    }
                };
                final DocOverviewActionPopup docOverviewActionPopup2 = DocOverviewActionPopup.this;
                companion.deletePages(editorBundle2, context, it2, function0, new Function0<Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.DocOverviewActionPopup$deleteCurrentPage$1.2
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Unit invoke() {
                        invoke2();
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        boolean z;
                        DocOverviewActionPopup docOverviewActionPopup3 = DocOverviewActionPopup.this;
                        z = docOverviewActionPopup3.full;
                        docOverviewActionPopup3.m48665L(z ? OnyxStatisticConstant.ID_CLICK_NOTEEDITOR_DOCSOVERVIEW_DELETE_FULL_CANCEL_POPUP : OnyxStatisticConstant.ID_CLICK_NOTEEDITOR_DOCSOVERVIEW_CANCEL_POPUP);
                    }
                });
            }
        }).subscribe();
        m48665L(this.full ? OnyxStatisticConstant.ID_VIEW_NOTEEDITOR_DOCSOVERVIEW_DELETE_FULL_POPUP : OnyxStatisticConstant.ID_VIEW_NOTEEDITOR_DOCSOVERVIEW_POPUP);
        m48665L(this.full ? OnyxStatisticConstant.ID_CLICK_DOCSOVERVIEW_DELETE_FULL_POPUP : OnyxStatisticConstant.ID_CLICK_DOCSOVERVIEW_DELETE_POPUP);
    }

    /* renamed from: y */
    public final void m48671y() {
        int i = this.pageIndex;
        EditorBundleKt.postEvent(this.editorBundle, new CopyPageEvent(CollectionKt.asList(new CopyPageArgs(i, i + 1, true))));
        dismiss();
        m48665L(this.full ? OnyxStatisticConstant.ID_CLICK_PAGE_COPY_FULL_POPUP : OnyxStatisticConstant.ID_CLICK_PAGE_COPY_POPUP);
    }

    /* renamed from: z */
    public final PopupDocOverviewActionBinding m48672z() {
        return (PopupDocOverviewActionBinding) this.binding.getValue();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DocOverviewActionPopup(@NotNull EditorBundle editorBundle, @NotNull final Context context, int i, boolean z) {
        super(context, null, 2, null);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(context, "context");
        this.editorBundle = editorBundle;
        this.pageIndex = i;
        this.full = z;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<PopupDocOverviewActionBinding>() { // from class: com.onyx.galaxy.note.editor.view.popup.DocOverviewActionPopup$binding$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PopupDocOverviewActionBinding invoke() {
                return PopupDocOverviewActionBinding.inflate(LayoutInflater.from(context));
            }
        });
        this.binding = lazy;
        m48662A();
        m48665L(z ? OnyxStatisticConstant.ID_VIEW_DOCSOVERVIEW_FULL_POPUP : OnyxStatisticConstant.ID_VIEW_DOCSOVERVIEW_POPUP);
    }
}
