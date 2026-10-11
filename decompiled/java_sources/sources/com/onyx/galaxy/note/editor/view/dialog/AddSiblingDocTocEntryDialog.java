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
import com.onyx.android.sdk.base.extension.TextViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualTocModel;
import com.onyx.android.sdk.theme.widgets.TintTextInputEditTextView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.events.app.InsertTocEntryEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.extension.IntExtKt;
import com.onyx.galaxy.note.databinding.DialogAddSiblingDocTocEntryBinding;
import com.onyx.galaxy.note.editor.view.dialog.AddSiblingDocTocEntryDialog;
import com.onyx.galaxy.note.message.data.MessageConst;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Arrays;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010#\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\r\u001a\u00020\u000b\u0012\u0006\u0010\u0011\u001a\u00020\u000e\u0012\u0006\u0010\u0014\u001a\u00020\u0012\u0012\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\b0\u0015¢\u0006\u0004\b\u001c\u0010\u001dJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u0007\u001a\u00020\u0002H\u0002J\b\u0010\t\u001a\u00020\bH\u0002J\b\u0010\n\u001a\u00020\u0002H\u0002R\u0014\u0010\r\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\fR\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0014\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u0013R\u001a\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\b0\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0016R\u001b\u0010\u001b\u001a\u00020\u00188BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0006\u0010\u0019\u001a\u0004\b\u000f\u0010\u001a¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/dialog/AddSiblingDocTocEntryDialog;", "Lcom/onyx/galaxy/note/editor/view/dialog/BaseTocUpdateDialog;", "", "m", "", "count", GoogleApiAvailabilityLight.f29016b, "i", "", "l", "j", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Landroid/content/Context;", C4921e.f26537n, "Landroid/content/Context;", "context", "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;", "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;", "siblingTocEntry", "", "Ljava/util/Set;", MessageConst.KEY_TITLE_LIST, "Lcom/onyx/galaxy/note/databinding/DialogAddSiblingDocTocEntryBinding;", "Lkotlin/Lazy;", "()Lcom/onyx/galaxy/note/databinding/DialogAddSiblingDocTocEntryBinding;", "binding", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;Ljava/util/Set;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nAddSiblingDocTocEntryDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AddSiblingDocTocEntryDialog.kt\ncom/onyx/galaxy/note/editor/view/dialog/AddSiblingDocTocEntryDialog\n+ 2 TextView.kt\nandroidx/core/widget/TextViewKt\n*L\n1#1,126:1\n65#2,16:127\n93#2,3:143\n*S KotlinDebug\n*F\n+ 1 AddSiblingDocTocEntryDialog.kt\ncom/onyx/galaxy/note/editor/view/dialog/AddSiblingDocTocEntryDialog\n*L\n68#1:127,16\n68#1:143,3\n*E\n"})
/* loaded from: classes9.dex */
public final class AddSiblingDocTocEntryDialog extends BaseTocUpdateDialog {

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final VirtualTocModel siblingTocEntry;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public final Set<String> titleList;

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AddSiblingDocTocEntryDialog(@NotNull EditorBundle editorBundle, @NotNull Context context, @NotNull VirtualTocModel siblingTocEntry, @NotNull Set<String> titleList) {
        super(editorBundle, context);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(siblingTocEntry, "siblingTocEntry");
        Intrinsics.checkNotNullParameter(titleList, "titleList");
        this.editorBundle = editorBundle;
        this.context = context;
        this.siblingTocEntry = siblingTocEntry;
        this.titleList = titleList;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<DialogAddSiblingDocTocEntryBinding>() { // from class: com.onyx.galaxy.note.editor.view.dialog.AddSiblingDocTocEntryDialog$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final DialogAddSiblingDocTocEntryBinding invoke() {
                Context context2;
                context2 = AddSiblingDocTocEntryDialog.this.context;
                return DialogAddSiblingDocTocEntryBinding.inflate(LayoutInflater.from(context2));
            }
        });
        this.binding = lazy;
        View root = m47869k().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
        setCanceledOnTouchOutside(false);
        m47871m();
        setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.sunia.HTREnginev2.t8
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                AddSiblingDocTocEntryDialog.m47864f(AddSiblingDocTocEntryDialog.this, dialogInterface);
            }
        });
        TintTextView tvConfirm = m47869k().tvConfirm;
        Intrinsics.checkNotNullExpressionValue(tvConfirm, "tvConfirm");
        ViewKt.click$default(tvConfirm, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.u8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AddSiblingDocTocEntryDialog.m47865g(AddSiblingDocTocEntryDialog.this, view);
            }
        }, 1, null);
        TintTextView tvCancel = m47869k().tvCancel;
        Intrinsics.checkNotNullExpressionValue(tvCancel, "tvCancel");
        ViewKt.click$default(tvCancel, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.v8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AddSiblingDocTocEntryDialog.m47866h(AddSiblingDocTocEntryDialog.this, view);
            }
        }, 1, null);
    }

    /* renamed from: f */
    public static final void m47864f(AddSiblingDocTocEntryDialog this$0, DialogInterface dialogInterface) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        TintTextInputEditTextView titleEdit = this$0.m47869k().titleEdit;
        Intrinsics.checkNotNullExpressionValue(titleEdit, "titleEdit");
        com.onyx.android.sdk.base.extension.ViewKt.postToShowInputKeyboard$default(titleEdit, 0L, 1, null);
    }

    /* renamed from: g */
    public static final void m47865g(AddSiblingDocTocEntryDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m47867i();
    }

    /* renamed from: h */
    public static final void m47866h(AddSiblingDocTocEntryDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m47868j();
    }

    /* renamed from: i */
    public final void m47867i() {
        boolean isBlank;
        Integer checkInputPageNumber;
        String valueOf = String.valueOf(m47869k().titleEdit.getText());
        isBlank = StringsKt__StringsJVMKt.isBlank(valueOf);
        if (isBlank) {
            valueOf = m47870l();
        }
        TintTextInputEditTextView pageEdit = m47869k().pageEdit;
        Intrinsics.checkNotNullExpressionValue(pageEdit, "pageEdit");
        if (TextViewKt.checkInputEmpty$default(pageEdit, 0, 1, null) || (checkInputPageNumber = checkInputPageNumber(String.valueOf(m47869k().pageEdit.getText()))) == null) {
            return;
        }
        VirtualTocModel virtualTocModel = new VirtualTocModel(valueOf, checkInputPageNumber.intValue());
        virtualTocModel.setParentId(this.siblingTocEntry.getParentId());
        ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.add_success, false, 2, (Object) null);
        EditorBundleKt.postEvent(this.editorBundle, new InsertTocEntryEvent(virtualTocModel));
        m47868j();
    }

    /* renamed from: j */
    public final void m47868j() {
        m47869k().titleEdit.setFocusable(false);
        m47869k().titleEdit.setEnabled(false);
        m47869k().titleEdit.clearFocus();
        com.onyx.android.sdk.base.extension.ViewKt.hideInputKeyboard(m47869k().titleEdit);
        com.onyx.android.sdk.base.extension.ViewKt.postSelf(m47869k().titleEdit, new Function1<TintTextInputEditTextView, Unit>() { // from class: com.onyx.galaxy.note.editor.view.dialog.AddSiblingDocTocEntryDialog$dismissSafe$1
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
                AddSiblingDocTocEntryDialog.this.dismiss();
            }
        });
    }

    /* renamed from: k */
    public final DialogAddSiblingDocTocEntryBinding m47869k() {
        return (DialogAddSiblingDocTocEntryBinding) this.binding.getValue();
    }

    /* renamed from: l */
    public final String m47870l() {
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
    public final void m47871m() {
        TintTextView tintTextView = m47869k().tvTocTitle;
        ResManager resManager = ResManager.INSTANCE;
        tintTextView.setText(resManager.getString(C10651R.string.sibling_toc_entry_format, this.siblingTocEntry.getTitle()));
        TintTextInputEditTextView titleEdit = m47869k().titleEdit;
        Intrinsics.checkNotNullExpressionValue(titleEdit, "titleEdit");
        TextViewKt.addCharTextChangedListener$default(titleEdit, 0, resManager.getInteger(C10651R.integer.toc_entry_title_max_char_length), 1, null);
        m47872n(0);
        TintTextInputEditTextView titleEdit2 = m47869k().titleEdit;
        Intrinsics.checkNotNullExpressionValue(titleEdit2, "titleEdit");
        titleEdit2.addTextChangedListener(new TextWatcher() { // from class: com.onyx.galaxy.note.editor.view.dialog.AddSiblingDocTocEntryDialog$initView$$inlined$addTextChangedListener$default$1
            @Override // android.text.TextWatcher
            public void afterTextChanged(@Nullable Editable s) {
                AddSiblingDocTocEntryDialog.this.m47872n(s != null ? s.length() : 0);
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(@Nullable CharSequence text, int start, int count, int after) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(@Nullable CharSequence text, int start, int before, int count) {
            }
        });
        m47869k().pageEdit.setEnabled(true);
        m47869k().pageEdit.setClickable(true);
        m47869k().pageEdit.setHint(IntExtKt.pageCountHint(EditorBundleKt.pageCount(this.editorBundle)));
        m47869k().pageEdit.setText(String.valueOf(EditorBundleKt.currentPageNumber(this.editorBundle)));
        TintTextInputEditTextView pageEdit = m47869k().pageEdit;
        Intrinsics.checkNotNullExpressionValue(pageEdit, "pageEdit");
        TextViewKt.addCharTextChangedListener$default(pageEdit, 0, resManager.getInteger(C10651R.integer.toc_entry_title_max_char_length), 1, null);
    }

    /* renamed from: n */
    public final void m47872n(int count) {
        TintTextView tintTextView = m47869k().tvNameSize;
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String string = this.context.getString(C10651R.string.oblique);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        String format = String.format(string, Arrays.copyOf(new Object[]{Integer.valueOf(count), Integer.valueOf(ResManager.INSTANCE.getInteger(C10651R.integer.toc_entry_title_max_char_length))}, 2));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        tintTextView.setText(format);
    }
}
