package com.onyx.galaxy.note.editor.view.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.text.Editable;
import android.view.LayoutInflater;
import android.view.View;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.TextViewKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.OnyxStatisticEvent;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualTocModel;
import com.onyx.android.sdk.theme.widgets.TintTextInputEditTextView;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.page.GetPageIdFromIndexAction;
import com.onyx.android.sdk.universal.editor.events.app.UpdateTocEntryEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.extension.IntExtKt;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.databinding.DialogUpdateTocEntryTitleBinding;
import com.onyx.galaxy.note.editor.view.dialog.UpdateDocTocEntryTitleDialog;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u000b\u001a\u00020\t\u0012\u0006\u0010\u000f\u001a\u00020\f\u0012\u0006\u0010\u0012\u001a\u00020\u0010\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u001a\u0010\u001bJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0002H\u0002J\u0010\u0010\b\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002R\u0014\u0010\u000b\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\nR\u0014\u0010\u000f\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0014\u0010\u0012\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0011R\u0016\u0010\u0014\u001a\u0004\u0018\u00010\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u0013R\u001b\u0010\u0019\u001a\u00020\u00158BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\r\u0010\u0018¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;", "Lcom/onyx/galaxy/note/editor/view/dialog/BaseTocUpdateDialog;", "", "l", "i", "j", "", "eventId", "m", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Landroid/content/Context;", C4921e.f26537n, "Landroid/content/Context;", "context", "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;", "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;", "tocEntry", Constants.STRING_SIG, "formFlag", "Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;", GoogleApiAvailabilityLight.f29016b, "Lkotlin/Lazy;", "()Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;", "binding", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;Ljava/lang/String;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class UpdateDocTocEntryTitleDialog extends BaseTocUpdateDialog {

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final VirtualTocModel tocEntry;

    /* renamed from: m, reason: from kotlin metadata */
    @Nullable
    public final String formFlag;

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: com.onyx.galaxy.note.editor.view.dialog.UpdateDocTocEntryTitleDialog$a */
    /* loaded from: classes9.dex */
    public static final class C12349a<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ boolean f59953f;

        public C12349a(boolean z) {
            this.f59953f = z;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<String> it2) {
            List listOf;
            Intrinsics.checkNotNullParameter(it2, "it");
            String str = (String) CollectionKt.getFirst(it2);
            if (str != null) {
                UpdateDocTocEntryTitleDialog.this.tocEntry.setPageId(str);
            }
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.edit_success, false, 2, (Object) null);
            EditorBundle editorBundle = UpdateDocTocEntryTitleDialog.this.editorBundle;
            listOf = CollectionsKt__CollectionsJVMKt.listOf(UpdateDocTocEntryTitleDialog.this.tocEntry);
            EditorBundleKt.postEvent(editorBundle, new UpdateTocEntryEvent(listOf, this.f59953f));
            UpdateDocTocEntryTitleDialog.this.m48231j();
        }
    }

    public /* synthetic */ UpdateDocTocEntryTitleDialog(EditorBundle editorBundle, Context context, VirtualTocModel virtualTocModel, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(editorBundle, context, virtualTocModel, (i & 8) != 0 ? null : str);
    }

    /* renamed from: f */
    public static final void m48227f(UpdateDocTocEntryTitleDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        String str = this$0.formFlag;
        this$0.m48234m(Intrinsics.areEqual(str, OnyxStatisticConstant.ID_CLICK_OUTLINE_EDIT_BATCH_FULL) ? OnyxStatisticConstant.ID_CLICK_OUTLINE_EDIT_CANCEL_BATCH_FULL : Intrinsics.areEqual(str, OnyxStatisticConstant.ID_CLICK_OUTLINE_EDIT_FULL_POPUP) ? OnyxStatisticConstant.ID_CLICK_OUTLINE_EDIT_CANCEL_FULL_POPUP : OnyxStatisticConstant.ID_CLICK_OUTLINE_EDIT_CANCEL_POPUP);
        this$0.m48231j();
    }

    /* renamed from: g */
    public static final void m48228g(UpdateDocTocEntryTitleDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        String str = this$0.formFlag;
        this$0.m48234m(Intrinsics.areEqual(str, OnyxStatisticConstant.ID_CLICK_OUTLINE_EDIT_BATCH_FULL) ? OnyxStatisticConstant.ID_CLICK_OUTLINE_EDIT_CONFIRM_BATCH_FULL : Intrinsics.areEqual(str, OnyxStatisticConstant.ID_CLICK_OUTLINE_EDIT_FULL_POPUP) ? OnyxStatisticConstant.ID_CLICK_OUTLINE_EDIT_CONFIRM_FULL_POPUP : OnyxStatisticConstant.ID_CLICK_OUTLINE_EDIT_CONFIRM_POPUP);
        this$0.m48230i();
    }

    /* renamed from: h */
    public static final void m48229h(UpdateDocTocEntryTitleDialog this$0, DialogInterface dialogInterface) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        TintTextInputEditTextView titleEdit = this$0.m48232k().titleEdit;
        Intrinsics.checkNotNullExpressionValue(titleEdit, "titleEdit");
        ViewKt.postToShowInputKeyboard$default(titleEdit, 0L, 1, null);
    }

    /* renamed from: i */
    public final void m48230i() {
        Integer checkInputPageNumber;
        List listOf;
        TintTextInputEditTextView titleEdit = m48232k().titleEdit;
        Intrinsics.checkNotNullExpressionValue(titleEdit, "titleEdit");
        if (TextViewKt.checkInputEmpty$default(titleEdit, 0, 1, null) || m48232k().titleEdit.getError() != null || (checkInputPageNumber = checkInputPageNumber(String.valueOf(m48232k().pageEdit.getText()))) == null) {
            return;
        }
        int intValue = checkInputPageNumber.intValue();
        String valueOf = String.valueOf(m48232k().titleEdit.getText());
        if (Intrinsics.areEqual(this.tocEntry.getTitle(), valueOf) && this.tocEntry.getPageIndex() == intValue) {
            m48231j();
            return;
        }
        this.tocEntry.setTitle(valueOf);
        boolean z = this.tocEntry.getPageIndex() != intValue;
        this.tocEntry.setPageIndex(intValue);
        EditorBundle editorBundle = this.editorBundle;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(Integer.valueOf(intValue));
        new GetPageIdFromIndexAction(editorBundle, listOf).build().doOnNext(new C12349a(z)).subscribe();
    }

    /* renamed from: j */
    public final void m48231j() {
        m48232k().titleEdit.setFocusable(false);
        m48232k().titleEdit.setEnabled(false);
        m48232k().titleEdit.clearFocus();
        ViewKt.hideInputKeyboard(m48232k().titleEdit);
        ViewKt.postSelf(m48232k().titleEdit, new Function1<TintTextInputEditTextView, Unit>() { // from class: com.onyx.galaxy.note.editor.view.dialog.UpdateDocTocEntryTitleDialog$dismissSafe$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(TintTextInputEditTextView tintTextInputEditTextView) {
                invoke2(tintTextInputEditTextView);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull TintTextInputEditTextView it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                UpdateDocTocEntryTitleDialog.this.dismiss();
            }
        });
    }

    /* renamed from: k */
    public final DialogUpdateTocEntryTitleBinding m48232k() {
        return (DialogUpdateTocEntryTitleBinding) this.binding.getValue();
    }

    /* renamed from: l */
    public final void m48233l() {
        m48232k().tvConfirm.setText(this.context.getString(C10651R.string.confirm));
        m48232k().titleEdit.setText(this.tocEntry.getTitle());
        Editable text = m48232k().titleEdit.getText();
        if (text != null) {
            m48232k().titleEdit.setSelection(text.length());
        }
        TintTextInputEditTextView titleEdit = m48232k().titleEdit;
        Intrinsics.checkNotNullExpressionValue(titleEdit, "titleEdit");
        TextViewKt.addCharTextChangedListener$default(titleEdit, 0, ResManager.INSTANCE.getInteger(C10651R.integer.toc_entry_title_max_char_length), 1, null);
        m48232k().pageEdit.setText(String.valueOf(this.tocEntry.getPageIndex() + 1));
        m48232k().pageEdit.setHint(IntExtKt.pageCountHint(EditorBundleKt.pageCount(this.editorBundle)));
    }

    /* renamed from: m */
    public final void m48234m(String eventId) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(OnyxStatisticConstant.KEY_NOTE_ID, EditorBundleKt.docId(this.editorBundle));
        StatisticsBundle.INSTANCE.postEvent(new OnyxStatisticEvent(eventId, linkedHashMap));
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UpdateDocTocEntryTitleDialog(@NotNull EditorBundle editorBundle, @NotNull Context context, @NotNull VirtualTocModel tocEntry, @Nullable String str) {
        super(editorBundle, context);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(tocEntry, "tocEntry");
        this.editorBundle = editorBundle;
        this.context = context;
        this.tocEntry = tocEntry;
        this.formFlag = str;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<DialogUpdateTocEntryTitleBinding>() { // from class: com.onyx.galaxy.note.editor.view.dialog.UpdateDocTocEntryTitleDialog$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final DialogUpdateTocEntryTitleBinding invoke() {
                Context context2;
                context2 = UpdateDocTocEntryTitleDialog.this.context;
                return DialogUpdateTocEntryTitleBinding.inflate(LayoutInflater.from(context2));
            }
        });
        this.binding = lazy;
        View root = m48232k().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
        m48233l();
        m48232k().tvCancel.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.exn
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                UpdateDocTocEntryTitleDialog.m48227f(UpdateDocTocEntryTitleDialog.this, view);
            }
        });
        m48232k().tvConfirm.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.fxn
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                UpdateDocTocEntryTitleDialog.m48228g(UpdateDocTocEntryTitleDialog.this, view);
            }
        });
        setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.sunia.HTREnginev2.gxn
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                UpdateDocTocEntryTitleDialog.m48229h(UpdateDocTocEntryTitleDialog.this, dialogInterface);
            }
        });
        String str2 = "view_galaxy_outline_edit_0003";
        if (!Intrinsics.areEqual(str, OnyxStatisticConstant.ID_CLICK_OUTLINE_EDIT_BATCH_FULL) && !Intrinsics.areEqual(str, OnyxStatisticConstant.ID_CLICK_OUTLINE_EDIT_FULL_POPUP)) {
            str2 = OnyxStatisticConstant.ID_VIEW_OUTLINE_EDIT_POPUP;
        }
        m48234m(str2);
    }
}
