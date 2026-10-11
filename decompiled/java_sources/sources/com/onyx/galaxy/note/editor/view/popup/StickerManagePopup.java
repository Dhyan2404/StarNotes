package com.onyx.galaxy.note.editor.view.popup;

import android.content.Context;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import androidx.core.app.NotificationCompat;
import androidx.viewpager2.widget.ViewPager2;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.material.tabs.TabLayout;
import com.onyx.android.sdk.base.data.TimeGuard;
import com.onyx.android.sdk.base.eventbus.EventBusHolderKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.C7373R;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.event.LoginAccountChanged;
import com.onyx.android.sdk.data.common.error.OnyxErrorHandler;
import com.onyx.android.sdk.extension.TabLayoutKt;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.note.data.pen.PenArgs;
import com.onyx.android.sdk.replicator.sticker.action.AddStickerAction;
import com.onyx.android.sdk.replicator.sticker.action.CheckStickerImageFileAction;
import com.onyx.android.sdk.replicator.sticker.action.StickerSyncAction;
import com.onyx.android.sdk.replicator.sticker.model.StickerCategoryModel;
import com.onyx.android.sdk.replicator.sticker.model.StickerModel;
import com.onyx.android.sdk.theme.widgets.TintTabLayoutView;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.events.note.InsertImagesEvent;
import com.onyx.android.sdk.universal.editor.events.note.InsertStickerImagesEvent;
import com.onyx.android.sdk.universal.editor.events.note.SelectionInsertStickerErrorEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.extension.PopupWindowKt;
import com.onyx.galaxy.note.common.extension.ViewExtKt;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.common.view.BasePopupWindow;
import com.onyx.galaxy.note.databinding.PopupStickersBinding;
import com.onyx.galaxy.note.datarepository.event.StickerChangeEvent;
import com.onyx.galaxy.note.editor.view.adapter.StickerMainCategoryAdapter;
import com.onyx.galaxy.note.editor.view.popup.StickerManagePopup;
import com.onyx.galaxy.note.editor.view.toolbar.DockType;
import com.onyx.galaxy.note.p048ui.sticker.DeleteStickerDoneEvent;
import com.onyx.galaxy.note.p048ui.sticker.DeleteStickerStartEvent;
import com.onyx.galaxy.note.p048ui.sticker.InsertStickerDoneEvent;
import com.onyx.galaxy.note.p048ui.sticker.InsertStickerStartEvent;
import com.onyx.galaxy.note.p048ui.sticker.LoadMainCategoryListAction;
import com.onyx.galaxy.note.p048ui.sticker.MoveStickerDoneEvent;
import com.onyx.galaxy.note.p048ui.sticker.MoveStickerStartEvent;
import com.onyx.galaxy.note.p048ui.sticker.StickerTabUpdatedEvent;
import com.onyx.galaxy.note.p048ui.sticker.StickerUiBundle;
import com.sun.org.apache.bcel.internal.Constants;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B#\b\u0016\u0012\u0006\u0010/\u001a\u00020.\u0012\u0006\u0010'\u001a\u00020%\u0012\b\b\u0002\u00101\u001a\u000200¢\u0006\u0004\b2\u00103J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0007J\u0010\u0010\b\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0007H\u0007J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\tH\u0007J\u0010\u0010\f\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u000bH\u0007J\b\u0010\r\u001a\u00020\u0002H\u0002J\u0012\u0010\u0010\u001a\u00020\u00022\b\b\u0002\u0010\u000f\u001a\u00020\u000eH\u0002J\u0012\u0010\u0011\u001a\u00020\u00022\b\b\u0002\u0010\u000f\u001a\u00020\u000eH\u0002J\b\u0010\u0012\u001a\u00020\u0002H\u0002J\u0016\u0010\u0016\u001a\u00020\u00022\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013H\u0002J&\u0010\u001a\u001a\u00020\u00182\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00140\u00132\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\u0018H\u0002J\u0010\u0010\u001b\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0007H\u0002J\b\u0010\u001c\u001a\u00020\u0002H\u0002J\u0010\u0010\u001e\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u001dH\u0002J\u0012\u0010!\u001a\u00020\u00022\b\u0010 \u001a\u0004\u0018\u00010\u001fH\u0002R\u0014\u0010$\u001a\u00020\"8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010#R\u0016\u0010'\u001a\u00020%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010&R\u0016\u0010*\u001a\u00020(8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0012\u0010)R\u0016\u0010-\u001a\u00020+8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0011\u0010,¨\u00064"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup;", "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;", "", "initContentView", "Lcom/onyx/android/sdk/universal/editor/events/note/InsertStickerImagesEvent;", NotificationCompat.CATEGORY_EVENT, "onStickerImagePicked", "Lcom/onyx/android/sdk/universal/editor/events/note/InsertImagesEvent;", "onInsertImagesEvent", "Lcom/onyx/android/sdk/data/account/event/LoginAccountChanged;", "onAccountChange", "Lcom/onyx/galaxy/note/datarepository/event/StickerChangeEvent;", "onStickerImportEvent", C4921e.f26528e, "", "updateTab", "w", "t", "s", "", "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;", "categoryList", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "categories", "", "lastTabIndex", "q", "B", "r", "", "y", "", "message", SardineUtil.DEFAULT_NAMESPACE_PREFIX, "Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;", "Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;", "bundle", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lcom/onyx/galaxy/note/databinding/PopupStickersBinding;", "Lcom/onyx/galaxy/note/databinding/PopupStickersBinding;", "binding", "Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryAdapter;", "Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryAdapter;", "adapter", "Landroid/content/Context;", "context", "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;", "dockType", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nStickerManagePopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StickerManagePopup.kt\ncom/onyx/galaxy/note/editor/view/popup/StickerManagePopup\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 OnyxErrorHandler.kt\ncom/onyx/android/sdk/data/common/error/OnyxErrorHandler\n*L\n1#1,282:1\n1855#2,2:283\n350#2,7:285\n214#3:292\n*S KotlinDebug\n*F\n+ 1 StickerManagePopup.kt\ncom/onyx/galaxy/note/editor/view/popup/StickerManagePopup\n*L\n173#1:283,2\n187#1:285,7\n206#1:292\n*E\n"})
/* loaded from: classes9.dex */
public final class StickerManagePopup extends BasePopupWindow {

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public final StickerUiBundle bundle;

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public EditorBundle editorBundle;

    /* renamed from: s, reason: from kotlin metadata */
    public PopupStickersBinding binding;

    /* renamed from: t, reason: from kotlin metadata */
    public StickerMainCategoryAdapter adapter;

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.StickerManagePopup$a */
    /* loaded from: classes9.dex */
    public static final class C12475a<T> implements Consumer {
        public C12475a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(Object obj) {
            StickerManagePopup stickerManagePopup = StickerManagePopup.this;
            Intrinsics.checkNotNull(obj);
            stickerManagePopup.m49582y(obj);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.StickerManagePopup$b */
    /* loaded from: classes9.dex */
    public static final class C12476b<T> implements Predicate {
        public C12476b() {
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull List<StickerCategoryModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return !Intrinsics.areEqual(it2, StickerManagePopup.this.bundle.getMainCategories());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.StickerManagePopup$c */
    /* loaded from: classes9.dex */
    public static final class C12477c<T> implements Consumer {
        public C12477c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<StickerCategoryModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            StickerManagePopup.this.m49574C(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.StickerManagePopup$d */
    /* loaded from: classes9.dex */
    public static final class C12478d<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ Ref.IntRef f60598e;

        /* renamed from: f */
        public final /* synthetic */ StickerManagePopup f60599f;

        /* renamed from: g */
        public final /* synthetic */ boolean f60600g;

        /* renamed from: h */
        public final /* synthetic */ int f60601h;

        public C12478d(Ref.IntRef intRef, StickerManagePopup stickerManagePopup, boolean z, int i) {
            this.f60598e = intRef;
            this.f60599f = stickerManagePopup;
            this.f60600g = z;
            this.f60601h = i;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<StickerCategoryModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f60598e.element = this.f60599f.m49577q(it2, this.f60600g, this.f60601h);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.StickerManagePopup$e */
    /* loaded from: classes9.dex */
    public static final class C12479e<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ Ref.IntRef f60603f;

        public C12479e(Ref.IntRef intRef) {
            this.f60603f = intRef;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<StickerCategoryModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            StickerMainCategoryAdapter stickerMainCategoryAdapter = StickerManagePopup.this.adapter;
            PopupStickersBinding popupStickersBinding = null;
            if (stickerMainCategoryAdapter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                stickerMainCategoryAdapter = null;
            }
            stickerMainCategoryAdapter.submitList(StickerManagePopup.this.bundle.getMainCategories());
            PopupStickersBinding popupStickersBinding2 = StickerManagePopup.this.binding;
            if (popupStickersBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                popupStickersBinding2 = null;
            }
            TintTabLayoutView tabLayout = popupStickersBinding2.tabLayout;
            Intrinsics.checkNotNullExpressionValue(tabLayout, "tabLayout");
            TabLayoutKt.selectTab(tabLayout, this.f60603f.element);
            PopupStickersBinding popupStickersBinding3 = StickerManagePopup.this.binding;
            if (popupStickersBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                popupStickersBinding = popupStickersBinding3;
            }
            TintTabLayoutView tabLayout2 = popupStickersBinding.tabLayout;
            Intrinsics.checkNotNullExpressionValue(tabLayout2, "tabLayout");
            TabLayoutKt.scrollToTab(tabLayout2, this.f60603f.element);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.StickerManagePopup$f */
    /* loaded from: classes9.dex */
    public static final class C12480f<T> implements Consumer {
        public C12480f() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Disposable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            PopupWindowKt.updateOutsideTouchable(StickerManagePopup.this, false);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.StickerManagePopup$g */
    /* loaded from: classes9.dex */
    public static final class C12481g<T> implements Consumer {
        public C12481g() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<? extends Uri> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            StickerManagePopup.this.bundle.postEvent(new InsertStickerStartEvent());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.StickerManagePopup$h */
    /* loaded from: classes9.dex */
    public static final class C12482h<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ String f60606e;

        public C12482h(String str) {
            this.f60606e = str;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends StickerModel> apply(@NotNull List<? extends Uri> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new AddStickerAction(it2, this.f60606e).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.StickerManagePopup$i */
    /* loaded from: classes9.dex */
    public static final class C12483i<T> implements Consumer {
        public C12483i() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull StickerModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            StickerMainCategoryAdapter stickerMainCategoryAdapter = StickerManagePopup.this.adapter;
            if (stickerMainCategoryAdapter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                stickerMainCategoryAdapter = null;
            }
            stickerMainCategoryAdapter.updateStickerList(StickerManagePopup.this.bundle.getSelectedMainCategoryIndex());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.StickerManagePopup$j */
    /* loaded from: classes9.dex */
    public static final class C12484j<T> implements Consumer {
        public C12484j() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.postEvent(StickerManagePopup.this.editorBundle, new SelectionInsertStickerErrorEvent(it2));
        }
    }

    public /* synthetic */ StickerManagePopup(Context context, EditorBundle editorBundle, DockType dockType, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, editorBundle, (i & 4) != 0 ? DockType.BOTTOM : dockType);
    }

    /* renamed from: A */
    public static final void m49563A(StickerManagePopup this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        PopupWindowKt.updateOutsideTouchable(this$0, true);
    }

    /* renamed from: p */
    public static final void m49568p(StickerManagePopup this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        EventBusHolderKt.ensureUnRegister(this$0.bundle.getEventBus(), this$0);
        AccountDataBundle.INSTANCE.getEventBusHolder().unRegister(this$0);
        this$0.bundle.release();
    }

    /* renamed from: u */
    public static /* synthetic */ void m49569u(StickerManagePopup stickerManagePopup, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        stickerManagePopup.m49580t(z);
    }

    /* renamed from: v */
    public static final void m49570v(StickerManagePopup this$0, boolean z, Object it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        PopupStickersBinding popupStickersBinding = this$0.binding;
        if (popupStickersBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            popupStickersBinding = null;
        }
        this$0.m49581w((popupStickersBinding.tabLayout.getTabCount() <= 1) || z);
    }

    /* renamed from: x */
    public static /* synthetic */ void m49571x(StickerManagePopup stickerManagePopup, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        stickerManagePopup.m49581w(z);
    }

    /* renamed from: z */
    public static final void m49572z(StickerManagePopup this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.bundle.postEvent(new InsertStickerDoneEvent());
    }

    /* renamed from: B */
    public final void m49573B(InsertImagesEvent event) {
        String path = event.getUriList().get(0).getPath();
        if (path == null) {
            path = "";
        }
        StatisticsBundle statisticsBundle = StatisticsBundle.INSTANCE;
        EditorBundle editorBundle = this.editorBundle;
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(new Pair(OnyxStatisticConstant.KEY_NOTE_PASTER_DATA, path));
        Unit unit = Unit.INSTANCE;
        statisticsBundle.reportEvent(editorBundle, OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_STICKER_BTN_DOUBLE_CLICK_SHOW_MENU, OnyxStatisticConstant.EVENT_TYPE_CLICK, arrayList);
    }

    /* renamed from: C */
    public final void m49574C(List<StickerCategoryModel> categoryList) {
        List filterNotNull;
        this.bundle.clear();
        this.bundle.buildTree(categoryList);
        List<StickerCategoryModel> mainCategories = this.bundle.getMainCategories();
        PopupStickersBinding popupStickersBinding = this.binding;
        if (popupStickersBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            popupStickersBinding = null;
        }
        TintTabLayoutView tabLayout = popupStickersBinding.tabLayout;
        Intrinsics.checkNotNullExpressionValue(tabLayout, "tabLayout");
        filterNotNull = CollectionsKt___CollectionsKt.filterNotNull(TabLayoutKt.tabList(tabLayout, new Function1<TabLayout.Tab, StickerCategoryModel>() { // from class: com.onyx.galaxy.note.editor.view.popup.StickerManagePopup$setCategoryData$oldCategoryList$1
            @Override // kotlin.jvm.functions.Function1
            @Nullable
            public final StickerCategoryModel invoke(@NotNull TabLayout.Tab it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                Object tag = it2.getTag();
                if (tag instanceof StickerCategoryModel) {
                    return (StickerCategoryModel) tag;
                }
                return null;
            }
        }));
        if (Intrinsics.areEqual(mainCategories, filterNotNull)) {
            return;
        }
        PopupStickersBinding popupStickersBinding2 = this.binding;
        if (popupStickersBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            popupStickersBinding2 = null;
        }
        popupStickersBinding2.viewPager.setOffscreenPageLimit(Math.max(1, CollectionKt.getSize(mainCategories)));
        PopupStickersBinding popupStickersBinding3 = this.binding;
        if (popupStickersBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            popupStickersBinding3 = null;
        }
        popupStickersBinding3.tabLayout.removeAllTabs();
        for (StickerCategoryModel stickerCategoryModel : mainCategories) {
            PopupStickersBinding popupStickersBinding4 = this.binding;
            if (popupStickersBinding4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                popupStickersBinding4 = null;
            }
            TabLayout.Tab newTab = popupStickersBinding4.tabLayout.newTab();
            Intrinsics.checkNotNullExpressionValue(newTab, "newTab(...)");
            newTab.setText(stickerCategoryModel.getName());
            newTab.setTag(stickerCategoryModel);
            PopupStickersBinding popupStickersBinding5 = this.binding;
            if (popupStickersBinding5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                popupStickersBinding5 = null;
            }
            popupStickersBinding5.tabLayout.addTab(newTab, false);
        }
    }

    /* renamed from: D */
    public final void m49575D(String message) {
        PopupStickersBinding popupStickersBinding = this.binding;
        PopupStickersBinding popupStickersBinding2 = null;
        if (popupStickersBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            popupStickersBinding = null;
        }
        FrameLayout loadingContainer = popupStickersBinding.loadingContainer;
        Intrinsics.checkNotNullExpressionValue(loadingContainer, "loadingContainer");
        ViewKt.matchParentBySize(loadingContainer);
        PopupStickersBinding popupStickersBinding3 = this.binding;
        if (popupStickersBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            popupStickersBinding3 = null;
        }
        ViewKt.setViewVisibleOrInvisible(popupStickersBinding3.loadingContainer, true);
        PopupStickersBinding popupStickersBinding4 = this.binding;
        if (popupStickersBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            popupStickersBinding4 = null;
        }
        popupStickersBinding4.loadingBinding.loadingText.setText(message);
        PopupStickersBinding popupStickersBinding5 = this.binding;
        if (popupStickersBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            popupStickersBinding2 = popupStickersBinding5;
        }
        LinearLayout loadingLayout = popupStickersBinding2.loadingBinding.loadingLayout;
        Intrinsics.checkNotNullExpressionValue(loadingLayout, "loadingLayout");
        ViewExtKt.startAlphaAnimation$default(loadingLayout, 0.0f, 1.0f, 0L, null, 13, null);
    }

    @Override // com.onyx.galaxy.note.common.view.BasePopupWindow
    public void initContentView() {
        setTouchModal(true);
        setOutsideTouchable(true);
        PopupStickersBinding inflate = PopupStickersBinding.inflate(LayoutInflater.from(getContext()));
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        if (inflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            inflate = null;
        }
        View root = inflate.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
        m49578r();
    }

    /* renamed from: o */
    public final void m49576o() {
        this.adapter = new StickerMainCategoryAdapter(this.bundle);
        PopupStickersBinding popupStickersBinding = this.binding;
        PopupStickersBinding popupStickersBinding2 = null;
        if (popupStickersBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            popupStickersBinding = null;
        }
        ViewPager2 viewPager2 = popupStickersBinding.viewPager;
        StickerMainCategoryAdapter stickerMainCategoryAdapter = this.adapter;
        if (stickerMainCategoryAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            stickerMainCategoryAdapter = null;
        }
        viewPager2.setAdapter(stickerMainCategoryAdapter);
        PopupStickersBinding popupStickersBinding3 = this.binding;
        if (popupStickersBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            popupStickersBinding3 = null;
        }
        popupStickersBinding3.viewPager.setUserInputEnabled(false);
        PopupStickersBinding popupStickersBinding4 = this.binding;
        if (popupStickersBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            popupStickersBinding4 = null;
        }
        popupStickersBinding4.viewPager.setNestedScrollingEnabled(false);
        PopupStickersBinding popupStickersBinding5 = this.binding;
        if (popupStickersBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            popupStickersBinding2 = popupStickersBinding5;
        }
        TintTabLayoutView tabLayout = popupStickersBinding2.tabLayout;
        Intrinsics.checkNotNullExpressionValue(tabLayout, "tabLayout");
        TabLayoutKt.addOnTabSelectedListener(tabLayout, new Function1<TabLayout.Tab, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.StickerManagePopup$addEvents$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(TabLayout.Tab tab) {
                invoke2(tab);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull TabLayout.Tab tab) {
                Object orNull;
                Intrinsics.checkNotNullParameter(tab, "tab");
                orNull = CollectionsKt___CollectionsKt.getOrNull(StickerManagePopup.this.bundle.getMainCategories(), tab.getPosition());
                StickerCategoryModel stickerCategoryModel = (StickerCategoryModel) orNull;
                if (stickerCategoryModel == null) {
                    return;
                }
                StickerManagePopup.this.bundle.selectMainCategory(stickerCategoryModel);
                PopupStickersBinding popupStickersBinding6 = StickerManagePopup.this.binding;
                if (popupStickersBinding6 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    popupStickersBinding6 = null;
                }
                popupStickersBinding6.viewPager.setCurrentItem(tab.getPosition(), false);
            }
        });
        EventBusHolderKt.ensureRegister(this.bundle.getEventBus(), this);
        AccountDataBundle.INSTANCE.getEventBusHolder().register(this);
        setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: com.sunia.HTREnginev2.mzm
            @Override // android.widget.PopupWindow.OnDismissListener
            public final void onDismiss() {
                StickerManagePopup.m49568p(StickerManagePopup.this);
            }
        });
        OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
        Observable<Object> doOnNext = this.bundle.getEventPublisher().observeOn(AndroidSchedulers.mainThread()).doOnNext(new C12475a());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        OnyxErrorHandler.subscribeWithErrorHandler$default(onyxErrorHandler, doOnNext, null, null, 3, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onAccountChange(@NotNull LoginAccountChanged event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m49580t(false);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onInsertImagesEvent(@NotNull InsertImagesEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        dismiss();
        m49573B(event);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onStickerImagePicked(@NotNull InsertStickerImagesEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        String targetCategoryForStickerImport = this.bundle.getTargetCategoryForStickerImport();
        OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
        Observable doFinally = new CheckStickerImageFileAction(event.getUriList()).build().doOnSubscribe(new C12480f()).doOnNext(new C12481g()).flatMap(new C12482h(targetCategoryForStickerImport)).doOnNext(new C12483i()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.kzm
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                StickerManagePopup.m49572z(StickerManagePopup.this);
            }
        }).doOnError(new C12484j()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.lzm
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                StickerManagePopup.m49563A(StickerManagePopup.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        Observable doOnError = doFinally.doOnError(new Consumer() { // from class: com.onyx.galaxy.note.editor.view.popup.StickerManagePopup$onStickerImagePicked$$inlined$handleTimeoutError$1
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(@NotNull Throwable it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                OnyxErrorHandler.INSTANCE.showTimeoutMessage(it2);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnError, "doOnError(...)");
        onyxErrorHandler.subscribeSilently(doOnError);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onStickerImportEvent(@NotNull StickerChangeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m49581w(false);
    }

    /* renamed from: q */
    public final int m49577q(List<StickerCategoryModel> categories, boolean updateTab, int lastTabIndex) {
        if (!updateTab) {
            return ((Number) MathUtils.INSTANCE.atLeast(Integer.valueOf(lastTabIndex), 0)).intValue();
        }
        boolean isEmpty = KSyncBundle.INSTANCE.getUserStickerProvider().loadRecentUsage().isEmpty();
        Iterator<StickerCategoryModel> it2 = categories.iterator();
        int i = 0;
        while (true) {
            if (!it2.hasNext()) {
                i = -1;
                break;
            }
            if (it2.next().getType() == 3) {
                break;
            }
            i++;
        }
        return (!isEmpty || i < 0) ? ((Number) MathUtils.INSTANCE.atLeast(Integer.valueOf(lastTabIndex), 0)).intValue() : i;
    }

    /* renamed from: r */
    public final void m49578r() {
        getContentView().addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.onyx.galaxy.note.editor.view.popup.StickerManagePopup$initAttachStateReportListener$1
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(@NotNull View v) {
                Intrinsics.checkNotNullParameter(v, "v");
                StatisticsBundle.INSTANCE.reportShowPopupMenuEvent(StickerManagePopup.this.editorBundle, "IMAGE_STICKER", OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_IMAGE_STICKER_BTN_CLICK, OnyxStatisticConstant.EVENT_TYPE_CLICK, (PenArgs) null);
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(@NotNull View v) {
                Intrinsics.checkNotNullParameter(v, "v");
            }
        });
    }

    /* renamed from: s */
    public final void m49579s() {
        m49571x(this, false, 1, null);
        m49569u(this, false, 1, null);
    }

    /* renamed from: t */
    public final void m49580t(final boolean updateTab) {
        RxjavaKt.continueOnFail(RxjavaKt.doOnNextIf(new StickerSyncAction().build(), new TimeGuard(ResManager.INSTANCE.getLong(C7373R.integer.sync_timeout), 0L, 2, null), new Consumer() { // from class: com.sunia.HTREnginev2.nzm
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                StickerManagePopup.m49570v(StickerManagePopup.this, updateTab, obj);
            }
        })).subscribe();
    }

    /* renamed from: w */
    public final void m49581w(boolean updateTab) {
        PopupStickersBinding popupStickersBinding = this.binding;
        if (popupStickersBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            popupStickersBinding = null;
        }
        int selectedTabPosition = popupStickersBinding.tabLayout.getSelectedTabPosition();
        Ref.IntRef intRef = new Ref.IntRef();
        intRef.element = -1;
        new LoadMainCategoryListAction(this.bundle).build().filter(new C12476b()).observeOn(AndroidSchedulers.mainThread()).doOnNext(new C12477c()).doOnNext(new C12478d(intRef, this, updateTab, selectedTabPosition)).observeOn(AndroidSchedulers.mainThread()).doOnNext(new C12479e(intRef)).subscribe();
    }

    /* renamed from: y */
    public final void m49582y(Object event) {
        PopupStickersBinding popupStickersBinding = null;
        StickerMainCategoryAdapter stickerMainCategoryAdapter = null;
        if (event instanceof StickerTabUpdatedEvent) {
            StickerMainCategoryAdapter stickerMainCategoryAdapter2 = this.adapter;
            if (stickerMainCategoryAdapter2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
            } else {
                stickerMainCategoryAdapter = stickerMainCategoryAdapter2;
            }
            stickerMainCategoryAdapter.notifyItemChanged(((StickerTabUpdatedEvent) event).getTabIndex());
            return;
        }
        if (event instanceof InsertStickerStartEvent) {
            m49575D(ResManager.INSTANCE.getString(C10651R.string.sticker_message_uploading));
            return;
        }
        if (event instanceof DeleteStickerStartEvent) {
            m49575D(ResManager.INSTANCE.getString(C10651R.string.sticker_message_deleting));
            return;
        }
        if (event instanceof MoveStickerStartEvent) {
            m49575D(ResManager.INSTANCE.getString(C10651R.string.sticker_message_moving));
            return;
        }
        if (event instanceof MoveStickerDoneEvent ? true : event instanceof InsertStickerDoneEvent ? true : event instanceof DeleteStickerDoneEvent) {
            PopupStickersBinding popupStickersBinding2 = this.binding;
            if (popupStickersBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                popupStickersBinding = popupStickersBinding2;
            }
            LinearLayout loadingLayout = popupStickersBinding.loadingBinding.loadingLayout;
            Intrinsics.checkNotNullExpressionValue(loadingLayout, "loadingLayout");
            ViewExtKt.startAlphaAnimation$default(loadingLayout, 0.0f, 0.0f, 0L, new Function0<Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.StickerManagePopup$onStickerEvent$1
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
                    PopupStickersBinding popupStickersBinding3 = StickerManagePopup.this.binding;
                    if (popupStickersBinding3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        popupStickersBinding3 = null;
                    }
                    ViewKt.setViewVisibleOrInvisible(popupStickersBinding3.loadingContainer, false);
                }
            }, 5, null);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StickerManagePopup(@NotNull Context context, @NotNull EditorBundle editorBundle, @NotNull DockType dockType) {
        super(context, dockType);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(dockType, "dockType");
        StickerUiBundle stickerUiBundle = new StickerUiBundle();
        this.bundle = stickerUiBundle;
        this.editorBundle = editorBundle;
        stickerUiBundle.setActivityContext(context);
        stickerUiBundle.setEventBus(EditorBundleKt.appEventBus(editorBundle));
        m49576o();
        m49579s();
    }
}
