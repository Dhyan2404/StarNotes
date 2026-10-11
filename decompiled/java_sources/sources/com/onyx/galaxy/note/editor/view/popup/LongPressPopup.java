package com.onyx.galaxy.note.editor.view.popup;

import android.content.Context;
import android.graphics.RectF;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.BuildKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.NoteOutlineAddFrom;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.PageInkCreateFrom;
import com.onyx.android.sdk.data.TagAddFrom;
import com.onyx.android.sdk.data.TagAddType;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.event.StatisticsNoteOutlineAddEvent;
import com.onyx.android.sdk.event.StatisticsPageInkCreateEvent;
import com.onyx.android.sdk.event.StatisticsTagAddEvent;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.replicator.note.bean.NoteTagBean;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeLinkBean;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeTagBean;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncTagModel;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualTocModel;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.action.extension.CommonEditorActionsKt;
import com.onyx.android.sdk.universal.editor.action.link.CreatePageLinkBeanAction;
import com.onyx.android.sdk.universal.editor.events.note.InsertTagEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.action.EditTagForNoteAction;
import com.onyx.galaxy.note.common.data.EditTagForNoteContext;
import com.onyx.galaxy.note.common.extension.StatisticsExtKt;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.databinding.PopupLongPressBinding;
import com.onyx.galaxy.note.editor.data.SelectionMenuType;
import com.onyx.galaxy.note.editor.menu.LongPressSelectionMenuAdapter;
import com.onyx.galaxy.note.editor.menu.SelectionMenuCallback;
import com.onyx.galaxy.note.editor.view.dialog.AddToDocTocDialog;
import com.onyx.galaxy.note.editor.view.popup.LongPressPopup;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 C2\u00020\u0001:\u0001CB7\u0012\u0006\u0010>\u001a\u00020=\u0012\u0006\u0010)\u001a\u00020'\u0012\u0006\u0010@\u001a\u00020?\u0012\u0006\u0010/\u001a\u00020*\u0012\u000e\b\u0002\u00105\u001a\b\u0012\u0004\u0012\u00020\u00100#¢\u0006\u0004\bA\u0010BJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\t\u001a\u00020\u0004H\u0002J\b\u0010\n\u001a\u00020\u0004H\u0002J\u001e\u0010\u000f\u001a\u00020\u00042\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0002J \u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u0013H\u0002J\u0010\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\b\u0010\u0017\u001a\u00020\u0004H\u0002J\b\u0010\u0018\u001a\u00020\u0004H\u0002J\b\u0010\u0019\u001a\u00020\u0004H\u0002J\u0010\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u001aH\u0002J\u0016\u0010!\u001a\b\u0012\u0004\u0012\u00020 0\u001f2\u0006\u0010\u001e\u001a\u00020\u001dH\u0002J\b\u0010\"\u001a\u00020\u001dH\u0002J\u0016\u0010&\u001a\u00020\u00042\f\u0010%\u001a\b\u0012\u0004\u0012\u00020$0#H\u0002R\u0014\u0010)\u001a\u00020'8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010(R\u0017\u0010/\u001a\u00020*8\u0006¢\u0006\f\n\u0004\b+\u0010,\u001a\u0004\b-\u0010.R(\u00105\u001a\b\u0012\u0004\u0012\u00020\u00100#8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u00100\u001a\u0004\b1\u00102\"\u0004\b3\u00104R\u001b\u00109\u001a\u0002068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u00107\u001a\u0004\b+\u00108R\u0016\u0010<\u001a\u00020:8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\t\u0010;¨\u0006D"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;", "Lcom/onyx/galaxy/note/editor/view/popup/EditorViewTouchPopup;", "Landroid/view/View;", "editorView", "", "show", "Lcom/onyx/android/sdk/base/data/Size;", "t", "A", "v", "y", "", "menuViews", "Landroid/view/ViewGroup;", "menuRoot", "x", "Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;", "menu", "itemView", "Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;", "menuContainer", "w", "u", GoogleApiAvailabilityLight.f29016b, "l", "m", "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;", "model", "z", "Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;", "editTagForNoteContext", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/onyx/galaxy/note/category/action/EditTagForNoteAction;", "p", "r", "", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;", "list", C4921e.f26528e, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "", "s", "I", "getMaxWidth", "()I", "maxWidth", "Ljava/util/List;", "getSpecifiedMenus", "()Ljava/util/List;", "setSpecifiedMenus", "(Ljava/util/List;)V", "specifiedMenus", "Lcom/onyx/galaxy/note/databinding/PopupLongPressBinding;", "Lkotlin/Lazy;", "()Lcom/onyx/galaxy/note/databinding/PopupLongPressBinding;", "binding", "Lcom/onyx/galaxy/note/editor/menu/LongPressSelectionMenuAdapter;", "Lcom/onyx/galaxy/note/editor/menu/LongPressSelectionMenuAdapter;", "menuAdapter", "Landroid/content/Context;", "context", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "touchPoint", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/base/data/TouchPoint;ILjava/util/List;)V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nLongPressPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LongPressPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/LongPressPopup\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,265:1\n1#2:266\n1855#3,2:267\n*S KotlinDebug\n*F\n+ 1 LongPressPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/LongPressPopup\n*L\n162#1:267,2\n*E\n"})
/* loaded from: classes9.dex */
public final class LongPressPopup extends EditorViewTouchPopup {

    @NotNull
    public static final String TAG = "LongPressPopup";

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: s, reason: from kotlin metadata */
    public final int maxWidth;

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public List<? extends SelectionMenuType> specifiedMenus;

    /* renamed from: u, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: v, reason: from kotlin metadata */
    public LongPressSelectionMenuAdapter menuAdapter;

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[SelectionMenuType.values().length];
            try {
                iArr[SelectionMenuType.ADD_TAG.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[SelectionMenuType.CREATE_PAGE_LINK.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[SelectionMenuType.ADD_TO_OUTLINE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[SelectionMenuType.PASTE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[SelectionMenuType.CLIPBOARD_CLEAN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.LongPressPopup$a */
    /* loaded from: classes9.dex */
    public static final class C12415a<T, R> implements Function {
        public C12415a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final EditTagForNoteContext apply(@NotNull LongPressPopup it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LongPressPopup.this.m49028r();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.LongPressPopup$b */
    /* loaded from: classes9.dex */
    public static final class C12416b<T, R> implements Function {
        public C12416b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends EditTagForNoteAction> apply(@NotNull EditTagForNoteContext it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LongPressPopup.this.m49027p(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.LongPressPopup$c */
    /* loaded from: classes9.dex */
    public static final class C12417c<T, R> implements Function {
        public C12417c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Integer apply(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Integer.valueOf(EditorBundleKt.pageIndex(LongPressPopup.this.editorBundle, it2));
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.LongPressPopup$d */
    /* loaded from: classes9.dex */
    public static final class C12418d<T, R> implements Function {

        /* renamed from: e */
        public static final C12418d<T, R> f60313e = new C12418d<>();

        @NotNull
        /* renamed from: a */
        public final VirtualTocModel m49040a(int i) {
            VirtualTocModel virtualTocModel = new VirtualTocModel("", i);
            virtualTocModel.ensureUniqueIdExist();
            return virtualTocModel;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m49040a(((Number) obj).intValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.LongPressPopup$e */
    /* loaded from: classes9.dex */
    public static final class C12419e<T> implements Consumer {
        public C12419e() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull VirtualTocModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            LongPressPopup.this.m49036z(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.LongPressPopup$f */
    /* loaded from: classes9.dex */
    public static final class C12420f<T, R> implements Function {
        public C12420f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Integer apply(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Integer.valueOf(EditorBundleKt.pageIndex(LongPressPopup.this.editorBundle, it2));
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.LongPressPopup$g */
    /* loaded from: classes9.dex */
    public static final class C12421g<T, R> implements Function {
        public C12421g() {
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends ShapeLinkBean> m49043a(int i) {
            return new CreatePageLinkBeanAction(LongPressPopup.this.editorBundle, i).build();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m49043a(((Number) obj).intValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.LongPressPopup$h */
    /* loaded from: classes9.dex */
    public static final class C12422h<T> implements Consumer {

        /* renamed from: e */
        public static final C12422h<T> f60317e = new C12422h<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ShapeLinkBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            GlobalBundle.INSTANCE.copyShapeLink(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.LongPressPopup$i */
    /* loaded from: classes9.dex */
    public static final class C12423i<T> implements Consumer {
        public C12423i() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ShapeLinkBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            StatisticsExtKt.reportNoteEvent$default(LongPressPopup.this.editorBundle, OnyxStatisticConstant.ID_NOTE_PAGE_POPUP_CREATE_LINK, null, 2, null);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.LongPressPopup$j */
    /* loaded from: classes9.dex */
    public static final class C12424j<T> implements Consumer {

        /* renamed from: e */
        public static final C12424j<T> f60320e = new C12424j<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ShapeLinkBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.create_page_link_success, false, 2, (Object) null);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.LongPressPopup$k */
    /* loaded from: classes9.dex */
    public static final class C12425k<T> implements Consumer {
        public C12425k() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ShapeLinkBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            LongPressPopup.this.dismiss();
        }
    }

    public /* synthetic */ LongPressPopup(Context context, EditorBundle editorBundle, TouchPoint touchPoint, int i, List list, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, editorBundle, touchPoint, i, (i2 & 16) != 0 ? CollectionsKt__CollectionsKt.emptyList() : list);
    }

    /* renamed from: q */
    public static final void m49021q(EditTagForNoteContext editTagForNoteContext, LongPressPopup this$0) {
        Intrinsics.checkNotNullParameter(editTagForNoteContext, "$editTagForNoteContext");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        List<NoteTagBean> selectedNoteTagBean = editTagForNoteContext.getSelectedNoteTagBean();
        if (selectedNoteTagBean.isEmpty()) {
            return;
        }
        StatisticsBundle.INSTANCE.postEvent(new StatisticsTagAddEvent(TagAddFrom.PAGE_LONG_CLICK, TagAddType.PAGE));
        this$0.m49026o(selectedNoteTagBean);
    }

    /* renamed from: A */
    public final void m49022A(View editorView) {
        Size m49030t = m49030t(editorView);
        View contentView = getContentView();
        Intrinsics.checkNotNullExpressionValue(contentView, "getContentView(...)");
        android.util.Size measureSize$default = ViewKt.getMeasureSize$default(contentView, 0, 0, 3, null);
        update(m49030t.getWidth(), m49030t.getHeight(), measureSize$default.getWidth(), measureSize$default.getHeight());
    }

    public final int getMaxWidth() {
        return this.maxWidth;
    }

    @NotNull
    public final List<SelectionMenuType> getSpecifiedMenus() {
        return this.specifiedMenus;
    }

    /* renamed from: l */
    public final void m49023l() {
        StatisticsExtKt.reportNoteEvent$default(this.editorBundle, OnyxStatisticConstant.ID_NOTE_PAGE_POPUP_CREATE_LABEL, null, 2, null);
        Observable.just(this).observeOn(EditorBundleKt.noteScheduler(this.editorBundle)).map(new C12415a()).flatMap(new C12416b()).subscribe();
        dismiss();
    }

    /* renamed from: m */
    public final void m49024m() {
        CommonEditorActionsKt.hitTestVisibleBoxObservable(this.editorBundle, getTouchPoint()).map(new C12417c()).map(C12418d.f60313e).doOnNext(new C12419e()).subscribe();
    }

    /* renamed from: n */
    public final void m49025n() {
        StatisticsBundle.INSTANCE.postEvent(new StatisticsPageInkCreateEvent(PageInkCreateFrom.LONG_CLICK));
        CommonEditorActionsKt.hitTestVisibleBoxObservable(this.editorBundle, getTouchPoint()).map(new C12420f()).flatMap(new C12421g()).doOnNext(C12422h.f60317e).doOnNext(new C12423i()).doOnNext(C12424j.f60320e).doOnNext(new C12425k()).subscribe();
    }

    /* renamed from: o */
    public final void m49026o(List<? extends SyncTagModel> list) {
        List<? extends SyncTagModel> list2 = list;
        if (CollectionKt.isNullOrEmpty(list2)) {
            return;
        }
        ShapeTagBean shapeTagBean = new ShapeTagBean();
        CollectionKt.safeAddAll(shapeTagBean.getTagList(), list2);
        EditorBundleKt.postEvent(this.editorBundle, new InsertTagEvent(shapeTagBean, getTouchPoint(), false, 4, null));
        dismiss();
    }

    /* renamed from: p */
    public final Observable<EditTagForNoteAction> m49027p(final EditTagForNoteContext editTagForNoteContext) {
        Observable<EditTagForNoteAction> doOnComplete = new EditTagForNoteAction(editTagForNoteContext, TAG).setActivityContext(getContext()).build().doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.k5j
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                LongPressPopup.m49021q(EditTagForNoteContext.this, this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnComplete, "doOnComplete(...)");
        return doOnComplete;
    }

    /* renamed from: r */
    public final EditTagForNoteContext m49028r() {
        return new EditTagForNoteContext();
    }

    /* renamed from: s */
    public final PopupLongPressBinding m49029s() {
        return (PopupLongPressBinding) this.binding.getValue();
    }

    public final void setSpecifiedMenus(@NotNull List<? extends SelectionMenuType> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.specifiedMenus = list;
    }

    @Override // com.onyx.galaxy.note.editor.view.popup.EditorViewTouchPopup, com.onyx.galaxy.note.common.view.BasePopupWindow
    public void show(@NotNull View editorView) {
        Intrinsics.checkNotNullParameter(editorView, "editorView");
        Size m49030t = m49030t(editorView);
        showAtLocation(editorView, 8388659, m49030t.getWidth(), m49030t.getHeight());
    }

    /* renamed from: t */
    public final Size m49030t(View editorView) {
        float coerceIn;
        int[] iArr = new int[2];
        editorView.getLocationInWindow(iArr);
        int i = iArr[0];
        float f = i;
        float f2 = iArr[1];
        RectF rectF = new RectF(f, f2, i + editorView.getMeasuredWidth(), r1 + editorView.getMeasuredHeight());
        float x = getTouchPoint().getX() + f;
        float y = getTouchPoint().getY() + f2;
        View contentView = getContentView();
        Intrinsics.checkNotNullExpressionValue(contentView, "getContentView(...)");
        android.util.Size measureSize$default = ViewKt.getMeasureSize$default(contentView, 0, 0, 3, null);
        RectF rectF2 = new RectF(x - (measureSize$default.getWidth() / 2.0f), y - measureSize$default.getHeight(), x + (measureSize$default.getWidth() / 2.0f), y);
        float f3 = rectF2.left;
        float f4 = rectF.left;
        float f5 = f3 < f4 ? f4 - f3 : 0.0f;
        float f6 = rectF2.right;
        float f7 = rectF.right;
        if (f6 > f7) {
            f5 = f7 - f6;
        }
        rectF2.offset(f5, 0.0f);
        float dimension = ResManager.INSTANCE.getDimension(C7384R.dimen.dp_30);
        float f8 = 2;
        coerceIn = RangesKt___RangesKt.coerceIn(f5, dimension - (rectF2.width() / f8), (rectF2.width() / f8) - dimension);
        m49029s().arrowView.setTranslationX(-coerceIn);
        return new Size((int) rectF2.left, (int) rectF2.top);
    }

    /* renamed from: u */
    public final void m49031u(SelectionMenuType menu) {
        int i = WhenMappings.$EnumSwitchMapping$0[menu.ordinal()];
        if (i == 1) {
            m49023l();
            return;
        }
        if (i == 2) {
            m49025n();
            return;
        }
        if (i == 3) {
            m49024m();
            return;
        }
        if (i == 4) {
            LongPressPastePopup.INSTANCE.paste(this.editorBundle, getTouchPoint());
            dismiss();
        } else {
            if (i != 5) {
                return;
            }
            GlobalBundle.INSTANCE.clearClipData();
            dismiss();
        }
    }

    /* renamed from: v */
    public final void m49032v() {
        LongPressSelectionMenuAdapter longPressSelectionMenuAdapter = null;
        setBackgroundDrawable(null);
        View root = m49029s().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
        this.menuAdapter = new LongPressSelectionMenuAdapter(getContext());
        m49035y();
        LongPressSelectionMenuAdapter longPressSelectionMenuAdapter2 = this.menuAdapter;
        if (longPressSelectionMenuAdapter2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("menuAdapter");
            longPressSelectionMenuAdapter2 = null;
        }
        longPressSelectionMenuAdapter2.setCallback(new SelectionMenuCallback() { // from class: com.onyx.galaxy.note.editor.view.popup.LongPressPopup$initView$1
            @Override // com.onyx.galaxy.note.editor.menu.SelectionMenuCallback
            public void onMenuClick(@NotNull SelectionMenuType menu, @NotNull View itemView) {
                PopupLongPressBinding m49029s;
                Intrinsics.checkNotNullParameter(menu, "menu");
                Intrinsics.checkNotNullParameter(itemView, "itemView");
                LongPressPopup longPressPopup = LongPressPopup.this;
                m49029s = longPressPopup.m49029s();
                TintLinearLayout menuContainer = m49029s.menuContainer;
                Intrinsics.checkNotNullExpressionValue(menuContainer, "menuContainer");
                longPressPopup.m49033w(menu, itemView, menuContainer);
            }

            @Override // com.onyx.galaxy.note.editor.menu.SelectionMenuCallback
            public void onMenuUpdated(@NotNull List<View> menuViews) {
                PopupLongPressBinding m49029s;
                Intrinsics.checkNotNullParameter(menuViews, "menuViews");
                LongPressPopup longPressPopup = LongPressPopup.this;
                m49029s = longPressPopup.m49029s();
                TintLinearLayout menuContainer = m49029s.menuContainer;
                Intrinsics.checkNotNullExpressionValue(menuContainer, "menuContainer");
                longPressPopup.m49034x(menuViews, menuContainer);
            }
        });
        List<? extends SelectionMenuType> list = this.specifiedMenus;
        if (!(!list.isEmpty())) {
            list = null;
        }
        List<? extends SelectionMenuType> list2 = (List) AnyKt.getOrElse(list, new Function0<List<? extends SelectionMenuType>>() { // from class: com.onyx.galaxy.note.editor.view.popup.LongPressPopup$initView$menus$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final List<? extends SelectionMenuType> invoke() {
                return SelectionMenuType.INSTANCE.getPageInsertMenus(EditorBundleKt.getUiFeature(LongPressPopup.this.editorBundle), GlobalBundle.INSTANCE.hasPasteData());
            }
        });
        LongPressSelectionMenuAdapter longPressSelectionMenuAdapter3 = this.menuAdapter;
        if (longPressSelectionMenuAdapter3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("menuAdapter");
        } else {
            longPressSelectionMenuAdapter = longPressSelectionMenuAdapter3;
        }
        longPressSelectionMenuAdapter.setMenus(list2);
    }

    /* renamed from: w */
    public final void m49033w(SelectionMenuType menu, View itemView, TintLinearLayout menuContainer) {
        if (menu == SelectionMenuType.LAST_PAGE || menu == SelectionMenuType.NEXT_PAGE) {
            menuContainer.removeAllViews();
        }
        m49031u(menu);
    }

    /* renamed from: x */
    public final void m49034x(List<View> menuViews, ViewGroup menuRoot) {
        WeakReference<View> parentViewRef;
        View view;
        menuRoot.removeAllViews();
        Iterator<T> it2 = menuViews.iterator();
        while (it2.hasNext()) {
            menuRoot.addView((View) it2.next());
        }
        if (this.maxWidth <= 0 || !(!menuViews.isEmpty()) || (parentViewRef = getParentViewRef()) == null || (view = parentViewRef.get()) == null) {
            return;
        }
        m49022A(view);
    }

    /* renamed from: y */
    public final void m49035y() {
        int dimens = this.maxWidth - ResManager.INSTANCE.getDimens(C7384R.dimen.dp_150);
        LongPressSelectionMenuAdapter longPressSelectionMenuAdapter = this.menuAdapter;
        if (longPressSelectionMenuAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("menuAdapter");
            longPressSelectionMenuAdapter = null;
        }
        longPressSelectionMenuAdapter.setMaxWidth(dimens);
    }

    /* renamed from: z */
    public final void m49036z(VirtualTocModel model) {
        StatisticsExtKt.reportNoteEvent$default(this.editorBundle, OnyxStatisticConstant.ID_NOTE_PAGE_POPUP_ADD_TO_TOC, null, 2, null);
        new AddToDocTocDialog(this.editorBundle, getContext(), model, null, new Function0<Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.LongPressPopup$showAddToTocDialog$1
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                StatisticsBundle.INSTANCE.postEvent(new StatisticsNoteOutlineAddEvent(NoteOutlineAddFrom.LONG_CLICK_MENU));
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }
        }, 8, null).show();
        dismiss();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LongPressPopup(@NotNull final Context context, @NotNull EditorBundle editorBundle, @NotNull TouchPoint touchPoint, int i, @NotNull List<? extends SelectionMenuType> specifiedMenus) {
        super(context, touchPoint);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(touchPoint, "touchPoint");
        Intrinsics.checkNotNullParameter(specifiedMenus, "specifiedMenus");
        this.editorBundle = editorBundle;
        this.maxWidth = i;
        this.specifiedMenus = specifiedMenus;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<PopupLongPressBinding>() { // from class: com.onyx.galaxy.note.editor.view.popup.LongPressPopup$binding$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PopupLongPressBinding invoke() {
                return PopupLongPressBinding.inflate(LayoutInflater.from(context));
            }
        });
        this.binding = lazy;
        if (BuildKt.isApiLevelAbove(29)) {
            setTouchModal(false);
        }
        setOutsideTouchable(true);
        m49032v();
    }
}
