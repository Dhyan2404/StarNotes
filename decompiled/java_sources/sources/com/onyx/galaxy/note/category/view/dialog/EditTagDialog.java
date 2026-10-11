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
import com.onyx.android.sdk.replicator.note.bean.NoteTagBean;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.action.EditTagAction;
import com.onyx.galaxy.note.category.view.EditTagInputFilter;
import com.onyx.galaxy.note.category.view.adapter.ColorViewAdapter;
import com.onyx.galaxy.note.category.view.dialog.EditTagDialog;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.databinding.DialogEditTagBinding;
import com.onyx.galaxy.note.p048ui.ext.EditextExtKt;
import com.onyx.galaxy.note.settings.data.NoteConfigConst;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.bcel.internal.Constants;
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

@Metadata(m61527d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0013\u001a\u00020\u0011\u0012\u0010\u0010\u0018\u001a\f\u0012\u0004\u0012\u00020\u00150\u0014j\u0002`\u0016¢\u0006\u0004\b,\u0010-J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\b\u0010\u0006\u001a\u00020\u0004H\u0016J\b\u0010\u0007\u001a\u00020\u0004H\u0003J\b\u0010\b\u001a\u00020\u0004H\u0002J\b\u0010\t\u001a\u00020\u0004H\u0003J\b\u0010\u000b\u001a\u00020\nH\u0002J\b\u0010\f\u001a\u00020\nH\u0002J\u0010\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0002J\b\u0010\u0010\u001a\u00020\u0004H\u0002R\u0014\u0010\u0013\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u0012R\u001e\u0010\u0018\u001a\f\u0012\u0004\u0012\u00020\u00150\u0014j\u0002`\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u0017R\u001b\u0010\u001d\u001a\u00020\u00198BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR\u0014\u0010!\u001a\u00020\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0014\u0010%\u001a\u00020\"8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010$R\u0014\u0010(\u001a\u00020&8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010'R\u0016\u0010+\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010*¨\u0006."}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;", "Lcom/onyx/android/sdk/ui/AutoSizeDialog;", "Landroid/os/Bundle;", C1126e.f7693h, "", "onCreate", "dismiss", "j", C6999h.f39688c, "i", "", C6997f.f39671c, "e", "", "eventId", GoogleApiAvailabilityLight.f29016b, "m", "Landroid/content/Context;", "Landroid/content/Context;", "context", "Lcom/onyx/android/sdk/base/data/TreeNode;", "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;", "Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNode;", "Lcom/onyx/android/sdk/base/data/TreeNode;", "node", "Lcom/onyx/galaxy/note/databinding/DialogEditTagBinding;", "Lkotlin/Lazy;", C6998g.f39679a, "()Lcom/onyx/galaxy/note/databinding/DialogEditTagBinding;", "binding", "Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;", C4921e.f26537n, "Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;", "adapter", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "l", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "compositeDisposable", "Lcom/onyx/android/sdk/data/utils/IntListOption;", "Lcom/onyx/android/sdk/data/utils/IntListOption;", "colorsOption", "", "I", "tagColor", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/android/sdk/base/data/TreeNode;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nEditTagDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditTagDialog.kt\ncom/onyx/galaxy/note/category/view/dialog/EditTagDialog\n+ 2 TextView.kt\nandroidx/core/widget/TextViewKt\n*L\n1#1,167:1\n65#2,16:168\n93#2,3:184\n*S KotlinDebug\n*F\n+ 1 EditTagDialog.kt\ncom/onyx/galaxy/note/category/view/dialog/EditTagDialog\n*L\n116#1:168,16\n116#1:184,3\n*E\n"})
/* loaded from: classes17.dex */
public final class EditTagDialog extends AutoSizeDialog {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final TreeNode<NoteTagBean> node;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final ColorViewAdapter adapter;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final CompositeDisposable compositeDisposable;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public final IntListOption colorsOption;

    /* renamed from: n, reason: from kotlin metadata */
    public int tagColor;

    /* renamed from: com.onyx.galaxy.note.category.view.dialog.EditTagDialog$a */
    /* loaded from: classes9.dex */
    public static final class C11437a<T> implements Consumer {
        public C11437a() {
        }

        /* renamed from: a */
        public final void m44376a(boolean z) {
            if (z) {
                EditTagDialog.this.dismiss();
            } else {
                ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.edt_tag_conflicted, false, 2, (Object) null);
            }
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m44376a(((Boolean) obj).booleanValue());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EditTagDialog(@NotNull Context context, @NotNull TreeNode<NoteTagBean> node) {
        super(context);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(node, "node");
        this.context = context;
        this.node = node;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<DialogEditTagBinding>() { // from class: com.onyx.galaxy.note.category.view.dialog.EditTagDialog$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final DialogEditTagBinding invoke() {
                Context context2;
                context2 = EditTagDialog.this.context;
                return DialogEditTagBinding.inflate(LayoutInflater.from(context2));
            }
        });
        this.binding = lazy;
        this.adapter = new ColorViewAdapter();
        this.compositeDisposable = new CompositeDisposable();
        this.colorsOption = MMKVNote.INSTANCE.getTagColorListOption(NoteConfigConst.INSTANCE.getDEFAULT_TAG_COLOR_LIST());
        this.tagColor = node.getData().getStyle().getColor();
    }

    /* renamed from: k */
    public static final void m44366k(EditTagDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m44374m();
        this$0.m44369f();
    }

    /* renamed from: l */
    public static final void m44367l(EditTagDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m44375n(OnyxStatisticConstant.ID_TAG_EDIT_DIALOG_CANCEL_CLICK);
        this$0.dismiss();
    }

    @Override // com.onyx.android.sdk.p039ui.AutoSizeDialog, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        this.compositeDisposable.clear();
    }

    /* renamed from: e */
    public final boolean m44368e() {
        if (StringKt.isNotBlank(String.valueOf(m44370g().tieName.getText()))) {
            return true;
        }
        ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.dialog_create_tag_error, false, 2, (Object) null);
        return false;
    }

    /* renamed from: f */
    public final boolean m44369f() {
        String valueOf = String.valueOf(m44370g().tieName.getText());
        NoteTagBean data = this.node.getData();
        if (Intrinsics.areEqual(valueOf, data.getContent()) && this.tagColor == data.getStyle().getColor()) {
            dismiss();
            return true;
        }
        if (m44368e()) {
            data.getStyle().setColor(this.tagColor);
            Disposable subscribe = new EditTagAction(valueOf, this.node).create().subscribe(new C11437a());
            Intrinsics.checkNotNullExpressionValue(subscribe, "subscribe(...)");
            this.compositeDisposable.add(subscribe);
        }
        return true;
    }

    /* renamed from: g */
    public final DialogEditTagBinding m44370g() {
        return (DialogEditTagBinding) this.binding.getValue();
    }

    /* renamed from: h */
    public final void m44371h() {
        this.adapter.setSelectedPosition(this.colorsOption.getValue().indexOf((Object) Integer.valueOf(this.tagColor)));
        this.adapter.setColorViewListener(new ColorViewAdapter.ColorViewListener() { // from class: com.onyx.galaxy.note.category.view.dialog.EditTagDialog$initColorAdapter$1
            @Override // com.onyx.galaxy.note.category.view.adapter.ColorViewAdapter.ColorViewListener
            public void onDismissColorPicker() {
                ColorViewAdapter.ColorViewListener.DefaultImpls.onDismissColorPicker(this);
            }

            @Override // com.onyx.galaxy.note.category.view.adapter.ColorViewAdapter.ColorViewListener
            public void onSelectColor(int color) {
                DialogEditTagBinding m44370g;
                IntListOption intListOption;
                ColorViewAdapter colorViewAdapter;
                EditTagDialog.this.tagColor = color;
                m44370g = EditTagDialog.this.m44370g();
                m44370g.ivTagFaceBottom.setImageTintList(ColorStateList.valueOf(color));
                intListOption = EditTagDialog.this.colorsOption;
                colorViewAdapter = EditTagDialog.this.adapter;
                intListOption.set(TypeExtKt.toIntList(colorViewAdapter.getItems()));
            }

            @Override // com.onyx.galaxy.note.category.view.adapter.ColorViewAdapter.ColorViewListener
            public void onShowColorPicker() {
                DialogEditTagBinding m44370g;
                m44370g = EditTagDialog.this.m44370g();
                KeyboardUtils.hideSoftInput(m44370g.tieName);
            }
        });
        this.adapter.submitList(this.colorsOption.getValue());
        m44370g().f56387rv.setLayoutManager(new LinearLayoutManager(this.context, 0, false));
        m44370g().f56387rv.setAdapter(this.adapter);
    }

    @SuppressLint({"SetTextI18n"})
    /* renamed from: i */
    public final void m44372i() {
        MaxLengthInputTextEdit maxLengthInputTextEdit = m44370g().tieName;
        maxLengthInputTextEdit.setText(this.node.getData().getContent());
        maxLengthInputTextEdit.requestFocus();
        Intrinsics.checkNotNull(maxLengthInputTextEdit);
        TextViewKt.onEditorDoneActionListener(maxLengthInputTextEdit, new EditTagDialog$initInput$1$1(this));
        maxLengthInputTextEdit.addTextChangedListener(new TextWatcher() { // from class: com.onyx.galaxy.note.category.view.dialog.EditTagDialog$initInput$lambda$3$$inlined$addTextChangedListener$default$1
            @Override // android.text.TextWatcher
            public void afterTextChanged(@Nullable Editable s) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(@Nullable CharSequence text, int start, int count, int after) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(@Nullable CharSequence text, int start, int before, int count) {
                DialogEditTagBinding m44370g;
                m44370g = EditTagDialog.this.m44370g();
                m44370g.tvCounter.setText(NoteConfigManager.INSTANCE.getTagCounterStr(text));
            }
        });
        EditextExtKt.addInputFilter(maxLengthInputTextEdit, new EditTagInputFilter());
    }

    @SuppressLint({"SetTextI18n"})
    /* renamed from: j */
    public final void m44373j() {
        TintTextView tvOk = m44370g().tvOk;
        Intrinsics.checkNotNullExpressionValue(tvOk, "tvOk");
        ViewKt.click$default(tvOk, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.slf
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EditTagDialog.m44366k(EditTagDialog.this, view);
            }
        }, 1, null);
        m44370g().tvCancel.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.tlf
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EditTagDialog.m44367l(EditTagDialog.this, view);
            }
        });
        TintTextView tintTextView = m44370g().tvCounter;
        StringBuilder sb = new StringBuilder();
        sb.append(StringRuleLengthKt.getShowLength(this.node.getData().getContent()));
        sb.append('/');
        sb.append(m44370g().tieName.getMaxLengthDisplay());
        tintTextView.setText(sb.toString());
        m44370g().ivTagFaceBottom.setImageTintList(ColorStateList.valueOf(this.tagColor));
        m44370g().ivTagFaceTop.setImageTintList(ColorStateList.valueOf(ThemeUtils.getColorById(C7996R.color.theme_icon_color_02)));
        m44372i();
        m44371h();
    }

    /* renamed from: m */
    public final void m44374m() {
        Map<String, ? extends Object> mutableMapOf;
        mutableMapOf = MapsKt__MapsKt.mutableMapOf(TuplesKt.m61535to(OnyxStatisticConstant.KEY_TAG_ID, this.node.getData().getUniqueId()));
        String int2ArgbString = ColorUtils.int2ArgbString(this.tagColor);
        Intrinsics.checkNotNullExpressionValue(int2ArgbString, "int2ArgbString(...)");
        mutableMapOf.put(OnyxStatisticConstant.KEY_TAG_COLOR, int2ArgbString);
        StatisticsBundle.INSTANCE.reportEvent(OnyxStatisticConstant.ID_TAG_EDIT_DIALOG_DONE_CLICK, mutableMapOf);
    }

    /* renamed from: n */
    public final void m44375n(String eventId) {
        Map<String, ? extends Object> mapOf;
        StatisticsBundle statisticsBundle = StatisticsBundle.INSTANCE;
        mapOf = MapsKt__MapsJVMKt.mapOf(TuplesKt.m61535to(OnyxStatisticConstant.KEY_TAG_ID, this.node.getData().getUniqueId()));
        statisticsBundle.reportEvent(eventId, mapOf);
    }

    @Override // android.app.Dialog
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063306, this, savedInstanceState);
    }
}
