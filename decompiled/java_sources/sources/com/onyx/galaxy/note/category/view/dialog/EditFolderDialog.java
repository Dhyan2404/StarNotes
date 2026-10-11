package com.onyx.galaxy.note.category.view.dialog;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import androidx.fragment.app.C1126e;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.blankj.utilcode.util.ColorUtils;
import com.blankj.utilcode.util.KeyboardUtils;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TreeNode;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.extension.TextViewKt;
import com.onyx.android.sdk.base.extension.TypeExtKt;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.utils.IntListOption;
import com.onyx.android.sdk.extension.StringRuleLengthKt;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.p039ui.AutoSizeDialog;
import com.onyx.android.sdk.p039ui.MaxLengthInputTextEdit;
import com.onyx.android.sdk.replicator.note.bean.NoteModelBean;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.action.EditFolderAction;
import com.onyx.galaxy.note.category.view.adapter.ColorViewAdapter;
import com.onyx.galaxy.note.category.view.dialog.EditFolderDialog;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.databinding.DialogEditFolderBinding;
import com.onyx.galaxy.note.settings.data.NoteConfigConst;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.onyx.galaxy.note.utils.ThumbnailColorUtils;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0014\u001a\u00020\u0012\u0012\u0010\u0010\u0019\u001a\f\u0012\u0004\u0012\u00020\u00160\u0015j\u0002`\u0017\u0012\u0006\u0010\u001b\u001a\u00020\u000e¢\u0006\u0004\b/\u00100J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\b\u0010\u0006\u001a\u00020\u0004H\u0016J\b\u0010\u0007\u001a\u00020\u0004H\u0003J\b\u0010\b\u001a\u00020\u0004H\u0002J\b\u0010\t\u001a\u00020\u0004H\u0002J\b\u0010\n\u001a\u00020\u0004H\u0003J\b\u0010\f\u001a\u00020\u000bH\u0002J\b\u0010\r\u001a\u00020\u000bH\u0002J\u0010\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0010\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000eH\u0002R\u0014\u0010\u0014\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u0013R\u001e\u0010\u0019\u001a\f\u0012\u0004\u0012\u00020\u00160\u0015j\u0002`\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u0018R\u0014\u0010\u001b\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u001aR\u001b\u0010 \u001a\u00020\u001c8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR\u0014\u0010$\u001a\u00020!8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R\u0014\u0010(\u001a\u00020%8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010'R\u0014\u0010+\u001a\u00020)8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010*R\u0016\u0010.\u001a\u00020,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010-¨\u00061"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;", "Lcom/onyx/android/sdk/ui/AutoSizeDialog;", "Landroid/os/Bundle;", C1126e.f7693h, "", "onCreate", "dismiss", C4921e.f26537n, C6999h.f39688c, "i", "j", "", C6997f.f39671c, "e", "", "eventId", C4921e.f26528e, GoogleApiAvailabilityLight.f29016b, "Landroid/content/Context;", "Landroid/content/Context;", "context", "Lcom/onyx/android/sdk/base/data/TreeNode;", "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;", "Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNode;", "Lcom/onyx/android/sdk/base/data/TreeNode;", "node", Constants.STRING_SIG, "tag", "Lcom/onyx/galaxy/note/databinding/DialogEditFolderBinding;", "Lkotlin/Lazy;", C6998g.f39679a, "()Lcom/onyx/galaxy/note/databinding/DialogEditFolderBinding;", "binding", "Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;", "l", "Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;", "adapter", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "m", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "compositeDisposable", "Lcom/onyx/android/sdk/data/utils/IntListOption;", "Lcom/onyx/android/sdk/data/utils/IntListOption;", "colorsOption", "", "I", "folderColor", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/android/sdk/base/data/TreeNode;Ljava/lang/String;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nEditFolderDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditFolderDialog.kt\ncom/onyx/galaxy/note/category/view/dialog/EditFolderDialog\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 TextView.kt\nandroidx/core/widget/TextViewKt\n*L\n1#1,170:1\n1#2:171\n65#3,16:172\n93#3,3:188\n*S KotlinDebug\n*F\n+ 1 EditFolderDialog.kt\ncom/onyx/galaxy/note/category/view/dialog/EditFolderDialog\n*L\n120#1:172,16\n120#1:188,3\n*E\n"})
/* loaded from: classes17.dex */
public final class EditFolderDialog extends AutoSizeDialog {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final TreeNode<NoteModelBean> node;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final String tag;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final ColorViewAdapter adapter;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public final CompositeDisposable compositeDisposable;

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public final IntListOption colorsOption;

    /* renamed from: o, reason: from kotlin metadata */
    public int folderColor;

    /* renamed from: com.onyx.galaxy.note.category.view.dialog.EditFolderDialog$a */
    /* loaded from: classes9.dex */
    public static final class C11434a<T> implements Consumer {
        public C11434a() {
        }

        /* renamed from: a */
        public final void m44353a(boolean z) {
            if (z) {
                EditFolderDialog.this.dismiss();
            } else {
                ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.edit_folder_conflicted, false, 2, (Object) null);
            }
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m44353a(((Boolean) obj).booleanValue());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EditFolderDialog(@NotNull Context context, @NotNull TreeNode<NoteModelBean> node, @NotNull String tag) {
        super(context);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(node, "node");
        Intrinsics.checkNotNullParameter(tag, "tag");
        this.context = context;
        this.node = node;
        this.tag = tag;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<DialogEditFolderBinding>() { // from class: com.onyx.galaxy.note.category.view.dialog.EditFolderDialog$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final DialogEditFolderBinding invoke() {
                Context context2;
                context2 = EditFolderDialog.this.context;
                return DialogEditFolderBinding.inflate(LayoutInflater.from(context2));
            }
        });
        this.binding = lazy;
        this.adapter = new ColorViewAdapter();
        this.compositeDisposable = new CompositeDisposable();
        this.colorsOption = MMKVNote.INSTANCE.getFolderColorListOption(NoteConfigConst.INSTANCE.getDEFAULT_FOLDER_COLOR_LIST());
        this.folderColor = node.getData().getStyle().getColor();
    }

    /* renamed from: l */
    public static final void m44342l(EditFolderDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m44351n(OnyxStatisticConstant.ID_FOLDER_OP_POPUP_EDIT_DIALOG_DONE_CLICK);
        this$0.m44345f();
    }

    /* renamed from: m */
    public static final void m44343m(EditFolderDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m44352o(OnyxStatisticConstant.ID_FOLDER_OP_POPUP_EDIT_DIALOG_CANCEL_CLICK);
        this$0.dismiss();
    }

    @Override // com.onyx.android.sdk.p039ui.AutoSizeDialog, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        this.compositeDisposable.clear();
    }

    /* renamed from: e */
    public final boolean m44344e() {
        if (StringKt.isNotBlank(String.valueOf(m44346g().tieName.getText()))) {
            return true;
        }
        ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.dialog_create_folder_error, false, 2, (Object) null);
        return false;
    }

    /* renamed from: f */
    public final boolean m44345f() {
        String valueOf = String.valueOf(m44346g().tieName.getText());
        NoteModelBean data = this.node.getData();
        if (Intrinsics.areEqual(valueOf, data.getTitle()) && this.folderColor == data.getStyle().getColor()) {
            dismiss();
            return true;
        }
        if (m44344e()) {
            this.node.getData().getStyle().setColor(this.folderColor);
            Disposable subscribe = new EditFolderAction(valueOf, this.node).create().subscribe(new C11434a());
            Intrinsics.checkNotNullExpressionValue(subscribe, "subscribe(...)");
            this.compositeDisposable.add(subscribe);
        }
        return true;
    }

    /* renamed from: g */
    public final DialogEditFolderBinding m44346g() {
        return (DialogEditFolderBinding) this.binding.getValue();
    }

    /* renamed from: h */
    public final void m44347h() {
        this.adapter.setSelectedPosition(this.colorsOption.getValue().indexOf((Object) Integer.valueOf(this.folderColor)));
        this.adapter.setColorViewListener(new ColorViewAdapter.ColorViewListener() { // from class: com.onyx.galaxy.note.category.view.dialog.EditFolderDialog$initColorAdapter$1
            @Override // com.onyx.galaxy.note.category.view.adapter.ColorViewAdapter.ColorViewListener
            public void onDismissColorPicker() {
                ColorViewAdapter.ColorViewListener.DefaultImpls.onDismissColorPicker(this);
            }

            @Override // com.onyx.galaxy.note.category.view.adapter.ColorViewAdapter.ColorViewListener
            public void onSelectColor(int color) {
                IntListOption intListOption;
                ColorViewAdapter colorViewAdapter;
                EditFolderDialog.this.folderColor = color;
                EditFolderDialog.this.m44348i();
                intListOption = EditFolderDialog.this.colorsOption;
                colorViewAdapter = EditFolderDialog.this.adapter;
                intListOption.set(TypeExtKt.toIntList(colorViewAdapter.getItems()));
            }

            @Override // com.onyx.galaxy.note.category.view.adapter.ColorViewAdapter.ColorViewListener
            public void onShowColorPicker() {
                DialogEditFolderBinding m44346g;
                m44346g = EditFolderDialog.this.m44346g();
                KeyboardUtils.hideSoftInput(m44346g.tieName);
            }
        });
        this.adapter.submitList(this.colorsOption.getValue());
        m44346g().f56378rv.setLayoutManager(new LinearLayoutManager(this.context, 0, false));
        m44346g().f56378rv.setAdapter(this.adapter);
    }

    /* renamed from: i */
    public final void m44348i() {
        ThumbnailColorUtils thumbnailColorUtils = ThumbnailColorUtils.INSTANCE;
        ColorStateList folderThumbnailAlphaColor = thumbnailColorUtils.getFolderThumbnailAlphaColor(this.folderColor);
        ColorStateList folderThumbnailWhiteAlphaColor = thumbnailColorUtils.getFolderThumbnailWhiteAlphaColor();
        m44346g().ivFaceBottom.setImageTintList(ColorStateList.valueOf(this.folderColor));
        m44346g().ivFaceFourthTop.setImageTintList(folderThumbnailAlphaColor);
        m44346g().ivFaceThrTop.setImageTintList(folderThumbnailWhiteAlphaColor);
    }

    @SuppressLint({"SetTextI18n"})
    /* renamed from: j */
    public final void m44349j() {
        MaxLengthInputTextEdit maxLengthInputTextEdit = m44346g().tieName;
        maxLengthInputTextEdit.requestFocus();
        Intrinsics.checkNotNull(maxLengthInputTextEdit);
        TextViewKt.onEditorDoneActionListener(maxLengthInputTextEdit, new EditFolderDialog$initInput$1$1(this));
        maxLengthInputTextEdit.addTextChangedListener(new TextWatcher() { // from class: com.onyx.galaxy.note.category.view.dialog.EditFolderDialog$initInput$lambda$4$$inlined$addTextChangedListener$default$1
            @Override // android.text.TextWatcher
            public void afterTextChanged(@Nullable Editable s) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(@Nullable CharSequence text, int start, int count, int after) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(@Nullable CharSequence text, int start, int before, int count) {
                DialogEditFolderBinding m44346g;
                m44346g = EditFolderDialog.this.m44346g();
                m44346g.tvCounter.setText(NoteConfigManager.INSTANCE.getFolderCounterStr(text));
            }
        });
    }

    @SuppressLint({"SetTextI18n"})
    /* renamed from: k */
    public final void m44350k() {
        TintTextView tvOk = m44346g().tvOk;
        Intrinsics.checkNotNullExpressionValue(tvOk, "tvOk");
        ViewKt.click$default(tvOk, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.dlf
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EditFolderDialog.m44342l(EditFolderDialog.this, view);
            }
        }, 1, null);
        m44346g().tvCancel.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.elf
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EditFolderDialog.m44343m(EditFolderDialog.this, view);
            }
        });
        String title = this.node.getData().getTitle();
        if (title != null) {
            m44346g().tieName.setText(title);
        }
        m44349j();
        m44348i();
        TintTextView tintTextView = m44346g().tvCounter;
        StringBuilder sb = new StringBuilder();
        sb.append(StringRuleLengthKt.getShowLength(m44346g().tieName.getText()));
        sb.append('/');
        sb.append(m44346g().tieName.getMaxLengthDisplay());
        tintTextView.setText(sb.toString());
        m44347h();
    }

    /* renamed from: n */
    public final void m44351n(String eventId) {
        Map<String, ? extends Object> mutableMapOf;
        mutableMapOf = MapsKt__MapsKt.mutableMapOf(TuplesKt.m61535to(OnyxStatisticConstant.KEY_FOLDER_ID, this.node.getData().getUniqueId()));
        String int2ArgbString = ColorUtils.int2ArgbString(this.folderColor);
        Intrinsics.checkNotNullExpressionValue(int2ArgbString, "int2ArgbString(...)");
        mutableMapOf.put(OnyxStatisticConstant.KEY_FOLDER_COLOR, int2ArgbString);
        StatisticsBundle.INSTANCE.reportEvent(eventId, mutableMapOf);
    }

    /* renamed from: o */
    public final void m44352o(String eventId) {
        Map<String, ? extends Object> mapOf;
        StatisticsBundle statisticsBundle = StatisticsBundle.INSTANCE;
        mapOf = MapsKt__MapsJVMKt.mapOf(TuplesKt.m61535to(OnyxStatisticConstant.KEY_FOLDER_ID, this.node.getData().getUniqueId()));
        statisticsBundle.reportEvent(eventId, mapOf);
    }

    @Override // android.app.Dialog
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063308, this, savedInstanceState);
    }
}
