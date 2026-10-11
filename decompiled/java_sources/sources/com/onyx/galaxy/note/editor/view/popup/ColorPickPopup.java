package com.onyx.galaxy.note.editor.view.popup;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import androidx.core.app.NotificationCompat;
import androidx.recyclerview.widget.ItemTouchHelper;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.google.android.material.tabs.TabLayout;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.ColorKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.extension.ViewLocator;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.extension.TabLayoutKt;
import com.onyx.android.sdk.replicator.colorset.action.ColorSyncAction;
import com.onyx.android.sdk.replicator.colorset.action.LoadColorSetAction;
import com.onyx.android.sdk.replicator.colorset.data.ColorSetModel;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTabLayoutView;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.events.note.BeforeChangePenArgsEvent;
import com.onyx.android.sdk.universal.editor.helper.PencilBoxManager;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback;
import com.onyx.galaxy.note.category.view.itemtouchcallback.ManageColorSetHandlerImpl;
import com.onyx.galaxy.note.common.extension.PopupWindowKt;
import com.onyx.galaxy.note.common.keyboard.KeyboardHelper;
import com.onyx.galaxy.note.common.keyboard.KeyboardStateListener;
import com.onyx.galaxy.note.common.view.BasePopupWindow;
import com.onyx.galaxy.note.databinding.PopupColorPickBinding;
import com.onyx.galaxy.note.editor.action.colorset.DeleteColorSetAction;
import com.onyx.galaxy.note.editor.action.colorset.RenameColorSetAction;
import com.onyx.galaxy.note.editor.event.DeleteColorSetModelEvent;
import com.onyx.galaxy.note.editor.event.RenameColorSetModelEvent;
import com.onyx.galaxy.note.editor.view.popup.ColorPickPopup;
import com.onyx.galaxy.note.editor.view.toolbar.DockType;
import com.onyx.galaxy.note.p048ui.adapter.ColorSetAdapter;
import com.onyx.galaxy.note.p048ui.colorpicker.view.ColorPanelView;
import com.onyx.galaxy.note.p048ui.colorpicker.view.ColorPickView;
import com.onyx.galaxy.note.p048ui.colorpicker.view.ColorPickerCallback;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u009b\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005*\u0001F\u0018\u0000 Q2\u00020\u00012\u00020\u0002:\u0001QB;\u0012\u0006\u0010J\u001a\u00020I\u0012\u0006\u0010L\u001a\u00020K\u0012\b\b\u0002\u0010N\u001a\u00020M\u0012\u000e\b\u0002\u00103\u001a\b\u0012\u0004\u0012\u00020\b00\u0012\b\b\u0002\u00105\u001a\u00020\b¢\u0006\u0004\bO\u0010PJ\b\u0010\u0004\u001a\u00020\u0003H\u0002J\b\u0010\u0005\u001a\u00020\u0003H\u0002J\u0018\u0010\n\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0002J\u0018\u0010\r\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000bH\u0002J\b\u0010\u000e\u001a\u00020\u0003H\u0002J\u0010\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\u0014\u0010\u0015\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00140\u00130\u0012H\u0002J\u001c\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00140\u00132\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013H\u0002J\u0010\u0010\u0019\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00180\u0012H\u0002J\b\u0010\u001a\u001a\u00020\u0003H\u0002J\u0010\u0010\u001c\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\bH\u0002J\b\u0010\u001d\u001a\u00020\u0003H\u0002J\b\u0010\u001e\u001a\u00020\u0003H\u0002J\u0010\u0010!\u001a\u00020\u00032\u0006\u0010 \u001a\u00020\u001fH\u0007J\u0006\u0010\"\u001a\u00020\u0003J\u0006\u0010#\u001a\u00020\u0003J\u0010\u0010%\u001a\u00020\u00032\b\b\u0002\u0010$\u001a\u00020\u000fJ\u000e\u0010&\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\bJ\u0010\u0010(\u001a\u00020\u00032\u0006\u0010 \u001a\u00020'H\u0007J\u0010\u0010*\u001a\u00020\u00032\u0006\u0010 \u001a\u00020)H\u0007J\b\u0010+\u001a\u00020\u0003H\u0014J\b\u0010,\u001a\u00020\u0003H\u0014J\u0010\u0010.\u001a\u00020\u00032\u0006\u0010-\u001a\u00020\bH\u0016J\b\u0010/\u001a\u00020\u0003H\u0016R\u001a\u00103\u001a\b\u0012\u0004\u0012\u00020\b008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b1\u00102R\u0014\u00105\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b4\u0010\u001cR\u0016\u00107\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u00106R\u001b\u0010<\u001a\u0002088BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b9\u0010:\u001a\u0004\b9\u0010;R\u001b\u0010@\u001a\u00020=8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b>\u0010:\u001a\u0004\b>\u0010?R\u0016\u0010A\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0005\u0010\u001cR\u0016\u0010E\u001a\u00020B8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bC\u0010DR\u0014\u0010H\u001a\u00020F8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010G¨\u0006R"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;", "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;", "Lcom/onyx/galaxy/note/common/keyboard/KeyboardStateListener;", "", "x", "v", "Landroid/view/View;", "view", "", "pos", "G", "Landroid/view/MenuItem;", "menuItem", "B", "p", "", "hasFocus", "H", "Lio/reactivex/rxjava3/core/Observable;", "", "Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;", "A", "colorSetModels", "s", "", "z", "y", "color", "I", "E", "F", "Lcom/onyx/android/sdk/universal/editor/events/note/BeforeChangePenArgsEvent;", NotificationCompat.CATEGORY_EVENT, "onBeforeChangePenEvent", "setSelectColorTabOnly", "setOpaqueColorOnly", "disable", "setDisableAlphaColor", "setOriginColor", "Lcom/onyx/galaxy/note/editor/event/DeleteColorSetModelEvent;", "onDeleteColorSetModelEvent", "Lcom/onyx/galaxy/note/editor/event/RenameColorSetModelEvent;", "onRenameColorSetModelEvent", "onShow", "onDismiss", "keyboardHeight", "onKeyboardOpen", "onKeyboardClose", "", "q", "Ljava/util/List;", CouchFieldKey.KEY_COLORS, "r", "colorIndex", Constants.HASIDCALL_INDEX_SIG, "opaqueColorOnly", "Lcom/onyx/galaxy/note/databinding/PopupColorPickBinding;", "t", "Lkotlin/Lazy;", "()Lcom/onyx/galaxy/note/databinding/PopupColorPickBinding;", "binding", "Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter;", "u", "()Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter;", "colorSetAdapter", "originColorPanelHeight", "Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;", "w", "Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;", "keyboardHelper", "com/onyx/galaxy/note/editor/view/popup/ColorPickPopup$wrapperColorPickerCallback$1", "Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup$wrapperColorPickerCallback$1;", "wrapperColorPickerCallback", "Landroid/content/Context;", "context", "Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback;", "callback", "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;", "dockType", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;Ljava/util/List;I)V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nColorPickPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ColorPickPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/ColorPickPopup\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,312:1\n766#2:313\n857#2,2:314\n*S KotlinDebug\n*F\n+ 1 ColorPickPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/ColorPickPopup\n*L\n215#1:313\n215#1:314,2\n*E\n"})
/* loaded from: classes9.dex */
public final class ColorPickPopup extends BasePopupWindow implements KeyboardStateListener {
    public static final int COLOR_PALETTE_TAB_INDEX = 0;
    public static final int COLOR_SET_TAB_INDEX = 1;

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public final List<Integer> colors;

    /* renamed from: r, reason: from kotlin metadata */
    public final int colorIndex;

    /* renamed from: s, reason: from kotlin metadata */
    public boolean opaqueColorOnly;

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: u, reason: from kotlin metadata */
    @NotNull
    public final Lazy colorSetAdapter;

    /* renamed from: v, reason: from kotlin metadata */
    public int originColorPanelHeight;

    /* renamed from: w, reason: from kotlin metadata */
    @NotNull
    public KeyboardHelper keyboardHelper;

    /* renamed from: x, reason: from kotlin metadata */
    @NotNull
    public final ColorPickPopup$wrapperColorPickerCallback$1 wrapperColorPickerCallback;

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.ColorPickPopup$a */
    /* loaded from: classes9.dex */
    public static final class C12376a<T, R> implements Function {
        public C12376a() {
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends List<ColorSetModel>> m48602a(boolean z) {
            return ColorPickPopup.this.m48587A();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m48602a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.ColorPickPopup$b */
    /* loaded from: classes9.dex */
    public static final class C12377b<T, R> implements Function {
        public C12377b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<ColorSetModel> apply(@NotNull List<ColorSetModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ColorPickPopup.this.m48595s(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.ColorPickPopup$c */
    /* loaded from: classes9.dex */
    public static final class C12378c<T> implements Consumer {
        public C12378c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<ColorSetModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ColorPickPopup.this.m48597u().submitList(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.ColorPickPopup$d */
    /* loaded from: classes9.dex */
    public static final class C12380d<T> implements Consumer {
        public C12380d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<ColorSetModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ColorPickPopup.this.setLoading(false);
        }
    }

    public /* synthetic */ ColorPickPopup(Context context, ColorPickerCallback colorPickerCallback, DockType dockType, List list, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, colorPickerCallback, (i2 & 4) != 0 ? DockType.BOTTOM : dockType, (i2 & 8) != 0 ? new ArrayList() : list, (i2 & 16) != 0 ? -1 : i);
    }

    /* renamed from: C */
    public static final void m48577C(ColorPickPopup this$0, ColorSetModel item, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(item, "$item");
        this$0.m48597u().remove(item);
    }

    /* renamed from: D */
    public static final void m48578D(ColorPickPopup this$0, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48597u().updateOrder();
    }

    /* renamed from: q */
    public static final void m48584q(ColorPickPopup this$0, View view, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48592H(z);
    }

    /* renamed from: r */
    public static final void m48585r(ColorPickPopup this$0, View view, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48592H(z);
    }

    public static /* synthetic */ void setDisableAlphaColor$default(ColorPickPopup colorPickPopup, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        colorPickPopup.setDisableAlphaColor(z);
    }

    /* renamed from: w */
    public static final void m48586w(ColorPickPopup this$0, BaseQuickAdapter baseQuickAdapter, View v, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(v, "v");
        this$0.m48591G(v, i);
    }

    /* renamed from: A */
    public final Observable<List<ColorSetModel>> m48587A() {
        Observable<List<ColorSetModel>> doOnNext = new LoadColorSetAction().build().observeOn(AndroidSchedulers.mainThread()).map(new C12377b()).doOnNext(new C12378c()).doOnNext(new C12380d());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: B */
    public final void m48588B(int pos, MenuItem menuItem) {
        List listOf;
        final ColorSetModel item = m48597u().getItem(pos);
        if (item == null) {
            return;
        }
        int itemId = menuItem.getItemId();
        if (itemId == C10651R.id.rename) {
            RxBaseAction.execute$default(new RenameColorSetAction(getContext(), item), null, null, null, 7, null);
        } else if (itemId == C10651R.id.delete) {
            Context context = getContext();
            listOf = CollectionsKt__CollectionsJVMKt.listOf(item.getUniqueId());
            RxjavaKt.doOnNextIfTrue(RxjavaKt.doOnNextIfTrue(new DeleteColorSetAction(context, listOf).build(), new Consumer() { // from class: com.sunia.HTREnginev2.v1e
                @Override // io.reactivex.rxjava3.functions.Consumer
                public final void accept(Object obj) {
                    ColorPickPopup.m48577C(ColorPickPopup.this, item, ((Boolean) obj).booleanValue());
                }
            }), new Consumer() { // from class: com.sunia.HTREnginev2.w1e
                @Override // io.reactivex.rxjava3.functions.Consumer
                public final void accept(Object obj) {
                    ColorPickPopup.m48578D(ColorPickPopup.this, ((Boolean) obj).booleanValue());
                }
            }).subscribe();
        }
    }

    /* renamed from: E */
    public final void m48589E() {
        ViewLocator viewLocator = ViewLocator.INSTANCE;
        TintLinearLayout root = m48596t().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        View activityContentView = viewLocator.getActivityContentView(root);
        ViewGroup viewGroup = activityContentView instanceof ViewGroup ? (ViewGroup) activityContentView : null;
        if (viewGroup == null) {
            return;
        }
        KeyboardHelper keyboardHelper = new KeyboardHelper();
        this.keyboardHelper = keyboardHelper;
        keyboardHelper.init(getContext()).bindRootLayout(viewGroup).setOnKeyboardStateListener(this);
    }

    /* renamed from: F */
    public final void m48590F() {
        ColorPanelView colorPanel = m48596t().colorPickView.getBinding().colorPanel;
        Intrinsics.checkNotNullExpressionValue(colorPanel, "colorPanel");
        ViewKt.setLayoutHeight(colorPanel, Integer.valueOf(this.originColorPanelHeight));
    }

    /* renamed from: G */
    public final void m48591G(View view, final int pos) {
        new ContextMenuPopup(getContext(), C10651R.menu.color_set_more_action_menu, new Function1<MenuItem, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.ColorPickPopup$showMoreActionPopup$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull MenuItem it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                ColorPickPopup.this.m48588B(pos, it2);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(MenuItem menuItem) {
                invoke2(menuItem);
                return Unit.INSTANCE;
            }
        }, null, 8, null).showAsDropDownCenter(view);
    }

    /* renamed from: H */
    public final void m48592H(boolean hasFocus) {
        setFocusable(hasFocus);
        setInputMethodMode(0);
        update();
    }

    /* renamed from: I */
    public final void m48593I(int color) {
        Object orNull;
        orNull = CollectionsKt___CollectionsKt.getOrNull(this.colors, this.colorIndex);
        Integer num = (Integer) orNull;
        if (num != null) {
            num.intValue();
            this.colors.set(this.colorIndex, Integer.valueOf(color));
            m48597u().updateSelectedPos(this.colors);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onBeforeChangePenEvent(@NotNull BeforeChangePenArgsEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (PencilBoxManager.INSTANCE.hasPenBox()) {
            dismiss();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onDeleteColorSetModelEvent(@NotNull DeleteColorSetModelEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m48600y();
    }

    @Override // com.onyx.galaxy.note.common.view.BasePopupWindow
    public void onDismiss() {
        m48590F();
        this.keyboardHelper.release();
        DocCollectionBundle.INSTANCE.ensureUnRegister(this);
        GlobalBundle.INSTANCE.unregister(this);
        super.onDismiss();
    }

    @Override // com.onyx.galaxy.note.common.keyboard.KeyboardStateListener
    public void onKeyboardClose() {
        m48590F();
    }

    @Override // com.onyx.galaxy.note.common.keyboard.KeyboardStateListener
    public void onKeyboardOpen(int keyboardHeight) {
        int height = ViewLocator.INSTANCE.getScreenSize().getHeight();
        int measuredHeight = m48596t().getRoot().getRootView().getMeasuredHeight();
        MathUtils mathUtils = MathUtils.INSTANCE;
        int intValue = ((Number) mathUtils.atLeast(mathUtils.atMost(Integer.valueOf((height - measuredHeight) - this.originColorPanelHeight), Integer.valueOf(this.originColorPanelHeight)), 1)).intValue();
        ColorPanelView colorPanel = m48596t().colorPickView.getBinding().colorPanel;
        Intrinsics.checkNotNullExpressionValue(colorPanel, "colorPanel");
        ViewKt.setLayoutHeight(colorPanel, Integer.valueOf(intValue));
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onRenameColorSetModelEvent(@NotNull RenameColorSetModelEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m48600y();
    }

    @Override // com.onyx.galaxy.note.common.view.BasePopupWindow
    public void onShow() {
        super.onShow();
        DocCollectionBundle.INSTANCE.ensureRegister(this);
        GlobalBundle.INSTANCE.register(this);
        m48589E();
    }

    /* renamed from: p */
    public final void m48594p() {
        TintTabLayoutView tabLayout = m48596t().tabLayout;
        Intrinsics.checkNotNullExpressionValue(tabLayout, "tabLayout");
        TabLayoutKt.addOnTabSelectedListener(tabLayout, new Function1<TabLayout.Tab, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.ColorPickPopup$addEvent$1
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
                PopupColorPickBinding m48596t;
                PopupColorPickBinding m48596t2;
                PopupColorPickBinding m48596t3;
                PopupColorPickBinding m48596t4;
                PopupColorPickBinding m48596t5;
                Intrinsics.checkNotNullParameter(tab, "tab");
                m48596t = ColorPickPopup.this.m48596t();
                TintTabLayoutView tabLayout2 = m48596t.tabLayout;
                Intrinsics.checkNotNullExpressionValue(tabLayout2, "tabLayout");
                int indexOfTab = TabLayoutKt.indexOfTab(tabLayout2, tab);
                if (indexOfTab == 0) {
                    m48596t2 = ColorPickPopup.this.m48596t();
                    m48596t2.colorPickView.setVisibility(0);
                    m48596t3 = ColorPickPopup.this.m48596t();
                    m48596t3.rvColorSet.setVisibility(4);
                    return;
                }
                if (indexOfTab != 1) {
                    return;
                }
                m48596t4 = ColorPickPopup.this.m48596t();
                m48596t4.colorPickView.setVisibility(4);
                m48596t5 = ColorPickPopup.this.m48596t();
                m48596t5.rvColorSet.setVisibility(0);
            }
        });
        m48596t().colorPickView.getBinding().colorValueText.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.sunia.HTREnginev2.t1e
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                ColorPickPopup.m48584q(ColorPickPopup.this, view, z);
            }
        });
        m48596t().colorPickView.getBinding().alphaValueText.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.sunia.HTREnginev2.u1e
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                ColorPickPopup.m48585r(ColorPickPopup.this, view, z);
            }
        });
    }

    /* renamed from: s */
    public final List<ColorSetModel> m48595s(List<ColorSetModel> colorSetModels) {
        if (!this.opaqueColorOnly) {
            return colorSetModels;
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : colorSetModels) {
            if (CollectionKt.containsAll(((ColorSetModel) obj).getColors(), new Function1<Integer, Boolean>() { // from class: com.onyx.galaxy.note.editor.view.popup.ColorPickPopup$generateColorData$1$1
                @NotNull
                public final Boolean invoke(int i) {
                    return Boolean.valueOf(!ColorKt.hasTransparent(i));
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Boolean invoke(Integer num) {
                    return invoke(num.intValue());
                }
            })) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public final void setDisableAlphaColor(boolean disable) {
        m48596t().colorPickView.setDisableAlphaColor(disable);
    }

    public final void setOpaqueColorOnly() {
        this.opaqueColorOnly = true;
        ColorPickView colorPickView = m48596t().colorPickView;
        Intrinsics.checkNotNullExpressionValue(colorPickView, "colorPickView");
        ColorPickView.setOpaqueColorOnly$default(colorPickView, false, 1, null);
        m48600y();
    }

    public final void setOriginColor(int color) {
        m48596t().colorPickView.setSelectionColor(color);
        m48596t().colorPickView.getBinding().colorPanel.setSelectionColor(color);
    }

    public final void setSelectColorTabOnly() {
        m48596t().tabLayout.removeTabAt(1);
        m48596t().tabLayout.setSelectedTabIndicator((Drawable) null);
        ColorStateList tabTextColors = m48596t().tabLayout.getTabTextColors();
        if (tabTextColors != null) {
            int defaultColor = tabTextColors.getDefaultColor();
            m48596t().tabLayout.setTabTextColors(defaultColor, defaultColor);
        }
    }

    /* renamed from: t */
    public final PopupColorPickBinding m48596t() {
        return (PopupColorPickBinding) this.binding.getValue();
    }

    /* renamed from: u */
    public final ColorSetAdapter m48597u() {
        return (ColorSetAdapter) this.colorSetAdapter.getValue();
    }

    /* renamed from: v */
    public final void m48598v() {
        m48597u().addOnItemChildClickListener(C10651R.id.iv_menu, new BaseQuickAdapter.OnItemChildClickListener() { // from class: com.sunia.HTREnginev2.s1e
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemChildClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                ColorPickPopup.m48586w(ColorPickPopup.this, baseQuickAdapter, view, i);
            }
        });
        m48596t().rvColorSet.setAdapter(m48597u());
        new ItemTouchHelper(new DragTouchCallback(m48597u(), new ManageColorSetHandlerImpl(m48597u()), true, true, false)).attachToRecyclerView(m48596t().rvColorSet);
    }

    /* renamed from: x */
    public final void m48599x() {
        setOutsideTouchable(true);
        setFocusable(true);
        setWidth(ResManager.INSTANCE.getDimensionPixelSize(C7384R.dimen.dp_340));
        setHeight(-2);
        TintLinearLayout root = m48596t().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        BasePopupWindow.setContentViewWithLoading$default(this, root, 0, 0, 0, 0, 30, null);
        this.originColorPanelHeight = m48596t().colorPickView.getBinding().colorPanel.getLayoutParams().height;
        setSoftInputMode(16);
        setInputMethodMode(1);
    }

    /* renamed from: y */
    public final void m48600y() {
        m48587A().subscribe();
        m48601z().subscribe();
    }

    /* renamed from: z */
    public final Observable<? extends Object> m48601z() {
        Observable flatMap = RxjavaKt.continueOnFail(new ColorSyncAction().build()).flatMap(new C12376a());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v5, types: [com.onyx.galaxy.note.ui.colorpicker.view.ColorPickerCallback, com.onyx.galaxy.note.editor.view.popup.ColorPickPopup$wrapperColorPickerCallback$1] */
    public ColorPickPopup(@NotNull final Context context, @NotNull final ColorPickerCallback callback, @NotNull DockType dockType, @NotNull List<Integer> colors, int i) {
        super(context, dockType);
        Lazy lazy;
        Lazy lazy2;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Intrinsics.checkNotNullParameter(dockType, "dockType");
        Intrinsics.checkNotNullParameter(colors, "colors");
        this.colors = colors;
        this.colorIndex = i;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<PopupColorPickBinding>() { // from class: com.onyx.galaxy.note.editor.view.popup.ColorPickPopup$binding$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PopupColorPickBinding invoke() {
                return PopupColorPickBinding.inflate(LayoutInflater.from(context));
            }
        });
        this.binding = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<ColorSetAdapter>() { // from class: com.onyx.galaxy.note.editor.view.popup.ColorPickPopup$colorSetAdapter$2

            @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
            /* renamed from: com.onyx.galaxy.note.editor.view.popup.ColorPickPopup$colorSetAdapter$2$1 */
            /* loaded from: classes9.dex */
            public /* synthetic */ class C123791 extends FunctionReferenceImpl implements Function1<ColorSetModel, Unit> {
                public C123791(Object obj) {
                    super(1, obj, ColorPickerCallback.class, "onColorSetSelected", "onColorSetSelected(Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;)V", 0);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(ColorSetModel colorSetModel) {
                    invoke2(colorSetModel);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull ColorSetModel p0) {
                    Intrinsics.checkNotNullParameter(p0, "p0");
                    ((ColorPickerCallback) this.receiver).onColorSetSelected(p0);
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ColorSetAdapter invoke() {
                List list;
                list = ColorPickPopup.this.colors;
                return new ColorSetAdapter(list, new C123791(callback));
            }
        });
        this.colorSetAdapter = lazy2;
        this.keyboardHelper = new KeyboardHelper();
        ?? r2 = new ColorPickerCallback() { // from class: com.onyx.galaxy.note.editor.view.popup.ColorPickPopup$wrapperColorPickerCallback$1
            @Override // com.onyx.galaxy.note.p048ui.colorpicker.view.ColorPickerCallback
            public void onColorChange(int color) {
                ColorPickerCallback.this.onColorChange(color);
            }

            @Override // com.onyx.galaxy.note.p048ui.colorpicker.view.ColorPickerCallback
            public void onColorSelected(int color) {
                ColorPickerCallback.this.onColorSelected(color);
                this.m48593I(color);
            }

            @Override // com.onyx.galaxy.note.p048ui.colorpicker.view.ColorPickerCallback
            public void onColorSetSelected(@NotNull ColorSetModel colorSet) {
                Intrinsics.checkNotNullParameter(colorSet, "colorSet");
                ColorPickerCallback.this.onColorSetSelected(colorSet);
            }

            @Override // com.onyx.galaxy.note.p048ui.colorpicker.view.ColorPickerCallback
            @Nullable
            public PopupWindow showDeleteDialog(@NotNull ColorPickView colorPickView, @NotNull View cellView) {
                Intrinsics.checkNotNullParameter(colorPickView, "colorPickView");
                Intrinsics.checkNotNullParameter(cellView, "cellView");
                return ColorPickerCallback.this.showDeleteDialog(colorPickView, cellView);
            }

            @Override // com.onyx.galaxy.note.p048ui.colorpicker.view.ColorPickerCallback
            public void showMessageDialog(@NotNull String message) {
                Intrinsics.checkNotNullParameter(message, "message");
                ColorPickerCallback.this.showMessageDialog(message);
            }

            @Override // com.onyx.galaxy.note.p048ui.colorpicker.view.ColorPickerCallback
            public void startScreenCapture(@NotNull ColorPanelView colorPanelView) {
                Intrinsics.checkNotNullParameter(colorPanelView, "colorPanelView");
                ColorPickerCallback.this.startScreenCapture(colorPanelView);
            }
        };
        this.wrapperColorPickerCallback = r2;
        PopupWindowKt.setDefaultAttribute(this);
        m48599x();
        m48596t().colorPickView.setCallback(r2);
        m48598v();
        m48594p();
        m48600y();
    }
}
