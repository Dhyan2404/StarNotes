package com.onyx.galaxy.note.category.view.dialog;

import android.annotation.SuppressLint;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.fragment.app.C1126e;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.blankj.utilcode.util.ColorUtils;
import com.blankj.utilcode.util.KeyboardUtils;
import com.chad.library.adapter4.BaseQuickAdapter;
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
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.TagCreateFrom;
import com.onyx.android.sdk.data.utils.IntListOption;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.ocr.data.constant.OcrValues;
import com.onyx.android.sdk.p039ui.AutoSizeDialog;
import com.onyx.android.sdk.p039ui.MaxLengthInputTextEdit;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.replicator.note.bean.NoteTagBean;
import com.onyx.android.sdk.replicator.note.data.style.StyleAttr;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncTagModel;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.action.CreateMultipleSubTagAction;
import com.onyx.galaxy.note.category.action.CreateTagAction;
import com.onyx.galaxy.note.category.view.CreateTagInputFilter;
import com.onyx.galaxy.note.category.view.adapter.ColorViewAdapter;
import com.onyx.galaxy.note.category.view.adapter.TagMatchAdapter;
import com.onyx.galaxy.note.category.view.dialog.CreateTagDialog;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.common.view.MaxHeightRecyclerView;
import com.onyx.galaxy.note.databinding.DialogCreateTagBinding;
import com.onyx.galaxy.note.p048ui.ext.EditextExtKt;
import com.onyx.galaxy.note.settings.data.NoteConfigConst;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0085\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\b\u0007*\u0001B\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010&\u001a\u00020$\u0012\u0010\u0010(\u001a\f\u0012\u0004\u0012\u00020\u00150\u0014j\u0002`\u0016\u0012\u0006\u0010+\u001a\u00020)¢\u0006\u0004\bF\u0010GJ\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\b\u0010\u0006\u001a\u00020\u0004H\u0016J\b\u0010\u0007\u001a\u00020\u0004H\u0003J\b\u0010\b\u001a\u00020\u0004H\u0002J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0002J\b\u0010\f\u001a\u00020\u0004H\u0003J\b\u0010\r\u001a\u00020\u0004H\u0002J\b\u0010\u000e\u001a\u00020\u0004H\u0002J\b\u0010\u0010\u001a\u00020\u000fH\u0002J(\u0010\u0018\u001a\u00020\u00042\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00120\u00112\u0010\u0010\u0017\u001a\f\u0012\u0004\u0012\u00020\u00150\u0014j\u0002`\u0016H\u0002J\"\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u00122\u0010\u0010\u0017\u001a\f\u0012\u0004\u0012\u00020\u00150\u0014j\u0002`\u0016H\u0002J\b\u0010\u001b\u001a\u00020\u000fH\u0002J\u000e\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011H\u0002J\u0016\u0010\u001e\u001a\u00020\u00122\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014H\u0002J\u0010\u0010 \u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u0012H\u0002J\u0010\u0010#\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020!H\u0002R\u0014\u0010&\u001a\u00020$8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010%R\u001e\u0010(\u001a\f\u0012\u0004\u0012\u00020\u00150\u0014j\u0002`\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010'R\u0014\u0010+\u001a\u00020)8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010*R\u001b\u00100\u001a\u00020,8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b-\u0010.\u001a\u0004\b-\u0010/R\u0014\u00103\u001a\u0002018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u00102R\u0014\u00106\u001a\u0002048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u00105R\u0014\u0010:\u001a\u0002078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b8\u00109R\u001a\u0010<\u001a\b\u0012\u0004\u0012\u00020\u00120\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010;R\u0014\u0010?\u001a\u00020=8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010>R\u0016\u0010A\u001a\u00020!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0007\u0010@R\u0014\u0010E\u001a\u00020B8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bC\u0010D¨\u0006H"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;", "Lcom/onyx/android/sdk/ui/AutoSizeDialog;", "Landroid/os/Bundle;", C1126e.f7693h, "", "onCreate", "dismiss", "q", "m", "Landroid/content/res/Configuration;", "configuration", "t", "p", "w", C4921e.f26528e, "", "i", "", "", "names", "Lcom/onyx/android/sdk/base/data/TreeNode;", "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;", "Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNode;", "parentNode", C6998g.f39679a, "name", C6999h.f39688c, C6997f.f39671c, "j", OcrValues.LANG_ITALIAN, "l", "eventId", "v", "", "level", "u", "Landroid/content/Context;", "Landroid/content/Context;", "context", "Lcom/onyx/android/sdk/base/data/TreeNode;", "rootNode", "Lcom/onyx/android/sdk/data/TagCreateFrom;", "Lcom/onyx/android/sdk/data/TagCreateFrom;", "tagCreateFrom", "Lcom/onyx/galaxy/note/databinding/DialogCreateTagBinding;", C4921e.f26537n, "Lkotlin/Lazy;", "()Lcom/onyx/galaxy/note/databinding/DialogCreateTagBinding;", "binding", "Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;", "Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;", "adapter", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "compositeDisposable", "Lcom/onyx/galaxy/note/category/view/adapter/TagMatchAdapter;", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/galaxy/note/category/view/adapter/TagMatchAdapter;", "tagMatchAdapter", "Ljava/util/List;", "matchList", "Lcom/onyx/android/sdk/data/utils/IntListOption;", "Lcom/onyx/android/sdk/data/utils/IntListOption;", "colorsOption", "I", "tagColor", "com/onyx/galaxy/note/category/view/dialog/CreateTagDialog$configurationChangedListener$1", "r", "Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog$configurationChangedListener$1;", "configurationChangedListener", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/android/sdk/base/data/TreeNode;Lcom/onyx/android/sdk/data/TagCreateFrom;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCreateTagDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateTagDialog.kt\ncom/onyx/galaxy/note/category/view/dialog/CreateTagDialog\n+ 2 TextView.kt\nandroidx/core/widget/TextViewKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,313:1\n65#2,16:314\n93#2,3:330\n256#3,2:333\n256#3,2:338\n256#3,2:340\n256#3,2:348\n766#4:335\n857#4,2:336\n288#4,2:342\n1549#4:344\n1620#4,3:345\n*S KotlinDebug\n*F\n+ 1 CreateTagDialog.kt\ncom/onyx/galaxy/note/category/view/dialog/CreateTagDialog\n*L\n157#1:314,16\n157#1:330,3\n170#1:333,2\n177#1:338,2\n182#1:340,2\n132#1:348,2\n174#1:335\n174#1:336,2\n215#1:342,2\n284#1:344\n284#1:345,3\n*E\n"})
/* loaded from: classes17.dex */
public final class CreateTagDialog extends AutoSizeDialog {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final TreeNode<NoteTagBean> rootNode;

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
    public final TagMatchAdapter tagMatchAdapter;

    /* renamed from: o, reason: from kotlin metadata */
    @NotNull
    public final List<String> matchList;

    /* renamed from: p, reason: from kotlin metadata */
    @NotNull
    public final IntListOption colorsOption;

    /* renamed from: q, reason: from kotlin metadata */
    public int tagColor;

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final CreateTagDialog$configurationChangedListener$1 configurationChangedListener;

    /* renamed from: com.onyx.galaxy.note.category.view.dialog.CreateTagDialog$a */
    /* loaded from: classes9.dex */
    public static final class C11431a<T> implements Consumer {
        public C11431a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<SyncTagModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CreateTagDialog.this.dismiss();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.view.dialog.CreateTagDialog$b */
    /* loaded from: classes9.dex */
    public static final class C11432b<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ TreeNode<NoteTagBean> f55466f;

        public C11432b(TreeNode<NoteTagBean> treeNode) {
            this.f55466f = treeNode;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull SyncTagModel result) {
            Intrinsics.checkNotNullParameter(result, "result");
            if (result.getUniqueId().length() == 0) {
                ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.dialog_create_tag_conflicted, false, 2, (Object) null);
            } else {
                CreateTagDialog.this.m44328u(this.f55466f.levelToRoot());
                CreateTagDialog.this.dismiss();
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r2v15, types: [com.onyx.galaxy.note.category.view.dialog.CreateTagDialog$configurationChangedListener$1] */
    public CreateTagDialog(@NotNull Context context, @NotNull TreeNode<NoteTagBean> rootNode, @NotNull TagCreateFrom tagCreateFrom) {
        super(context);
        Lazy lazy;
        int lastIndex;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(rootNode, "rootNode");
        Intrinsics.checkNotNullParameter(tagCreateFrom, "tagCreateFrom");
        this.context = context;
        this.rootNode = rootNode;
        this.tagCreateFrom = tagCreateFrom;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<DialogCreateTagBinding>() { // from class: com.onyx.galaxy.note.category.view.dialog.CreateTagDialog$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final DialogCreateTagBinding invoke() {
                Context context2;
                context2 = CreateTagDialog.this.context;
                return DialogCreateTagBinding.inflate(LayoutInflater.from(context2));
            }
        });
        this.binding = lazy;
        this.adapter = new ColorViewAdapter();
        this.compositeDisposable = new CompositeDisposable();
        this.tagMatchAdapter = new TagMatchAdapter();
        this.matchList = m44320j();
        MMKVNote mMKVNote = MMKVNote.INSTANCE;
        NoteConfigConst noteConfigConst = NoteConfigConst.INSTANCE;
        IntListOption tagColorListOption = mMKVNote.getTagColorListOption(noteConfigConst.getDEFAULT_TAG_COLOR_LIST());
        this.colorsOption = tagColorListOption;
        IntList value = tagColorListOption.getValue();
        lastIndex = CollectionsKt__CollectionsKt.getLastIndex(value);
        this.tagColor = (2 <= lastIndex ? value.get(2) : Integer.valueOf(noteConfigConst.getDEFAULT_TAG_COLOR())).intValue();
        this.configurationChangedListener = new ComponentCallbacks() { // from class: com.onyx.galaxy.note.category.view.dialog.CreateTagDialog$configurationChangedListener$1
            @Override // android.content.ComponentCallbacks
            public void onConfigurationChanged(@NotNull Configuration newConfig) {
                Context context2;
                Intrinsics.checkNotNullParameter(newConfig, "newConfig");
                int i = newConfig.orientation;
                context2 = CreateTagDialog.this.context;
                if (i != context2.getResources().getConfiguration().orientation) {
                    CreateTagDialog.this.m44327t(newConfig);
                }
            }

            @Override // android.content.ComponentCallbacks
            public void onLowMemory() {
            }
        };
    }

    /* renamed from: n */
    public static final void m44313n(CreateTagDialog this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        this$0.m44321k().tieName.setText(this$0.tagMatchAdapter.getItems().get(i));
        MaxHeightRecyclerView rvFilter = this$0.m44321k().rvFilter;
        Intrinsics.checkNotNullExpressionValue(rvFilter, "rvFilter");
        rvFilter.setVisibility(8);
        this$0.tagMatchAdapter.submitList(null);
        MaxLengthInputTextEdit maxLengthInputTextEdit = this$0.m44321k().tieName;
        Editable text = this$0.m44321k().tieName.getText();
        maxLengthInputTextEdit.setSelection(text != null ? text.length() : 0);
    }

    /* renamed from: r */
    public static final void m44314r(CreateTagDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m44319i();
    }

    /* renamed from: s */
    public static final void m44315s(CreateTagDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m44329v(OnyxStatisticConstant.ID_TAG_CREATE_DIALOG_CANCEL_CLICK);
        this$0.dismiss();
    }

    @Override // com.onyx.android.sdk.p039ui.AutoSizeDialog, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        this.context.unregisterComponentCallbacks(this.configurationChangedListener);
        this.compositeDisposable.clear();
    }

    /* renamed from: f */
    public final boolean m44316f() {
        if (StringKt.isNotBlank(String.valueOf(m44321k().tieName.getText()))) {
            return true;
        }
        ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.dialog_create_tag_error, false, 2, (Object) null);
        return false;
    }

    /* renamed from: g */
    public final void m44317g(List<String> names, TreeNode<NoteTagBean> parentNode) {
        StyleAttr styleAttr = new StyleAttr();
        styleAttr.setColor(this.tagColor);
        Disposable subscribe = new CreateMultipleSubTagAction(names, parentNode, styleAttr, this.tagCreateFrom).create().subscribe(new C11431a());
        Intrinsics.checkNotNullExpressionValue(subscribe, "subscribe(...)");
        m44328u(parentNode.levelToRoot());
        this.compositeDisposable.add(subscribe);
    }

    /* renamed from: h */
    public final void m44318h(String name, TreeNode<NoteTagBean> parentNode) {
        StyleAttr styleAttr = new StyleAttr();
        styleAttr.setColor(this.tagColor);
        Disposable subscribe = new CreateTagAction(name, parentNode, styleAttr, this.tagCreateFrom).create().subscribe(new C11432b(parentNode));
        Intrinsics.checkNotNullExpressionValue(subscribe, "subscribe(...)");
        this.compositeDisposable.add(subscribe);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4, types: [java.lang.Object] */
    /* renamed from: i */
    public final boolean m44319i() {
        boolean contains$default;
        List<String> split$default;
        int lastIndex;
        int lastIndex2;
        Object last;
        TreeNode<NoteTagBean> treeNode;
        if (m44316f()) {
            String valueOf = String.valueOf(m44321k().tieName.getText());
            int i = 0;
            contains$default = StringsKt__StringsKt.contains$default((CharSequence) valueOf, '/', false, 2, (Object) null);
            if (contains$default) {
                split$default = StringsKt__StringsKt.split$default((CharSequence) valueOf, new char[]{'/'}, false, 0, 6, (Object) null);
                TreeNode<NoteTagBean> treeNode2 = this.rootNode;
                lastIndex = CollectionsKt__CollectionsKt.getLastIndex(split$default);
                if (lastIndex >= 0) {
                    int i2 = -1;
                    while (true) {
                        Iterator it2 = treeNode2.findChildren().iterator();
                        while (true) {
                            if (!it2.hasNext()) {
                                treeNode = 0;
                                break;
                            }
                            treeNode = it2.next();
                            if (Intrinsics.areEqual(((NoteTagBean) ((TreeNode) treeNode).getData()).getContent(), split$default.get(i))) {
                                break;
                            }
                        }
                        TreeNode<NoteTagBean> treeNode3 = treeNode;
                        if (treeNode3 != null) {
                            if (i == lastIndex) {
                                treeNode2 = treeNode3;
                                break;
                            }
                            i2 = i;
                            i++;
                            treeNode2 = treeNode3;
                        } else {
                            i = i2;
                            break;
                        }
                    }
                } else {
                    i = -1;
                }
                lastIndex2 = CollectionsKt__CollectionsKt.getLastIndex(split$default);
                if (i == lastIndex2) {
                    last = CollectionsKt___CollectionsKt.last((List<? extends Object>) split$default);
                    m44318h((String) last, treeNode2.getParent());
                } else {
                    if (i != -1) {
                        split$default = split$default.subList(i + 1, split$default.size());
                    }
                    m44317g(split$default, treeNode2);
                }
            } else {
                m44318h(valueOf, this.rootNode);
            }
        }
        return true;
    }

    /* renamed from: j */
    public final List<String> m44320j() {
        int collectionSizeOrDefault;
        List<TreeNode<NoteTagBean>> findChildrenNodes = this.rootNode.findChildrenNodes();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(findChildrenNodes, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (TreeNode<NoteTagBean> treeNode : findChildrenNodes) {
            arrayList.add(treeNode.isTop() ? treeNode.getData().getContent() : m44322l(treeNode));
        }
        return arrayList;
    }

    /* renamed from: k */
    public final DialogCreateTagBinding m44321k() {
        return (DialogCreateTagBinding) this.binding.getValue();
    }

    /* renamed from: l */
    public final String m44322l(TreeNode<NoteTagBean> it2) {
        StringBuffer stringBuffer = new StringBuffer(it2.getData().getContent());
        for (TreeNode<NoteTagBean> parent = it2.getParent(); !Intrinsics.areEqual(parent, this.rootNode); parent = parent.getParent()) {
            stringBuffer.insert(0, parent.getData().getContent() + '/');
        }
        String stringBuffer2 = stringBuffer.toString();
        Intrinsics.checkNotNullExpressionValue(stringBuffer2, "toString(...)");
        return stringBuffer2;
    }

    /* renamed from: m */
    public final void m44323m() {
        m44321k().rvFilter.setAdapter(this.tagMatchAdapter);
        Configuration configuration = this.context.getResources().getConfiguration();
        Intrinsics.checkNotNullExpressionValue(configuration, "getConfiguration(...)");
        m44327t(configuration);
        this.tagMatchAdapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() { // from class: com.sunia.HTREnginev2.wge
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemClickListener
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                CreateTagDialog.m44313n(CreateTagDialog.this, baseQuickAdapter, view, i);
            }
        });
    }

    /* renamed from: o */
    public final void m44324o() {
        this.adapter.setSelectedPosition(this.colorsOption.getValue().indexOf((Object) Integer.valueOf(this.tagColor)));
        this.adapter.setColorViewListener(new ColorViewAdapter.ColorViewListener() { // from class: com.onyx.galaxy.note.category.view.dialog.CreateTagDialog$initColorAdapter$1
            @Override // com.onyx.galaxy.note.category.view.adapter.ColorViewAdapter.ColorViewListener
            public void onDismissColorPicker() {
                ColorViewAdapter.ColorViewListener.DefaultImpls.onDismissColorPicker(this);
            }

            @Override // com.onyx.galaxy.note.category.view.adapter.ColorViewAdapter.ColorViewListener
            public void onSelectColor(int color) {
                DialogCreateTagBinding m44321k;
                IntListOption intListOption;
                ColorViewAdapter colorViewAdapter;
                CreateTagDialog.this.tagColor = color;
                m44321k = CreateTagDialog.this.m44321k();
                m44321k.ivTagFaceBottom.setImageTintList(ColorStateList.valueOf(color));
                intListOption = CreateTagDialog.this.colorsOption;
                colorViewAdapter = CreateTagDialog.this.adapter;
                intListOption.set(TypeExtKt.toIntList(colorViewAdapter.getItems()));
            }

            @Override // com.onyx.galaxy.note.category.view.adapter.ColorViewAdapter.ColorViewListener
            public void onShowColorPicker() {
                DialogCreateTagBinding m44321k;
                m44321k = CreateTagDialog.this.m44321k();
                KeyboardUtils.hideSoftInput(m44321k.tieName);
            }
        });
        this.adapter.submitList(this.colorsOption.getValue());
        m44321k().f56369rv.setLayoutManager(new LinearLayoutManager(this.context, 0, false));
        m44321k().f56369rv.setAdapter(this.adapter);
    }

    @Override // android.app.Dialog
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063309, this, savedInstanceState);
    }

    @SuppressLint({"SetTextI18n"})
    /* renamed from: p */
    public final void m44325p() {
        MaxLengthInputTextEdit maxLengthInputTextEdit = m44321k().tieName;
        Intrinsics.checkNotNull(maxLengthInputTextEdit);
        TextViewKt.onEditorDoneActionListener(maxLengthInputTextEdit, new CreateTagDialog$initInput$1$1(this));
        maxLengthInputTextEdit.addTextChangedListener(new TextWatcher() { // from class: com.onyx.galaxy.note.category.view.dialog.CreateTagDialog$initInput$lambda$5$$inlined$addTextChangedListener$default$1
            @Override // android.text.TextWatcher
            public void afterTextChanged(@Nullable Editable s) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(@Nullable CharSequence text, int start, int count, int after) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(@Nullable CharSequence text, int start, int before, int count) {
                DialogCreateTagBinding m44321k;
                m44321k = CreateTagDialog.this.m44321k();
                m44321k.tvCounter.setText(NoteConfigManager.INSTANCE.getTagCounterStr(text));
                CreateTagDialog.this.m44330w();
            }
        });
        EditextExtKt.addInputFilter(maxLengthInputTextEdit, new CreateTagInputFilter());
        maxLengthInputTextEdit.requestFocus();
    }

    @SuppressLint({"SetTextI18n"})
    /* renamed from: q */
    public final void m44326q() {
        MediumTextView tvOk = m44321k().tvOk;
        Intrinsics.checkNotNullExpressionValue(tvOk, "tvOk");
        ViewKt.click$default(tvOk, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.uge
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CreateTagDialog.m44314r(CreateTagDialog.this, view);
            }
        }, 1, null);
        m44321k().tvCancel.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.vge
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CreateTagDialog.m44315s(CreateTagDialog.this, view);
            }
        });
        m44325p();
        m44321k().ivTagFaceBottom.setImageTintList(ColorStateList.valueOf(this.tagColor));
        m44321k().ivTagFaceIcon.setImageTintList(ColorStateList.valueOf(ThemeUtils.getColorById(C7996R.color.theme_icon_color_02)));
        m44324o();
        m44321k().tvCounter.setText("0/" + m44321k().tieName.getMaxLengthDisplay());
    }

    /* renamed from: t */
    public final void m44327t(Configuration configuration) {
        ConstraintSet constraintSet = new ConstraintSet();
        constraintSet.clone(m44321k().clsRoot);
        if (configuration.orientation == 1) {
            constraintSet.clear(C10651R.id.rv_filter, 4);
            constraintSet.connect(C10651R.id.rv_filter, 3, C10651R.id.til_name, 4, ResManager.INSTANCE.getDimens(C7384R.dimen.dp_16));
        } else {
            constraintSet.clear(C10651R.id.rv_filter, 3);
            constraintSet.connect(C10651R.id.rv_filter, 4, C10651R.id.til_name, 3, ResManager.INSTANCE.getDimens(C7384R.dimen.dp_16));
        }
        constraintSet.applyTo(m44321k().clsRoot);
    }

    /* renamed from: u */
    public final void m44328u(int level) {
        Map<String, ? extends Object> mutableMapOf;
        mutableMapOf = MapsKt__MapsKt.mutableMapOf(TuplesKt.m61535to(OnyxStatisticConstant.KEY_TRIGGER_FROM, Integer.valueOf(OnyxStatisticConstant.INSTANCE.getTriggerFromByTagCreateFrom(this.tagCreateFrom))));
        String int2ArgbString = ColorUtils.int2ArgbString(this.tagColor);
        Intrinsics.checkNotNullExpressionValue(int2ArgbString, "int2ArgbString(...)");
        mutableMapOf.put(OnyxStatisticConstant.KEY_TAG_COLOR, int2ArgbString);
        mutableMapOf.put(OnyxStatisticConstant.KEY_TAG_LEVEL, Integer.valueOf(level));
        StatisticsBundle.INSTANCE.reportEvent(OnyxStatisticConstant.ID_TAG_CREATE_DIALOG_DONE_CLICK, mutableMapOf);
    }

    /* renamed from: v */
    public final void m44329v(String eventId) {
        Map<String, ? extends Object> mapOf;
        StatisticsBundle statisticsBundle = StatisticsBundle.INSTANCE;
        mapOf = MapsKt__MapsJVMKt.mapOf(TuplesKt.m61535to(OnyxStatisticConstant.KEY_TRIGGER_FROM, Integer.valueOf(OnyxStatisticConstant.INSTANCE.getTriggerFromByTagCreateFrom(this.tagCreateFrom))));
        statisticsBundle.reportEvent(eventId, mapOf);
    }

    /* renamed from: w */
    public final void m44330w() {
        boolean isBlank;
        boolean startsWith$default;
        String valueOf = String.valueOf(m44321k().tieName.getText());
        isBlank = StringsKt__StringsJVMKt.isBlank(valueOf);
        if (isBlank) {
            MaxHeightRecyclerView rvFilter = m44321k().rvFilter;
            Intrinsics.checkNotNullExpressionValue(rvFilter, "rvFilter");
            rvFilter.setVisibility(8);
            return;
        }
        List<String> list = this.matchList;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            startsWith$default = StringsKt__StringsJVMKt.startsWith$default((String) obj, valueOf, false, 2, null);
            if (startsWith$default) {
                arrayList.add(obj);
            }
        }
        if (arrayList.isEmpty()) {
            MaxHeightRecyclerView rvFilter2 = m44321k().rvFilter;
            Intrinsics.checkNotNullExpressionValue(rvFilter2, "rvFilter");
            rvFilter2.setVisibility(8);
        } else {
            this.tagMatchAdapter.submitList(arrayList);
            MaxHeightRecyclerView rvFilter3 = m44321k().rvFilter;
            Intrinsics.checkNotNullExpressionValue(rvFilter3, "rvFilter");
            rvFilter3.setVisibility(0);
        }
    }
}
