package com.onyx.galaxy.note.editor.view.popup;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import androidx.core.app.NotificationCompat;
import androidx.recyclerview.widget.ItemTouchHelper;
import com.blankj.utilcode.util.ScreenUtils;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.chad.library.adapter4.util.ItemClickUtilsKt;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.ContextKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.common.events.ConfigurationChangedEvent;
import com.onyx.android.sdk.universal.common.events.PopupShowStateEvent;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback;
import com.onyx.galaxy.note.category.view.itemtouchcallback.ManageCandidateShortcutHandlerImpl;
import com.onyx.galaxy.note.category.view.itemtouchcallback.ManageCustomShortcutHandlerImpl;
import com.onyx.galaxy.note.common.view.BasePopupWindow;
import com.onyx.galaxy.note.common.view.MaxHeightRecyclerView;
import com.onyx.galaxy.note.databinding.PopupShortcutBarCustomBinding;
import com.onyx.galaxy.note.editor.data.CustomShortcutBarBean;
import com.onyx.galaxy.note.editor.data.ShortcutBarData;
import com.onyx.galaxy.note.editor.data.ShortcutType;
import com.onyx.galaxy.note.editor.event.ShortcutBarChangeEvent;
import com.onyx.galaxy.note.editor.view.adapter.CandidateShortcutAdapter;
import com.onyx.galaxy.note.editor.view.adapter.CustomShortcutBarAdapter;
import com.onyx.galaxy.note.editor.view.popup.ShortcutBarCustomPopup;
import com.onyx.galaxy.note.editor.view.toolbar.DockType;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.sun.org.apache.bcel.internal.Constants;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.function.Predicate;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u00100\u001a\u00020/\u0012\u0006\u0010\u001d\u001a\u00020\u001a¢\u0006\u0004\b1\u00102J\b\u0010\u0003\u001a\u00020\u0002H\u0014J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0007J\b\u0010\u0007\u001a\u00020\u0002H\u0002J\b\u0010\b\u001a\u00020\u0002H\u0002J\b\u0010\t\u001a\u00020\u0002H\u0002J\b\u0010\n\u001a\u00020\u0002H\u0002J\b\u0010\u000b\u001a\u00020\u0002H\u0002J\b\u0010\f\u001a\u00020\u0002H\u0002J\b\u0010\r\u001a\u00020\u0002H\u0002J\b\u0010\u000e\u001a\u00020\u0002H\u0002J\b\u0010\u000f\u001a\u00020\u0002H\u0002J\u0010\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0010H\u0003J\u0010\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u0013H\u0003J\b\u0010\u0016\u001a\u00020\u0002H\u0002J\b\u0010\u0017\u001a\u00020\u0002H\u0002J\b\u0010\u0018\u001a\u00020\u0002H\u0002J\b\u0010\u0019\u001a\u00020\u0002H\u0002R\u0014\u0010\u001d\u001a\u00020\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u001b\u0010#\u001a\u00020\u001e8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"R\u0014\u0010&\u001a\u00020$8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010%R\u0014\u0010)\u001a\u00020'8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010(R\u0016\u0010,\u001a\u00020*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u0010+R\u0014\u0010-\u001a\u00020*8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010+R\u0014\u0010.\u001a\u00020*8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010+¨\u00063"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;", "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;", "", "onDismiss", "Lcom/onyx/android/sdk/universal/common/events/ConfigurationChangedEvent;", NotificationCompat.CATEGORY_EVENT, "onConfigurationChangedEvent", BaseTLSIdentity.CERT_ATTRIBUTE_ORGANIZATION, "u", "x", "E", "w", "I", "P", "v", SardineUtil.DEFAULT_NAMESPACE_PREFIX, "Lcom/onyx/galaxy/note/editor/data/ShortcutType;", "shortcutType", "K", "Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;", "customShortcutBarBean", "F", "N", "J", "M", "s", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "q", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lcom/onyx/galaxy/note/databinding/PopupShortcutBarCustomBinding;", "r", "Lkotlin/Lazy;", "t", "()Lcom/onyx/galaxy/note/databinding/PopupShortcutBarCustomBinding;", "binding", "Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;", "Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;", "customShortcutBarAdapter", "Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter;", "Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter;", "candidateAdapter", "Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;", "Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;", "shortcutBarData", "oldShortcutBarData", "defaultShortcutData", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nShortcutBarCustomPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShortcutBarCustomPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,297:1\n1549#2:298\n1620#2,3:299\n1549#2:302\n1620#2,3:303\n766#2:306\n857#2,2:307\n1603#2,9:309\n1855#2:318\n1856#2:320\n1612#2:321\n766#2:322\n857#2,2:323\n1603#2,9:325\n1855#2:334\n1856#2:336\n1612#2:337\n1549#2:338\n1620#2,3:339\n1#3:319\n1#3:335\n*S KotlinDebug\n*F\n+ 1 ShortcutBarCustomPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup\n*L\n141#1:298\n141#1:299,3\n155#1:302\n155#1:303,3\n257#1:306\n257#1:307,2\n258#1:309,9\n258#1:318\n258#1:320\n258#1:321\n260#1:322\n260#1:323,2\n261#1:325,9\n261#1:334\n261#1:336\n261#1:337\n277#1:338\n277#1:339,3\n258#1:319\n261#1:335\n*E\n"})
/* loaded from: classes9.dex */
public final class ShortcutBarCustomPopup extends BasePopupWindow {

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public final CustomShortcutBarAdapter customShortcutBarAdapter;

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public final CandidateShortcutAdapter candidateAdapter;

    /* renamed from: u, reason: from kotlin metadata */
    @NotNull
    public ShortcutBarData shortcutBarData;

    /* renamed from: v, reason: from kotlin metadata */
    @NotNull
    public final ShortcutBarData oldShortcutBarData;

    /* renamed from: w, reason: from kotlin metadata */
    @NotNull
    public final ShortcutBarData defaultShortcutData;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShortcutBarCustomPopup(@NotNull final Context context, @NotNull EditorBundle editorBundle) {
        super(context, DockType.BOTTOM);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.editorBundle = editorBundle;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<PopupShortcutBarCustomBinding>() { // from class: com.onyx.galaxy.note.editor.view.popup.ShortcutBarCustomPopup$binding$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PopupShortcutBarCustomBinding invoke() {
                return PopupShortcutBarCustomBinding.inflate(LayoutInflater.from(context));
            }
        });
        this.binding = lazy;
        this.customShortcutBarAdapter = new CustomShortcutBarAdapter(editorBundle);
        this.candidateAdapter = new CandidateShortcutAdapter(editorBundle);
        ShortcutBarData shortcutBarData = NoteConfigManager.INSTANCE.getNoteEditConfigInfo().getShortcutBarData();
        this.shortcutBarData = shortcutBarData;
        ShortcutBarData.Companion companion = ShortcutBarData.INSTANCE;
        this.oldShortcutBarData = companion.copy(shortcutBarData);
        this.defaultShortcutData = companion.createDefaultShortcutBarData();
        View root = m49535t().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
        setOutsideTouchable(false);
        setFocusable(false);
        GlobalBundle globalBundle = GlobalBundle.INSTANCE;
        globalBundle.register(this);
        globalBundle.postEvent(new PopupShowStateEvent(true));
        setMask(true, new Function0<Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.ShortcutBarCustomPopup.1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                ShortcutBarCustomPopup.this.m49527I();
            }
        });
        m49536u();
    }

    /* renamed from: A */
    public static final void m49508A(ShortcutBarCustomPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m49530M();
    }

    /* renamed from: B */
    public static final void m49509B(ShortcutBarCustomPopup this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        this$0.m49529K(this$0.candidateAdapter.getItems().get(i));
    }

    /* renamed from: C */
    public static final void m49510C(ShortcutBarCustomPopup this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        this$0.m49526F(this$0.customShortcutBarAdapter.getItems().get(i));
    }

    /* renamed from: G */
    public static final boolean m49511G(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return ((Boolean) tmp0.invoke(obj)).booleanValue();
    }

    /* renamed from: H */
    public static final boolean m49512H(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return ((Boolean) tmp0.invoke(obj)).booleanValue();
    }

    /* renamed from: L */
    public static final boolean m49513L(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return ((Boolean) tmp0.invoke(obj)).booleanValue();
    }

    /* renamed from: y */
    public static final void m49522y(ShortcutBarCustomPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m49527I();
    }

    /* renamed from: z */
    public static final void m49523z(ShortcutBarCustomPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    /* renamed from: D */
    public final void m49524D() {
        final CustomShortcutBarAdapter customShortcutBarAdapter = this.customShortcutBarAdapter;
        new ItemTouchHelper(new DragTouchCallback(this.customShortcutBarAdapter, new ManageCustomShortcutHandlerImpl(customShortcutBarAdapter) { // from class: com.onyx.galaxy.note.editor.view.popup.ShortcutBarCustomPopup$initShortcutDrag$manageCustomShortcutHandlerImpl$1
            @Override // com.onyx.galaxy.note.category.view.itemtouchcallback.ManageCustomShortcutHandlerImpl, com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback.SimpleDragHandler, com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback.DragHandler
            public void swap(int fromPosition, int toPosition) {
                super.swap(fromPosition, toPosition);
                ShortcutBarCustomPopup.this.m49531N();
            }
        }, true, true, false)).attachToRecyclerView(m49535t().list);
    }

    /* renamed from: E */
    public final void m49525E() {
        m49532O();
        m49535t().list.setAdapter(this.customShortcutBarAdapter);
        m49535t().candidateList.setAdapter(this.candidateAdapter);
    }

    @SuppressLint({"NotifyDataSetChanged"})
    /* renamed from: F */
    public final void m49526F(CustomShortcutBarBean customShortcutBarBean) {
        if (customShortcutBarBean.getItemType() != 2) {
            return;
        }
        ShortcutType shortcutType = customShortcutBarBean.getShortcutType();
        Intrinsics.checkNotNull(shortcutType);
        final int shortcutType2 = shortcutType.getShortcutType();
        List<Integer> leftSideList = this.shortcutBarData.getLeftSideList();
        final Function1<Integer, Boolean> function1 = new Function1<Integer, Boolean>() { // from class: com.onyx.galaxy.note.editor.view.popup.ShortcutBarCustomPopup$onAddCandidate$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Integer it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(it2.intValue() == shortcutType2);
            }
        };
        leftSideList.removeIf(new Predicate() { // from class: com.sunia.HTREnginev2.wom
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean m49511G;
                m49511G = ShortcutBarCustomPopup.m49511G(Function1.this, obj);
                return m49511G;
            }
        });
        List<Integer> rightSideList = this.shortcutBarData.getRightSideList();
        final Function1<Integer, Boolean> function12 = new Function1<Integer, Boolean>() { // from class: com.onyx.galaxy.note.editor.view.popup.ShortcutBarCustomPopup$onAddCandidate$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Integer it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(it2.intValue() == shortcutType2);
            }
        };
        rightSideList.removeIf(new Predicate() { // from class: com.sunia.HTREnginev2.xom
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean m49512H;
                m49512H = ShortcutBarCustomPopup.m49512H(Function1.this, obj);
                return m49512H;
            }
        });
        if (!this.shortcutBarData.getCandidateList().contains(Integer.valueOf(shortcutType2))) {
            this.shortcutBarData.getCandidateList().add(Integer.valueOf(shortcutType2));
            this.candidateAdapter.add(customShortcutBarBean.getShortcutType());
        }
        m49533P();
        this.customShortcutBarAdapter.remove(customShortcutBarBean);
        this.candidateAdapter.notifyDataSetChanged();
        this.customShortcutBarAdapter.notifyDataSetChanged();
    }

    /* renamed from: I */
    public final void m49527I() {
        NoteConfigManager.INSTANCE.getNoteEditConfigInfo().saveShortcutBarData(this.oldShortcutBarData);
        EditorBundleKt.postEvent(this.editorBundle, new ShortcutBarChangeEvent());
        dismiss();
    }

    /* renamed from: J */
    public final void m49528J() {
        int collectionSizeOrDefault;
        List<Integer> candidateList = this.shortcutBarData.getCandidateList();
        candidateList.clear();
        List<ShortcutType> items = this.candidateAdapter.getItems();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(items, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = items.iterator();
        while (it2.hasNext()) {
            arrayList.add(Integer.valueOf(((ShortcutType) it2.next()).getShortcutType()));
        }
        candidateList.addAll(arrayList);
        m49533P();
    }

    @SuppressLint({"NotifyDataSetChanged"})
    /* renamed from: K */
    public final void m49529K(ShortcutType shortcutType) {
        if (this.shortcutBarData.isExceedShortcutLimitCount()) {
            ToastUtils.INSTANCE.show(C10651R.string.shortcut_bar_exceed_shortcut_limit_count, true);
            return;
        }
        final int shortcutType2 = shortcutType.getShortcutType();
        List<Integer> candidateList = this.shortcutBarData.getCandidateList();
        final Function1<Integer, Boolean> function1 = new Function1<Integer, Boolean>() { // from class: com.onyx.galaxy.note.editor.view.popup.ShortcutBarCustomPopup$onRemoveCandidate$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Integer it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(it2.intValue() == shortcutType2);
            }
        };
        candidateList.removeIf(new Predicate() { // from class: com.sunia.HTREnginev2.qom
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean m49513L;
                m49513L = ShortcutBarCustomPopup.m49513L(Function1.this, obj);
                return m49513L;
            }
        });
        if (!this.shortcutBarData.getRightSideList().contains(Integer.valueOf(shortcutType2)) && !this.shortcutBarData.getLeftSideList().contains(Integer.valueOf(shortcutType2))) {
            this.shortcutBarData.getRightSideList().add(Integer.valueOf(shortcutType2));
            this.customShortcutBarAdapter.add(new CustomShortcutBarBean(2, shortcutType, null, 4, null));
        }
        m49533P();
        this.candidateAdapter.remove(shortcutType);
        this.candidateAdapter.notifyDataSetChanged();
        this.customShortcutBarAdapter.notifyDataSetChanged();
        m49535t().list.scrollToPosition(this.customShortcutBarAdapter.getItems().size() - 1);
    }

    /* renamed from: M */
    public final void m49530M() {
        this.shortcutBarData = ShortcutBarData.INSTANCE.createDefaultShortcutBarData();
        m49538w();
        m49533P();
    }

    /* renamed from: N */
    public final void m49531N() {
        List<CustomShortcutBarBean> items = this.customShortcutBarAdapter.getItems();
        CustomShortcutBarBean.Companion companion = CustomShortcutBarBean.INSTANCE;
        int indexOf = items.indexOf(companion.getSECTION_TITLE_RIGHT());
        int indexOf2 = this.customShortcutBarAdapter.getItems().indexOf(companion.getSECTION_TITLE_LEFT());
        if (indexOf < 0 || indexOf2 < 0) {
            return;
        }
        List safelySubList = CollectionKt.safelySubList(this.customShortcutBarAdapter.getItems(), indexOf2 + 1, indexOf);
        ArrayList arrayList = new ArrayList();
        Iterator it2 = safelySubList.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            Object next = it2.next();
            if (((CustomShortcutBarBean) next).getItemType() == 2) {
                arrayList.add(next);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it3 = arrayList.iterator();
        while (true) {
            if (!it3.hasNext()) {
                break;
            }
            ShortcutType shortcutType = ((CustomShortcutBarBean) it3.next()).getShortcutType();
            Integer valueOf = shortcutType != null ? Integer.valueOf(shortcutType.getShortcutType()) : null;
            if (valueOf != null) {
                arrayList2.add(valueOf);
            }
        }
        List safelySubList2 = CollectionKt.safelySubList(this.customShortcutBarAdapter.getItems(), indexOf, this.customShortcutBarAdapter.getItems().size());
        ArrayList arrayList3 = new ArrayList();
        for (Object obj : safelySubList2) {
            if (((CustomShortcutBarBean) obj).getItemType() == 2) {
                arrayList3.add(obj);
            }
        }
        ArrayList arrayList4 = new ArrayList();
        Iterator it4 = arrayList3.iterator();
        while (it4.hasNext()) {
            ShortcutType shortcutType2 = ((CustomShortcutBarBean) it4.next()).getShortcutType();
            Integer valueOf2 = shortcutType2 != null ? Integer.valueOf(shortcutType2.getShortcutType()) : null;
            if (valueOf2 != null) {
                arrayList4.add(valueOf2);
            }
        }
        List<Integer> leftSideList = this.shortcutBarData.getLeftSideList();
        leftSideList.clear();
        leftSideList.addAll(arrayList2);
        List<Integer> rightSideList = this.shortcutBarData.getRightSideList();
        rightSideList.clear();
        rightSideList.addAll(arrayList4);
        m49533P();
    }

    /* renamed from: O */
    public final void m49532O() {
        float appScreenWidth = ScreenUtils.getAppScreenWidth();
        ResManager resManager = ResManager.INSTANCE;
        int min = Math.min((int) (appScreenWidth * resManager.getFraction(C10651R.fraction.toolbar_custom_popup_width_percent)), resManager.getDimens(C7384R.dimen.dp_528));
        TintLinearLayout llLayout = m49535t().llLayout;
        Intrinsics.checkNotNullExpressionValue(llLayout, "llLayout");
        ViewKt.setLayoutWidth(llLayout, min);
        TintLinearLayout llLayout2 = m49535t().llLayout;
        Intrinsics.checkNotNullExpressionValue(llLayout2, "llLayout");
        ViewKt.setLayoutHeight(llLayout2, Integer.valueOf((int) (resManager.getScreenHeight() * resManager.getFraction(C10651R.fraction.toolbar_custom_popup_height_percent))));
        MaxHeightRecyclerView list = m49535t().list;
        Intrinsics.checkNotNullExpressionValue(list, "list");
        ViewKt.setLayoutHeight(list, Integer.valueOf((int) (resManager.getScreenHeight() * resManager.getFraction(C10651R.fraction.toolbar_custom_popup_list_height_percent))));
    }

    /* renamed from: P */
    public final void m49533P() {
        NoteConfigManager.INSTANCE.getNoteEditConfigInfo().saveShortcutBarData(this.shortcutBarData);
        EditorBundleKt.postEvent(this.editorBundle, new ShortcutBarChangeEvent());
        m49534s();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onConfigurationChangedEvent(@NotNull ConfigurationChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m49532O();
    }

    @Override // com.onyx.galaxy.note.common.view.BasePopupWindow
    public void onDismiss() {
        super.onDismiss();
        GlobalBundle.INSTANCE.unregister(this);
    }

    /* renamed from: s */
    public final void m49534s() {
        boolean areEqual = Intrinsics.areEqual(this.defaultShortcutData, this.shortcutBarData);
        m49535t().tvResetConfig.setEnabled(!areEqual);
        if (areEqual) {
            m49535t().tvResetConfig.setAlpha(ResManager.INSTANCE.getFloat(C10651R.dimen.half_alpha));
        } else {
            m49535t().tvResetConfig.setAlpha(ResManager.INSTANCE.getFloat(C10651R.dimen.max_alpha));
        }
    }

    /* renamed from: t */
    public final PopupShortcutBarCustomBinding m49535t() {
        return (PopupShortcutBarCustomBinding) this.binding.getValue();
    }

    /* renamed from: u */
    public final void m49536u() {
        m49538w();
        m49525E();
        m49539x();
        m49534s();
    }

    /* renamed from: v */
    public final void m49537v() {
        final CandidateShortcutAdapter candidateShortcutAdapter = this.candidateAdapter;
        new ItemTouchHelper(new DragTouchCallback(this.customShortcutBarAdapter, new ManageCandidateShortcutHandlerImpl(candidateShortcutAdapter) { // from class: com.onyx.galaxy.note.editor.view.popup.ShortcutBarCustomPopup$initCandidateDrag$manageCandidateShortcutHandlerImpl$1
            @Override // com.onyx.galaxy.note.category.view.itemtouchcallback.ManageCandidateShortcutHandlerImpl, com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback.SimpleDragHandler, com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback.DragHandler
            public void swap(int fromPosition, int toPosition) {
                super.swap(fromPosition, toPosition);
                ShortcutBarCustomPopup.this.m49528J();
            }
        }, true, true, false)).attachToRecyclerView(m49535t().candidateList);
    }

    /* renamed from: w */
    public final void m49538w() {
        int collectionSizeOrDefault;
        int collectionSizeOrDefault2;
        ArrayList arrayList = new ArrayList();
        CustomShortcutBarBean.Companion companion = CustomShortcutBarBean.INSTANCE;
        companion.getSECTION_TITLE_LEFT().setTitleRes(ContextKt.isLayoutDirectionRtl(ResManager.INSTANCE.getAppContext()) ? Integer.valueOf(C10651R.string.custom_shortcut_bar_right_side_title) : Integer.valueOf(C10651R.string.custom_shortcut_bar_left_side_title));
        arrayList.add(companion.getSECTION_TITLE_LEFT());
        List<ShortcutType> leftSideShortcutTypes = this.shortcutBarData.getLeftSideShortcutTypes();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(leftSideShortcutTypes, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = leftSideShortcutTypes.iterator();
        while (it2.hasNext()) {
            arrayList2.add(new CustomShortcutBarBean(2, (ShortcutType) it2.next(), null, 4, null));
        }
        arrayList.addAll(arrayList2);
        CustomShortcutBarBean.Companion companion2 = CustomShortcutBarBean.INSTANCE;
        companion2.getSECTION_TITLE_RIGHT().setTitleRes(ContextKt.isLayoutDirectionRtl(ResManager.INSTANCE.getAppContext()) ? Integer.valueOf(C10651R.string.custom_shortcut_bar_left_side_title) : Integer.valueOf(C10651R.string.custom_shortcut_bar_right_side_title));
        arrayList.add(companion2.getSECTION_TITLE_RIGHT());
        List<ShortcutType> rightSideShortcutTypes = this.shortcutBarData.getRightSideShortcutTypes();
        collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(rightSideShortcutTypes, 10);
        ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault2);
        Iterator<T> it3 = rightSideShortcutTypes.iterator();
        while (it3.hasNext()) {
            arrayList3.add(new CustomShortcutBarBean(2, (ShortcutType) it3.next(), null, 4, null));
        }
        arrayList.addAll(arrayList3);
        this.customShortcutBarAdapter.submitList(arrayList);
        this.candidateAdapter.submitList(this.shortcutBarData.getCandidateShortcutTypes());
    }

    /* renamed from: x */
    public final void m49539x() {
        TintTextView tvCancel = m49535t().tvCancel;
        Intrinsics.checkNotNullExpressionValue(tvCancel, "tvCancel");
        com.onyx.android.sdk.extension.ViewKt.click$default(tvCancel, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.rom
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ShortcutBarCustomPopup.m49522y(ShortcutBarCustomPopup.this, view);
            }
        }, 1, null);
        MediumTextView tvApply = m49535t().tvApply;
        Intrinsics.checkNotNullExpressionValue(tvApply, "tvApply");
        com.onyx.android.sdk.extension.ViewKt.click$default(tvApply, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.som
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ShortcutBarCustomPopup.m49523z(ShortcutBarCustomPopup.this, view);
            }
        }, 1, null);
        TintTextView tvResetConfig = m49535t().tvResetConfig;
        Intrinsics.checkNotNullExpressionValue(tvResetConfig, "tvResetConfig");
        com.onyx.android.sdk.extension.ViewKt.click$default(tvResetConfig, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.tom
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ShortcutBarCustomPopup.m49508A(ShortcutBarCustomPopup.this, view);
            }
        }, 1, null);
        m49537v();
        m49524D();
        ItemClickUtilsKt.addOnDebouncedChildClick$default(this.candidateAdapter, C10651R.id.ic_eye, 0L, new BaseQuickAdapter.OnItemChildClickListener() { // from class: com.sunia.HTREnginev2.uom
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemChildClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                ShortcutBarCustomPopup.m49509B(ShortcutBarCustomPopup.this, baseQuickAdapter, view, i);
            }
        }, 2, null);
        ItemClickUtilsKt.addOnDebouncedChildClick$default(this.customShortcutBarAdapter, C10651R.id.ic_eye, 0L, new BaseQuickAdapter.OnItemChildClickListener() { // from class: com.sunia.HTREnginev2.vom
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemChildClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                ShortcutBarCustomPopup.m49510C(ShortcutBarCustomPopup.this, baseQuickAdapter, view, i);
            }
        }, 2, null);
    }
}
