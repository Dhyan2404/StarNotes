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
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.FolderCreateFrom;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.utils.IntListOption;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.p039ui.AutoSizeDialog;
import com.onyx.android.sdk.p039ui.MaxLengthInputTextEdit;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.replicator.note.bean.NoteModelBean;
import com.onyx.android.sdk.replicator.note.data.style.StyleAttr;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.action.CreateFolderAction;
import com.onyx.galaxy.note.category.view.adapter.ColorViewAdapter;
import com.onyx.galaxy.note.category.view.dialog.CreateFolderDialog;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.databinding.DialogCreateFolderBinding;
import com.onyx.galaxy.note.settings.data.NoteConfigConst;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.onyx.galaxy.note.utils.ThumbnailColorUtils;
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
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0016\u001a\u00020\u0014\u0012\u0010\u0010\u001b\u001a\f\u0012\u0004\u0012\u00020\u00180\u0017j\u0002`\u0019\u0012\u0006\u0010\u001e\u001a\u00020\u001c¢\u0006\u0004\b1\u00102J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\b\u0010\u0006\u001a\u00020\u0004H\u0016J\b\u0010\u0007\u001a\u00020\u0004H\u0003J\b\u0010\b\u001a\u00020\u0004H\u0002J\b\u0010\t\u001a\u00020\u0004H\u0002J\b\u0010\n\u001a\u00020\u0004H\u0003J\b\u0010\f\u001a\u00020\u000bH\u0002J\b\u0010\r\u001a\u00020\u000bH\u0002J\u0010\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\b\u0010\u0011\u001a\u00020\u0004H\u0002J\b\u0010\u0013\u001a\u00020\u0012H\u0002R\u0014\u0010\u0016\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0015R\u001e\u0010\u001b\u001a\f\u0012\u0004\u0012\u00020\u00180\u0017j\u0002`\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u001aR\u0014\u0010\u001e\u001a\u00020\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u001dR\u001b\u0010#\u001a\u00020\u001f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\n\u0010 \u001a\u0004\b!\u0010\"R\u0014\u0010&\u001a\u00020$8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010%R\u0014\u0010*\u001a\u00020'8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b(\u0010)R\u0014\u0010.\u001a\u00020+8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b,\u0010-R\u0016\u00100\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010/¨\u00063"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/dialog/CreateFolderDialog;", "Lcom/onyx/android/sdk/ui/AutoSizeDialog;", "Landroid/os/Bundle;", C1126e.f7693h, "", "onCreate", "dismiss", "l", "i", "j", C4921e.f26537n, "", C6997f.f39671c, "e", "", "eventId", "p", C4921e.f26528e, "", C6999h.f39688c, "Landroid/content/Context;", "Landroid/content/Context;", "context", "Lcom/onyx/android/sdk/base/data/TreeNode;", "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;", "Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNode;", "Lcom/onyx/android/sdk/base/data/TreeNode;", "parentNode", "Lcom/onyx/android/sdk/data/FolderCreateFrom;", "Lcom/onyx/android/sdk/data/FolderCreateFrom;", "folderCreateFrom", "Lcom/onyx/galaxy/note/databinding/DialogCreateFolderBinding;", "Lkotlin/Lazy;", C6998g.f39679a, "()Lcom/onyx/galaxy/note/databinding/DialogCreateFolderBinding;", "binding", "Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;", "Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;", "adapter", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "m", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "compositeDisposable", "Lcom/onyx/android/sdk/data/utils/IntListOption;", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/data/utils/IntListOption;", "colorsOption", "I", "folderColor", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/android/sdk/base/data/TreeNode;Lcom/onyx/android/sdk/data/FolderCreateFrom;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCreateFolderDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateFolderDialog.kt\ncom/onyx/galaxy/note/category/view/dialog/CreateFolderDialog\n+ 2 TextView.kt\nandroidx/core/widget/TextViewKt\n*L\n1#1,191:1\n65#2,16:192\n93#2,3:208\n*S KotlinDebug\n*F\n+ 1 CreateFolderDialog.kt\ncom/onyx/galaxy/note/category/view/dialog/CreateFolderDialog\n*L\n127#1:192,16\n127#1:208,3\n*E\n"})
/* loaded from: classes17.dex */
public final class CreateFolderDialog extends AutoSizeDialog {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final TreeNode<NoteModelBean> parentNode;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final FolderCreateFrom folderCreateFrom;

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

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[FolderCreateFrom.values().length];
            try {
                iArr[FolderCreateFrom.HOME_FUNC_FOLDER_MOVE_CREATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FolderCreateFrom.HOME_LIST_ITEM_MOVE_CREATE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.view.dialog.CreateFolderDialog$a */
    /* loaded from: classes9.dex */
    public static final class C11425a<T> implements Consumer {
        public C11425a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull SyncNoteModel result) {
            Intrinsics.checkNotNullParameter(result, "result");
            if (StringKt.isEmpty(result.getUniqueId())) {
                ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.create_folder_conflicted, false, 2, (Object) null);
            } else {
                CreateFolderDialog.this.dismiss();
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreateFolderDialog(@NotNull Context context, @NotNull TreeNode<NoteModelBean> parentNode, @NotNull FolderCreateFrom folderCreateFrom) {
        super(context);
        Lazy lazy;
        int lastIndex;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parentNode, "parentNode");
        Intrinsics.checkNotNullParameter(folderCreateFrom, "folderCreateFrom");
        this.context = context;
        this.parentNode = parentNode;
        this.folderCreateFrom = folderCreateFrom;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<DialogCreateFolderBinding>() { // from class: com.onyx.galaxy.note.category.view.dialog.CreateFolderDialog$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final DialogCreateFolderBinding invoke() {
                Context context2;
                context2 = CreateFolderDialog.this.context;
                return DialogCreateFolderBinding.inflate(LayoutInflater.from(context2));
            }
        });
        this.binding = lazy;
        this.adapter = new ColorViewAdapter();
        this.compositeDisposable = new CompositeDisposable();
        MMKVNote mMKVNote = MMKVNote.INSTANCE;
        NoteConfigConst noteConfigConst = NoteConfigConst.INSTANCE;
        IntListOption folderColorListOption = mMKVNote.getFolderColorListOption(noteConfigConst.getDEFAULT_FOLDER_COLOR_LIST());
        this.colorsOption = folderColorListOption;
        IntList value = folderColorListOption.getValue();
        lastIndex = CollectionsKt__CollectionsKt.getLastIndex(value);
        this.folderColor = (2 <= lastIndex ? value.get(2) : Integer.valueOf(noteConfigConst.getDEFAULT_FOLDER_COLOR())).intValue();
    }

    /* renamed from: m */
    public static final void m44266m(CreateFolderDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m44269f();
    }

    /* renamed from: n */
    public static final void m44267n(CreateFolderDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m44277p(OnyxStatisticConstant.ID_CRETE_FOLDER_DIALOG_CANCEL_CLICK);
        this$0.dismiss();
    }

    @Override // com.onyx.android.sdk.p039ui.AutoSizeDialog, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        this.compositeDisposable.clear();
    }

    /* renamed from: e */
    public final boolean m44268e() {
        if (StringKt.isNotBlank(String.valueOf(m44270g().tieName.getText()))) {
            return true;
        }
        ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.dialog_create_folder_error, false, 2, (Object) null);
        return false;
    }

    /* renamed from: f */
    public final boolean m44269f() {
        if (!m44268e()) {
            return true;
        }
        String valueOf = String.valueOf(m44270g().tieName.getText());
        StyleAttr styleAttr = new StyleAttr();
        styleAttr.setColor(this.folderColor);
        Disposable subscribe = new CreateFolderAction(valueOf, this.parentNode, styleAttr, this.folderCreateFrom).create().subscribe(new C11425a());
        Intrinsics.checkNotNullExpressionValue(subscribe, "subscribe(...)");
        this.compositeDisposable.add(subscribe);
        m44276o();
        return true;
    }

    /* renamed from: g */
    public final DialogCreateFolderBinding m44270g() {
        return (DialogCreateFolderBinding) this.binding.getValue();
    }

    /* renamed from: h */
    public final int m44271h() {
        int i = WhenMappings.$EnumSwitchMapping$0[this.folderCreateFrom.ordinal()];
        if (i != 1) {
            return i != 2 ? 1005 : 1009;
        }
        return 1008;
    }

    /* renamed from: i */
    public final void m44272i() {
        this.adapter.setSelectedPosition(this.colorsOption.getValue().indexOf((Object) Integer.valueOf(this.folderColor)));
        this.adapter.setColorViewListener(new ColorViewAdapter.ColorViewListener() { // from class: com.onyx.galaxy.note.category.view.dialog.CreateFolderDialog$initColorAdapter$1
            @Override // com.onyx.galaxy.note.category.view.adapter.ColorViewAdapter.ColorViewListener
            public void onDismissColorPicker() {
                ColorViewAdapter.ColorViewListener.DefaultImpls.onDismissColorPicker(this);
            }

            @Override // com.onyx.galaxy.note.category.view.adapter.ColorViewAdapter.ColorViewListener
            public void onSelectColor(int color) {
                IntListOption intListOption;
                ColorViewAdapter colorViewAdapter;
                CreateFolderDialog.this.folderColor = color;
                CreateFolderDialog.this.m44273j();
                intListOption = CreateFolderDialog.this.colorsOption;
                colorViewAdapter = CreateFolderDialog.this.adapter;
                intListOption.set(TypeExtKt.toIntList(colorViewAdapter.getItems()));
            }

            @Override // com.onyx.galaxy.note.category.view.adapter.ColorViewAdapter.ColorViewListener
            public void onShowColorPicker() {
                DialogCreateFolderBinding m44270g;
                m44270g = CreateFolderDialog.this.m44270g();
                KeyboardUtils.hideSoftInput(m44270g.tieName);
            }
        });
        this.adapter.submitList(this.colorsOption.getValue());
        m44270g().f56354rv.setLayoutManager(new LinearLayoutManager(this.context, 0, false));
        m44270g().f56354rv.setAdapter(this.adapter);
    }

    /* renamed from: j */
    public final void m44273j() {
        ThumbnailColorUtils thumbnailColorUtils = ThumbnailColorUtils.INSTANCE;
        ColorStateList folderThumbnailAlphaColor = thumbnailColorUtils.getFolderThumbnailAlphaColor(this.folderColor);
        ColorStateList folderThumbnailWhiteAlphaColor = thumbnailColorUtils.getFolderThumbnailWhiteAlphaColor();
        m44270g().ivFaceBottom.setImageTintList(ColorStateList.valueOf(this.folderColor));
        m44270g().ivFaceFourthTop.setImageTintList(folderThumbnailAlphaColor);
        m44270g().ivFaceThrTop.setImageTintList(folderThumbnailWhiteAlphaColor);
    }

    @SuppressLint({"SetTextI18n"})
    /* renamed from: k */
    public final void m44274k() {
        MaxLengthInputTextEdit maxLengthInputTextEdit = m44270g().tieName;
        maxLengthInputTextEdit.requestFocus();
        Intrinsics.checkNotNull(maxLengthInputTextEdit);
        TextViewKt.onEditorDoneActionListener(maxLengthInputTextEdit, new CreateFolderDialog$initInput$1$1(this));
        maxLengthInputTextEdit.addTextChangedListener(new TextWatcher() { // from class: com.onyx.galaxy.note.category.view.dialog.CreateFolderDialog$initInput$lambda$4$$inlined$addTextChangedListener$default$1
            @Override // android.text.TextWatcher
            public void afterTextChanged(@Nullable Editable s) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(@Nullable CharSequence text, int start, int count, int after) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(@Nullable CharSequence text, int start, int before, int count) {
                DialogCreateFolderBinding m44270g;
                m44270g = CreateFolderDialog.this.m44270g();
                m44270g.tvCounter.setText(NoteConfigManager.INSTANCE.getFolderCounterStr(text));
            }
        });
    }

    @SuppressLint({"SetTextI18n", "NotifyDataSetChanged"})
    /* renamed from: l */
    public final void m44275l() {
        MediumTextView tvOk = m44270g().tvOk;
        Intrinsics.checkNotNullExpressionValue(tvOk, "tvOk");
        ViewKt.click$default(tvOk, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.fge
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CreateFolderDialog.m44266m(CreateFolderDialog.this, view);
            }
        }, 1, null);
        m44270g().tvCancel.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.gge
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CreateFolderDialog.m44267n(CreateFolderDialog.this, view);
            }
        });
        m44274k();
        m44273j();
        m44270g().tvCounter.setText("0/" + m44270g().tieName.getMaxLengthDisplay());
        m44272i();
    }

    /* renamed from: o */
    public final void m44276o() {
        Map<String, ? extends Object> mutableMapOf;
        mutableMapOf = MapsKt__MapsKt.mutableMapOf(TuplesKt.m61535to(OnyxStatisticConstant.KEY_TRIGGER_FROM, Integer.valueOf(m44271h())));
        mutableMapOf.put(OnyxStatisticConstant.KEY_FOLDER_LEVEL, 1);
        String int2ArgbString = ColorUtils.int2ArgbString(this.folderColor);
        Intrinsics.checkNotNullExpressionValue(int2ArgbString, "int2ArgbString(...)");
        mutableMapOf.put(OnyxStatisticConstant.KEY_FOLDER_COLOR, int2ArgbString);
        StatisticsBundle.INSTANCE.reportEvent(OnyxStatisticConstant.ID_CRETE_FOLDER_DIALOG_DONE_CLICK, mutableMapOf);
    }

    @Override // android.app.Dialog
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063312, this, savedInstanceState);
    }

    /* renamed from: p */
    public final void m44277p(String eventId) {
        Map<String, ? extends Object> mapOf;
        StatisticsBundle statisticsBundle = StatisticsBundle.INSTANCE;
        mapOf = MapsKt__MapsJVMKt.mapOf(TuplesKt.m61535to(OnyxStatisticConstant.KEY_TRIGGER_FROM, Integer.valueOf(m44271h())));
        statisticsBundle.reportEvent(eventId, mapOf);
    }
}
