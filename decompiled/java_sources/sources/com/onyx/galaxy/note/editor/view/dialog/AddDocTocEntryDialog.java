package com.onyx.galaxy.note.editor.view.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.extension.IntKt;
import com.onyx.android.sdk.base.extension.StringKt;
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
import com.onyx.galaxy.note.databinding.DialogUpdateTocEntryTitleBinding;
import com.onyx.galaxy.note.editor.view.dialog.AddDocTocEntryDialog;
import com.onyx.galaxy.note.message.data.MessageConst;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.Set;
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
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010#\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001BM\u0012\u0006\u0010\u000f\u001a\u00020\r\u0012\u0006\u0010\u0013\u001a\u00020\u0010\u0012\b\u0010\u0016\u001a\u0004\u0018\u00010\u0014\u0012\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\b0\u0017\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\b\u0012\u0010\b\u0002\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u001c¢\u0006\u0004\b$\u0010%J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u0007\u001a\u00020\u0002H\u0002J\b\u0010\t\u001a\u00020\bH\u0002J\b\u0010\n\u001a\u00020\u0002H\u0002J\u0010\u0010\f\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\bH\u0002R\u0014\u0010\u000f\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000eR\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0016\u001a\u0004\u0018\u00010\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u0015R\u001a\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\b0\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0018R\u0016\u0010\u001b\u001a\u0004\u0018\u00010\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\u001aR\u001c\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u001dR\u001b\u0010#\u001a\u00020\u001f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b \u0010!\u001a\u0004\b\u0011\u0010\"¨\u0006&"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;", "Lcom/onyx/galaxy/note/editor/view/dialog/BaseTocUpdateDialog;", "", "m", "", "count", C4921e.f26528e, "i", "", "l", "j", "eventId", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Landroid/content/Context;", C4921e.f26537n, "Landroid/content/Context;", "context", "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;", "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;", "parentTocEntry", "", "Ljava/util/Set;", MessageConst.KEY_TITLE_LIST, Constants.STRING_SIG, "fromFlag", "Lkotlin/Function0;", "Lkotlin/jvm/functions/Function0;", "onAddCallback", "Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;", "p", "Lkotlin/Lazy;", "()Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;", "binding", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;Ljava/util/Set;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nAddDocTocEntryDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AddDocTocEntryDialog.kt\ncom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog\n+ 2 TextView.kt\nandroidx/core/widget/TextViewKt\n*L\n1#1,214:1\n65#2,16:215\n93#2,3:231\n*S KotlinDebug\n*F\n+ 1 AddDocTocEntryDialog.kt\ncom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog\n*L\n127#1:215,16\n127#1:231,3\n*E\n"})
/* loaded from: classes9.dex */
public final class AddDocTocEntryDialog extends BaseTocUpdateDialog {

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: l, reason: from kotlin metadata */
    @Nullable
    public final VirtualTocModel parentTocEntry;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public final Set<String> titleList;

    /* renamed from: n, reason: from kotlin metadata */
    @Nullable
    public final String fromFlag;

    /* renamed from: o, reason: from kotlin metadata */
    @Nullable
    public final Function0<Unit> onAddCallback;

    /* renamed from: p, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    public /* synthetic */ AddDocTocEntryDialog(EditorBundle editorBundle, Context context, VirtualTocModel virtualTocModel, Set set, String str, Function0 function0, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(editorBundle, context, virtualTocModel, set, (i & 16) != 0 ? null : str, (i & 32) != 0 ? null : function0);
    }

    /* renamed from: f */
    public static final void m47851f(AddDocTocEntryDialog this$0, DialogInterface dialogInterface) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        TintTextInputEditTextView titleEdit = this$0.m47856k().titleEdit;
        Intrinsics.checkNotNullExpressionValue(titleEdit, "titleEdit");
        ViewKt.postToShowInputKeyboard$default(titleEdit, 0L, 1, null);
    }

    /* renamed from: g */
    public static final void m47852g(AddDocTocEntryDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m47854i();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: h */
    public static final void m47853h(AddDocTocEntryDialog this$0, View view) {
        String str;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        String str2 = this$0.fromFlag;
        if (str2 != null) {
            switch (str2.hashCode()) {
                case -847425578:
                    if (str2.equals(OnyxStatisticConstant.ID_CLICK_OUTLINE_ADD_CHILD_POPUP)) {
                        str = OnyxStatisticConstant.ID_VIEW_OUTLINE_ADD_CHILD_CANCEL_POPUP;
                        break;
                    }
                    break;
                case -847425575:
                    if (str2.equals(OnyxStatisticConstant.ID_CLICK_OUTLINE_ADD_FULL)) {
                        str = OnyxStatisticConstant.ID_VIEW_OUTLINE_ADD_CANCEL_FULL;
                        break;
                    }
                    break;
                case -847425574:
                    if (str2.equals(OnyxStatisticConstant.ID_CLICK_OUTLINE_ADD_CHILD_FULL_POPUP)) {
                        str = OnyxStatisticConstant.ID_VIEW_OUTLINE_ADD_CHILD_CANCEL_FULL_POPUP;
                        break;
                    }
                    break;
                case -847425573:
                    if (str2.equals(OnyxStatisticConstant.ID_CLICK_OUTLINE_ADD_CHILD_BATCH_FULL)) {
                        str = OnyxStatisticConstant.ID_CLICK_OUTLINE_ADD_CHILD_CANCEL_BATCH_FULL;
                        break;
                    }
                    break;
            }
            this$0.m47859n(str);
            this$0.m47855j();
        }
        str = OnyxStatisticConstant.ID_VIEW_OUTLINE_ADD_CANCEL;
        this$0.m47859n(str);
        this$0.m47855j();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: i */
    public final void m47854i() {
        boolean isBlank;
        Integer checkInputPageNumber;
        String str;
        String valueOf = String.valueOf(m47856k().titleEdit.getText());
        isBlank = StringsKt__StringsJVMKt.isBlank(valueOf);
        if (isBlank) {
            valueOf = m47857l();
        }
        TintTextInputEditTextView pageEdit = m47856k().pageEdit;
        Intrinsics.checkNotNullExpressionValue(pageEdit, "pageEdit");
        if (TextViewKt.checkInputEmpty$default(pageEdit, 0, 1, null) || (checkInputPageNumber = checkInputPageNumber(String.valueOf(m47856k().pageEdit.getText()))) == null) {
            return;
        }
        VirtualTocModel virtualTocModel = new VirtualTocModel(valueOf, checkInputPageNumber.intValue());
        VirtualTocModel virtualTocModel2 = this.parentTocEntry;
        virtualTocModel.setParentId(virtualTocModel2 != null ? virtualTocModel2.getUniqueId() : null);
        Function0<Unit> function0 = this.onAddCallback;
        if (function0 != null) {
            function0.invoke();
        }
        ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.add_success, false, 2, (Object) null);
        EditorBundleKt.postEvent(this.editorBundle, new InsertTocEntryEvent(virtualTocModel));
        String str2 = this.fromFlag;
        if (str2 != null) {
            switch (str2.hashCode()) {
                case -847425578:
                    if (str2.equals(OnyxStatisticConstant.ID_CLICK_OUTLINE_ADD_CHILD_POPUP)) {
                        str = OnyxStatisticConstant.ID_VIEW_OUTLINE_ADD_CHILD_CONFIRM_POPUP;
                        break;
                    }
                    break;
                case -847425575:
                    if (str2.equals(OnyxStatisticConstant.ID_CLICK_OUTLINE_ADD_FULL)) {
                        str = OnyxStatisticConstant.ID_VIEW_OUTLINE_ADD_CONFIRM_FULL;
                        break;
                    }
                    break;
                case -847425574:
                    if (str2.equals(OnyxStatisticConstant.ID_CLICK_OUTLINE_ADD_CHILD_FULL_POPUP)) {
                        str = OnyxStatisticConstant.ID_VIEW_OUTLINE_ADD_CHILD_CONFIRM_FULL_POPUP;
                        break;
                    }
                    break;
                case -847425573:
                    if (str2.equals(OnyxStatisticConstant.ID_CLICK_OUTLINE_ADD_CHILD_BATCH_FULL)) {
                        str = OnyxStatisticConstant.ID_CLICK_OUTLINE_ADD_CHILD_CONFIRM_BATCH_FULL;
                        break;
                    }
                    break;
            }
            m47859n(str);
            m47855j();
        }
        str = OnyxStatisticConstant.ID_VIEW_OUTLINE_ADD_CONFIRM;
        m47859n(str);
        m47855j();
    }

    /* renamed from: j */
    public final void m47855j() {
        m47856k().titleEdit.setFocusable(false);
        m47856k().titleEdit.setEnabled(false);
        m47856k().titleEdit.clearFocus();
        ViewKt.hideInputKeyboard(m47856k().titleEdit);
        ViewKt.postSelf(m47856k().titleEdit, new Function1<TintTextInputEditTextView, Unit>() { // from class: com.onyx.galaxy.note.editor.view.dialog.AddDocTocEntryDialog$dismissSafe$1
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
                AddDocTocEntryDialog.this.dismiss();
            }
        });
    }

    /* renamed from: k */
    public final DialogUpdateTocEntryTitleBinding m47856k() {
        return (DialogUpdateTocEntryTitleBinding) this.binding.getValue();
    }

    /* renamed from: l */
    public final String m47857l() {
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String string = this.context.getString(C10651R.string.unnamed_title);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        String format = String.format(string, Arrays.copyOf(new Object[]{""}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        int i = 0;
        while (this.titleList.contains(format)) {
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
    public final void m47858m() {
        VirtualTocModel virtualTocModel = this.parentTocEntry;
        String title = virtualTocModel != null ? virtualTocModel.getTitle() : null;
        if (StringKt.isNotBlank(title)) {
            m47856k().tvTitle.setText(C10651R.string.add_to_child_toc);
            m47856k().tvDesc.setText(C10651R.string.add_child_toc_title_desc);
            m47856k().tvTocTitle.setText(this.context.getString(C10651R.string.parent_toc_entry_format, title));
            m47856k().titleEdit.setHint(ResManager.INSTANCE.getString(C10651R.string.input_sub_toc_entry_title));
        } else {
            m47856k().tvTitle.setText(C10651R.string.add_to_toc);
            m47856k().titleEdit.setHint(ResManager.INSTANCE.getString(C10651R.string.input_toc_entry_title));
        }
        TintTextInputEditTextView titleEdit = m47856k().titleEdit;
        Intrinsics.checkNotNullExpressionValue(titleEdit, "titleEdit");
        ResManager resManager = ResManager.INSTANCE;
        TextViewKt.addCharTextChangedListener$default(titleEdit, 0, resManager.getInteger(C10651R.integer.toc_entry_title_max_char_length), 1, null);
        m47860o(0);
        TintTextInputEditTextView titleEdit2 = m47856k().titleEdit;
        Intrinsics.checkNotNullExpressionValue(titleEdit2, "titleEdit");
        titleEdit2.addTextChangedListener(new TextWatcher() { // from class: com.onyx.galaxy.note.editor.view.dialog.AddDocTocEntryDialog$initView$$inlined$addTextChangedListener$default$1
            @Override // android.text.TextWatcher
            public void afterTextChanged(@Nullable Editable s) {
                AddDocTocEntryDialog.this.m47860o(s != null ? s.length() : 0);
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(@Nullable CharSequence text, int start, int count, int after) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(@Nullable CharSequence text, int start, int before, int count) {
            }
        });
        m47856k().pageEdit.setEnabled(true);
        m47856k().pageEdit.setClickable(true);
        m47856k().pageEdit.setHint(IntExtKt.pageCountHint(EditorBundleKt.pageCount(this.editorBundle)));
        m47856k().pageEdit.setText(String.valueOf(EditorBundleKt.currentPageNumber(this.editorBundle)));
        TintTextInputEditTextView pageEdit = m47856k().pageEdit;
        Intrinsics.checkNotNullExpressionValue(pageEdit, "pageEdit");
        TextViewKt.addCharTextChangedListener$default(pageEdit, 0, resManager.getInteger(C10651R.integer.toc_entry_title_max_char_length), 1, null);
    }

    /* renamed from: n */
    public final void m47859n(String eventId) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(OnyxStatisticConstant.KEY_NOTE_ID, EditorBundleKt.docId(this.editorBundle));
        StatisticsBundle.INSTANCE.postEvent(new OnyxStatisticEvent(eventId, linkedHashMap));
    }

    /* renamed from: o */
    public final void m47860o(int count) {
        TintTextView tintTextView = m47856k().tvNameSize;
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String string = this.context.getString(C10651R.string.oblique);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        String format = String.format(string, Arrays.copyOf(new Object[]{Integer.valueOf(count), Integer.valueOf(ResManager.INSTANCE.getInteger(C10651R.integer.toc_entry_title_max_char_length))}, 2));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        tintTextView.setText(format);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public AddDocTocEntryDialog(@NotNull EditorBundle editorBundle, @NotNull Context context, @Nullable VirtualTocModel virtualTocModel, @NotNull Set<String> titleList, @Nullable String str, @Nullable Function0<Unit> function0) {
        super(editorBundle, context);
        Lazy lazy;
        String str2;
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(titleList, "titleList");
        this.editorBundle = editorBundle;
        this.context = context;
        this.parentTocEntry = virtualTocModel;
        this.titleList = titleList;
        this.fromFlag = str;
        this.onAddCallback = function0;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<DialogUpdateTocEntryTitleBinding>() { // from class: com.onyx.galaxy.note.editor.view.dialog.AddDocTocEntryDialog$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final DialogUpdateTocEntryTitleBinding invoke() {
                Context context2;
                context2 = AddDocTocEntryDialog.this.context;
                return DialogUpdateTocEntryTitleBinding.inflate(LayoutInflater.from(context2));
            }
        });
        this.binding = lazy;
        View root = m47856k().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
        setCanceledOnTouchOutside(false);
        m47858m();
        setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.sunia.HTREnginev2.m8
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                AddDocTocEntryDialog.m47851f(AddDocTocEntryDialog.this, dialogInterface);
            }
        });
        m47856k().tvConfirm.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.n8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AddDocTocEntryDialog.m47852g(AddDocTocEntryDialog.this, view);
            }
        });
        m47856k().tvCancel.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.o8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AddDocTocEntryDialog.m47853h(AddDocTocEntryDialog.this, view);
            }
        });
        if (str != null) {
            switch (str.hashCode()) {
                case -847425578:
                    if (str.equals(OnyxStatisticConstant.ID_CLICK_OUTLINE_ADD_CHILD_POPUP)) {
                        str2 = OnyxStatisticConstant.ID_VIEW_OUTLINE_ADD_CHILD_POPUP;
                        break;
                    }
                    break;
                case -847425575:
                    if (str.equals(OnyxStatisticConstant.ID_CLICK_OUTLINE_ADD_FULL)) {
                        str2 = OnyxStatisticConstant.ID_VIEW_OUTLINE_ADD_FULL;
                        break;
                    }
                    break;
                case -847425574:
                    if (str.equals(OnyxStatisticConstant.ID_CLICK_OUTLINE_ADD_CHILD_FULL_POPUP)) {
                        str2 = OnyxStatisticConstant.ID_VIEW_OUTLINE_ADD_CHILD_FULL_POPUP;
                        break;
                    }
                    break;
                case -847425573:
                    if (str.equals(OnyxStatisticConstant.ID_CLICK_OUTLINE_ADD_CHILD_BATCH_FULL)) {
                        str2 = OnyxStatisticConstant.ID_VIEW_OUTLINE_ADD_CHILD_BATCH_FULL;
                        break;
                    }
                    break;
            }
            m47859n(str2);
        }
        str2 = OnyxStatisticConstant.ID_VIEW_OUTLINE_ADD;
        m47859n(str2);
    }
}
