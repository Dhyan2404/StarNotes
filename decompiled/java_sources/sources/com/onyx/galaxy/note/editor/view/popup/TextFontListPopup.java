package com.onyx.galaxy.note.editor.view.popup;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Typeface;
import android.view.View;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.NotificationCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.onyx.android.sdk.base.extension.PopupExtKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.extension.RecyclerViewKt;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.replicator.event.FontThumbnailDownloadedEvent;
import com.onyx.android.sdk.replicator.note.p035db.model.FontModel;
import com.onyx.android.sdk.replicator.note.p035db.model.FontModelExt;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.action.fonts.DeleteFontModelsAction;
import com.onyx.android.sdk.universal.editor.action.fonts.FetchFontListAction;
import com.onyx.android.sdk.universal.editor.action.fonts.LoadFontModelsAction;
import com.onyx.android.sdk.universal.editor.action.fonts.TypefaceBatchLoadAction;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.common.view.BasePopupWindow;
import com.onyx.galaxy.note.common.view.MaxHeightRecyclerView;
import com.onyx.galaxy.note.databinding.PopupTextFontListBinding;
import com.onyx.galaxy.note.editor.event.KeyboardCloseEvent;
import com.onyx.galaxy.note.editor.event.KeyboardOpenEvent;
import com.onyx.galaxy.note.editor.event.TextFontItemDeleteEvent;
import com.onyx.galaxy.note.editor.event.TextFontRequestPermissionEvent;
import com.onyx.galaxy.note.editor.view.adapter.BaseSelectableQuickAdapter;
import com.onyx.galaxy.note.editor.view.adapter.FontItemShowAdapter;
import com.onyx.galaxy.note.editor.view.dialog.TextFontImportDialog;
import com.onyx.galaxy.note.editor.view.popup.TextFontListPopup;
import com.onyx.galaxy.note.editor.view.toolbar.DockType;
import com.onyx.galaxy.note.settings.data.PermissionRequestConst;
import com.onyx.galaxy.note.settings.utils.PermissionActionUtils;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010(\u001a\u00020\u0016\u0012\u0006\u0010-\u001a\u00020)\u0012\n\b\u0002\u0010/\u001a\u0004\u0018\u00010\n\u0012\b\b\u0002\u0010B\u001a\u00020A¢\u0006\u0004\bC\u0010DJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0002H\u0002J\b\u0010\u0007\u001a\u00020\u0002H\u0002J\u0014\u0010\u000b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\bH\u0002J\u0010\u0010\r\u001a\n\u0012\u0006\b\u0001\u0012\u00020\f0\bH\u0002J\u0010\u0010\u000e\u001a\n\u0012\u0006\b\u0001\u0012\u00020\f0\bH\u0002J\u0012\u0010\u0011\u001a\u00020\u00022\b\b\u0002\u0010\u0010\u001a\u00020\u000fH\u0002J\u0016\u0010\u0014\u001a\u00020\u00022\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\n0\u0012H\u0002J\b\u0010\u0015\u001a\u00020\u0002H\u0002J\u0010\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0016H\u0016J\b\u0010\u0019\u001a\u00020\u0002H\u0016J\u0006\u0010\u001a\u001a\u00020\u0002J\u0010\u0010\u001d\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u001bH\u0007J\u0010\u0010\u001f\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u001eH\u0007J\u0010\u0010!\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020 H\u0007J\u0010\u0010#\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\"H\u0007J\u0010\u0010%\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020$H\u0007R\u0014\u0010(\u001a\u00020\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010'R\u0017\u0010-\u001a\u00020)8\u0006¢\u0006\f\n\u0004\b\u0007\u0010*\u001a\u0004\b+\u0010,R\u0016\u0010/\u001a\u0004\u0018\u00010\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010.R\u001b\u00105\u001a\u0002008FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b1\u00102\u001a\u0004\b3\u00104R:\u0010=\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u0001062\u000e\u00107\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u0001068\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\u0006\u00108\u001a\u0004\b9\u0010:\"\u0004\b;\u0010<R\u001b\u0010@\u001a\u00020>8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0011\u00102\u001a\u0004\b&\u0010?¨\u0006E"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;", "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;", "", "s", "E", SardineUtil.DEFAULT_NAMESPACE_PREFIX, "u", "r", "Lio/reactivex/rxjava3/core/Observable;", "", "Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;", "y", "", "x", "p", "", "updateOnly", "v", "", "list", "A", "G", "Landroid/view/View;", Constants.ELEMNAME_ANCHOR_STRING, "show", "dismiss", "setMaxFontPopupHeight", "Lcom/onyx/galaxy/note/editor/event/TextFontItemDeleteEvent;", NotificationCompat.CATEGORY_EVENT, "onTextFontItemDeleteEvent", "Lcom/onyx/galaxy/note/editor/event/TextFontRequestPermissionEvent;", "onFontPermissionGranted", "Lcom/onyx/galaxy/note/editor/event/KeyboardOpenEvent;", "onKeyboardOpen", "Lcom/onyx/galaxy/note/editor/event/KeyboardCloseEvent;", "onKeyboardClose", "Lcom/onyx/android/sdk/replicator/event/FontThumbnailDownloadedEvent;", "onFontThumbnailDownloadedEvent", "q", "Landroid/view/View;", "parentView", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;", "currentFontModel", "Lcom/onyx/galaxy/note/databinding/PopupTextFontListBinding;", "t", "Lkotlin/Lazy;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/PopupTextFontListBinding;", "binding", "Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter$ItemSelectionListener;", "value", "Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter$ItemSelectionListener;", "getItemSelectedListener", "()Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter$ItemSelectionListener;", "setItemSelectedListener", "(Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter$ItemSelectionListener;)V", "itemSelectedListener", "Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;", "()Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;", "fontItemShowAdapter", "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;", "dockType", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/view/View;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nTextFontListPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextFontListPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/TextFontListPopup\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,223:1\n766#2:224\n857#2,2:225\n1549#2:227\n1620#2,3:228\n350#2,7:231\n350#2,7:238\n*S KotlinDebug\n*F\n+ 1 TextFontListPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/TextFontListPopup\n*L\n157#1:224\n157#1:225,2\n163#1:227\n163#1:228,3\n220#1:231,7\n172#1:238,7\n*E\n"})
/* loaded from: classes9.dex */
public final class TextFontListPopup extends BasePopupWindow {

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public final View parentView;

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: s, reason: from kotlin metadata */
    @Nullable
    public final FontModel currentFontModel;

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: u, reason: from kotlin metadata */
    @Nullable
    public BaseSelectableQuickAdapter.ItemSelectionListener<FontModel> itemSelectedListener;

    /* renamed from: v, reason: from kotlin metadata */
    @NotNull
    public final Lazy fontItemShowAdapter;

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.TextFontListPopup$a */
    /* loaded from: classes9.dex */
    public static final class C12485a<T> implements Consumer {
        public C12485a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull TextFontListPopup it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            TextFontListPopup.this.setLoading(false);
            TextFontListPopup.this.getContentView().requestLayout();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.TextFontListPopup$b */
    /* loaded from: classes9.dex */
    public static final class C12486b<T, R> implements Function {
        public C12486b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull List<FontModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return TextFontListPopup.this.m49661p();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.TextFontListPopup$c */
    /* loaded from: classes9.dex */
    public static final class C12487c<T, R> implements Function {
        public C12487c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return TextFontListPopup.this.m49667x();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.TextFontListPopup$d */
    /* loaded from: classes9.dex */
    public static final class C12488d<T, R> implements Function {
        public C12488d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<FontModel>> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return TextFontListPopup.this.m49668y();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.TextFontListPopup$e */
    /* loaded from: classes9.dex */
    public static final class C12489e<T> implements Consumer {
        public C12489e() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<FontModel> it2) {
            List mutableList;
            Intrinsics.checkNotNullParameter(it2, "it");
            TextFontListPopup textFontListPopup = TextFontListPopup.this;
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) it2);
            textFontListPopup.m49657A(mutableList);
        }
    }

    @SourceDebugExtension({"SMAP\nTextFontListPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextFontListPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/TextFontListPopup$onQuery$2\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,223:1\n215#2,2:224\n*S KotlinDebug\n*F\n+ 1 TextFontListPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/TextFontListPopup$onQuery$2\n*L\n168#1:224,2\n*E\n"})
    /* renamed from: com.onyx.galaxy.note.editor.view.popup.TextFontListPopup$f */
    /* loaded from: classes9.dex */
    public static final class C12490f<T> implements Consumer {
        public C12490f() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Map<String, ? extends Typeface> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            TextFontListPopup textFontListPopup = TextFontListPopup.this;
            for (Map.Entry<String, ? extends Typeface> entry : it2.entrySet()) {
                textFontListPopup.m49662q().saveTypeface(entry.getKey(), entry.getValue());
            }
        }
    }

    public /* synthetic */ TextFontListPopup(View view, EditorBundle editorBundle, FontModel fontModel, DockType dockType, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(view, editorBundle, (i & 4) != 0 ? null : fontModel, (i & 8) != 0 ? DockType.BOTTOM : dockType);
    }

    /* renamed from: B */
    public static final int m49646B(Function2 tmp0, Object obj, Object obj2) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return ((Number) tmp0.invoke(obj, obj2)).intValue();
    }

    /* renamed from: C */
    public static final void m49647C(TextFontListPopup this$0, List list) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(list, "$list");
        this$0.m49662q().submitList(list);
        Iterator it2 = list.iterator();
        int i = 0;
        while (true) {
            if (!it2.hasNext()) {
                i = -1;
                break;
            }
            if (this$0.m49662q().isSelected((FontModel) it2.next())) {
                break;
            } else {
                i++;
            }
        }
        MaxHeightRecyclerView list2 = this$0.getBinding().list;
        Intrinsics.checkNotNullExpressionValue(list2, "list");
        RecyclerViewKt.scrollToPositionSafely(list2, i);
    }

    /* renamed from: F */
    public static final void m49648F(TextFontListPopup this$0, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m49658D();
    }

    /* renamed from: t */
    public static final void m49654t(TextFontListPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m49659E();
    }

    /* renamed from: w */
    public static /* synthetic */ void m49655w(TextFontListPopup textFontListPopup, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        textFontListPopup.m49666v(z);
    }

    /* renamed from: z */
    public static final void m49656z(TextFontListPopup this$0, DialogInterface dialogInterface) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m49666v(true);
    }

    /* renamed from: A */
    public final void m49657A(final List<FontModel> list) {
        int collectionSizeOrDefault;
        list.add(0, FontModelExt.INSTANCE.createDefault());
        final TextFontListPopup$onQuery$1 textFontListPopup$onQuery$1 = new Function2<FontModel, FontModel, Integer>() { // from class: com.onyx.galaxy.note.editor.view.popup.TextFontListPopup$onQuery$1
            @Override // kotlin.jvm.functions.Function2
            @NotNull
            public final Integer invoke(FontModel fontModel, FontModel fontModel2) {
                FontModelExt fontModelExt = FontModelExt.INSTANCE;
                Intrinsics.checkNotNull(fontModel);
                Intrinsics.checkNotNull(fontModel2);
                return Integer.valueOf(fontModelExt.minus(fontModel, fontModel2));
            }
        };
        CollectionsKt__MutableCollectionsJVMKt.sortWith(list, new Comparator() { // from class: com.sunia.HTREnginev2.jcn
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int m49646B;
                m49646B = TextFontListPopup.m49646B(Function2.this, obj, obj2);
                return m49646B;
            }
        });
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = list.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            Object next = it2.next();
            String savePath$default = FontModelExt.getSavePath$default(FontModelExt.INSTANCE, (FontModel) next, null, 1, null);
            if (!m49662q().containTypeface(savePath$default) && FileUtils.INSTANCE.fileExist(savePath$default)) {
                arrayList.add(next);
            }
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            arrayList2.add(FontModelExt.getSavePath$default(FontModelExt.INSTANCE, (FontModel) it3.next(), null, 1, null));
        }
        new TypefaceBatchLoadAction(arrayList2).build().observeOn(AndroidSchedulers.mainThread()).doOnNext(new C12490f()).doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.kcn
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                TextFontListPopup.m49647C(TextFontListPopup.this, list);
            }
        }).subscribe();
    }

    /* renamed from: D */
    public final void m49658D() {
        GlobalBundle.INSTANCE.postEvent(new TextFontRequestPermissionEvent());
    }

    /* renamed from: E */
    public final void m49659E() {
        PermissionActionUtils permissionActionUtils = PermissionActionUtils.INSTANCE;
        Context context = getContext();
        Intrinsics.checkNotNull(context, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
        ResManager resManager = ResManager.INSTANCE;
        PermissionRequestConst permissionRequestConst = PermissionRequestConst.INSTANCE;
        RxjavaKt.doOnNextIfTrue(permissionActionUtils.requestStoragePermissionAction((AppCompatActivity) context, resManager.getStringSafely(permissionRequestConst.getPERMISSION_IMPORT_FONTS_FUNCTION_NAME()), resManager.getStringSafely(permissionRequestConst.getPERMISSION_IMPORT_FONTS_INTENT_NAME())).build(), new Consumer() { // from class: com.sunia.HTREnginev2.lcn
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                TextFontListPopup.m49648F(TextFontListPopup.this, ((Boolean) obj).booleanValue());
            }
        }).subscribe();
    }

    /* renamed from: G */
    public final void m49660G() {
        setMaxFontPopupHeight();
        PopupExtKt.updateLeftAbove(this, this.parentView, -getShadowOffset());
    }

    @Override // com.onyx.galaxy.note.common.view.BasePopupWindow, android.widget.PopupWindow
    public void dismiss() {
        super.dismiss();
        m49662q().clearTypeface();
        EditorBundleKt.unregister(this.editorBundle, this);
        GlobalBundle.INSTANCE.unregister(this);
    }

    @NotNull
    public final PopupTextFontListBinding getBinding() {
        return (PopupTextFontListBinding) this.binding.getValue();
    }

    @NotNull
    public final EditorBundle getEditorBundle() {
        return this.editorBundle;
    }

    @Nullable
    public final BaseSelectableQuickAdapter.ItemSelectionListener<FontModel> getItemSelectedListener() {
        return this.itemSelectedListener;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onFontPermissionGranted(@NotNull TextFontRequestPermissionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        TextFontImportDialog textFontImportDialog = new TextFontImportDialog(getContext(), this.editorBundle);
        textFontImportDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.sunia.HTREnginev2.mcn
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                TextFontListPopup.m49656z(TextFontListPopup.this, dialogInterface);
            }
        });
        textFontImportDialog.show();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onFontThumbnailDownloadedEvent(@NotNull FontThumbnailDownloadedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        Iterator<FontModel> it2 = m49662q().getItems().iterator();
        int i = 0;
        while (true) {
            if (!it2.hasNext()) {
                i = -1;
                break;
            }
            if (Intrinsics.areEqual(event.getFontModel().getUniqueId(), it2.next().getUniqueId())) {
                break;
            } else {
                i++;
            }
        }
        m49662q().notifyItemChanged(i);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onKeyboardClose(@NotNull KeyboardCloseEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m49660G();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onKeyboardOpen(@NotNull KeyboardOpenEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m49660G();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onTextFontItemDeleteEvent(@NotNull TextFontItemDeleteEvent event) {
        List listOf;
        Intrinsics.checkNotNullParameter(event, "event");
        EditorBundle editorBundle = this.editorBundle;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(event.getFontModel());
        RxBaseAction.execute$default(new DeleteFontModelsAction(editorBundle, listOf), null, null, null, 7, null);
    }

    /* renamed from: p */
    public final Observable<? extends Object> m49661p() {
        Observable<? extends Object> doOnNext = Observable.just(this).observeOn(AndroidSchedulers.mainThread()).doOnNext(new C12485a());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: q */
    public final FontItemShowAdapter m49662q() {
        return (FontItemShowAdapter) this.fontItemShowAdapter.getValue();
    }

    /* renamed from: r */
    public final void m49663r() {
        if (this.currentFontModel != null) {
            m49662q().setSelectFontPath(FontModelExt.getSavePath$default(FontModelExt.INSTANCE, this.currentFontModel, null, 1, null));
        }
        getBinding().list.setLayoutManager(new LinearLayoutManager(getContext(), 1, false));
        getBinding().list.setAdapter(m49662q());
    }

    /* renamed from: s */
    public final void m49664s() {
        TintTextView tvImport = getBinding().tvImport;
        Intrinsics.checkNotNullExpressionValue(tvImport, "tvImport");
        ViewKt.click$default(tvImport, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.ncn
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TextFontListPopup.m49654t(TextFontListPopup.this, view);
            }
        }, 1, null);
    }

    public final void setItemSelectedListener(@Nullable BaseSelectableQuickAdapter.ItemSelectionListener<FontModel> itemSelectionListener) {
        this.itemSelectedListener = itemSelectionListener;
        m49662q().setItemSelectedListener(itemSelectionListener);
    }

    public final void setMaxFontPopupHeight() {
        ResManager resManager = ResManager.INSTANCE;
        int dimens = resManager.getDimens(C7384R.dimen.dp_270);
        int dimens2 = resManager.getDimens(C7384R.dimen.dp_20);
        int dimens3 = resManager.getDimens(C7384R.dimen.dp_40);
        if (com.onyx.android.sdk.base.extension.ViewKt.getLocationInWindow(this.parentView)[1] < dimens + dimens2 + dimens3) {
            getBinding().list.setMaxHeight((r3 - dimens2) - dimens3);
        } else {
            getBinding().list.setMaxHeight(dimens);
        }
    }

    @Override // com.onyx.galaxy.note.common.view.BasePopupWindow
    public void show(@NotNull View anchor) {
        Intrinsics.checkNotNullParameter(anchor, "anchor");
        EditorBundleKt.register(this.editorBundle, this);
        GlobalBundle.INSTANCE.register(this);
        View view = this.parentView;
        PopupExtKt.showLeftAbove(this, view, view, Integer.valueOf(-getShadowOffset()), Integer.valueOf(-getShadowOffset()));
    }

    /* renamed from: u */
    public final void m49665u() {
        setOutsideTouchable(true);
        setFocusable(false);
        m49663r();
    }

    /* renamed from: v */
    public final void m49666v(boolean updateOnly) {
        if (updateOnly) {
            m49668y().subscribe();
        } else {
            m49668y().flatMap(new C12486b()).flatMap(new C12487c()).flatMap(new C12488d()).subscribe();
        }
    }

    /* renamed from: x */
    public final Observable<? extends Object> m49667x() {
        return RxjavaKt.continueOnFail(new FetchFontListAction().build());
    }

    /* renamed from: y */
    public final Observable<List<FontModel>> m49668y() {
        Observable doOnNext = new LoadFontModelsAction(this.editorBundle).build().observeOn(AndroidSchedulers.mainThread()).doOnNext(new C12489e());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public TextFontListPopup(@org.jetbrains.annotations.NotNull android.view.View r9, @org.jetbrains.annotations.NotNull com.onyx.android.sdk.universal.editor.EditorBundle r10, @org.jetbrains.annotations.Nullable com.onyx.android.sdk.replicator.note.p035db.model.FontModel r11, @org.jetbrains.annotations.NotNull com.onyx.galaxy.note.editor.view.toolbar.DockType r12) {
        /*
            r8 = this;
            java.lang.String r0 = "parentView"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r0)
            java.lang.String r0 = "editorBundle"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r0)
            java.lang.String r0 = "dockType"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r12, r0)
            android.content.Context r0 = r9.getContext()
            java.lang.String r1 = "getContext(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            r8.<init>(r0, r12)
            r8.parentView = r9
            r8.editorBundle = r10
            r8.currentFontModel = r11
            com.onyx.galaxy.note.editor.view.popup.TextFontListPopup$binding$2 r9 = new com.onyx.galaxy.note.editor.view.popup.TextFontListPopup$binding$2
            r9.<init>()
            kotlin.Lazy r9 = kotlin.LazyKt.lazy(r9)
            r8.binding = r9
            com.onyx.galaxy.note.editor.view.popup.TextFontListPopup$fontItemShowAdapter$2 r9 = new com.onyx.galaxy.note.editor.view.popup.TextFontListPopup$fontItemShowAdapter$2
            r9.<init>()
            kotlin.Lazy r9 = kotlin.LazyKt.lazy(r9)
            r8.fontItemShowAdapter = r9
            com.onyx.galaxy.note.databinding.PopupTextFontListBinding r9 = r8.getBinding()
            android.view.View r1 = r9.getRoot()
            java.lang.String r9 = "getRoot(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r9)
            r2 = 0
            r3 = 0
            r4 = 0
            r5 = 0
            r6 = 30
            r7 = 0
            r0 = r8
            com.onyx.galaxy.note.common.view.BasePopupWindow.setContentViewWithLoading$default(r0, r1, r2, r3, r4, r5, r6, r7)
            r8.m49665u()
            r8.m49664s()
            r9 = 1
            r10 = 0
            r11 = 0
            m49655w(r8, r11, r9, r10)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.editor.view.popup.TextFontListPopup.<init>(android.view.View, com.onyx.android.sdk.universal.editor.EditorBundle, com.onyx.android.sdk.replicator.note.db.model.FontModel, com.onyx.galaxy.note.editor.view.toolbar.DockType):void");
    }
}
