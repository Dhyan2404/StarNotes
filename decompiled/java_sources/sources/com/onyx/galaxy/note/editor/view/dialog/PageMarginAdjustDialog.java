package com.onyx.galaxy.note.editor.view.dialog;

import android.app.Dialog;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.Size;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.DockPoint;
import com.onyx.android.sdk.base.data.WindowLocation;
import com.onyx.android.sdk.base.extension.Activity;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.PopupLocator;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.OnyxStatisticEvent;
import com.onyx.android.sdk.data.common.data.template.SpaceArgs;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.device.DeviceFactory;
import com.onyx.android.sdk.device.IScreen;
import com.onyx.android.sdk.device.bean.MultiWindowType;
import com.onyx.android.sdk.device.bean.ScreenDisplayType;
import com.onyx.android.sdk.device.bean.ScreenInfo;
import com.onyx.android.sdk.device.bean.WindowModeType;
import com.onyx.android.sdk.extension.RecyclerViewKt;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.data.MarginPercent;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.p039ui.CommonDialog;
import com.onyx.android.sdk.replicator.note.bean.SizeFormat;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintRecycleView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.DocOptionsActionsKt;
import com.onyx.android.sdk.universal.editor.action.render.RenderPageWithMarginAction;
import com.onyx.android.sdk.universal.editor.data.PageMarginArgs;
import com.onyx.android.sdk.universal.editor.events.app.UpdatePageMarginEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.p044ui.MarginTemplateSpacePopup;
import com.onyx.galaxy.note.common.extension.BaseQuickAdapterKt;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.databinding.DialogPageMarginAdjustBinding;
import com.onyx.galaxy.note.editor.action.template.LoadMarginTemplatesAction;
import com.onyx.galaxy.note.editor.action.template.LoadTemplateColorsAction;
import com.onyx.galaxy.note.editor.data.PageMarginTemplateConfiguration;
import com.onyx.galaxy.note.editor.data.PageMarginTemplateData;
import com.onyx.galaxy.note.editor.data.PageMarginTemplateStyle;
import com.onyx.galaxy.note.editor.view.adapter.PageMarginColorAdapter;
import com.onyx.galaxy.note.editor.view.adapter.PageMarginTemplateAdapter;
import com.onyx.galaxy.note.editor.view.dialog.PageMarginAdjustDialog;
import com.onyx.galaxy.note.editor.view.popup.PageMarginSizePopup;
import com.onyx.galaxy.note.editor.view.popup.PageMarginStylePopup;
import com.onyx.galaxy.note.editor.view.toolbar.DockType;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000Ç\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\b\u0006*\u0001p\u0018\u00002\u00020\u00012\u00020\u0002B\u0017\u0012\u0006\u0010M\u001a\u00020J\u0012\u0006\u0010S\u001a\u00020N¢\u0006\u0004\bs\u0010tJ\b\u0010\u0004\u001a\u00020\u0003H\u0002J\b\u0010\u0005\u001a\u00020\u0003H\u0002J\b\u0010\u0006\u001a\u00020\u0003H\u0002J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0010\u0010\f\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\rH\u0002J\u0018\u0010\u0011\u001a\u00020\n2\u000e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u000fH\u0002J\u0010\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\b\u0010\u0015\u001a\u00020\u0003H\u0002J\u0010\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u0016H\u0002J\u0012\u0010\u001b\u001a\u00020\u00032\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0002J\u0010\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\u0019H\u0002J\b\u0010\u001e\u001a\u00020\u0003H\u0002J\b\u0010\u001f\u001a\u00020\u0003H\u0002J\u0010\u0010\"\u001a\u00020\u00032\u0006\u0010!\u001a\u00020 H\u0002J\b\u0010#\u001a\u00020\u0003H\u0002J\b\u0010$\u001a\u00020\u0003H\u0002J\b\u0010%\u001a\u00020\u0003H\u0002J\u0010\u0010(\u001a\u00020\u00032\u0006\u0010'\u001a\u00020&H\u0002J\u0010\u0010)\u001a\u00020\u00032\u0006\u0010'\u001a\u00020&H\u0002J\b\u0010+\u001a\u00020*H\u0002J\b\u0010-\u001a\u00020,H\u0002J\b\u0010.\u001a\u00020,H\u0002J\u0010\u00101\u001a\u00020\u00032\u0006\u00100\u001a\u00020/H\u0002J\b\u00102\u001a\u00020\u0003H\u0002J\u0010\u00105\u001a\u00020\u00032\u0006\u00104\u001a\u000203H\u0002J\b\u00106\u001a\u00020\u0003H\u0002J\b\u00107\u001a\u00020\u0003H\u0002J\b\u00108\u001a\u00020\u0003H\u0002J\b\u00109\u001a\u00020\u0003H\u0002J\b\u0010;\u001a\u00020:H\u0002J\b\u0010<\u001a\u00020\u0012H\u0002J\b\u0010=\u001a\u00020\u0003H\u0002J#\u0010A\u001a\u00020\u00032\u0006\u0010?\u001a\u00020>2\n\b\u0002\u0010@\u001a\u0004\u0018\u000103H\u0002¢\u0006\u0004\bA\u0010BJ\b\u0010C\u001a\u00020\u0003H\u0016J\b\u0010D\u001a\u00020\u0003H\u0016J\b\u0010E\u001a\u00020\u0003H\u0014J\u0010\u0010H\u001a\u00020\u00032\u0006\u0010G\u001a\u00020FH\u0016J\b\u0010I\u001a\u00020\u0003H\u0016R\u0014\u0010M\u001a\u00020J8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bK\u0010LR\u0017\u0010S\u001a\u00020N8\u0006¢\u0006\f\n\u0004\bO\u0010P\u001a\u0004\bQ\u0010RR\u0017\u0010Y\u001a\u00020T8\u0006¢\u0006\f\n\u0004\bU\u0010V\u001a\u0004\bW\u0010XR\u0018\u0010]\u001a\u0004\u0018\u00010Z8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b[\u0010\\R\u001b\u0010c\u001a\u00020^8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b_\u0010`\u001a\u0004\ba\u0010bR\u001b\u0010h\u001a\u00020d8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\be\u0010`\u001a\u0004\bf\u0010gR\u0018\u0010j\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010iR\u001a\u0010l\u001a\b\u0012\u0004\u0012\u00020/0\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b8\u0010kR\u0016\u0010m\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u0010(R\u0016\u0010o\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bn\u0010(R\u0014\u0010r\u001a\u00020p8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b5\u0010q¨\u0006u"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;", "Landroid/app/Dialog;", "Landroid/content/ComponentCallbacks;", "", "E", "F", "P", "Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;", "space", "L", "Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateStyle;", "item", "M", "Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateData;", "N", "", "templates", "q", "", "enable", "p", "x", "Lcom/onyx/galaxy/note/editor/action/template/LoadTemplateColorsAction;", "action", "U", "Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateConfiguration;", "marginTemplateConfiguration", "W", "configuration", "S", C4921e.f26537n, "d0", "Landroid/graphics/Bitmap;", "bitmap", "T", "y", "c0", "b0", "Landroid/view/View;", "view", Constants.HASIDCALL_INDEX_SIG, "a0", "", "v", "Landroid/util/Size;", "u", "s", "Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;", "size", "e0", "Y", "", "color", C4921e.f26528e, "m", "X", "l", BaseTLSIdentity.CERT_ATTRIBUTE_ORGANIZATION, "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "w", "J", "K", "", "eventId", "state", "Q", "(Ljava/lang/String;Ljava/lang/Integer;)V", "onAttachedToWindow", "onDetachedFromWindow", "onStart", "Landroid/content/res/Configuration;", "newConfig", "onConfigurationChanged", "onLowMemory", "Landroid/content/Context;", "e", "Landroid/content/Context;", "activityContext", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", C6997f.f39671c, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;", C6998g.f39679a, "Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;", "binding", "Landroidx/constraintlayout/widget/ConstraintSet;", C6999h.f39688c, "Landroidx/constraintlayout/widget/ConstraintSet;", "defaultConstraintSet", "Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginColorAdapter;", "i", "Lkotlin/Lazy;", "r", "()Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginColorAdapter;", "colorSelectAdapter", "Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginTemplateAdapter;", "j", "t", "()Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginTemplateAdapter;", "marginTemplateAdapter", "Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;", "marginTemplateSpaceArgs", "Ljava/util/List;", "sizeFormatList", "isSelectAll", GoogleApiAvailabilityLight.f29016b, "isApplyCover", "com/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog$checkAndReShowRunnable$1", "Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog$checkAndReShowRunnable$1;", "checkAndReShowRunnable", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nPageMarginAdjustDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PageMarginAdjustDialog.kt\ncom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,638:1\n1#2:639\n*E\n"})
/* loaded from: classes9.dex */
public final class PageMarginAdjustDialog extends Dialog implements ComponentCallbacks {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Context activityContext;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final DialogPageMarginAdjustBinding binding;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public ConstraintSet defaultConstraintSet;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final Lazy colorSelectAdapter;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final Lazy marginTemplateAdapter;

    /* renamed from: k, reason: from kotlin metadata */
    @Nullable
    public SpaceArgs marginTemplateSpaceArgs;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final List<SizeFormat> sizeFormatList;

    /* renamed from: m, reason: from kotlin metadata */
    public boolean isSelectAll;

    /* renamed from: n, reason: from kotlin metadata */
    public boolean isApplyCover;

    /* renamed from: o, reason: from kotlin metadata */
    @NotNull
    public final PageMarginAdjustDialog$checkAndReShowRunnable$1 checkAndReShowRunnable;

    /* renamed from: com.onyx.galaxy.note.editor.view.dialog.PageMarginAdjustDialog$a */
    /* loaded from: classes9.dex */
    public static final class C12337a<T> implements Consumer {
        public C12337a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull LoadTemplateColorsAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            PageMarginAdjustDialog.this.m48165U(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.dialog.PageMarginAdjustDialog$b */
    /* loaded from: classes9.dex */
    public static final class C12338b<T, R> implements Function {
        public C12338b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends LoadMarginTemplatesAction> apply(@NotNull LoadTemplateColorsAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new LoadMarginTemplatesAction(PageMarginAdjustDialog.this.getEditorBundle()).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.dialog.PageMarginAdjustDialog$c */
    /* loaded from: classes9.dex */
    public static final class C12339c<T> implements Consumer {
        public C12339c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull LoadMarginTemplatesAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            PageMarginAdjustDialog.this.m48166W(it2.getTemplateConfiguration());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.dialog.PageMarginAdjustDialog$d */
    /* loaded from: classes9.dex */
    public static final class C12340d<T> implements Consumer {
        public C12340d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            PageMarginAdjustDialog.this.m48173d0();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.dialog.PageMarginAdjustDialog$e */
    /* loaded from: classes9.dex */
    public static final class C12341e<T> implements Consumer {
        public C12341e() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            PageMarginAdjustDialog.this.m48161P();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.dialog.PageMarginAdjustDialog$f */
    /* loaded from: classes9.dex */
    public static final class C12342f<T> implements Consumer {
        public C12342f() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Bitmap it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            PageMarginAdjustDialog.this.m48164T(it2);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r7v7, types: [com.onyx.galaxy.note.editor.view.dialog.PageMarginAdjustDialog$checkAndReShowRunnable$1] */
    public PageMarginAdjustDialog(@NotNull Context activityContext, @NotNull EditorBundle editorBundle) {
        super(activityContext, C10651R.style.commonDialog);
        Lazy lazy;
        Lazy lazy2;
        List<SizeFormat> listOf;
        Intrinsics.checkNotNullParameter(activityContext, "activityContext");
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.activityContext = activityContext;
        this.editorBundle = editorBundle;
        DialogPageMarginAdjustBinding inflate = DialogPageMarginAdjustBinding.inflate(LayoutInflater.from(getContext()));
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<PageMarginColorAdapter>() { // from class: com.onyx.galaxy.note.editor.view.dialog.PageMarginAdjustDialog$colorSelectAdapter$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PageMarginColorAdapter invoke() {
                return new PageMarginColorAdapter();
            }
        });
        this.colorSelectAdapter = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<PageMarginTemplateAdapter>() { // from class: com.onyx.galaxy.note.editor.view.dialog.PageMarginAdjustDialog$marginTemplateAdapter$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PageMarginTemplateAdapter invoke() {
                return new PageMarginTemplateAdapter();
            }
        });
        this.marginTemplateAdapter = lazy2;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new SizeFormat[]{SizeFormat.CUSTOM, SizeFormat.f45503A4, SizeFormat.f45502A3, SizeFormat.f45501A2, SizeFormat.f45500A1, SizeFormat.LETTER});
        this.sizeFormatList = listOf;
        m48153E();
        setContentView(inflate.getRoot());
        m48154F();
        setCanceledOnTouchOutside(false);
        m48188y();
        m48139R(this, OnyxStatisticConstant.ID_VIEW_DOCSSETTING_LEAVEBLANK_POPUP, null, 2, null);
        this.checkAndReShowRunnable = new Runnable() { // from class: com.onyx.galaxy.note.editor.view.dialog.PageMarginAdjustDialog$checkAndReShowRunnable$1
            @Override // java.lang.Runnable
            public void run() {
                boolean m48155J;
                Context context;
                m48155J = PageMarginAdjustDialog.this.m48155J();
                if (m48155J != PageMarginAdjustDialog.this.getBinding().pageMarginView.getIsSmallWindowLayout()) {
                    PageMarginAdjustDialog.this.dismiss();
                    context = PageMarginAdjustDialog.this.activityContext;
                    new PageMarginAdjustDialog(context, PageMarginAdjustDialog.this.getEditorBundle()).show();
                }
            }
        };
    }

    /* renamed from: A */
    public static final void m48132A(PageMarginAdjustDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48162Q(OnyxStatisticConstant.ID_CLICK_DOCSSETTING_LEAVEBLANK_CONFIRM, Integer.valueOf(this$0.binding.tvSelectAll.isSelected() ? 1 : 0));
        this$0.m48176l();
    }

    /* renamed from: B */
    public static final void m48133B(PageMarginAdjustDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48172c0();
    }

    /* renamed from: C */
    public static final void m48134C(PageMarginAdjustDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48171b0();
    }

    /* renamed from: D */
    public static final void m48135D(PageMarginAdjustDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        TintFrameLayout flSelectSize = this$0.binding.flSelectSize;
        Intrinsics.checkNotNullExpressionValue(flSelectSize, "flSelectSize");
        this$0.m48170a0(flSelectSize);
    }

    /* renamed from: G */
    public static final void m48136G(PageMarginAdjustDialog this$0, BaseQuickAdapter adapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        PageMarginTemplateData pageMarginTemplateData = (PageMarginTemplateData) adapter.getItem(i);
        if (pageMarginTemplateData == null) {
            return;
        }
        this$0.m48159N(pageMarginTemplateData);
    }

    /* renamed from: H */
    public static final void m48137H(PageMarginAdjustDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNull(view);
        this$0.m48169Z(view);
    }

    /* renamed from: I */
    public static final void m48138I(final PageMarginAdjustDialog this$0, View view) {
        WindowLocation windowLocation;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        SpaceArgs spaceArgs = this$0.marginTemplateSpaceArgs;
        if (spaceArgs == null) {
            return;
        }
        Context context = this$0.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        MarginTemplateSpacePopup marginTemplateSpacePopup = new MarginTemplateSpacePopup(context, spaceArgs, new Function2<Float, SpaceArgs, Unit>() { // from class: com.onyx.galaxy.note.editor.view.dialog.PageMarginAdjustDialog$initView$4$spacePopup$1
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Float f, SpaceArgs spaceArgs2) {
                invoke(f.floatValue(), spaceArgs2);
                return Unit.INSTANCE;
            }

            public final void invoke(float f, @NotNull SpaceArgs args) {
                Intrinsics.checkNotNullParameter(args, "args");
                PageMarginAdjustDialog.this.m48157L(args);
            }
        });
        PopupLocator popupLocator = PopupLocator.INSTANCE;
        Intrinsics.checkNotNull(view);
        DockPoint dockPoint = DockPoint.BOTTOM_CENTER;
        DockPoint dockPoint2 = DockPoint.TOP_CENTER;
        View root = this$0.binding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        windowLocation = popupLocator.getWindowLocation((PopupLocator) marginTemplateSpacePopup, view, (r17 & 2) != 0 ? DockPoint.BOTTOM_CENTER : dockPoint, (r17 & 4) != 0 ? DockPoint.TOP_CENTER : dockPoint2, (r17 & 8) != 0 ? 0 : 0, (r17 & 16) != 0 ? 0 : 0, (r17 & 32) != 0 ? Activity.INSTANCE.getTopContentView() : root);
        View root2 = this$0.binding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root2, "getRoot(...)");
        popupLocator.show(marginTemplateSpacePopup, windowLocation, root2);
    }

    /* renamed from: R */
    public static /* synthetic */ void m48139R(PageMarginAdjustDialog pageMarginAdjustDialog, String str, Integer num, int i, Object obj) {
        if ((i & 2) != 0) {
            num = null;
        }
        pageMarginAdjustDialog.m48162Q(str, num);
    }

    /* renamed from: V */
    public static final void m48140V(PageMarginAdjustDialog this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48175k();
    }

    /* renamed from: n */
    public static final void m48151n(PageMarginAdjustDialog this$0, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (!z) {
            this$0.m48176l();
        } else {
            this$0.m48167X();
            RxjavaKt.subscribeWithDefault$default(DocOptionsActionsKt.setFirstApplyMargin(this$0.editorBundle, false), null, null, null, 7, null);
        }
    }

    /* renamed from: z */
    public static final void m48152z(PageMarginAdjustDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        m48139R(this$0, OnyxStatisticConstant.ID_CLICK_DOCSSETTING_LEAVEBLANK_CANCEL, null, 2, null);
        this$0.dismiss();
    }

    /* renamed from: E */
    public final void m48153E() {
        this.binding.pageMarginView.initView(m48186w());
    }

    /* renamed from: F */
    public final void m48154F() {
        this.binding.rvColors.setLayoutManager(new LinearLayoutManager(getContext(), 0, false));
        TintRecycleView rvColors = this.binding.rvColors;
        Intrinsics.checkNotNullExpressionValue(rvColors, "rvColors");
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        ResManager resManager = ResManager.INSTANCE;
        RecyclerViewKt.addMaterialItemDecoration(rvColors, context, 0, resManager.getDimensionPixelSize(C7384R.dimen.dp_6), false);
        this.binding.rvColors.setAdapter(m48181r());
        this.binding.pageMarginView.setPageMarginChangeCallback(new Function1<MarginPercent, Unit>() { // from class: com.onyx.galaxy.note.editor.view.dialog.PageMarginAdjustDialog$initView$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(MarginPercent marginPercent) {
                invoke2(marginPercent);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull MarginPercent it2) {
                Size m48182s;
                List<? extends SizeFormat> list;
                Intrinsics.checkNotNullParameter(it2, "it");
                PageMarginAdjustDialog pageMarginAdjustDialog = PageMarginAdjustDialog.this;
                SizeFormat.Companion companion = SizeFormat.INSTANCE;
                m48182s = pageMarginAdjustDialog.m48182s();
                list = PageMarginAdjustDialog.this.sizeFormatList;
                pageMarginAdjustDialog.m48174e0(companion.fromSize(m48182s, list));
            }
        });
        this.binding.rvTemplate.setLayoutManager(new LinearLayoutManager(getContext(), 0, false));
        TintRecycleView rvTemplate = this.binding.rvTemplate;
        Intrinsics.checkNotNullExpressionValue(rvTemplate, "rvTemplate");
        Context context2 = getContext();
        Intrinsics.checkNotNullExpressionValue(context2, "getContext(...)");
        RecyclerViewKt.addMaterialItemDecoration(rvTemplate, context2, 0, resManager.getDimensionPixelSize(C7384R.dimen.dp_12), false);
        this.binding.rvTemplate.setAdapter(m48183t());
        m48183t().setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() { // from class: com.sunia.HTREnginev2.tsk
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemClickListener
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                PageMarginAdjustDialog.m48136G(PageMarginAdjustDialog.this, baseQuickAdapter, view, i);
            }
        });
        TintFrameLayout flSelectMarginStyle = this.binding.flSelectMarginStyle;
        Intrinsics.checkNotNullExpressionValue(flSelectMarginStyle, "flSelectMarginStyle");
        ViewKt.click$default(flSelectMarginStyle, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.usk
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PageMarginAdjustDialog.m48137H(PageMarginAdjustDialog.this, view);
            }
        }, 1, null);
        TintFrameLayout flSelectMarginLineSpace = this.binding.flSelectMarginLineSpace;
        Intrinsics.checkNotNullExpressionValue(flSelectMarginLineSpace, "flSelectMarginLineSpace");
        ViewKt.click$default(flSelectMarginLineSpace, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.vsk
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PageMarginAdjustDialog.m48138I(PageMarginAdjustDialog.this, view);
            }
        }, 1, null);
    }

    /* renamed from: J */
    public final boolean m48155J() {
        IScreen screenDevice = DeviceFactory.INSTANCE.getScreenDevice();
        ScreenInfo screenInfo = screenDevice.getScreenInfo();
        Context context = this.activityContext;
        Intrinsics.checkNotNull(context, "null cannot be cast to non-null type android.app.Activity");
        return (screenInfo.getWindowModeType() == WindowModeType.FREEDOM_MODE && screenInfo.getAppScreenDp() < ((float) ResManager.INSTANCE.getInteger(C10651R.integer.page_margin_use_small_layout_dp))) || screenInfo.getScreenDisplayType() == ScreenDisplayType.PHONE || screenDevice.getMultiWindowType((android.app.Activity) context, screenInfo.getWindowModeType()) == MultiWindowType.MULTI_WINDOW_H_1_3;
    }

    /* renamed from: K */
    public final void m48156K() {
        ConstraintSet constraintSet = new ConstraintSet();
        constraintSet.clone(this.binding.ctlRoot);
        constraintSet.connect(this.binding.flSelectSize.getId(), 7, this.binding.tvConfirm.getId(), 7);
        constraintSet.setHorizontalBias(this.binding.flSelectSize.getId(), 1.0f);
        constraintSet.connect(this.binding.tvMarginColor.getId(), 3, this.binding.flSelectSize.getId(), 4);
        constraintSet.connect(this.binding.tvMarginColor.getId(), 6, this.binding.tvMarginSize.getId(), 6);
        constraintSet.connect(this.binding.tvMarginColor.getId(), 7, this.binding.rvColors.getId(), 6);
        constraintSet.setHorizontalBias(this.binding.tvMarginColor.getId(), 0.0f);
        int id = this.binding.tvMarginColor.getId();
        ResManager resManager = ResManager.INSTANCE;
        constraintSet.setMargin(id, 3, resManager.getDimens(C7384R.dimen.dp_18));
        constraintSet.connect(this.binding.rvColors.getId(), 7, this.binding.ctlRoot.getId(), 7);
        constraintSet.connect(this.binding.rvColors.getId(), 3, this.binding.tvMarginColor.getId(), 3);
        constraintSet.connect(this.binding.rvColors.getId(), 4, this.binding.tvMarginColor.getId(), 4);
        constraintSet.clear(this.binding.rvTemplate.getId(), 6);
        constraintSet.connect(this.binding.rvTemplate.getId(), 3, this.binding.rvColors.getId(), 4);
        constraintSet.connect(this.binding.rvTemplate.getId(), 7, this.binding.rvColors.getId(), 7);
        constraintSet.setMargin(this.binding.rvTemplate.getId(), 3, resManager.getDimens(C7384R.dimen.dp_18));
        constraintSet.setHorizontalBias(this.binding.rvTemplate.getId(), 1.0f);
        constraintSet.connect(this.binding.tvMarginStyle.getId(), 6, this.binding.tvMarginColor.getId(), 6);
        constraintSet.clear(this.binding.tvMarginStyle.getId(), 7);
        constraintSet.clear(this.binding.flSelectMarginStyle.getId(), 4);
        constraintSet.connect(this.binding.flSelectMarginStyle.getId(), 3, this.binding.rvTemplate.getId(), 4);
        constraintSet.connect(this.binding.flSelectMarginStyle.getId(), 7, this.binding.ctlRoot.getId(), 7);
        constraintSet.setHorizontalBias(this.binding.flSelectMarginStyle.getId(), 1.0f);
        constraintSet.setMargin(this.binding.flSelectMarginStyle.getId(), 3, resManager.getDimens(C7384R.dimen.dp_18));
        constraintSet.connect(this.binding.tvMarginLineSpace.getId(), 6, this.binding.tvMarginColor.getId(), 6);
        constraintSet.clear(this.binding.tvMarginLineSpace.getId(), 7);
        constraintSet.setMargin(this.binding.tvMarginLineSpace.getId(), 6, 0);
        constraintSet.clear(this.binding.flSelectMarginLineSpace.getId(), 4);
        constraintSet.connect(this.binding.flSelectMarginLineSpace.getId(), 3, this.binding.flSelectMarginStyle.getId(), 4);
        constraintSet.connect(this.binding.flSelectMarginLineSpace.getId(), 7, this.binding.ctlRoot.getId(), 7);
        constraintSet.clear(this.binding.flSelectMarginLineSpace.getId(), 6);
        constraintSet.setMargin(this.binding.flSelectMarginLineSpace.getId(), 3, resManager.getDimens(C7384R.dimen.dp_18));
        constraintSet.setMargin(this.binding.flSelectMarginLineSpace.getId(), 7, resManager.getDimens(C7384R.dimen.dp_24));
        constraintSet.connect(this.binding.pageMarginView.getId(), 3, this.binding.flSelectMarginLineSpace.getId(), 4);
        constraintSet.clear(this.binding.tvSelectAll.getId(), 4);
        constraintSet.connect(this.binding.tvSelectAll.getId(), 3, this.binding.pageMarginView.getId(), 4);
        constraintSet.connect(this.binding.tvSelectAll.getId(), 6, this.binding.ctlRoot.getId(), 6);
        constraintSet.connect(this.binding.tvSelectAll.getId(), 7, this.binding.ctlRoot.getId(), 7);
        constraintSet.setMargin(this.binding.tvSelectAll.getId(), 3, resManager.getDimens(C7384R.dimen.dp_8));
        constraintSet.setMargin(this.binding.tvSelectAll.getId(), 6, 0);
        constraintSet.clear(this.binding.tvLabelSelectAll.getId(), 4);
        constraintSet.connect(this.binding.tvApplyCover.getId(), 6, this.binding.ctlRoot.getId(), 6);
        constraintSet.connect(this.binding.tvApplyCover.getId(), 7, this.binding.ctlRoot.getId(), 7);
        constraintSet.connect(this.binding.tvApplyCover.getId(), 3, this.binding.tvLabelSelectAll.getId(), 4);
        constraintSet.connect(this.binding.tvApplyCover.getId(), 4, this.binding.ctlRoot.getId(), 4);
        constraintSet.setVerticalChainStyle(this.binding.tvApplyCover.getId(), 1);
        constraintSet.setVerticalChainStyle(this.binding.tvSelectAll.getId(), 1);
        constraintSet.setMargin(this.binding.tvApplyCover.getId(), 6, 0);
        constraintSet.setMargin(this.binding.tvApplyCover.getId(), 3, resManager.getDimens(C7384R.dimen.dp_12));
        constraintSet.setMargin(this.binding.tvApplyCover.getId(), 4, resManager.getDimens(C7384R.dimen.dp_12));
        constraintSet.applyTo(this.binding.ctlRoot);
        this.binding.tvSelectSize.setTextSize(0, resManager.getDimension(C10651R.dimen.page_margin_size_small_text_size));
    }

    /* renamed from: L */
    public final void m48157L(SpaceArgs space) {
        this.binding.tvSelectMarginLineSpace.setText(String.valueOf(space.loadSpaceHalfUpDisplayValue()));
        this.binding.pageMarginView.updateMarginTemplateSpace(space.loadSpaceValuePx());
        this.marginTemplateSpaceArgs = space;
    }

    /* renamed from: M */
    public final void m48158M(PageMarginTemplateStyle item) {
        this.binding.pageMarginView.updateMarginTemplate(item.getResName());
        this.binding.tvSelectMarginStyle.setText(ResManager.INSTANCE.getStringSafely(item.getName()));
        m48179p(item.getFillStyle() != 0);
        SpaceArgs spaceArgs = this.marginTemplateSpaceArgs;
        if (spaceArgs != null) {
            this.binding.pageMarginView.updateMarginTemplateSpace(spaceArgs.loadSpaceValuePx());
        }
    }

    /* renamed from: N */
    public final void m48159N(PageMarginTemplateData item) {
        m48183t().selectTemplate(item);
        this.marginTemplateSpaceArgs = null;
        if (CollectionKt.isNullOrEmpty(item.getTemplates())) {
            this.binding.pageMarginView.clearMarginTemplate();
            return;
        }
        m48158M(m48180q(item.getTemplates()));
        if (item.getSpaceArgs() != null) {
            m48157L(item.getSpaceArgs());
        }
    }

    /* renamed from: O */
    public final void m48160O() {
        BoxInfo currentVisibleBoxInfo = EditorBundleKt.currentVisibleBoxInfo(this.editorBundle);
        PageMarginArgs pageMarginArgs = new PageMarginArgs();
        pageMarginArgs.setPageId(currentVisibleBoxInfo.getId());
        pageMarginArgs.setMarginPercent(this.binding.pageMarginView.getMarginPercent().rotated((int) currentVisibleBoxInfo.getRotation()));
        Debug.INSTANCE.m32037d("marginPercent, left = " + pageMarginArgs.getMarginPercent().getLeft() + ", top = " + pageMarginArgs.getMarginPercent().getTop() + ',' + pageMarginArgs.getMarginPercent() + ',' + this.binding.pageMarginView.getMarginPercent());
        pageMarginArgs.setApplyAll(this.binding.tvSelectAll.isSelected());
        pageMarginArgs.setApplyToCover(this.binding.tvApplyCover.isSelected());
        pageMarginArgs.setMarginColor(this.binding.pageMarginView.getMarginColor());
        pageMarginArgs.setTemplateResource(this.binding.pageMarginView.getMarginTemplateRes());
        pageMarginArgs.setTemplateSpace(this.binding.pageMarginView.getMarginTemplateSpace());
        pageMarginArgs.setTemplateResourceId(UUIDUtils.INSTANCE.timeBasedEpochUUID());
        EditorBundleKt.postEvent(this.editorBundle, new UpdatePageMarginEvent(pageMarginArgs));
    }

    /* renamed from: P */
    public final void m48161P() {
        MarginPercent maxMarginPercent = this.binding.pageMarginView.getMaxMarginPercent();
        RectF copy = RectFKt.copy(this.binding.pageMarginView.getEditArea());
        copy.offsetTo(0.0f, 0.0f);
        EditorBundle editorBundle = this.editorBundle;
        new RenderPageWithMarginAction(editorBundle, EditorBundleKt.currentPageIndex(editorBundle), maxMarginPercent, copy).build().doOnNext(new C12342f()).subscribe();
    }

    /* renamed from: Q */
    public final void m48162Q(String eventId, Integer state) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(OnyxStatisticConstant.KEY_NOTE_ID, EditorBundleKt.docId(this.editorBundle));
        if (state != null) {
            linkedHashMap.put(OnyxStatisticConstant.KEY_NOTE_PAGE_FULL_CHANGE, Integer.valueOf(state.intValue()));
        }
        StatisticsBundle.INSTANCE.postEvent(new OnyxStatisticEvent(eventId, linkedHashMap));
    }

    /* renamed from: S */
    public final void m48163S(PageMarginTemplateConfiguration configuration) {
        Object first;
        Object firstOrNull;
        List<PageMarginTemplateData> data = configuration.getData();
        if (data != null) {
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) data);
            PageMarginTemplateData pageMarginTemplateData = (PageMarginTemplateData) first;
            if (pageMarginTemplateData != null) {
                m48159N(pageMarginTemplateData);
                List<PageMarginTemplateStyle> templates = pageMarginTemplateData.getTemplates();
                if (templates != null) {
                    firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) templates);
                    PageMarginTemplateStyle pageMarginTemplateStyle = (PageMarginTemplateStyle) firstOrNull;
                    if (pageMarginTemplateStyle != null) {
                        m48158M(pageMarginTemplateStyle);
                    }
                }
            }
        }
    }

    /* renamed from: T */
    public final void m48164T(Bitmap bitmap) {
        this.binding.pageMarginView.setData(m48186w(), bitmap);
        m48174e0(SizeFormat.INSTANCE.fromSize(m48182s(), this.sizeFormatList));
    }

    /* renamed from: U */
    public final void m48165U(LoadTemplateColorsAction action) {
        BoxInfo m48186w = m48186w();
        int color = m48186w.hasMargin() ? m48186w.getMarginStyle().getColor() : action.getTemplateFillColor();
        int indexOf = action.getColorList().indexOf(Integer.valueOf(color));
        if (indexOf < 0) {
            indexOf = action.getColorList().size();
        }
        m48181r().setColorData(action.getColorList(), indexOf, new Runnable() { // from class: com.sunia.HTREnginev2.ssk
            @Override // java.lang.Runnable
            public final void run() {
                PageMarginAdjustDialog.m48140V(PageMarginAdjustDialog.this);
            }
        });
        m48178o(color);
    }

    /* renamed from: W */
    public final void m48166W(PageMarginTemplateConfiguration marginTemplateConfiguration) {
        if (marginTemplateConfiguration == null) {
            return;
        }
        m48183t().submitList(marginTemplateConfiguration.getData());
        BoxInfo m48186w = m48186w();
        Pair<PageMarginTemplateData, PageMarginTemplateStyle> findTemplateByRes = m48183t().findTemplateByRes(m48186w.getMarginStyle().getTemplateResource());
        Unit unit = null;
        if (findTemplateByRes != null) {
            m48159N(findTemplateByRes.getFirst());
            m48158M(findTemplateByRes.getSecond());
            SpaceArgs spaceArgs = this.marginTemplateSpaceArgs;
            if (spaceArgs != null) {
                spaceArgs.setSpaceValuePx(m48186w.getMarginStyle().getTemplateSpace());
                m48157L(spaceArgs);
                unit = Unit.INSTANCE;
            }
        }
        if (unit == null) {
            m48163S(marginTemplateConfiguration);
        }
    }

    /* renamed from: X */
    public final void m48167X() {
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        new CommonDialog.Builder(context).setTitle(C10651R.string.hint).setWarning(true).setMessage(C10651R.string.adjust_margin_confirm_tip).setConfirmText(C10651R.string.apply).setConfirmCallback(new Function2<CommonDialog, String, Unit>() { // from class: com.onyx.galaxy.note.editor.view.dialog.PageMarginAdjustDialog$showConfirmDialog$1
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(CommonDialog commonDialog, String str) {
                invoke2(commonDialog, str);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull CommonDialog commonDialog, @NotNull String str) {
                Intrinsics.checkNotNullParameter(commonDialog, "<anonymous parameter 0>");
                Intrinsics.checkNotNullParameter(str, "<anonymous parameter 1>");
                PageMarginAdjustDialog.this.m48176l();
            }
        }).setCancelable(false).create().show();
    }

    /* renamed from: Y */
    public final void m48168Y() {
        RxBaseAction.execute$default(new PageMarginAdjustDialog$showSelectColorPopup$1(this, this.editorBundle, this.binding.getRoot(), this.binding.getRoot().getRootView(), this.binding.pageMarginView.getMarginColor(), DockType.RIGHT), null, null, null, 7, null);
    }

    /* renamed from: Z */
    public final void m48169Z(View view) {
        WindowLocation windowLocation;
        PageMarginTemplateData pageMarginTemplateData = (PageMarginTemplateData) BaseQuickAdapterKt.getItemSafely(m48183t(), m48183t().getSelectedIndex());
        if (pageMarginTemplateData == null) {
            return;
        }
        List<PageMarginTemplateStyle> templates = pageMarginTemplateData.getTemplates();
        if (CollectionKt.isNullOrEmpty(templates)) {
            return;
        }
        PageMarginStylePopup textSize = new PageMarginStylePopup(templates, view).setTextSize(m48185v());
        PageMarginTemplateData pageMarginTemplateData2 = (PageMarginTemplateData) BaseQuickAdapterKt.getItemSafely(m48183t(), m48183t().getSelectedIndex());
        PageMarginStylePopup callback = textSize.setCurrentStyle(m48180q(pageMarginTemplateData2 != null ? pageMarginTemplateData2.getTemplates() : null)).setCallback(new Function1<PageMarginTemplateStyle, Unit>() { // from class: com.onyx.galaxy.note.editor.view.dialog.PageMarginAdjustDialog$showSelectMarginStylePopup$stylePopup$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(PageMarginTemplateStyle pageMarginTemplateStyle) {
                invoke2(pageMarginTemplateStyle);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull PageMarginTemplateStyle it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                PageMarginAdjustDialog.this.m48158M(it2);
            }
        });
        PopupLocator popupLocator = PopupLocator.INSTANCE;
        DockPoint dockPoint = DockPoint.BOTTOM_RIGHT;
        DockPoint dockPoint2 = DockPoint.TOP_RIGHT;
        int i = -ResManager.INSTANCE.getDimensionPixelSize(C7384R.dimen.dp_10);
        View root = this.binding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        windowLocation = popupLocator.getWindowLocation((PopupLocator) callback, view, (r17 & 2) != 0 ? DockPoint.BOTTOM_CENTER : dockPoint, (r17 & 4) != 0 ? DockPoint.TOP_CENTER : dockPoint2, (r17 & 8) != 0 ? 0 : i, (r17 & 16) != 0 ? 0 : 0, (r17 & 32) != 0 ? Activity.INSTANCE.getTopContentView() : root);
        View root2 = this.binding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root2, "getRoot(...)");
        popupLocator.show(callback, windowLocation, root2);
    }

    /* renamed from: a0 */
    public final void m48170a0(View view) {
        new PageMarginSizePopup(this.editorBundle, view, this.sizeFormatList).setTextSize(m48185v()).setMinSelectSize(m48184u()).setCurrentSize(m48182s()).setCallback(new Function1<SizeFormat, Unit>() { // from class: com.onyx.galaxy.note.editor.view.dialog.PageMarginAdjustDialog$showSelectSizePopup$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(SizeFormat sizeFormat) {
                invoke2(sizeFormat);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull SizeFormat it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                PageMarginAdjustDialog.this.getBinding().pageMarginView.setFixedMarginFormat(it2);
                PageMarginAdjustDialog.this.m48174e0(it2);
            }
        }).showAsDropDown(view, -ResManager.INSTANCE.getDimensionPixelSize(C7384R.dimen.dp_10), 0);
    }

    /* renamed from: b0 */
    public final void m48171b0() {
        this.isApplyCover = !this.isApplyCover;
        m48173d0();
    }

    /* renamed from: c0 */
    public final void m48172c0() {
        boolean z = !this.isSelectAll;
        this.isSelectAll = z;
        if (!z) {
            this.isApplyCover = false;
        }
        m48173d0();
    }

    /* renamed from: d0 */
    public final void m48173d0() {
        this.binding.tvSelectAll.setSelected(this.isSelectAll);
        DialogPageMarginAdjustBinding dialogPageMarginAdjustBinding = this.binding;
        dialogPageMarginAdjustBinding.tvApplyCover.setEnabled(dialogPageMarginAdjustBinding.tvSelectAll.isSelected());
        TintTextView tintTextView = this.binding.tvApplyCover;
        tintTextView.setSelected(tintTextView.isEnabled() && this.isApplyCover);
    }

    /* renamed from: e0 */
    public final void m48174e0(SizeFormat size) {
        this.binding.tvSelectSize.setText(size.getSizeFormatName());
    }

    @NotNull
    public final DialogPageMarginAdjustBinding getBinding() {
        return this.binding;
    }

    @NotNull
    public final EditorBundle getEditorBundle() {
        return this.editorBundle;
    }

    /* renamed from: k */
    public final void m48175k() {
        this.binding.ctlRoot.removeCallbacks(this.checkAndReShowRunnable);
        this.binding.ctlRoot.postDelayed(this.checkAndReShowRunnable, 300L);
    }

    /* renamed from: l */
    public final void m48176l() {
        m48160O();
        dismiss();
    }

    /* renamed from: m */
    public final void m48177m() {
        RxjavaKt.subscribeWithDefault$default(DocOptionsActionsKt.isFirstApplyMargin(this.editorBundle), new Consumer() { // from class: com.sunia.HTREnginev2.rsk
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                PageMarginAdjustDialog.m48151n(PageMarginAdjustDialog.this, ((Boolean) obj).booleanValue());
            }
        }, null, null, 6, null);
    }

    /* renamed from: o */
    public final void m48178o(int color) {
        this.binding.pageMarginView.setMarginColor(color);
        m48183t().setFillColor(color);
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        getContext().registerComponentCallbacks(this);
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(@NotNull Configuration newConfig) {
        Intrinsics.checkNotNullParameter(newConfig, "newConfig");
        m48175k();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        getContext().unregisterComponentCallbacks(this);
        super.onDetachedFromWindow();
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
    }

    @Override // android.app.Dialog
    public void onStart() {
        WindowManager.LayoutParams attributes;
        if (this.defaultConstraintSet == null) {
            ConstraintSet constraintSet = new ConstraintSet();
            this.defaultConstraintSet = constraintSet;
            constraintSet.clone(this.binding.ctlRoot);
        }
        Window window = getWindow();
        if (window != null && (attributes = window.getAttributes()) != null) {
            ViewGroup.LayoutParams layoutParams = this.binding.pageMarginView.getLayoutParams();
            Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) layoutParams;
            if (m48155J()) {
                attributes.width = (int) (this.binding.pageMarginView.getSmallWindowExpectedWidth() + ((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin);
                m48156K();
            } else {
                attributes.width = (int) (this.binding.pageMarginView.getExpectedWidth() + ((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin);
            }
            attributes.height = -2;
        }
        super.onStart();
        this.binding.pageMarginView.displayForSmallWindow(m48155J());
        m48187x();
    }

    /* renamed from: p */
    public final void m48179p(boolean enable) {
        this.binding.flSelectMarginLineSpace.setEnabled(enable);
        this.binding.tvSelectMarginLineSpace.setEnabled(enable);
        this.binding.tvMarginLineSpace.setEnabled(enable);
    }

    /* renamed from: q */
    public final PageMarginTemplateStyle m48180q(List<PageMarginTemplateStyle> templates) {
        Object obj;
        if (templates == null) {
            return PageMarginTemplateStyle.INSTANCE.getEMPTY();
        }
        CharSequence text = this.binding.tvSelectMarginStyle.getText();
        Intrinsics.checkNotNull(text);
        if (text.length() == 0) {
            return PageMarginTemplateStyle.INSTANCE.getEMPTY();
        }
        Iterator<T> it2 = templates.iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            if (Intrinsics.areEqual(ResManager.INSTANCE.getStringSafely(((PageMarginTemplateStyle) obj).getName()), text)) {
                break;
            }
        }
        PageMarginTemplateStyle pageMarginTemplateStyle = (PageMarginTemplateStyle) obj;
        return pageMarginTemplateStyle == null ? PageMarginTemplateStyle.INSTANCE.getEMPTY() : pageMarginTemplateStyle;
    }

    /* renamed from: r */
    public final PageMarginColorAdapter m48181r() {
        return (PageMarginColorAdapter) this.colorSelectAdapter.getValue();
    }

    /* renamed from: s */
    public final Size m48182s() {
        RectF rectFWithMargin = this.binding.pageMarginView.getMarginPercent().toRectFWithMargin(m48186w().getOriginRectF());
        int width = (int) rectFWithMargin.width();
        int height = (int) rectFWithMargin.height();
        return this.binding.pageMarginView.isLandscape() ? new Size(height, width) : new Size(width, height);
    }

    /* renamed from: t */
    public final PageMarginTemplateAdapter m48183t() {
        return (PageMarginTemplateAdapter) this.marginTemplateAdapter.getValue();
    }

    /* renamed from: u */
    public final Size m48184u() {
        Rect rect = RectKt.toRect(m48186w().getOriginRectF());
        return rect == null ? SizeFormat.CUSTOM.getSize() : this.binding.pageMarginView.isLandscape() ? new Size(rect.height(), rect.width()) : new Size(rect.width(), rect.height());
    }

    /* renamed from: v */
    public final float m48185v() {
        return m48155J() ? ResManager.INSTANCE.getDimension(C10651R.dimen.page_margin_size_small_text_size) : ResManager.INSTANCE.getDimension(C10651R.dimen.page_margin_size_normal_text_size);
    }

    /* renamed from: w */
    public final BoxInfo m48186w() {
        BoxInfo copy = EditorBundleKt.currentVisibleBoxInfo(this.editorBundle).copy();
        BoxInfo.INSTANCE.rotate(copy, -copy.getRotation());
        return copy;
    }

    /* renamed from: x */
    public final void m48187x() {
        new LoadTemplateColorsAction(this.editorBundle).build().doOnNext(new C12337a()).flatMap(new C12338b()).doOnNext(new C12339c()).flatMap(new Function() { // from class: com.onyx.galaxy.note.editor.view.dialog.PageMarginAdjustDialog$initData$4
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final ObservableSource<? extends Unit> apply(@NotNull LoadMarginTemplatesAction it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                EditorBundle editorBundle = PageMarginAdjustDialog.this.getEditorBundle();
                final PageMarginAdjustDialog pageMarginAdjustDialog = PageMarginAdjustDialog.this;
                return DocCommonActionsKt.createCoreObservable(editorBundle, new Function1<WorkBundle, Unit>() { // from class: com.onyx.galaxy.note.editor.view.dialog.PageMarginAdjustDialog$initData$4.1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(WorkBundle workBundle) {
                        invoke2(workBundle);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull WorkBundle it3) {
                        Intrinsics.checkNotNullParameter(it3, "it");
                        PageMarginAdjustDialog pageMarginAdjustDialog2 = PageMarginAdjustDialog.this;
                        pageMarginAdjustDialog2.isSelectAll = pageMarginAdjustDialog2.getEditorBundle().getWorkBundle().getDocOptions().getApplyMarginToAll();
                        PageMarginAdjustDialog pageMarginAdjustDialog3 = PageMarginAdjustDialog.this;
                        pageMarginAdjustDialog3.isApplyCover = pageMarginAdjustDialog3.getEditorBundle().getWorkBundle().getDocOptions().getApplyMarginToCover();
                    }
                });
            }
        }).doOnNext(new C12340d()).doOnNext(new C12341e()).subscribe();
    }

    /* renamed from: y */
    public final void m48188y() {
        this.binding.tvCancel.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.msk
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PageMarginAdjustDialog.m48152z(PageMarginAdjustDialog.this, view);
            }
        });
        this.binding.tvConfirm.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.nsk
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PageMarginAdjustDialog.m48132A(PageMarginAdjustDialog.this, view);
            }
        });
        this.binding.tvSelectAll.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.osk
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PageMarginAdjustDialog.m48133B(PageMarginAdjustDialog.this, view);
            }
        });
        this.binding.tvApplyCover.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.psk
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PageMarginAdjustDialog.m48134C(PageMarginAdjustDialog.this, view);
            }
        });
        this.binding.flSelectSize.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.qsk
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PageMarginAdjustDialog.m48135D(PageMarginAdjustDialog.this, view);
            }
        });
        m48181r().setColorChangeCallback(new Function1<Integer, Unit>() { // from class: com.onyx.galaxy.note.editor.view.dialog.PageMarginAdjustDialog$initListener$6
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                invoke(num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(int i) {
                if (i == Integer.MAX_VALUE) {
                    PageMarginAdjustDialog.this.m48168Y();
                } else {
                    PageMarginAdjustDialog.this.m48178o(i);
                }
            }
        });
    }
}
