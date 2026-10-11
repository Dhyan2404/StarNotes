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
import com.onyx.android.sdk.base.extension.IntList;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.extension.TextViewKt;
import com.onyx.android.sdk.base.extension.TypeExtKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.TagCreateFrom;
import com.onyx.android.sdk.data.utils.IntListOption;
import com.onyx.android.sdk.data.utils.MMKVUtils;
import com.onyx.android.sdk.data.utils.StringOption;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.p039ui.AutoSizeDialog;
import com.onyx.android.sdk.p039ui.MaxLengthInputTextEdit;
import com.onyx.android.sdk.replicator.note.bean.NoteTagBean;
import com.onyx.android.sdk.replicator.note.data.style.StyleAttr;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncTagModel;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.action.CreateTagAction;
import com.onyx.galaxy.note.category.action.UpdateTagExpandStatusAction;
import com.onyx.galaxy.note.category.view.EditTagInputFilter;
import com.onyx.galaxy.note.category.view.adapter.ColorViewAdapter;
import com.onyx.galaxy.note.category.view.dialog.CreateSubTagDialog;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.databinding.DialogCreateSubTagBinding;
import com.onyx.galaxy.note.p048ui.ext.EditextExtKt;
import com.onyx.galaxy.note.settings.data.NoteConfigConst;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0015\u001a\u00020\u0013\u0012\u0010\u0010\u001a\u001a\f\u0012\u0004\u0012\u00020\u00170\u0016j\u0002`\u0018\u0012\u0006\u0010\u001d\u001a\u00020\u001b¢\u0006\u0004\b1\u00102J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\b\u0010\u0006\u001a\u00020\u0004H\u0016J\b\u0010\u0007\u001a\u00020\u0004H\u0003J\b\u0010\b\u001a\u00020\u0004H\u0002J\b\u0010\t\u001a\u00020\u0004H\u0003J\b\u0010\u000b\u001a\u00020\nH\u0002J\b\u0010\f\u001a\u00020\u0004H\u0002J\b\u0010\r\u001a\u00020\u0004H\u0002J\b\u0010\u000e\u001a\u00020\nH\u0002J\u0010\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\b\u0010\u0012\u001a\u00020\u0004H\u0002R\u0014\u0010\u0015\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u0014R\u001e\u0010\u001a\u001a\f\u0012\u0004\u0012\u00020\u00170\u0016j\u0002`\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u0019R\u0014\u0010\u001d\u001a\u00020\u001b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\u001cR\u001b\u0010#\u001a\u00020\u001e8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"R\u0014\u0010'\u001a\u00020$8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010&R\u0014\u0010*\u001a\u00020(8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010)R\u0014\u0010-\u001a\u00020+8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010,R\u0016\u00100\u001a\u00020.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010/¨\u00063"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/dialog/CreateSubTagDialog;", "Lcom/onyx/android/sdk/ui/AutoSizeDialog;", "Landroid/os/Bundle;", C1126e.f7693h, "", "onCreate", "dismiss", "j", C6999h.f39688c, "i", "", C6997f.f39671c, "p", C4921e.f26528e, "e", "", "eventId", GoogleApiAvailabilityLight.f29016b, "m", "Landroid/content/Context;", "Landroid/content/Context;", "context", "Lcom/onyx/android/sdk/base/data/TreeNode;", "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;", "Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNode;", "Lcom/onyx/android/sdk/base/data/TreeNode;", "parentNode", "Lcom/onyx/android/sdk/data/TagCreateFrom;", "Lcom/onyx/android/sdk/data/TagCreateFrom;", "tagCreateFrom", "Lcom/onyx/galaxy/note/databinding/DialogCreateSubTagBinding;", C4921e.f26537n, "Lkotlin/Lazy;", C6998g.f39679a, "()Lcom/onyx/galaxy/note/databinding/DialogCreateSubTagBinding;", "binding", "Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;", "l", "Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;", "adapter", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "compositeDisposable", "Lcom/onyx/android/sdk/data/utils/IntListOption;", "Lcom/onyx/android/sdk/data/utils/IntListOption;", "colorsOption", "", "I", "tagColor", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/android/sdk/base/data/TreeNode;Lcom/onyx/android/sdk/data/TagCreateFrom;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCreateSubTagDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateSubTagDialog.kt\ncom/onyx/galaxy/note/category/view/dialog/CreateSubTagDialog\n+ 2 TextView.kt\nandroidx/core/widget/TextViewKt\n*L\n1#1,193:1\n65#2,16:194\n93#2,3:210\n*S KotlinDebug\n*F\n+ 1 CreateSubTagDialog.kt\ncom/onyx/galaxy/note/category/view/dialog/CreateSubTagDialog\n*L\n126#1:194,16\n126#1:210,3\n*E\n"})
/* loaded from: classes17.dex */
public final class CreateSubTagDialog extends AutoSizeDialog {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final TreeNode<NoteTagBean> parentNode;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final TagCreateFrom tagCreateFrom;

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
    public int tagColor;

    /* renamed from: com.onyx.galaxy.note.category.view.dialog.CreateSubTagDialog$a */
    /* loaded from: classes9.dex */
    public static final class C11429a<T> implements Consumer {
        public C11429a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull SyncTagModel result) {
            Intrinsics.checkNotNullParameter(result, "result");
            if (StringKt.isEmpty(result.getUniqueId())) {
                ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.dialog_create_tag_conflicted, false, 2, (Object) null);
                return;
            }
            CreateSubTagDialog.this.m44308p();
            CreateSubTagDialog.this.m44307o();
            CreateSubTagDialog.this.m44305m();
            CreateSubTagDialog.this.dismiss();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreateSubTagDialog(@NotNull Context context, @NotNull TreeNode<NoteTagBean> parentNode, @NotNull TagCreateFrom tagCreateFrom) {
        super(context);
        Lazy lazy;
        int lastIndex;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parentNode, "parentNode");
        Intrinsics.checkNotNullParameter(tagCreateFrom, "tagCreateFrom");
        this.context = context;
        this.parentNode = parentNode;
        this.tagCreateFrom = tagCreateFrom;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<DialogCreateSubTagBinding>() { // from class: com.onyx.galaxy.note.category.view.dialog.CreateSubTagDialog$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final DialogCreateSubTagBinding invoke() {
                Context context2;
                context2 = CreateSubTagDialog.this.context;
                return DialogCreateSubTagBinding.inflate(LayoutInflater.from(context2));
            }
        });
        this.binding = lazy;
        this.adapter = new ColorViewAdapter();
        this.compositeDisposable = new CompositeDisposable();
        MMKVNote mMKVNote = MMKVNote.INSTANCE;
        NoteConfigConst noteConfigConst = NoteConfigConst.INSTANCE;
        IntListOption tagColorListOption = mMKVNote.getTagColorListOption(noteConfigConst.getDEFAULT_TAG_COLOR_LIST());
        this.colorsOption = tagColorListOption;
        IntList value = tagColorListOption.getValue();
        lastIndex = CollectionsKt__CollectionsKt.getLastIndex(value);
        this.tagColor = (2 <= lastIndex ? value.get(2) : Integer.valueOf(noteConfigConst.getDEFAULT_TAG_COLOR())).intValue();
    }

    /* renamed from: k */
    public static final void m44297k(CreateSubTagDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m44300f();
    }

    /* renamed from: l */
    public static final void m44298l(CreateSubTagDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m44306n(OnyxStatisticConstant.ID_TAG_CREATE_DIALOG_CANCEL_CLICK);
        this$0.dismiss();
    }

    @Override // com.onyx.android.sdk.p039ui.AutoSizeDialog, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        this.compositeDisposable.clear();
    }

    /* renamed from: e */
    public final boolean m44299e() {
        if (StringKt.isNotBlank(String.valueOf(m44301g().tieName.getText()))) {
            return true;
        }
        ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.dialog_create_tag_error, false, 2, (Object) null);
        return false;
    }

    /* renamed from: f */
    public final boolean m44300f() {
        if (!m44299e()) {
            return true;
        }
        String valueOf = String.valueOf(m44301g().tieName.getText());
        StyleAttr styleAttr = new StyleAttr();
        styleAttr.setColor(this.tagColor);
        Disposable subscribe = new CreateTagAction(valueOf, this.parentNode, styleAttr, this.tagCreateFrom).create().subscribe(new C11429a());
        Intrinsics.checkNotNullExpressionValue(subscribe, "subscribe(...)");
        this.compositeDisposable.add(subscribe);
        return true;
    }

    /* renamed from: g */
    public final DialogCreateSubTagBinding m44301g() {
        return (DialogCreateSubTagBinding) this.binding.getValue();
    }

    /* renamed from: h */
    public final void m44302h() {
        this.adapter.setSelectedPosition(this.colorsOption.getValue().indexOf((Object) Integer.valueOf(this.tagColor)));
        this.adapter.setColorViewListener(new ColorViewAdapter.ColorViewListener() { // from class: com.onyx.galaxy.note.category.view.dialog.CreateSubTagDialog$initColorAdapter$1
            @Override // com.onyx.galaxy.note.category.view.adapter.ColorViewAdapter.ColorViewListener
            public void onDismissColorPicker() {
                ColorViewAdapter.ColorViewListener.DefaultImpls.onDismissColorPicker(this);
            }

            @Override // com.onyx.galaxy.note.category.view.adapter.ColorViewAdapter.ColorViewListener
            public void onSelectColor(int color) {
                DialogCreateSubTagBinding m44301g;
                IntListOption intListOption;
                ColorViewAdapter colorViewAdapter;
                CreateSubTagDialog.this.tagColor = color;
                m44301g = CreateSubTagDialog.this.m44301g();
                m44301g.ivTagFaceBottom.setImageTintList(ColorStateList.valueOf(color));
                intListOption = CreateSubTagDialog.this.colorsOption;
                colorViewAdapter = CreateSubTagDialog.this.adapter;
                intListOption.set(TypeExtKt.toIntList(colorViewAdapter.getItems()));
            }

            @Override // com.onyx.galaxy.note.category.view.adapter.ColorViewAdapter.ColorViewListener
            public void onShowColorPicker() {
                DialogCreateSubTagBinding m44301g;
                m44301g = CreateSubTagDialog.this.m44301g();
                KeyboardUtils.hideSoftInput(m44301g.tieName);
            }
        });
        this.adapter.submitList(this.colorsOption.getValue());
        m44301g().f56364rv.setLayoutManager(new LinearLayoutManager(this.context, 0, false));
        m44301g().f56364rv.setAdapter(this.adapter);
    }

    @SuppressLint({"SetTextI18n"})
    /* renamed from: i */
    public final void m44303i() {
        MaxLengthInputTextEdit maxLengthInputTextEdit = m44301g().tieName;
        maxLengthInputTextEdit.requestFocus();
        Intrinsics.checkNotNull(maxLengthInputTextEdit);
        TextViewKt.onEditorDoneActionListener(maxLengthInputTextEdit, new CreateSubTagDialog$initInput$1$1(this));
        maxLengthInputTextEdit.addTextChangedListener(new TextWatcher() { // from class: com.onyx.galaxy.note.category.view.dialog.CreateSubTagDialog$initInput$lambda$4$$inlined$addTextChangedListener$default$1
            @Override // android.text.TextWatcher
            public void afterTextChanged(@Nullable Editable s) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(@Nullable CharSequence text, int start, int count, int after) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(@Nullable CharSequence text, int start, int before, int count) {
                DialogCreateSubTagBinding m44301g;
                m44301g = CreateSubTagDialog.this.m44301g();
                m44301g.tvCounter.setText(NoteConfigManager.INSTANCE.getTagCounterStr(text));
            }
        });
        EditextExtKt.addInputFilter(maxLengthInputTextEdit, new EditTagInputFilter());
    }

    @SuppressLint({"SetTextI18n", "NotifyDataSetChanged"})
    /* renamed from: j */
    public final void m44304j() {
        TintTextView tvOk = m44301g().tvOk;
        Intrinsics.checkNotNullExpressionValue(tvOk, "tvOk");
        ViewKt.click$default(tvOk, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.sge
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CreateSubTagDialog.m44297k(CreateSubTagDialog.this, view);
            }
        }, 1, null);
        m44301g().tvCancel.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.tge
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CreateSubTagDialog.m44298l(CreateSubTagDialog.this, view);
            }
        });
        m44303i();
        String string = this.context.getString(C10651R.string.dialog_create_tag_parent_title);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        TintTextView tintTextView = m44301g().tvParent;
        String format = String.format(string, Arrays.copyOf(new Object[]{this.parentNode.getData().getContent()}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        tintTextView.setText(format);
        m44301g().tvCounter.setText("0/" + m44301g().tieName.getMaxLengthDisplay());
        m44301g().ivTagFaceBottom.setImageTintList(ColorStateList.valueOf(this.tagColor));
        m44301g().ivTagFaceTop.setImageTintList(ColorStateList.valueOf(ThemeUtils.getColorById(C7996R.color.theme_icon_color_02)));
        m44302h();
    }

    /* renamed from: m */
    public final void m44305m() {
        Map<String, ? extends Object> mutableMapOf;
        mutableMapOf = MapsKt__MapsKt.mutableMapOf(TuplesKt.m61535to(OnyxStatisticConstant.KEY_TRIGGER_FROM, 1012));
        mutableMapOf.put(OnyxStatisticConstant.KEY_TAG_LEVEL, Integer.valueOf(this.parentNode.levelToRoot()));
        String int2ArgbString = ColorUtils.int2ArgbString(this.tagColor);
        Intrinsics.checkNotNullExpressionValue(int2ArgbString, "int2ArgbString(...)");
        mutableMapOf.put(OnyxStatisticConstant.KEY_TAG_COLOR, int2ArgbString);
        StatisticsBundle.INSTANCE.reportEvent(OnyxStatisticConstant.ID_TAG_CREATE_DIALOG_DONE_CLICK, mutableMapOf);
    }

    /* renamed from: n */
    public final void m44306n(String eventId) {
        Map<String, ? extends Object> mapOf;
        StatisticsBundle statisticsBundle = StatisticsBundle.INSTANCE;
        mapOf = MapsKt__MapsJVMKt.mapOf(TuplesKt.m61535to(OnyxStatisticConstant.KEY_TRIGGER_FROM, 1012));
        statisticsBundle.reportEvent(eventId, mapOf);
    }

    /* renamed from: o */
    public final void m44307o() {
        new StringOption(MMKVUtils.INSTANCE.get(), this.parentNode.getData().getUniqueId(), null, 4, null).put(this.parentNode.getData().getUniqueId());
    }

    @Override // android.app.Dialog
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063310, this, savedInstanceState);
    }

    /* renamed from: p */
    public final void m44308p() {
        List listOf;
        String uniqueId = this.parentNode.getData().getUniqueId();
        if (StringKt.isNotBlank(uniqueId)) {
            listOf = CollectionsKt__CollectionsJVMKt.listOf(uniqueId);
            RxBaseAction.execute$default(new UpdateTagExpandStatusAction(listOf, 1), null, null, null, 7, null);
        }
    }
}
