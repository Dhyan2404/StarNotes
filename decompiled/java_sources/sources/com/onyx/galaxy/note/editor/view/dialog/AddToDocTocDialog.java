package com.onyx.galaxy.note.editor.view.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.data.Tree;
import com.onyx.android.sdk.base.extension.IntKt;
import com.onyx.android.sdk.base.extension.TextViewKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.OnyxStatisticEvent;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualTocModel;
import com.onyx.android.sdk.theme.widgets.TintTextInputEditTextView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.events.app.InsertTocEntryEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.extension.IntExtKt;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.databinding.DialogAddToTocBinding;
import com.onyx.galaxy.note.editor.view.dialog.AddToDocTocDialog;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt__StringsJVMKt;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u000f\u001a\u00020\r\u0012\u0006\u0010\u0013\u001a\u00020\u0010\u0012\u0006\u0010\u0016\u001a\u00020\u0014\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\b\u0012\u0010\b\u0002\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0019¢\u0006\u0004\b \u0010!J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u0007\u001a\u00020\u0002H\u0002J\b\u0010\t\u001a\u00020\bH\u0002J\b\u0010\n\u001a\u00020\u0002H\u0002J\u0010\u0010\f\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\bH\u0002R\u0014\u0010\u000f\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000eR\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0016\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u0015R\u0016\u0010\u0018\u001a\u0004\u0018\u00010\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0017R\u001c\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\u001aR\u001b\u0010\u001f\u001a\u00020\u001c8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0006\u0010\u001d\u001a\u0004\b\u0011\u0010\u001e¨\u0006\""}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;", "Lcom/onyx/galaxy/note/editor/view/dialog/BaseTocUpdateDialog;", "", "m", "", "count", C4921e.f26528e, "i", "", "l", "j", "eventId", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Landroid/content/Context;", C4921e.f26537n, "Landroid/content/Context;", "context", "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;", "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;", "tocEntry", Constants.STRING_SIG, "formFlag", "Lkotlin/Function0;", "Lkotlin/jvm/functions/Function0;", "onAddCallback", "Lcom/onyx/galaxy/note/databinding/DialogAddToTocBinding;", "Lkotlin/Lazy;", "()Lcom/onyx/galaxy/note/databinding/DialogAddToTocBinding;", "binding", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nAddToDocTocDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AddToDocTocDialog.kt\ncom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog\n+ 2 TextView.kt\nandroidx/core/widget/TextViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,178:1\n65#2,16:179\n93#2,3:195\n1855#3,2:198\n*S KotlinDebug\n*F\n+ 1 AddToDocTocDialog.kt\ncom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog\n*L\n93#1:179,16\n93#1:195,3\n147#1:198,2\n*E\n"})
/* loaded from: classes9.dex */
public final class AddToDocTocDialog extends BaseTocUpdateDialog {

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
    @Nullable
    public final Function0<Unit> onAddCallback;

    /* renamed from: o, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    public /* synthetic */ AddToDocTocDialog(EditorBundle editorBundle, Context context, VirtualTocModel virtualTocModel, String str, Function0 function0, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(editorBundle, context, virtualTocModel, (i & 8) != 0 ? null : str, (i & 16) != 0 ? null : function0);
    }

    /* renamed from: f */
    public static final void m47876f(AddToDocTocDialog this$0, DialogInterface dialogInterface) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        TintTextInputEditTextView titleEdit = this$0.m47881k().titleEdit;
        Intrinsics.checkNotNullExpressionValue(titleEdit, "titleEdit");
        ViewKt.postToShowInputKeyboard$default(titleEdit, 0L, 1, null);
    }

    /* renamed from: g */
    public static final void m47877g(AddToDocTocDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m47879i();
    }

    /* renamed from: h */
    public static final void m47878h(AddToDocTocDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m47884n(Intrinsics.areEqual(this$0.formFlag, OnyxStatisticConstant.ID_VIEW_OUTLINE_ADD_DOCSSETTING) ? OnyxStatisticConstant.ID_CLICK_OUTLINE_ADD_DOCSSETTING_CANCEL : OnyxStatisticConstant.ID_CLICK_OUTLINE_ADD_CHILD_CANCEL_BATCH_FULL);
        this$0.m47880j();
    }

    /* renamed from: i */
    public final void m47879i() {
        boolean isBlank;
        Integer checkInputPageNumber;
        String valueOf = String.valueOf(m47881k().titleEdit.getText());
        isBlank = StringsKt__StringsJVMKt.isBlank(valueOf);
        if (isBlank) {
            valueOf = m47882l();
        }
        TintTextInputEditTextView pageEdit = m47881k().pageEdit;
        Intrinsics.checkNotNullExpressionValue(pageEdit, "pageEdit");
        if (TextViewKt.checkInputEmpty$default(pageEdit, 0, 1, null) || (checkInputPageNumber = checkInputPageNumber(String.valueOf(m47881k().pageEdit.getText()))) == null) {
            return;
        }
        int intValue = checkInputPageNumber.intValue();
        if (Intrinsics.areEqual(this.tocEntry.getTitle(), valueOf) && this.tocEntry.getPageIndex() == intValue) {
            m47880j();
            return;
        }
        Function0<Unit> function0 = this.onAddCallback;
        if (function0 != null) {
            function0.invoke();
        }
        ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.add_success, false, 2, (Object) null);
        this.tocEntry.setTitle(valueOf);
        this.tocEntry.setPageIndex(intValue);
        EditorBundleKt.postEvent(this.editorBundle, new InsertTocEntryEvent(this.tocEntry));
        m47884n(Intrinsics.areEqual(this.formFlag, OnyxStatisticConstant.ID_VIEW_OUTLINE_ADD_DOCSSETTING) ? OnyxStatisticConstant.ID_CLICK_OUTLINE_ADD_DOCSSETTING_CONFIRM : OnyxStatisticConstant.ID_CLICK_OUTLINE_ADD_CHILD_CONFIRM_BATCH_FULL);
        m47880j();
    }

    /* renamed from: j */
    public final void m47880j() {
        m47881k().titleEdit.setFocusable(false);
        m47881k().titleEdit.setEnabled(false);
        m47881k().titleEdit.clearFocus();
        ViewKt.hideInputKeyboard(m47881k().titleEdit);
        ViewKt.postSelf(m47881k().titleEdit, new Function1<TintTextInputEditTextView, Unit>() { // from class: com.onyx.galaxy.note.editor.view.dialog.AddToDocTocDialog$dismissSafe$1
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
                AddToDocTocDialog.this.dismiss();
            }
        });
    }

    /* renamed from: k */
    public final DialogAddToTocBinding m47881k() {
        return (DialogAddToTocBinding) this.binding.getValue();
    }

    /* renamed from: l */
    public final String m47882l() {
        List<Tree<VirtualTocModel>> childrenToList = this.editorBundle.getWorkBundle().getVirtualPolicy().readTableOfContent().childrenToList();
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = childrenToList.iterator();
        while (it2.hasNext()) {
            Tree tree = (Tree) it2.next();
            VirtualTocModel virtualTocModel = (VirtualTocModel) tree.getItem();
            if (StringUtils.isNotBlank(virtualTocModel != null ? virtualTocModel.getTitle() : null)) {
                VirtualTocModel virtualTocModel2 = (VirtualTocModel) tree.getItem();
                String title = virtualTocModel2 != null ? virtualTocModel2.getTitle() : null;
                Intrinsics.checkNotNull(title);
                arrayList.add(title);
            }
        }
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String string = this.context.getString(C10651R.string.unnamed_title);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        String format = String.format(string, Arrays.copyOf(new Object[]{""}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        int i = 0;
        while (arrayList.contains(format)) {
            i++;
            StringCompanionObject stringCompanionObject2 = StringCompanionObject.INSTANCE;
            String string2 = this.context.getString(C10651R.string.unnamed_title);
            Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
            format = String.format(string2, Arrays.copyOf(new Object[]{IntKt.formatNumber(i)}, 1));
            Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        }
        return format;
    }

    /* renamed from: m */
    public final void m47883m() {
        m47881k().titleEdit.setText(this.tocEntry.getTitle());
        m47881k().titleEdit.setSelection(this.tocEntry.getTitle().length());
        TintTextInputEditTextView titleEdit = m47881k().titleEdit;
        Intrinsics.checkNotNullExpressionValue(titleEdit, "titleEdit");
        TextViewKt.addCharTextChangedListener$default(titleEdit, 0, ResManager.INSTANCE.getInteger(C10651R.integer.toc_entry_title_max_char_length), 1, null);
        m47885o(0);
        TintTextInputEditTextView titleEdit2 = m47881k().titleEdit;
        Intrinsics.checkNotNullExpressionValue(titleEdit2, "titleEdit");
        titleEdit2.addTextChangedListener(new TextWatcher() { // from class: com.onyx.galaxy.note.editor.view.dialog.AddToDocTocDialog$initView$$inlined$addTextChangedListener$default$1
            @Override // android.text.TextWatcher
            public void afterTextChanged(@Nullable Editable s) {
                AddToDocTocDialog.this.m47885o(s != null ? s.length() : 0);
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(@Nullable CharSequence text, int start, int count, int after) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(@Nullable CharSequence text, int start, int before, int count) {
            }
        });
        m47881k().pageEdit.setText(String.valueOf(this.tocEntry.getPageIndex() + 1));
        m47881k().pageEdit.setHint(IntExtKt.pageCountHint(EditorBundleKt.pageCount(this.editorBundle)));
    }

    /* renamed from: n */
    public final void m47884n(String eventId) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(OnyxStatisticConstant.KEY_NOTE_ID, EditorBundleKt.docId(this.editorBundle));
        StatisticsBundle.INSTANCE.postEvent(new OnyxStatisticEvent(eventId, linkedHashMap));
    }

    /* renamed from: o */
    public final void m47885o(int count) {
        TintTextView tintTextView = m47881k().tvNameSize;
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String string = this.context.getString(C10651R.string.oblique);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        String format = String.format(string, Arrays.copyOf(new Object[]{Integer.valueOf(count), Integer.valueOf(ResManager.INSTANCE.getInteger(C10651R.integer.toc_entry_title_max_char_length))}, 2));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        tintTextView.setText(format);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AddToDocTocDialog(@NotNull EditorBundle editorBundle, @NotNull Context context, @NotNull VirtualTocModel tocEntry, @Nullable String str, @Nullable Function0<Unit> function0) {
        super(editorBundle, context);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(tocEntry, "tocEntry");
        this.editorBundle = editorBundle;
        this.context = context;
        this.tocEntry = tocEntry;
        this.formFlag = str;
        this.onAddCallback = function0;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<DialogAddToTocBinding>() { // from class: com.onyx.galaxy.note.editor.view.dialog.AddToDocTocDialog$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final DialogAddToTocBinding invoke() {
                Context context2;
                context2 = AddToDocTocDialog.this.context;
                return DialogAddToTocBinding.inflate(LayoutInflater.from(context2));
            }
        });
        this.binding = lazy;
        View root = m47881k().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
        setCanceledOnTouchOutside(false);
        m47883m();
        setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.sunia.HTREnginev2.w8
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                AddToDocTocDialog.m47876f(AddToDocTocDialog.this, dialogInterface);
            }
        });
        m47881k().tvConfirm.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.x8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AddToDocTocDialog.m47877g(AddToDocTocDialog.this, view);
            }
        });
        m47881k().tvCancel.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.y8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AddToDocTocDialog.m47878h(AddToDocTocDialog.this, view);
            }
        });
        m47884n(Intrinsics.areEqual(str, OnyxStatisticConstant.ID_VIEW_OUTLINE_ADD_DOCSSETTING) ? OnyxStatisticConstant.ID_VIEW_OUTLINE_ADD_DOCSSETTING_POPUP : OnyxStatisticConstant.ID_VIEW_OUTLINE_ADD_CHILD_BATCH_FULL);
    }
}
