package com.onyx.android.sdk.universal.editor.action.handler;

import android.graphics.RectF;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.data.TouchData;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.data.excerpt.UpdateRectExcerptShapeArgs;
import com.onyx.android.sdk.note.common.data.option.ChangedShapeBean;
import com.onyx.android.sdk.note.common.data.shape.ShapeTransformAction;
import com.onyx.android.sdk.note.common.document.doc.TransformShapeContext;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.document.page.NotePageShape;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeOptions;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.shape.extension.ShapePersistOptionsKt;
import com.onyx.android.sdk.note.extension.ShapeKt;
import com.onyx.android.sdk.replicator.note.data.excerpt.ExcerptInfoBean;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.excerpt.CreateRectExcerptShapeAction;
import com.onyx.android.sdk.universal.editor.action.excerpt.SaveRectExcerptAction;
import com.onyx.android.sdk.universal.editor.action.excerpt.UpdateRectExcerptAction;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.EditorShapesActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.ForceRenderSliceListActionsKt;
import com.onyx.android.sdk.universal.editor.action.handler.RectExcerptShapeDrawingHandlerAction;
import com.onyx.android.sdk.universal.editor.action.shape.GetReferenceShapeAction;
import com.onyx.android.sdk.universal.editor.data.RectExcerptEditContext;
import com.onyx.android.sdk.universal.editor.events.note.DismissExcerptPopupEvent;
import com.onyx.android.sdk.universal.editor.events.note.ExitExcerptEditEvent;
import com.onyx.android.sdk.universal.editor.events.note.ShowExcerptPopupArgs;
import com.onyx.android.sdk.universal.editor.events.note.ShowExcerptPopupEvent;
import com.onyx.android.sdk.universal.editor.events.note.StartExcerptEditArgs;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.gesture.ScribbleTouchReader;
import com.onyx.android.sdk.universal.editor.helper.SelectionManager;
import com.onyx.android.sdk.universal.editor.view.RectExcerptCreationRenderer;
import com.onyx.android.sdk.universal.editor.view.RectExcerptEditRenderer;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010T\u001a\u00020S\u0012\u0006\u0010V\u001a\u00020U¢\u0006\u0004\bW\u0010XJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0016\u0010\b\u001a\u00020\u00072\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\b\u0010\t\u001a\u00020\u0007H\u0002J3\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\n2!\u0010\u0011\u001a\u001d\u0012\u0013\u0012\u00110\r¢\u0006\f\b\u000e\u0012\b\b\u000f\u0012\u0004\b\b(\u0010\u0012\u0004\u0012\u00020\u00070\fH\u0002J\u001c\u0010\u0015\u001a\u0006\u0012\u0002\b\u00030\u00142\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\u0002H\u0002J\u0010\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0005H\u0002J\u0016\u0010\u0018\u001a\u00020\u00072\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\b\u0010\u0019\u001a\u00020\u0002H\u0002J\u0016\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00050\u00142\u0006\u0010\u0016\u001a\u00020\u0005H\u0002J\u0016\u0010\u001b\u001a\u00020\u00072\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\u001e\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\r0\u00142\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u001d\u001a\u00020\u001cH\u0002J\u0018\u0010!\u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020\r2\u0006\u0010 \u001a\u00020\rH\u0002J\u0018\u0010\"\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\rH\u0002J\u001c\u0010#\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\u00040\u00142\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u001c\u0010$\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\u00040\u00142\u0006\u0010\u000b\u001a\u00020\nH\u0002J,\u0010)\u001a\b\u0012\u0004\u0012\u00020\u00020\u00142\u0006\u0010&\u001a\u00020%2\f\u0010'\u001a\b\u0012\u0004\u0012\u00020\r0\u00042\u0006\u0010(\u001a\u00020\u0002H\u0002J$\u0010*\u001a\b\u0012\u0004\u0012\u00020\u00020\u00142\f\u0010'\u001a\b\u0012\u0004\u0012\u00020\r0\u00042\u0006\u0010(\u001a\u00020\u0002H\u0002J*\u0010+\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\u00040\u00142\u0006\u0010&\u001a\u00020%2\f\u0010'\u001a\b\u0012\u0004\u0012\u00020\r0\u0004H\u0002J$\u0010,\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\u00040\u00142\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\rH\u0002J.\u0010/\u001a\u0006\u0012\u0002\b\u00030\u00142\f\u0010'\u001a\b\u0012\u0004\u0012\u00020\r0\u00042\b\b\u0002\u0010-\u001a\u00020\u00022\b\b\u0002\u0010.\u001a\u00020\u0002H\u0002J&\u00101\u001a\u0006\u0012\u0002\b\u00030\u00142\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\r2\b\b\u0002\u00100\u001a\u00020\u0002H\u0002J\u000e\u00103\u001a\u00020\u0002*\u0004\u0018\u000102H\u0002J\u0014\u00104\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u0014H\u0014J\b\u00105\u001a\u00020\u0007H\u0016J\b\u00106\u001a\u00020\u0002H\u0016J\u0010\u00107\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0005H\u0014J\u0010\u0010:\u001a\u00020\u00022\u0006\u00109\u001a\u000208H\u0016J\u0010\u0010;\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0005H\u0014J\u0018\u0010<\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u00052\u0006\u0010&\u001a\u00020%H\u0016J\u0010\u0010?\u001a\u00020\u00072\u0006\u0010>\u001a\u00020=H\u0016J3\u0010@\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00022!\u0010\u0011\u001a\u001d\u0012\u0013\u0012\u00110\r¢\u0006\f\b\u000e\u0012\b\b\u000f\u0012\u0004\b\b(\u0010\u0012\u0004\u0012\u00020\u00070\fH\u0016J\b\u0010A\u001a\u00020\u0007H\u0016J\u0010\u0010D\u001a\u00020\u00072\u0006\u0010C\u001a\u00020BH\u0016R\u0014\u0010G\u001a\u00020E8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010FR\u0014\u0010J\u001a\u00020H8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u0010IR\u0018\u0010L\u001a\u0004\u0018\u0001088\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010KR\u0018\u0010N\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010MR!\u0010R\u001a\b\u0012\u0004\u0012\u0002020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001b\u0010O\u001a\u0004\bP\u0010Q¨\u0006Y"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/handler/RectExcerptShapeDrawingHandlerAction;", "Lcom/onyx/android/sdk/universal/editor/action/handler/BaseExcerptShapeHandlerAction;", "", "x", "", "Lcom/onyx/android/sdk/geometry/data/TouchData;", "dataList", "", "B", "H", "Lcom/onyx/android/sdk/universal/editor/data/RectExcerptEditContext;", "editContext", "Lkotlin/Function1;", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "Lkotlin/ParameterName;", "name", "shape", "onSaveCallback", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "saveChanged", "Lio/reactivex/rxjava3/core/Observable;", "J", "touchData", "z", "A", "N", BaseTLSIdentity.CERT_ATTRIBUTE_ORGANIZATION, "s", "Landroid/graphics/RectF;", "boundingRect", "M", "srcShape", "targetShape", C4921e.f26528e, "L", "r", "I", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualBoxInfo", "shapeList", "rectUpdate", "q", "K", "p", "P", "visible", "updateAndRefresh", "t", "refresh", "F", "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;", "y", BaiduYunConstant.CREATE, "dispose", "isEditMode", "onTouchUp", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "touchPoint", "onSingleTapUp", "onTouchDown", "onTouchContentOutside", "Lcom/onyx/android/sdk/universal/editor/events/note/StartExcerptEditArgs;", "args", "startExcerptEdit", "quitEdit", "cancelAction", "", "shapeUniqueId", "cancelEditIfDeleted", "Lcom/onyx/android/sdk/universal/editor/view/RectExcerptCreationRenderer;", "Lcom/onyx/android/sdk/universal/editor/view/RectExcerptCreationRenderer;", "creationRenderer", "Lcom/onyx/android/sdk/universal/editor/view/RectExcerptEditRenderer;", "Lcom/onyx/android/sdk/universal/editor/view/RectExcerptEditRenderer;", "editRenderer", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "downPoint", "Lcom/onyx/android/sdk/universal/editor/data/RectExcerptEditContext;", "editingContext", "Lkotlin/Lazy;", "w", "()Ljava/util/List;", "supportedTransformAction", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;", "touchReader", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nRectExcerptShapeDrawingHandlerAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RectExcerptShapeDrawingHandlerAction.kt\ncom/onyx/android/sdk/universal/editor/action/handler/RectExcerptShapeDrawingHandlerAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,442:1\n1#2:443\n*E\n"})
/* loaded from: classes8.dex */
public final class RectExcerptShapeDrawingHandlerAction extends BaseExcerptShapeHandlerAction {

    /* renamed from: o, reason: from kotlin metadata */
    @NotNull
    public final RectExcerptCreationRenderer creationRenderer;

    /* renamed from: p, reason: from kotlin metadata */
    @NotNull
    public final RectExcerptEditRenderer editRenderer;

    /* renamed from: q, reason: from kotlin metadata */
    @Nullable
    public TouchPoint downPoint;

    /* renamed from: r, reason: from kotlin metadata */
    @Nullable
    public RectExcerptEditContext editingContext;

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public final Lazy supportedTransformAction;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.RectExcerptShapeDrawingHandlerAction$a */
    /* loaded from: classes8.dex */
    public static final class C9216a<T, R> implements Function {
        public C9216a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends TouchData> apply(@NotNull TouchData it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RectExcerptShapeDrawingHandlerAction.this.m38554O(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.RectExcerptShapeDrawingHandlerAction$a0 */
    /* loaded from: classes8.dex */
    public static final class C9217a0<T, R> implements Function {

        /* renamed from: e */
        public static final C9217a0<T, R> f49266e = new C9217a0<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<Shape> apply(@NotNull GetReferenceShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2.mergeShapeList(false);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.RectExcerptShapeDrawingHandlerAction$b */
    /* loaded from: classes8.dex */
    public static final class C9218b<T> implements Predicate {
        public C9218b() {
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull TouchData it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RectExcerptShapeDrawingHandlerAction.this.m38563x();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.RectExcerptShapeDrawingHandlerAction$b0 */
    /* loaded from: classes8.dex */
    public static final class C9219b0<T> implements Consumer {

        /* renamed from: e */
        public static final C9219b0<T> f49268e = new C9219b0<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ShapeKt.setVisible(it2, true);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.RectExcerptShapeDrawingHandlerAction$c */
    /* loaded from: classes8.dex */
    public static final class C9220c<T> implements Predicate {
        public C9220c() {
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull TouchData it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RectExcerptShapeDrawingHandlerAction.this.downPoint != null;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.RectExcerptShapeDrawingHandlerAction$c0 */
    /* loaded from: classes8.dex */
    public static final class C9221c0<T, R> implements Function {

        /* renamed from: e */
        public static final C9221c0<T, R> f49270e = new C9221c0<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.FALSE;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.RectExcerptShapeDrawingHandlerAction$d */
    /* loaded from: classes8.dex */
    public static final class C9222d<T> implements Predicate {

        /* renamed from: e */
        public static final C9222d<T> f49271e = new C9222d<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull List<TouchData> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return !it2.isEmpty();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.RectExcerptShapeDrawingHandlerAction$d0 */
    /* loaded from: classes8.dex */
    public static final class C9223d0<T> implements Predicate {

        /* renamed from: e */
        public final /* synthetic */ RectF f49272e;

        public C9223d0(RectF rectF) {
            this.f49272e = rectF;
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull RectExcerptShapeDrawingHandlerAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return !this.f49272e.isEmpty();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.RectExcerptShapeDrawingHandlerAction$e */
    /* loaded from: classes8.dex */
    public static final class C9224e<T> implements Consumer {
        public C9224e() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<TouchData> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RectExcerptShapeDrawingHandlerAction.this.m38543A(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.RectExcerptShapeDrawingHandlerAction$e0 */
    /* loaded from: classes8.dex */
    public static final class C9225e0<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ RectExcerptEditContext f49275f;

        /* renamed from: g */
        public final /* synthetic */ RectF f49276g;

        public C9225e0(RectExcerptEditContext rectExcerptEditContext, RectF rectF) {
            this.f49275f = rectExcerptEditContext;
            this.f49276g = rectF;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CreateRectExcerptShapeAction> apply(@NotNull RectExcerptShapeDrawingHandlerAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new CreateRectExcerptShapeAction(RectExcerptShapeDrawingHandlerAction.this.getEditorBundle(), this.f49275f.getSaveEventArgs(this.f49276g)).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.RectExcerptShapeDrawingHandlerAction$f */
    /* loaded from: classes8.dex */
    public static final class C9226f<T> implements Predicate {
        public C9226f() {
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull List<TouchData> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RectExcerptShapeDrawingHandlerAction.this.isTouchDone(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.RectExcerptShapeDrawingHandlerAction$f0 */
    /* loaded from: classes8.dex */
    public static final class C9227f0<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ RectExcerptEditContext f49279f;

        public C9227f0(RectExcerptEditContext rectExcerptEditContext) {
            this.f49279f = rectExcerptEditContext;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull CreateRectExcerptShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            if (RectExcerptShapeDrawingHandlerAction.this.isEditMode() && (!this.f49279f.getTransformShapes().isEmpty())) {
                RectExcerptShapeDrawingHandlerAction.this.m38556o(this.f49279f.ensureTransformShape(), it2.getShape());
            }
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.RectExcerptShapeDrawingHandlerAction$g */
    /* loaded from: classes8.dex */
    public static final class C9233g<T> implements Consumer {
        public C9233g() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<TouchData> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RectExcerptShapeDrawingHandlerAction.this.m38544B(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.RectExcerptShapeDrawingHandlerAction$g0 */
    /* loaded from: classes8.dex */
    public static final class C9234g0<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ RectExcerptEditContext f49282f;

        public C9234g0(RectExcerptEditContext rectExcerptEditContext) {
            this.f49282f = rectExcerptEditContext;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull CreateRectExcerptShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RectExcerptShapeDrawingHandlerAction.this.m38551L(this.f49282f, it2.getShape());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.RectExcerptShapeDrawingHandlerAction$h */
    /* loaded from: classes8.dex */
    public static final class C9235h<T, R> implements Function {

        /* renamed from: e */
        public static final C9235h<T, R> f49283e = new C9235h<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.TRUE;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.RectExcerptShapeDrawingHandlerAction$h0 */
    /* loaded from: classes8.dex */
    public static final class C9236h0<T, R> implements Function {

        /* renamed from: e */
        public static final C9236h0<T, R> f49284e = new C9236h0<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Shape apply(@NotNull CreateRectExcerptShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2.getShape();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.RectExcerptShapeDrawingHandlerAction$i */
    /* loaded from: classes8.dex */
    public static final class C9237i<T, R> implements Function {
        public C9237i() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Map<Shape, BoxInfo> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ForceRenderSliceListActionsKt.forceRenderNoteDirtyRectToDisplay(RectExcerptShapeDrawingHandlerAction.this, it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.RectExcerptShapeDrawingHandlerAction$i0 */
    /* loaded from: classes8.dex */
    public static final class C9238i0<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ RectExcerptEditContext f49287f;

        public C9238i0(RectExcerptEditContext rectExcerptEditContext) {
            this.f49287f = rectExcerptEditContext;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends NotePage> apply(@NotNull RectExcerptEditContext it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RectExcerptShapeDrawingHandlerAction.this.ensureNotePage(this.f49287f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.RectExcerptShapeDrawingHandlerAction$j */
    /* loaded from: classes8.dex */
    public static final class C9239j<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ List<Shape> f49288e;

        /* JADX WARN: Multi-variable type inference failed */
        public C9239j(List<? extends Shape> list) {
            this.f49288e = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<Shape> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f49288e;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.RectExcerptShapeDrawingHandlerAction$j0 */
    /* loaded from: classes8.dex */
    public static final class C9240j0<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ RectExcerptEditContext f49290f;

        public C9240j0(RectExcerptEditContext rectExcerptEditContext) {
            this.f49290f = rectExcerptEditContext;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull NotePage it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RectExcerptEditRenderer rectExcerptEditRenderer = RectExcerptShapeDrawingHandlerAction.this.editRenderer;
            RectExcerptEditContext rectExcerptEditContext = this.f49290f;
            rectExcerptEditRenderer.initByShape(rectExcerptEditContext, rectExcerptEditContext.ensureTransformShape());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.RectExcerptShapeDrawingHandlerAction$k */
    /* loaded from: classes8.dex */
    public static final class C9241k<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ RectExcerptEditContext f49291e;

        public C9241k(RectExcerptEditContext rectExcerptEditContext) {
            this.f49291e = rectExcerptEditContext;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f49291e.setTransformShapes(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.RectExcerptShapeDrawingHandlerAction$k0 */
    /* loaded from: classes8.dex */
    public static final class C9242k0<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ RectExcerptEditContext f49293f;

        /* renamed from: g */
        public final /* synthetic */ StartExcerptEditArgs f49294g;

        public C9242k0(RectExcerptEditContext rectExcerptEditContext, StartExcerptEditArgs startExcerptEditArgs) {
            this.f49293f = rectExcerptEditContext;
            this.f49294g = startExcerptEditArgs;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull NotePage it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RectExcerptShapeDrawingHandlerAction.this.m38546F(this.f49293f, this.f49294g.getShape(), false);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.RectExcerptShapeDrawingHandlerAction$l */
    /* loaded from: classes8.dex */
    public static final class C9243l<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ RectExcerptEditContext f49295e;

        public C9243l(RectExcerptEditContext rectExcerptEditContext) {
            this.f49295e = rectExcerptEditContext;
        }

        /* renamed from: a */
        public final void m38588a(@NotNull Shape it2) {
            List<? extends Shape> listOf;
            Intrinsics.checkNotNullParameter(it2, "it");
            RectExcerptEditContext rectExcerptEditContext = this.f49295e;
            listOf = CollectionsKt__CollectionsJVMKt.listOf(it2);
            rectExcerptEditContext.setTransformShapes(listOf);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m38588a((Shape) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.RectExcerptShapeDrawingHandlerAction$l0 */
    /* loaded from: classes8.dex */
    public static final class C9244l0<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ RectExcerptEditContext f49297f;

        public C9244l0(RectExcerptEditContext rectExcerptEditContext) {
            this.f49297f = rectExcerptEditContext;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RectExcerptShapeDrawingHandlerAction.this.editingContext = this.f49297f;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.RectExcerptShapeDrawingHandlerAction$m */
    /* loaded from: classes8.dex */
    public static final class C9245m<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ RectExcerptEditContext f49299f;

        public C9245m(RectExcerptEditContext rectExcerptEditContext) {
            this.f49299f = rectExcerptEditContext;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends NotePage> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RectExcerptShapeDrawingHandlerAction.this.ensureNotePage(this.f49299f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.RectExcerptShapeDrawingHandlerAction$m0 */
    /* loaded from: classes8.dex */
    public static final class C9246m0<T> implements Consumer {
        public C9246m0() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RectExcerptShapeDrawingHandlerAction.this.downPoint = null;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.RectExcerptShapeDrawingHandlerAction$n */
    /* loaded from: classes8.dex */
    public static final class C9247n<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ RectExcerptEditContext f49302f;

        public C9247n(RectExcerptEditContext rectExcerptEditContext) {
            this.f49302f = rectExcerptEditContext;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull NotePage it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RectExcerptEditRenderer rectExcerptEditRenderer = RectExcerptShapeDrawingHandlerAction.this.editRenderer;
            RectExcerptEditContext rectExcerptEditContext = this.f49302f;
            rectExcerptEditRenderer.initByShape(rectExcerptEditContext, rectExcerptEditContext.ensureTransformShape());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.RectExcerptShapeDrawingHandlerAction$n0 */
    /* loaded from: classes8.dex */
    public static final class C9248n0<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ StartExcerptEditArgs f49304f;

        /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.RectExcerptShapeDrawingHandlerAction$n0$a */
        /* loaded from: classes8.dex */
        public static final class a<T, R> implements Function {

            /* renamed from: e */
            public final /* synthetic */ Object f49305e;

            public a(Object obj) {
                this.f49305e = obj;
            }

            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            public final Object apply(@NotNull Object it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return this.f49305e;
            }
        }

        public C9248n0(StartExcerptEditArgs startExcerptEditArgs) {
            this.f49304f = startExcerptEditArgs;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Object action) {
            List listOf;
            Intrinsics.checkNotNullParameter(action, "action");
            RectExcerptShapeDrawingHandlerAction rectExcerptShapeDrawingHandlerAction = RectExcerptShapeDrawingHandlerAction.this;
            listOf = CollectionsKt__CollectionsJVMKt.listOf(this.f49304f.getShape());
            return rectExcerptShapeDrawingHandlerAction.m38561t(listOf, false, false).map(new a(action));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.RectExcerptShapeDrawingHandlerAction$o */
    /* loaded from: classes8.dex */
    public static final class C9249o<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ RectExcerptEditContext f49307f;

        public C9249o(RectExcerptEditContext rectExcerptEditContext) {
            this.f49307f = rectExcerptEditContext;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull NotePage it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RectExcerptShapeDrawingHandlerAction rectExcerptShapeDrawingHandlerAction = RectExcerptShapeDrawingHandlerAction.this;
            RectExcerptEditContext rectExcerptEditContext = this.f49307f;
            return RectExcerptShapeDrawingHandlerAction.m38537G(rectExcerptShapeDrawingHandlerAction, rectExcerptEditContext, rectExcerptEditContext.ensureTransformShape(), false, 4, null);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.RectExcerptShapeDrawingHandlerAction$o0 */
    /* loaded from: classes8.dex */
    public static final class C9250o0<T, R> implements Function {
        public C9250o0() {
        }

        /* renamed from: a */
        public final void m38593a(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RectExcerptShapeDrawingHandlerAction.this.editRenderer.lowLatencyRender();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m38593a(obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.RectExcerptShapeDrawingHandlerAction$p */
    /* loaded from: classes8.dex */
    public static final class C9251p<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ RectExcerptEditContext f49310f;

        public C9251p(RectExcerptEditContext rectExcerptEditContext) {
            this.f49310f = rectExcerptEditContext;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RectExcerptShapeDrawingHandlerAction.this.editingContext = this.f49310f;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.RectExcerptShapeDrawingHandlerAction$p0 */
    /* loaded from: classes8.dex */
    public static final class C9252p0<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ RectExcerptEditContext f49312f;

        public C9252p0(RectExcerptEditContext rectExcerptEditContext) {
            this.f49312f = rectExcerptEditContext;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Shape> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RectExcerptShapeDrawingHandlerAction rectExcerptShapeDrawingHandlerAction = RectExcerptShapeDrawingHandlerAction.this;
            RectExcerptEditContext rectExcerptEditContext = this.f49312f;
            return rectExcerptShapeDrawingHandlerAction.m38552M(rectExcerptEditContext, rectExcerptEditContext.getSelectionRect());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.RectExcerptShapeDrawingHandlerAction$q */
    /* loaded from: classes8.dex */
    public static final class C9253q<T> implements Consumer {
        public C9253q() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RectExcerptShapeDrawingHandlerAction.this.downPoint = null;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.RectExcerptShapeDrawingHandlerAction$q0 */
    /* loaded from: classes8.dex */
    public static final class C9254q0<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ RectExcerptEditContext f49315f;

        /* renamed from: g */
        public final /* synthetic */ StartExcerptEditArgs f49316g;

        public C9254q0(RectExcerptEditContext rectExcerptEditContext, StartExcerptEditArgs startExcerptEditArgs) {
            this.f49315f = rectExcerptEditContext;
            this.f49316g = startExcerptEditArgs;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Shape it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ForceRenderSliceListActionsKt.forceRenderShapeOutsideRectToDisplay(RectExcerptShapeDrawingHandlerAction.this, this.f49315f.getVirtualBoxInfo(), this.f49316g.getShape());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.RectExcerptShapeDrawingHandlerAction$r */
    /* loaded from: classes8.dex */
    public static final class C9255r<T> implements Consumer {
        public C9255r() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RectExcerptShapeDrawingHandlerAction.this.editRenderer.lowLatencyRender();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.RectExcerptShapeDrawingHandlerAction$r0 */
    /* loaded from: classes8.dex */
    public static final class C9256r0<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ SelectionManager f49318e;

        public C9256r0(SelectionManager selectionManager) {
            this.f49318e = selectionManager;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Shape it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f49318e.reset();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.RectExcerptShapeDrawingHandlerAction$s */
    /* loaded from: classes8.dex */
    public static final class C9258s<T> implements Consumer {
        public C9258s() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RectExcerptShapeDrawingHandlerAction.this.creationRenderer.clear();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.RectExcerptShapeDrawingHandlerAction$s0 */
    /* loaded from: classes8.dex */
    public static final class C9259s0<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ TouchData f49322e;

        public C9259s0(TouchData touchData) {
            this.f49322e = touchData;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final TouchData apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f49322e;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.RectExcerptShapeDrawingHandlerAction$t */
    /* loaded from: classes8.dex */
    public static final class C9260t<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ Ref.ObjectRef<List<Shape>> f49323e;

        public C9260t(Ref.ObjectRef<List<Shape>> objectRef) {
            this.f49323e = objectRef;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull GetReferenceShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f49323e.element = (T) it2.mergeShapeList(false);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.RectExcerptShapeDrawingHandlerAction$t0 */
    /* loaded from: classes8.dex */
    public static final class C9261t0<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ RectExcerptEditContext f49325f;

        /* renamed from: g */
        public final /* synthetic */ List<Shape> f49326g;

        public C9261t0(RectExcerptEditContext rectExcerptEditContext, List<Shape> list) {
            this.f49325f = rectExcerptEditContext;
            this.f49326g = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull UpdateRectExcerptAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RectExcerptShapeDrawingHandlerAction.this.m38558q(this.f49325f.getVirtualBoxInfo(), this.f49326g, it2.getIsRectUpdate());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.RectExcerptShapeDrawingHandlerAction$u */
    /* loaded from: classes8.dex */
    public static final class C9262u<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ Ref.ObjectRef<List<Shape>> f49327e;

        /* renamed from: f */
        public final /* synthetic */ boolean f49328f;

        public C9262u(Ref.ObjectRef<List<Shape>> objectRef, boolean z) {
            this.f49327e = objectRef;
            this.f49328f = z;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull GetReferenceShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ShapeKt.setVisible(this.f49327e.element, this.f49328f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.RectExcerptShapeDrawingHandlerAction$u0 */
    /* loaded from: classes8.dex */
    public static final class C9263u0<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ List<Shape> f49330f;

        public C9263u0(List<Shape> list) {
            this.f49330f = list;
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends Boolean> m38602a(boolean z) {
            return RectExcerptShapeDrawingHandlerAction.this.m38550K(this.f49330f, z);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m38602a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.RectExcerptShapeDrawingHandlerAction$v */
    /* loaded from: classes8.dex */
    public static final class C9264v<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ RectExcerptEditContext f49332f;

        /* renamed from: g */
        public final /* synthetic */ boolean f49333g;

        public C9264v(RectExcerptEditContext rectExcerptEditContext, boolean z) {
            this.f49332f = rectExcerptEditContext;
            this.f49333g = z;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull RectExcerptShapeDrawingHandlerAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RectExcerptShapeDrawingHandlerAction.this.m38549J(this.f49332f, this.f49333g);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.RectExcerptShapeDrawingHandlerAction$v0 */
    /* loaded from: classes8.dex */
    public static final class C9265v0<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ List<Shape> f49334e;

        public C9265v0(List<Shape> list) {
            this.f49334e = list;
        }

        @NotNull
        /* renamed from: a */
        public final List<Shape> m38604a(boolean z) {
            return this.f49334e;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m38604a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.RectExcerptShapeDrawingHandlerAction$w */
    /* loaded from: classes8.dex */
    public static final class C9266w<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ RectExcerptEditContext f49336f;

        /* renamed from: g */
        public final /* synthetic */ Function1<Shape, Unit> f49337g;

        /* JADX WARN: Multi-variable type inference failed */
        public C9266w(RectExcerptEditContext rectExcerptEditContext, Function1<? super Shape, Unit> function1) {
            this.f49336f = rectExcerptEditContext;
            this.f49337g = function1;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RectExcerptShapeDrawingHandlerAction.this.m38545C(this.f49336f, this.f49337g);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.RectExcerptShapeDrawingHandlerAction$x */
    /* loaded from: classes8.dex */
    public static final class C9267x<T> implements Consumer {
        public C9267x() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.postEvent(RectExcerptShapeDrawingHandlerAction.this.getEditorBundle(), new ExitExcerptEditEvent());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.RectExcerptShapeDrawingHandlerAction$y */
    /* loaded from: classes8.dex */
    public static final class C9268y<T, R> implements Function {
        public C9268y() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<Shape>> apply(@NotNull SaveRectExcerptAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RectExcerptShapeDrawingHandlerAction.this.m38557p(it2.getArgs().getVirtualPageBoxInfo(), it2.getShapeList());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.RectExcerptShapeDrawingHandlerAction$z */
    /* loaded from: classes8.dex */
    public static final class C9269z<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ RectExcerptEditContext f49341f;

        public C9269z(RectExcerptEditContext rectExcerptEditContext) {
            this.f49341f = rectExcerptEditContext;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RectExcerptShapeDrawingHandlerAction.this.m38550K(this.f49341f.getTransformShapes(), false);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RectExcerptShapeDrawingHandlerAction(@NotNull EditorBundle editorBundle, @NotNull ScribbleTouchReader touchReader) {
        super(editorBundle, touchReader);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(touchReader, "touchReader");
        this.creationRenderer = new RectExcerptCreationRenderer(editorBundle);
        this.editRenderer = new RectExcerptEditRenderer(editorBundle);
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<List<? extends ShapeTransformAction>>() { // from class: com.onyx.android.sdk.universal.editor.action.handler.RectExcerptShapeDrawingHandlerAction$supportedTransformAction$2
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final List<? extends ShapeTransformAction> invoke() {
                List<? extends ShapeTransformAction> listOf;
                listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new ShapeTransformAction[]{ShapeTransformAction.ScaleXY, ShapeTransformAction.ScaleX, ShapeTransformAction.ScaleY});
                return listOf;
            }
        });
        this.supportedTransformAction = lazy;
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [T, com.onyx.android.sdk.note.common.shape.Shape] */
    /* renamed from: D */
    public static final void m38535D(Ref.ObjectRef shape, RectExcerptEditContext rectExcerptEditContext, Object it2) {
        Intrinsics.checkNotNullParameter(shape, "$shape");
        Intrinsics.checkNotNullParameter(it2, "it");
        shape.element = rectExcerptEditContext.ensureTransformShape();
    }

    /* renamed from: E */
    public static final void m38536E(RectExcerptShapeDrawingHandlerAction this$0, Object it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        this$0.m38547H();
    }

    /* renamed from: G */
    public static /* synthetic */ Observable m38537G(RectExcerptShapeDrawingHandlerAction rectExcerptShapeDrawingHandlerAction, RectExcerptEditContext rectExcerptEditContext, Shape shape, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = true;
        }
        return rectExcerptShapeDrawingHandlerAction.m38546F(rectExcerptEditContext, shape, z);
    }

    /* renamed from: u */
    public static /* synthetic */ Observable m38541u(RectExcerptShapeDrawingHandlerAction rectExcerptShapeDrawingHandlerAction, List list, boolean z, boolean z2, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        if ((i & 4) != 0) {
            z2 = true;
        }
        return rectExcerptShapeDrawingHandlerAction.m38561t(list, z, z2);
    }

    /* renamed from: v */
    public static final void m38542v(Ref.ObjectRef referenceShapes, RectExcerptShapeDrawingHandlerAction this$0, Object it2) {
        Intrinsics.checkNotNullParameter(referenceShapes, "$referenceShapes");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        ShapeTypes.INSTANCE.updateReferenceShapeRect((List) referenceShapes.element);
        EditorBundleKt.noteBundle(this$0.getEditorBundle()).postShapeAddChangedEvent((List) referenceShapes.element);
    }

    /* renamed from: A */
    public final void m38543A(List<TouchData> dataList) {
        if (getDelayDragCaptureHelper().isDragging() || isEditMode() || getExitOnTouchUp()) {
            return;
        }
        this.creationRenderer.lowLatencyRender(this.downPoint, dataList);
    }

    /* renamed from: B */
    public final void m38544B(List<TouchData> dataList) {
        if (isSingleTapUp(dataList)) {
            this.creationRenderer.clear();
        } else {
            m38560s(dataList);
        }
    }

    /* renamed from: C */
    public final void m38545C(RectExcerptEditContext editContext, Function1<? super Shape, Unit> onSaveCallback) {
        if (!editContext.getTransformShapes().isEmpty()) {
            onSaveCallback.invoke(editContext.ensureTransformShape());
        }
        editContext.reset();
    }

    /* renamed from: F */
    public final Observable<?> m38546F(final RectExcerptEditContext editContext, final Shape shape, final boolean refresh) {
        Observable<R> flatMap = ensureNotePage(editContext).flatMap(new Function() { // from class: com.onyx.android.sdk.universal.editor.action.handler.RectExcerptShapeDrawingHandlerAction$removeOriginalShape$1
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final ObservableSource<? extends ChangedShapeBean> apply(@NotNull final NotePage notePage) {
                Intrinsics.checkNotNullParameter(notePage, "notePage");
                RectExcerptShapeDrawingHandlerAction rectExcerptShapeDrawingHandlerAction = RectExcerptShapeDrawingHandlerAction.this;
                final Shape shape2 = shape;
                return DocCommonActionsKt.createNoteObservable(rectExcerptShapeDrawingHandlerAction, new Function1<NoteBundle, ChangedShapeBean>() { // from class: com.onyx.android.sdk.universal.editor.action.handler.RectExcerptShapeDrawingHandlerAction$removeOriginalShape$1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final ChangedShapeBean invoke(@NotNull NoteBundle it2) {
                        Intrinsics.checkNotNullParameter(it2, "it");
                        return NotePage.removeShape$default(NotePage.this, shape2, false, 2, null);
                    }
                });
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return RxjavaKt.flatMapIf(flatMap, new Function1<ChangedShapeBean, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.handler.RectExcerptShapeDrawingHandlerAction$removeOriginalShape$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull ChangedShapeBean it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(refresh);
            }
        }, new Function1<ChangedShapeBean, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.handler.RectExcerptShapeDrawingHandlerAction$removeOriginalShape$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull ChangedShapeBean it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return ForceRenderSliceListActionsKt.forceRenderShapeOutsideRectToDisplay(RectExcerptShapeDrawingHandlerAction.this, editContext.getVirtualBoxInfo(), shape);
            }
        });
    }

    /* renamed from: H */
    public final void m38547H() {
        EditorBundleKt.postEvent(getEditorBundle(), new DismissExcerptPopupEvent());
        setExitOnTouchUp(false);
        this.editingContext = null;
        this.downPoint = null;
        this.creationRenderer.clear();
        this.editRenderer.clear();
    }

    /* renamed from: I */
    public final Observable<List<Shape>> m38548I(RectExcerptEditContext editContext) {
        SaveRectExcerptAction saveRectExcerptAction = new SaveRectExcerptAction(getEditorBundle());
        saveRectExcerptAction.setArgs(editContext.getSaveEventArgs(editContext.getSelectionRect()));
        Observable flatMap = saveRectExcerptAction.build().flatMap(new C9268y());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: J */
    public final Observable<?> m38549J(final RectExcerptEditContext editContext, boolean saveChanged) {
        if (saveChanged) {
            return m38559r(editContext);
        }
        if (!(!editContext.getTransformShapes().isEmpty()) || editContext.getOriginalExcerptShape() == null) {
            Observable<?> just = Observable.just(this);
            Intrinsics.checkNotNull(just);
            return just;
        }
        Observable<?> flatMap = DocCommonActionsKt.createNoteObservable(this, new Function1<NoteBundle, Unit>() { // from class: com.onyx.android.sdk.universal.editor.action.handler.RectExcerptShapeDrawingHandlerAction$saveOrRestore$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(NoteBundle noteBundle) {
                invoke2(noteBundle);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull NoteBundle it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                if (!RectExcerptEditContext.this.getTransformShapes().isEmpty()) {
                    ShapeTypes.INSTANCE.resetTransformMatrix(RectExcerptEditContext.this.getTransformShapes());
                    NotePage notePage = RectExcerptEditContext.this.getNotePage();
                    if (notePage != null) {
                        NotePageShape.addShapeList$default(NotePageShape.INSTANCE, notePage, RectExcerptEditContext.this.getTransformShapes(), 0, 2, null);
                    }
                }
            }
        }).flatMap(new C9269z(editContext));
        Intrinsics.checkNotNull(flatMap);
        return flatMap;
    }

    /* renamed from: K */
    public final Observable<Boolean> m38550K(List<? extends Shape> shapeList, boolean rectUpdate) {
        if (m38553N() || rectUpdate) {
            Observable<Boolean> just = Observable.just(Boolean.valueOf(rectUpdate));
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable doOnNext = new GetReferenceShapeAction(getEditorBundle(), shapeList).build().map(C9217a0.f49266e).doOnNext(C9219b0.f49268e);
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        Observable map = RxjavaKt.flatMapIf(doOnNext, new Function1<List<? extends Shape>, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.handler.RectExcerptShapeDrawingHandlerAction$setReferenceShapeVisible$3
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull List<? extends Shape> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(!it2.isEmpty());
            }
        }, new Function1<List<? extends Shape>, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.handler.RectExcerptShapeDrawingHandlerAction$setReferenceShapeVisible$4
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull List<? extends Shape> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return ForceRenderSliceListActionsKt.forceRenderNoteDirtyRectToDisplay$default(RectExcerptShapeDrawingHandlerAction.this, it2, false, 2, null);
            }
        }).map(C9221c0.f49270e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: L */
    public final void m38551L(RectExcerptEditContext editContext, Shape shape) {
        EditorBundleKt.postEvent(getEditorBundle(), new ShowExcerptPopupEvent(new ShowExcerptPopupArgs(editContext.getVirtualBoxInfo(), shape, editContext.getExcerptCollectionList(), editContext.getNoteModelList(), false)));
    }

    /* renamed from: M */
    public final Observable<Shape> m38552M(RectExcerptEditContext editContext, RectF boundingRect) {
        Observable<Shape> map = Observable.just(this).filter(new C9223d0(boundingRect)).flatMap(new C9225e0(editContext, boundingRect)).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).doOnNext(new C9227f0(editContext)).observeOn(getMainUIScheduler()).doOnNext(new C9234g0(editContext)).map(C9236h0.f49284e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: N */
    public final boolean m38553N() {
        return EditorBundleKt.getUiFeature(getEditorBundle()).supportRectExcerptLimitRect();
    }

    /* renamed from: O */
    public final Observable<TouchData> m38554O(final TouchData touchData) {
        RectExcerptEditContext rectExcerptEditContext = this.editingContext;
        if (rectExcerptEditContext == null) {
            Observable<TouchData> just = Observable.just(touchData);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        TouchPoint normalizeTouchPoint = normalizeTouchPoint(rectExcerptEditContext.getVirtualBoxInfo(), touchData.getTouchPoint().m72173clone());
        final SelectionManager selectionManager = rectExcerptEditContext.getSelectionManager();
        if (selectionManager == null) {
            Observable<TouchData> just2 = Observable.just(touchData);
            Intrinsics.checkNotNullExpressionValue(just2, "just(...)");
            return just2;
        }
        Observable<SelectionManager> transform = selectionManager.transform(rectExcerptEditContext.getTransformShapes(), normalizeTouchPoint);
        Function1<SelectionManager, Boolean> function1 = new Function1<SelectionManager, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.handler.RectExcerptShapeDrawingHandlerAction$transformEditingExcerpt$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* JADX WARN: Code restructure failed: missing block: B:4:0x001a, code lost:
            
                if (r1 != false) goto L8;
             */
            @Override // kotlin.jvm.functions.Function1
            @org.jetbrains.annotations.NotNull
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Boolean invoke(@org.jetbrains.annotations.NotNull com.onyx.android.sdk.universal.editor.helper.SelectionManager r2) {
                /*
                    r1 = this;
                    java.lang.String r0 = "it"
                    kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r0)
                    com.onyx.android.sdk.geometry.data.TouchData r2 = com.onyx.android.sdk.geometry.data.TouchData.this
                    int r2 = r2.getAction()
                    r0 = 1
                    if (r2 != r0) goto L1d
                    com.onyx.android.sdk.universal.editor.action.handler.RectExcerptShapeDrawingHandlerAction r2 = r2
                    com.onyx.android.sdk.universal.editor.helper.SelectionManager r1 = r3
                    com.onyx.android.sdk.note.common.data.shape.ShapeTransformAction r1 = r1.getTransformAction()
                    boolean r1 = com.onyx.android.sdk.universal.editor.action.handler.RectExcerptShapeDrawingHandlerAction.access$isSupportedTransformAction(r2, r1)
                    if (r1 == 0) goto L1d
                    goto L1e
                L1d:
                    r0 = 0
                L1e:
                    java.lang.Boolean r1 = java.lang.Boolean.valueOf(r0)
                    return r1
                */
                throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.universal.editor.action.handler.RectExcerptShapeDrawingHandlerAction$transformEditingExcerpt$1.invoke(com.onyx.android.sdk.universal.editor.helper.SelectionManager):java.lang.Boolean");
            }
        };
        Observable<Shape> doOnNext = m38552M(rectExcerptEditContext, rectExcerptEditContext.getSelectionRect()).doOnNext(new C9256r0(selectionManager));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        Observable map = RxjavaKt.flatMapIf(transform, function1, doOnNext).map(new C9259s0(touchData));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: P */
    public final Observable<List<Shape>> m38555P(RectExcerptEditContext editContext, Shape shape) {
        List mutableListOf;
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(shape);
        UpdateRectExcerptShapeArgs updateRectExcerptShapeArgs = new UpdateRectExcerptShapeArgs();
        updateRectExcerptShapeArgs.setRegionInViewport(editContext.getSelectionRect());
        updateRectExcerptShapeArgs.setShape(shape);
        updateRectExcerptShapeArgs.setVirtualPageBoxInfo(editContext.getVirtualBoxInfo());
        Observable<List<Shape>> map = new UpdateRectExcerptAction(getEditorBundle(), updateRectExcerptShapeArgs).build().flatMap(new C9261t0(editContext, mutableListOf)).flatMap(new C9263u0(mutableListOf)).map(new C9265v0(mutableListOf));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @Override // com.onyx.android.sdk.universal.editor.action.handler.BaseExcerptShapeHandlerAction
    public void cancelAction() {
        BaseExcerptShapeHandlerAction.quitEdit$default(this, true, null, 2, null);
        getDelayDragCaptureHelper().cancelDelayDrag();
    }

    @Override // com.onyx.android.sdk.universal.editor.action.handler.BaseExcerptShapeHandlerAction
    public void cancelEditIfDeleted(@NotNull String shapeUniqueId) {
        Intrinsics.checkNotNullParameter(shapeUniqueId, "shapeUniqueId");
        RectExcerptEditContext rectExcerptEditContext = this.editingContext;
        if (rectExcerptEditContext == null) {
            return;
        }
        Shape originalExcerptShape = rectExcerptEditContext.getOriginalExcerptShape();
        if (Intrinsics.areEqual(originalExcerptShape != null ? originalExcerptShape.getShapeUniqueId() : null, shapeUniqueId) && isEditMode()) {
            RectExcerptEditContext rectExcerptEditContext2 = this.editingContext;
            if (rectExcerptEditContext2 != null) {
                rectExcerptEditContext2.reset();
            }
            BaseExcerptShapeHandlerAction.quitEdit$default(this, false, null, 2, null);
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<TouchData>> create() {
        Observable filter = subscribeTouchData().flatMap(new C9216a()).filter(new C9218b()).filter(new C9220c());
        Intrinsics.checkNotNullExpressionValue(filter, "filter(...)");
        Observable<List<TouchData>> doOnNext = RxjavaKt.touchBuffer$default(filter, 0L, 0, getMainUIScheduler(), 3, null).filter(C9222d.f49271e).doOnNext(new C9224e()).filter(new C9226f()).doOnNext(new C9233g());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction, io.reactivex.rxjava3.disposables.Disposable
    public void dispose() {
        BaseExcerptShapeHandlerAction.quitEdit$default(this, true, null, 2, null);
        super.dispose();
        getDelayDragCaptureHelper().cancelDelayDrag();
    }

    @Override // com.onyx.android.sdk.universal.editor.action.handler.BaseExcerptShapeHandlerAction
    public boolean isEditMode() {
        return this.editingContext != null;
    }

    /* renamed from: o */
    public final void m38556o(Shape srcShape, Shape targetShape) {
        targetShape.setShapeUniqueId(srcShape.getShapeUniqueId());
        targetShape.setPageUniqueId(srcShape.getPageUniqueId());
        targetShape.setDocumentUniqueId(srcShape.getDocumentUniqueId());
        targetShape.setShapeSrcBean(srcShape.getShapeSrcBean());
        targetShape.setShapeReferenceBean(srcShape.getShapeReferenceBean());
        ShapeOptions shapeOptions = ShapeOptions.INSTANCE;
        shapeOptions.setSaved(targetShape, shapeOptions.isSaved(srcShape));
        ExcerptInfoBean excerptInfoBean = ShapePersistOptionsKt.getExcerptInfoBean(srcShape);
        if (excerptInfoBean != null) {
            ShapePersistOptionsKt.setExcerptInfoBean(targetShape, excerptInfoBean);
        }
    }

    @Override // com.onyx.android.sdk.universal.editor.action.handler.BaseExcerptShapeHandlerAction
    public boolean onSingleTapUp(@NotNull TouchPoint touchPoint) {
        Intrinsics.checkNotNullParameter(touchPoint, "touchPoint");
        return isEditMode();
    }

    @Override // com.onyx.android.sdk.universal.editor.action.handler.BaseShapeHandlerAction
    public void onTouchContentOutside(@NotNull TouchData touchData, @NotNull BoxInfo virtualBoxInfo) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
        super.onTouchContentOutside(touchData, virtualBoxInfo);
        BaseExcerptShapeHandlerAction.quitEdit$default(this, true, null, 2, null);
        EditorBundleKt.shapeHandlerManager(getEditorBundle()).restoreUserProvider();
    }

    @Override // com.onyx.android.sdk.universal.editor.action.handler.BaseShapeHandlerAction
    public void onTouchDown(@NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        EditorBundleKt.postEvent(getEditorBundle(), new DismissExcerptPopupEvent());
        if (isEditMode()) {
            m38565z(touchData);
            return;
        }
        this.downPoint = touchData.getTouchPoint().copy();
        setDownVirtualBoxInfo(touchData.ensureBoxInfo());
        this.creationRenderer.init(touchData.ensureBoxInfo());
    }

    @Override // com.onyx.android.sdk.universal.editor.action.handler.BaseShapeHandlerAction
    public void onTouchUp(@NotNull TouchData touchData) {
        SelectionManager selectionManager;
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        if (touchData.isTouchCancel()) {
            return;
        }
        getDelayDragCaptureHelper().cancelDelayDrag();
        RectExcerptEditContext rectExcerptEditContext = this.editingContext;
        if (rectExcerptEditContext != null && (selectionManager = rectExcerptEditContext.getSelectionManager()) != null) {
            selectionManager.onUp(touchData.getTouchPoint());
        }
        if (getExitOnTouchUp()) {
            BaseExcerptShapeHandlerAction.quitEdit$default(this, true, null, 2, null);
        }
    }

    /* renamed from: p */
    public final Observable<List<Shape>> m38557p(BoxInfo virtualBoxInfo, List<? extends Shape> shapeList) {
        if (shapeList.isEmpty()) {
            Observable<List<Shape>> just = Observable.just(shapeList);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable<List<Shape>> map = EditorShapesActionsKt.addCrossPageShapes$default(this, new TransformShapeContext(virtualBoxInfo, shapeList, null, false, 12, null), null, 2, null).flatMap(new C9237i()).map(new C9239j(shapeList));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: q */
    public final Observable<Boolean> m38558q(BoxInfo virtualBoxInfo, List<? extends Shape> shapeList, boolean rectUpdate) {
        if (!rectUpdate || m38553N()) {
            Observable<Boolean> just = Observable.just(Boolean.valueOf(rectUpdate));
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable map = RxjavaKt.flatMapIf(m38557p(virtualBoxInfo, shapeList), new Function1<List<? extends Shape>, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.handler.RectExcerptShapeDrawingHandlerAction$createCrossPageShapes$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull List<? extends Shape> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(!it2.isEmpty());
            }
        }, new Function1<List<? extends Shape>, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.handler.RectExcerptShapeDrawingHandlerAction$createCrossPageShapes$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull List<? extends Shape> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return RectExcerptShapeDrawingHandlerAction.m38541u(RectExcerptShapeDrawingHandlerAction.this, it2, false, false, 6, null);
            }
        }).map(C9235h.f49283e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @Override // com.onyx.android.sdk.universal.editor.action.handler.BaseExcerptShapeHandlerAction
    public void quitEdit(boolean saveChanged, @NotNull Function1<? super Shape, Unit> onSaveCallback) {
        Intrinsics.checkNotNullParameter(onSaveCallback, "onSaveCallback");
        Debug.INSTANCE.m32035d(RectExcerptShapeDrawingHandlerAction.class, "quitEdit: " + saveChanged + ' ' + isEditMode(), new Object[0]);
        if (RxjavaKt.isDisposed(getQuitDisposable())) {
            final RectExcerptEditContext rectExcerptEditContext = this.editingContext;
            Unit unit = null;
            this.editingContext = null;
            if (rectExcerptEditContext != null) {
                final Ref.ObjectRef objectRef = new Ref.ObjectRef();
                Observable flatMap = Observable.just(this).flatMap(new C9264v(rectExcerptEditContext, saveChanged));
                Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
                Observable doOnNext = RxjavaKt.doOnNextIf(flatMap, new Function1<Object, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.handler.RectExcerptShapeDrawingHandlerAction$quitEdit$1$2
                    {
                        super(1);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final Boolean invoke(@NotNull Object it2) {
                        Intrinsics.checkNotNullParameter(it2, "it");
                        return Boolean.valueOf(!RectExcerptEditContext.this.getTransformShapes().isEmpty());
                    }
                }, new Consumer() { // from class: com.sunia.HTREnginev2.jhl
                    @Override // io.reactivex.rxjava3.functions.Consumer
                    public final void accept(Object obj) {
                        RectExcerptShapeDrawingHandlerAction.m38535D(Ref.ObjectRef.this, rectExcerptEditContext, obj);
                    }
                }).doOnNext(new C9266w(rectExcerptEditContext, onSaveCallback)).doOnNext(new C9267x());
                Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
                setQuitDisposable(RxjavaKt.flatMapIf(RxjavaKt.doOnNextIf(doOnNext, new Function1<Object, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.handler.RectExcerptShapeDrawingHandlerAction$quitEdit$1$6
                    {
                        super(1);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final Boolean invoke(@NotNull Object it2) {
                        RectExcerptEditContext rectExcerptEditContext2;
                        Intrinsics.checkNotNullParameter(it2, "it");
                        rectExcerptEditContext2 = RectExcerptShapeDrawingHandlerAction.this.editingContext;
                        return Boolean.valueOf(rectExcerptEditContext2 == null);
                    }
                }, new Consumer() { // from class: com.sunia.HTREnginev2.khl
                    @Override // io.reactivex.rxjava3.functions.Consumer
                    public final void accept(Object obj) {
                        RectExcerptShapeDrawingHandlerAction.m38536E(RectExcerptShapeDrawingHandlerAction.this, obj);
                    }
                }), new Function1<Object, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.handler.RectExcerptShapeDrawingHandlerAction$quitEdit$1$8
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final Boolean invoke(@NotNull Object it2) {
                        Intrinsics.checkNotNullParameter(it2, "it");
                        return Boolean.valueOf(objectRef.element != null);
                    }
                }, new Function1<Object, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.handler.RectExcerptShapeDrawingHandlerAction$quitEdit$1$9
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final Observable<? extends Object> invoke(@NotNull Object it2) {
                        List listOf;
                        Intrinsics.checkNotNullParameter(it2, "it");
                        RectExcerptShapeDrawingHandlerAction rectExcerptShapeDrawingHandlerAction = RectExcerptShapeDrawingHandlerAction.this;
                        Shape shape = objectRef.element;
                        Intrinsics.checkNotNull(shape);
                        listOf = CollectionsKt__CollectionsJVMKt.listOf(shape);
                        return ForceRenderSliceListActionsKt.forceRenderNoteDirtyRectToDisplay$default(rectExcerptShapeDrawingHandlerAction, listOf, false, 2, null);
                    }
                }).subscribe());
                unit = Unit.INSTANCE;
            }
            if (unit == null) {
                m38547H();
            }
        }
    }

    /* renamed from: r */
    public final Observable<List<Shape>> m38559r(RectExcerptEditContext editContext) {
        List emptyList;
        Debug.INSTANCE.m32035d(RectExcerptShapeDrawingHandlerAction.class, "saveRectExcerpt: ", new Object[0]);
        if (editContext.getTransformShapes().isEmpty()) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            Observable<List<Shape>> just = Observable.just(emptyList);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Shape ensureTransformShape = editContext.ensureTransformShape();
        Observable<List<Shape>> doOnNext = ((ShapePersistOptionsKt.isInvalidExcerptShape(ensureTransformShape) || editContext.getOriginalExcerptShape() == null) ? m38548I(editContext) : m38555P(editContext, ensureTransformShape)).doOnNext(new C9241k(editContext));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: s */
    public final void m38560s(List<TouchData> dataList) {
        Debug.INSTANCE.m32035d(RectExcerptShapeDrawingHandlerAction.class, "enterEditMode: ", new Object[0]);
        if (isEditMode() || dataList.isEmpty() || getDelayDragCaptureHelper().isDragging()) {
            return;
        }
        RectF boundingRect = this.creationRenderer.getBoundingRect(this.downPoint, dataList);
        BoxInfo downVirtualBoxInfo = getDownVirtualBoxInfo();
        if (downVirtualBoxInfo == null || boundingRect.isEmpty()) {
            return;
        }
        RectExcerptEditContext create = RectExcerptEditContext.INSTANCE.create(downVirtualBoxInfo);
        m38552M(create, boundingRect).map(new C9243l(create)).flatMap(new C9245m(create)).doOnNext(new C9247n(create)).flatMap(new C9249o(create)).doOnNext(new C9251p(create)).doOnNext(new C9253q()).doOnNext(new C9255r()).doOnNext(new C9258s()).subscribe();
    }

    @Override // com.onyx.android.sdk.universal.editor.action.handler.BaseExcerptShapeHandlerAction
    public void startExcerptEdit(@NotNull StartExcerptEditArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        RectExcerptEditContext create = RectExcerptEditContext.INSTANCE.create(args);
        Observable.just(create).flatMap(new C9238i0(create)).doOnNext(new C9240j0(create)).flatMap(new C9242k0(create, args)).doOnNext(new C9244l0(create)).doOnNext(new C9246m0()).flatMap(new C9248n0(args)).map(new C9250o0()).flatMap(new C9252p0(create)).flatMap(new C9254q0(create, args)).subscribe();
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.List, T] */
    /* renamed from: t */
    public final Observable<?> m38561t(List<? extends Shape> shapeList, boolean visible, final boolean updateAndRefresh) {
        ?? emptyList;
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        objectRef.element = emptyList;
        Observable<GetReferenceShapeAction> doOnNext = new GetReferenceShapeAction(getEditorBundle(), shapeList).build().doOnNext(new C9260t(objectRef)).doOnNext(new C9262u(objectRef, visible));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return RxjavaKt.flatMapIf(RxjavaKt.doOnNextIf(RxjavaKt.flatMapIf(doOnNext, new Function1<GetReferenceShapeAction, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.handler.RectExcerptShapeDrawingHandlerAction$forceRenderCrossPageShapes$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull GetReferenceShapeAction it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(!objectRef.element.isEmpty());
            }
        }, new Function1<GetReferenceShapeAction, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.handler.RectExcerptShapeDrawingHandlerAction$forceRenderCrossPageShapes$4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull GetReferenceShapeAction it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return ForceRenderSliceListActionsKt.forceRenderNoteDirtyRectToDisplay$default(RectExcerptShapeDrawingHandlerAction.this, objectRef.element, false, 2, null);
            }
        }), new Function1<Object, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.handler.RectExcerptShapeDrawingHandlerAction$forceRenderCrossPageShapes$5
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Object it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(updateAndRefresh);
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.lhl
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                RectExcerptShapeDrawingHandlerAction.m38542v(Ref.ObjectRef.this, this, obj);
            }
        }), new Function1<Object, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.handler.RectExcerptShapeDrawingHandlerAction$forceRenderCrossPageShapes$7
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            /* JADX WARN: Code restructure failed: missing block: B:4:0x0015, code lost:
            
                if ((!r2.element.isEmpty()) != false) goto L8;
             */
            @Override // kotlin.jvm.functions.Function1
            @org.jetbrains.annotations.NotNull
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Boolean invoke(@org.jetbrains.annotations.NotNull java.lang.Object r2) {
                /*
                    r1 = this;
                    java.lang.String r0 = "it"
                    kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r0)
                    boolean r2 = r1
                    if (r2 == 0) goto L18
                    kotlin.jvm.internal.Ref$ObjectRef<java.util.List<com.onyx.android.sdk.note.common.shape.Shape>> r1 = r2
                    T r1 = r1.element
                    java.util.Collection r1 = (java.util.Collection) r1
                    boolean r1 = r1.isEmpty()
                    r2 = 1
                    r1 = r1 ^ r2
                    if (r1 == 0) goto L18
                    goto L19
                L18:
                    r2 = 0
                L19:
                    java.lang.Boolean r1 = java.lang.Boolean.valueOf(r2)
                    return r1
                */
                throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.universal.editor.action.handler.C9231xf6078b11.invoke(java.lang.Object):java.lang.Boolean");
            }
        }, new Function1<Object, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.handler.RectExcerptShapeDrawingHandlerAction$forceRenderCrossPageShapes$8
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull Object it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return ForceRenderSliceListActionsKt.forceRenderNoteDirtyRectToDisplay$default(RectExcerptShapeDrawingHandlerAction.this, objectRef.element, false, 2, null);
            }
        });
    }

    /* renamed from: w */
    public final List<ShapeTransformAction> m38562w() {
        return (List) this.supportedTransformAction.getValue();
    }

    /* renamed from: x */
    public final boolean m38563x() {
        if (isEditMode()) {
            RectExcerptEditContext rectExcerptEditContext = this.editingContext;
            if (m38564y(rectExcerptEditContext != null ? rectExcerptEditContext.getTransformAction() : null)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: y */
    public final boolean m38564y(ShapeTransformAction shapeTransformAction) {
        boolean contains;
        contains = CollectionsKt___CollectionsKt.contains(m38562w(), shapeTransformAction);
        return contains;
    }

    /* renamed from: z */
    public final void m38565z(TouchData touchData) {
        RectExcerptEditContext rectExcerptEditContext = this.editingContext;
        if (rectExcerptEditContext == null) {
            return;
        }
        TouchPoint normalizeTouchPoint = normalizeTouchPoint(rectExcerptEditContext.getVirtualBoxInfo(), touchData.getTouchPoint().copy());
        SelectionManager selectionManager = rectExcerptEditContext.getSelectionManager();
        if (selectionManager == null) {
            return;
        }
        if (m38564y(selectionManager.transformAction(rectExcerptEditContext.getTransformShapes(), normalizeTouchPoint))) {
            selectionManager.onDown(rectExcerptEditContext.getTransformShapes(), normalizeTouchPoint);
            if (m38564y(selectionManager.getTransformAction())) {
                selectionManager.touchDown(rectExcerptEditContext.getTransformShapes(), normalizeTouchPoint);
                return;
            }
            return;
        }
        if (rectExcerptEditContext.isHitInside(touchData.getTouchPoint())) {
            getDelayDragCaptureHelper().startDelayDrag(rectExcerptEditContext, m38559r(rectExcerptEditContext));
        } else {
            setExitOnTouchUp(true);
        }
    }
}
