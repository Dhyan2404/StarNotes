package com.onyx.galaxy.note.editor.view.popup;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.CompoundButton;
import androidx.core.app.NotificationCompat;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.onyx.android.sdk.base.extension.Activity;
import com.onyx.android.sdk.base.extension.BooleanKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.IntList;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.extension.PopupExtKt;
import com.onyx.android.sdk.base.extension.TypeExtKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.p018rx.RxFilter;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.note.common.data.shape.ShapeAttributesBean;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.shape.extension.ShapePersistOptionsKt;
import com.onyx.android.sdk.note.common.utils.PenUtils;
import com.onyx.android.sdk.note.extension.PhysiceExtKt;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.p039ui.PopupDragHandler;
import com.onyx.android.sdk.replicator.colorset.data.ColorSetModel;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.events.note.ChangeShapeAttributesEvent;
import com.onyx.android.sdk.universal.editor.events.note.UpdateSelectionBitmapEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.common.view.BasePopupWindow;
import com.onyx.galaxy.note.databinding.PopupAdjustShapeStylesBinding;
import com.onyx.galaxy.note.editor.action.pen.ShowColorPickerAction;
import com.onyx.galaxy.note.editor.data.PensizeConvertExtKt;
import com.onyx.galaxy.note.editor.data.ShapeToolType;
import com.onyx.galaxy.note.editor.view.custom.StickSeekBarContainer;
import com.onyx.galaxy.note.editor.view.popup.AdjustShapeStylePopup;
import com.onyx.galaxy.note.editor.view.toolbar.ShapeColorPropertyLayout;
import com.onyx.galaxy.note.editor.view.toolbar.ShapeFillColorPropertyLayout;
import com.sun.org.apache.xalan.internal.templates.Constants;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.commons.lang3.Range;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010T\u001a\u00020S\u0012\u0006\u00105\u001a\u000203\u0012\f\u00108\u001a\b\u0012\u0004\u0012\u00020\u000e06¢\u0006\u0004\bU\u0010VJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0002H\u0002J\u0010\u0010\b\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\b\u0010\t\u001a\u00020\u0002H\u0002J\b\u0010\n\u001a\u00020\u0002H\u0002J\b\u0010\u000b\u001a\u00020\u0002H\u0002J\b\u0010\r\u001a\u00020\fH\u0002J\n\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0002J\n\u0010\u0010\u001a\u0004\u0018\u00010\u000eH\u0002J\n\u0010\u0011\u001a\u0004\u0018\u00010\u000eH\u0002J\u0010\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u0010\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0015H\u0002J \u0010\u001a\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0006H\u0002J\u0010\u0010\u001c\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u0006H\u0002J\u0010\u0010\u001e\u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u0006H\u0002J\u0010\u0010 \u001a\u00020\u00022\u0006\u0010\u001f\u001a\u00020\fH\u0002J\u0010\u0010!\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J4\u0010'\u001a\u00020\u00022\"\u0010%\u001a\u001e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020#0\"j\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020#`$2\u0006\u0010&\u001a\u00020\fH\u0002J\b\u0010(\u001a\u00020\u0006H\u0002J\u0010\u0010*\u001a\u00020\u00022\u0006\u0010)\u001a\u00020\fH\u0002J\b\u0010+\u001a\u00020\u0002H\u0016J(\u0010/\u001a\u00020\u00022\u0006\u0010-\u001a\u00020,2\u0006\u0010.\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0006H\u0016J\u0012\u00101\u001a\u00020\u00022\b\u00100\u001a\u0004\u0018\u00010,H\u0016J\u0010\u00102\u001a\u00020\u00022\u0006\u00100\u001a\u00020,H\u0016R\u0014\u00105\u001a\u0002038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u00104R\u001a\u00108\u001a\b\u0012\u0004\u0012\u00020\u000e068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u00107R$\u0010?\u001a\u0004\u0018\u0001098\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010:\u001a\u0004\b;\u0010<\"\u0004\b=\u0010>R\u001b\u0010D\u001a\u00020@8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0011\u0010A\u001a\u0004\bB\u0010CR$\u0010J\u001a\u0004\u0018\u00010,8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010E\u001a\u0004\bF\u0010G\"\u0004\bH\u0010IR\u0018\u0010L\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010KR\u0014\u0010N\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010MR\u001c\u0010R\u001a\b\u0012\u0004\u0012\u00020P0O8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0003\u0010Q¨\u0006W"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;", "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;", "", "x", "G", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "", "style", "L", "A", "K", "z", "", "w", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "u", "s", "t", "Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;", "seekBarThickness", "initStrokeWidthView", "Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;", "colorLayout", "y", "originColor", "colorIndex", "H", "color", C4921e.f26528e, CouchFieldKey.KEY_FILL_COLOR, "p", "enabled", "q", "r", "Ljava/util/HashMap;", "Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;", "Lkotlin/collections/HashMap;", "shapeAttrMap", "postImmediately", "I", "v", "shouldShow", "J", "dismiss", "Landroid/view/View;", "parent", NotificationCompat.WearableExtender.f5060z, "showAtLocation", Constants.ELEMNAME_ANCHOR_STRING, "showAsDropDown", "show", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "", "Ljava/util/List;", "shapes", "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;", "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;", "getViewShape", "()Lcom/onyx/galaxy/note/editor/data/ShapeToolType;", "setViewShape", "(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V", "viewShape", "Lcom/onyx/galaxy/note/databinding/PopupAdjustShapeStylesBinding;", "Lkotlin/Lazy;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/PopupAdjustShapeStylesBinding;", "binding", "Landroid/view/View;", "getAnchorView", "()Landroid/view/View;", "setAnchorView", "(Landroid/view/View;)V", "anchorView", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "hasPencilShape", "Lcom/onyx/android/sdk/base/rx/RxFilter;", "Lcom/onyx/android/sdk/universal/editor/events/note/ChangeShapeAttributesEvent;", "Lcom/onyx/android/sdk/base/rx/RxFilter;", "attrChangesFilter", "Landroid/content/Context;", "context", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nAdjustShapeStylePopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdjustShapeStylePopup.kt\ncom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,353:1\n1747#2,3:354\n1726#2,3:361\n766#2:368\n857#2,2:369\n288#2,2:371\n288#2,2:373\n288#2,2:375\n1726#2,3:377\n1855#2,2:380\n766#2:382\n857#2,2:383\n1855#2,2:385\n766#2:387\n857#2,2:388\n1855#2,2:390\n766#2:392\n857#2,2:393\n1855#2,2:395\n256#3,2:357\n256#3,2:359\n256#3,2:364\n256#3,2:366\n*S KotlinDebug\n*F\n+ 1 AdjustShapeStylePopup.kt\ncom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup\n*L\n106#1:354,3\n132#1:361,3\n158#1:368\n158#1:369,2\n163#1:371,2\n169#1:373,2\n175#1:375,2\n179#1:377,3\n247#1:380,2\n262#1:382\n262#1:383,2\n263#1:385,2\n274#1:387\n274#1:388,2\n275#1:390,2\n290#1:392\n290#1:393,2\n291#1:395,2\n107#1:357,2\n108#1:359,2\n132#1:364,2\n149#1:366,2\n*E\n"})
/* loaded from: classes9.dex */
public final class AdjustShapeStylePopup extends BasePopupWindow {

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final List<Shape> shapes;

    /* renamed from: s, reason: from kotlin metadata */
    @Nullable
    public ShapeToolType viewShape;

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: u, reason: from kotlin metadata */
    @Nullable
    public View anchorView;

    /* renamed from: v, reason: from kotlin metadata */
    @Nullable
    public Shape shape;

    /* renamed from: w, reason: from kotlin metadata */
    public final boolean hasPencilShape;

    /* renamed from: x, reason: from kotlin metadata */
    @NotNull
    public RxFilter<ChangeShapeAttributesEvent> attrChangesFilter;

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.AdjustShapeStylePopup$a */
    /* loaded from: classes9.dex */
    public static final class C12367a<T> implements Consumer {
        public C12367a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ChangeShapeAttributesEvent it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.postEvent(AdjustShapeStylePopup.this.editorBundle, it2);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public AdjustShapeStylePopup(@NotNull final Context context, @NotNull EditorBundle editorBundle, @NotNull List<? extends Shape> shapes) {
        super(context, null, 2, null);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        this.editorBundle = editorBundle;
        this.shapes = shapes;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<PopupAdjustShapeStylesBinding>() { // from class: com.onyx.galaxy.note.editor.view.popup.AdjustShapeStylePopup$binding$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PopupAdjustShapeStylesBinding invoke() {
                PopupAdjustShapeStylesBinding inflate = PopupAdjustShapeStylesBinding.inflate(LayoutInflater.from(context));
                Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
                return inflate;
            }
        });
        this.binding = lazy;
        this.shape = ShapeTypes.INSTANCE.firstTargetShape(shapes);
        this.hasPencilShape = CollectionKt.contains(shapes, new Function1<Shape, Boolean>() { // from class: com.onyx.galaxy.note.editor.view.popup.AdjustShapeStylePopup$hasPencilShape$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Shape it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                ShapeTypes shapeTypes = ShapeTypes.INSTANCE;
                return Boolean.valueOf(shapeTypes.isPencilShape(shapeTypes.getTargetType(it2)));
            }
        });
        this.attrChangesFilter = new RxFilter<>();
        TintLinearLayout root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
        m48490G();
        m48505x();
    }

    /* renamed from: B */
    public static final void m48480B(AdjustShapeStylePopup this$0, CompoundButton compoundButton, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48498q(z);
        this$0.m48494K();
    }

    /* renamed from: D */
    public static final void m48481D(AdjustShapeStylePopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48499r(0);
        this$0.m48495L(0);
    }

    /* renamed from: E */
    public static final void m48482E(AdjustShapeStylePopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48499r(1);
        this$0.m48495L(1);
    }

    /* renamed from: F */
    public static final void m48483F(AdjustShapeStylePopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48499r(2);
        this$0.m48495L(2);
    }

    /* renamed from: A */
    public final void m48488A() {
        TintLinearLayout shapeFillGroup = getBinding().shapeFillGroup;
        Intrinsics.checkNotNullExpressionValue(shapeFillGroup, "shapeFillGroup");
        List<Shape> list = this.shapes;
        boolean z = true;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            Iterator<T> it2 = list.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                if (!ShapeTypes.INSTANCE.isSupportFillColor((Shape) it2.next())) {
                    z = false;
                    break;
                }
            }
        }
        shapeFillGroup.setVisibility(z ? 0 : 8);
        Shape m48500s = m48500s();
        if (m48500s == null) {
            return;
        }
        getBinding().fillColorSwitch.setChecked(m48500s.isFillColorEnabled());
        getBinding().fillColorSwitch.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.sunia.HTREnginev2.z8
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z2) {
                AdjustShapeStylePopup.m48480B(AdjustShapeStylePopup.this, compoundButton, z2);
            }
        });
        getBinding().fillColorLayout.setShapeType(m48500s.getType());
        ShapeFillColorPropertyLayout shapeFillColorPropertyLayout = getBinding().fillColorLayout;
        EditorBundle editorBundle = this.editorBundle;
        TintLinearLayout root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        shapeFillColorPropertyLayout.initFillColorLayout(editorBundle, root, getDockType(), null, new Function3<Integer, Integer, Boolean, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.AdjustShapeStylePopup$initFillLayout$3
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Integer num, Integer num2, Boolean bool) {
                invoke(num.intValue(), num2.intValue(), bool.booleanValue());
                return Unit.INSTANCE;
            }

            public final void invoke(int i, int i2, boolean z2) {
                AdjustShapeStylePopup.this.m48497p(i);
            }
        });
        getBinding().fillColorLayout.updateFillColor(m48500s.getFillColor());
        m48494K();
    }

    /* renamed from: C */
    public final void m48489C() {
        boolean z;
        List<Shape> list = this.shapes;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            Iterator<T> it2 = list.iterator();
            while (it2.hasNext()) {
                if (ShapeTypes.INSTANCE.isSupportLineStyle((Shape) it2.next())) {
                    z = true;
                    break;
                }
            }
        }
        z = false;
        TintTextView penStrokeStyleTitle = getBinding().penStrokeStyleTitle;
        Intrinsics.checkNotNullExpressionValue(penStrokeStyleTitle, "penStrokeStyleTitle");
        penStrokeStyleTitle.setVisibility(z ? 0 : 8);
        TintLinearLayout root = getBinding().penStrokeStyle.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        root.setVisibility(z ? 0 : 8);
        Shape m48501t = m48501t();
        if (m48501t == null) {
            return;
        }
        m48495L(m48501t.getLineStyle());
        TintImageView solidStyle = getBinding().penStrokeStyle.solidStyle;
        Intrinsics.checkNotNullExpressionValue(solidStyle, "solidStyle");
        ViewKt.click$default(solidStyle, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.a9
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AdjustShapeStylePopup.m48481D(AdjustShapeStylePopup.this, view);
            }
        }, 1, null);
        TintImageView dashStyle = getBinding().penStrokeStyle.dashStyle;
        Intrinsics.checkNotNullExpressionValue(dashStyle, "dashStyle");
        ViewKt.click$default(dashStyle, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.b9
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AdjustShapeStylePopup.m48482E(AdjustShapeStylePopup.this, view);
            }
        }, 1, null);
        TintImageView dotStyle = getBinding().penStrokeStyle.dotStyle;
        Intrinsics.checkNotNullExpressionValue(dotStyle, "dotStyle");
        ViewKt.click$default(dotStyle, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.c9
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AdjustShapeStylePopup.m48483F(AdjustShapeStylePopup.this, view);
            }
        }, 1, null);
    }

    /* renamed from: G */
    public final void m48490G() {
        m48489C();
        ShapeColorPropertyLayout colorLayout = getBinding().colorLayout;
        Intrinsics.checkNotNullExpressionValue(colorLayout, "colorLayout");
        m48506y(colorLayout);
        StickSeekBarContainer seekBarThickness = getBinding().seekBarThickness;
        Intrinsics.checkNotNullExpressionValue(seekBarThickness, "seekBarThickness");
        initStrokeWidthView(seekBarThickness);
        m48488A();
        m48507z();
    }

    /* renamed from: H */
    public final void m48491H(final ShapeColorPropertyLayout colorLayout, final int originColor, final int colorIndex) {
        final View view = this.anchorView;
        if (view == null) {
            return;
        }
        final EditorBundle editorBundle = this.editorBundle;
        final ShapeToolType shapeToolType = this.viewShape;
        final List<Integer> viewColors = colorLayout.getViewColors();
        RxBaseAction.execute$default(new ShowColorPickerAction(view, colorLayout, originColor, colorIndex, this, editorBundle, shapeToolType, viewColors) { // from class: com.onyx.galaxy.note.editor.view.popup.AdjustShapeStylePopup$pickColor$1

            /* renamed from: q */
            public final /* synthetic */ ShapeColorPropertyLayout f60100q;

            /* renamed from: r */
            public final /* synthetic */ int f60101r;

            /* renamed from: s */
            public final /* synthetic */ AdjustShapeStylePopup f60102s;

            {
                this.f60100q = colorLayout;
                this.f60101r = colorIndex;
                this.f60102s = this;
            }

            @Override // com.onyx.galaxy.note.editor.action.pen.ShowColorPickerAction, com.onyx.galaxy.note.p048ui.colorpicker.view.ColorPickerCallback
            public void onColorSelected(int color) {
                this.f60100q.updateColorView(color, this.f60101r);
                this.f60102s.m48496o(color);
            }

            @Override // com.onyx.galaxy.note.editor.action.pen.ShowColorPickerAction, com.onyx.galaxy.note.p048ui.colorpicker.view.ColorPickerCallback
            public void onColorSetSelected(@NotNull ColorSetModel colorSet) {
                Intrinsics.checkNotNullParameter(colorSet, "colorSet");
                IntList intList = TypeExtKt.toIntList(colorSet.getColors());
                Integer num = intList.get(this.f60101r);
                Intrinsics.checkNotNullExpressionValue(num, "get(...)");
                int intValue = num.intValue();
                this.f60100q.updateColorView(intList, this.f60101r);
                this.f60102s.m48496o(intValue);
            }

            @Override // com.onyx.galaxy.note.editor.action.pen.ShowColorPickerAction
            public void showPopupWindow(@NotNull ColorPickPopup popup) {
                Intrinsics.checkNotNullParameter(popup, "popup");
                View topContentView = Activity.INSTANCE.getTopContentView();
                TintLinearLayout root = this.f60102s.getBinding().getRoot();
                Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
                PopupExtKt.showLeftOrRightAsideAndTopAlign$default(popup, topContentView, root, null, null, 12, null);
            }
        }, null, null, null, 7, null);
    }

    /* renamed from: I */
    public final void m48492I(HashMap<Shape, ShapeAttributesBean> shapeAttrMap, boolean postImmediately) {
        if (!postImmediately) {
            this.attrChangesFilter.onNext(new ChangeShapeAttributesEvent(shapeAttrMap));
            return;
        }
        m48505x();
        EditorBundleKt.postEvent(this.editorBundle, new ChangeShapeAttributesEvent(shapeAttrMap));
        EditorBundleKt.postEvent(this.editorBundle, new UpdateSelectionBitmapEvent());
    }

    /* renamed from: J */
    public final void m48493J(boolean shouldShow) {
        com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrGone(getBinding().seekBarThickness, shouldShow);
    }

    /* renamed from: K */
    public final void m48494K() {
        boolean isChecked = getBinding().fillColorSwitch.isChecked();
        ShapeFillColorPropertyLayout fillColorLayout = getBinding().fillColorLayout;
        Intrinsics.checkNotNullExpressionValue(fillColorLayout, "fillColorLayout");
        fillColorLayout.setVisibility(isChecked ? 0 : 8);
    }

    /* renamed from: L */
    public final void m48495L(int style) {
        getBinding().penStrokeStyle.solidStyle.setSelected(style == 0);
        getBinding().penStrokeStyle.dashStyle.setSelected(style == 1);
        getBinding().penStrokeStyle.dotStyle.setSelected(style == 2);
    }

    @Override // com.onyx.galaxy.note.common.view.BasePopupWindow, android.widget.PopupWindow
    public void dismiss() {
        super.dismiss();
        this.attrChangesFilter.dispose();
    }

    @Nullable
    public final View getAnchorView() {
        return this.anchorView;
    }

    @NotNull
    public final PopupAdjustShapeStylesBinding getBinding() {
        return (PopupAdjustShapeStylesBinding) this.binding.getValue();
    }

    @Nullable
    public final ShapeToolType getViewShape() {
        return this.viewShape;
    }

    public final void initStrokeWidthView(StickSeekBarContainer seekBarThickness) {
        boolean z;
        List<Shape> list = this.shapes;
        boolean z2 = false;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            Iterator<T> it2 = list.iterator();
            while (it2.hasNext()) {
                if (!ShapeTypes.INSTANCE.disableThicknessStyle((Shape) it2.next())) {
                    z = false;
                    break;
                }
            }
        }
        z = true;
        if (!z && m48504w()) {
            z2 = true;
        }
        m48493J(z2);
        Shape m48502u = m48502u();
        if (m48502u == null) {
            return;
        }
        int m48503v = m48503v();
        PenUtils penUtils = PenUtils.INSTANCE;
        Range<Float> between = Range.between(Float.valueOf(PensizeConvertExtKt.sizeToValue(penUtils.getMaxStrokeWidth(m48503v))), Float.valueOf(PensizeConvertExtKt.sizeToValue(penUtils.getMinStrokeWidth(m48503v))));
        Intrinsics.checkNotNullExpressionValue(between, "between(...)");
        seekBarThickness.setRange(between);
        seekBarThickness.setProgressValue(PensizeConvertExtKt.sizeToValue(PhysiceExtKt.toPhysicsStrokeWidth(m48502u.getStrokeWidth() * MatrixKt.getAverageScale(m48502u.getShapeMatrix()))));
        seekBarThickness.setProgressChangeCallback(new Function3<Float, Float, Boolean, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.AdjustShapeStylePopup$initStrokeWidthView$1
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Float f, Float f2, Boolean bool) {
                invoke(f.floatValue(), f2.floatValue(), bool.booleanValue());
                return Unit.INSTANCE;
            }

            public final void invoke(float f, float f2, boolean z3) {
                List list2;
                HashMap hashMap = new HashMap();
                list2 = AdjustShapeStylePopup.this.shapes;
                ArrayList<Shape> arrayList = new ArrayList();
                for (Object obj : list2) {
                    if (!ShapeTypes.INSTANCE.disableThicknessStyle((Shape) obj)) {
                        arrayList.add(obj);
                    }
                }
                for (Shape shape : arrayList) {
                    ShapeAttributesBean buildAttributes = ShapeAttributesBean.INSTANCE.buildAttributes(shape);
                    buildAttributes.setShapeWidth(PensizeConvertExtKt.valueToSize(f2 / MatrixKt.getAverageScale(shape.getShapeMatrix())));
                    hashMap.put(shape, buildAttributes);
                }
                AdjustShapeStylePopup.this.m48492I(hashMap, !z3);
            }
        });
    }

    /* renamed from: o */
    public final void m48496o(int color) {
        if (this.shape == null) {
            return;
        }
        HashMap<Shape, ShapeAttributesBean> hashMap = new HashMap<>();
        for (Shape shape : this.shapes) {
            ShapeAttributesBean buildAttributes = ShapeAttributesBean.INSTANCE.buildAttributes(shape);
            if (ShapeTypes.INSTANCE.isFillColorShape(shape)) {
                buildAttributes.setFillColor(color);
            } else {
                buildAttributes.setColor(color);
            }
            hashMap.put(shape, buildAttributes);
        }
        m48492I(hashMap, true);
    }

    /* renamed from: p */
    public final void m48497p(int fillColor) {
        HashMap<Shape, ShapeAttributesBean> hashMap = new HashMap<>();
        List<Shape> list = this.shapes;
        ArrayList<Shape> arrayList = new ArrayList();
        for (Object obj : list) {
            if (ShapeTypes.INSTANCE.isSupportFillColor((Shape) obj)) {
                arrayList.add(obj);
            }
        }
        for (Shape shape : arrayList) {
            ShapeAttributesBean buildAttributes = ShapeAttributesBean.INSTANCE.buildAttributes(shape);
            buildAttributes.setFillColor(fillColor);
            hashMap.put(shape, buildAttributes);
        }
        m48492I(hashMap, true);
    }

    /* renamed from: q */
    public final void m48498q(boolean enabled) {
        HashMap<Shape, ShapeAttributesBean> hashMap = new HashMap<>();
        List<Shape> list = this.shapes;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (ShapeTypes.INSTANCE.isSupportFillColor((Shape) obj)) {
                arrayList.add(obj);
            }
        }
        Iterator it2 = arrayList.iterator();
        while (true) {
            boolean z = true;
            if (!it2.hasNext()) {
                m48492I(hashMap, true);
                return;
            }
            Shape shape = (Shape) it2.next();
            final ShapeAttributesBean buildAttributes = ShapeAttributesBean.INSTANCE.buildAttributes(shape);
            buildAttributes.setFillColorEnabled(enabled);
            if (!enabled || shape.getFillColor() != 0) {
                z = false;
            }
            BooleanKt.takeIfTrue(Boolean.valueOf(z), new Function0<Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.AdjustShapeStylePopup$changeFillColorEnabled$2$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
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
                    ShapeAttributesBean.this.setFillColor(this.getBinding().fillColorLayout.getFillColor());
                }
            });
            hashMap.put(shape, buildAttributes);
        }
    }

    /* renamed from: r */
    public final void m48499r(int style) {
        HashMap<Shape, ShapeAttributesBean> hashMap = new HashMap<>();
        List<Shape> filterNormalShapes = ShapeTypes.INSTANCE.filterNormalShapes(this.shapes);
        ArrayList<Shape> arrayList = new ArrayList();
        for (Object obj : filterNormalShapes) {
            if (ShapeTypes.INSTANCE.isSupportLineStyle((Shape) obj)) {
                arrayList.add(obj);
            }
        }
        for (Shape shape : arrayList) {
            ShapeAttributesBean buildAttributes = ShapeAttributesBean.INSTANCE.buildAttributes(shape);
            buildAttributes.setStrokeStyle(style);
            hashMap.put(shape, buildAttributes);
        }
        m48492I(hashMap, true);
    }

    /* renamed from: s */
    public final Shape m48500s() {
        Object obj;
        Iterator<T> it2 = ShapeTypes.INSTANCE.filterNormalShapes(this.shapes).iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            if (ShapeTypes.INSTANCE.isSupportFillColor((Shape) obj)) {
                break;
            }
        }
        return (Shape) obj;
    }

    public final void setAnchorView(@Nullable View view) {
        this.anchorView = view;
    }

    public final void setViewShape(@Nullable ShapeToolType shapeToolType) {
        this.viewShape = shapeToolType;
    }

    @Override // com.onyx.galaxy.note.common.view.BasePopupWindow
    public void show(@NotNull View anchor) {
        Intrinsics.checkNotNullParameter(anchor, "anchor");
        this.anchorView = anchor;
        super.show(anchor);
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(@Nullable View anchor) {
        this.anchorView = anchor;
        super.showAsDropDown(anchor);
    }

    @Override // com.onyx.galaxy.note.common.view.BasePopupWindow, android.widget.PopupWindow
    public void showAtLocation(@NotNull View parent, int gravity, int x, int y) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        this.anchorView = parent;
        super.showAtLocation(parent, gravity, x, y);
    }

    /* renamed from: t */
    public final Shape m48501t() {
        Object obj;
        Iterator<T> it2 = ShapeTypes.INSTANCE.filterNormalShapes(this.shapes).iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            if (ShapeTypes.INSTANCE.isSupportLineStyle((Shape) obj)) {
                break;
            }
        }
        return (Shape) obj;
    }

    /* renamed from: u */
    public final Shape m48502u() {
        Object obj;
        Iterator<T> it2 = this.shapes.iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            Shape shape = (Shape) obj;
            ShapeTypes shapeTypes = ShapeTypes.INSTANCE;
            if ((shapeTypes.isReferenceShape(shape) || shapeTypes.disableThicknessStyle(shape)) ? false : true) {
                break;
            }
        }
        return (Shape) obj;
    }

    /* renamed from: v */
    public final int m48503v() {
        Shape m48502u = m48502u();
        if (m48502u == null) {
            return -1;
        }
        int type = m48502u.getType();
        if (type == 15 || type == 39) {
            return m48502u.getType();
        }
        int subShapeType = ShapePersistOptionsKt.getSubShapeType(m48502u, -1);
        return subShapeType == -1 ? m48502u.getType() : subShapeType;
    }

    /* renamed from: w */
    public final boolean m48504w() {
        ShapeTypes shapeTypes = ShapeTypes.INSTANCE;
        List<Shape> list = this.shapes;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (!ShapeTypes.INSTANCE.disableThicknessStyle((Shape) obj)) {
                arrayList.add(obj);
            }
        }
        return shapeTypes.hasSameStrokeRange(arrayList);
    }

    /* renamed from: x */
    public final void m48505x() {
        this.attrChangesFilter.dispose();
        this.attrChangesFilter.subscribeThrottleLast((this.hasPencilShape ? 400 : 100L).longValue(), new C12367a());
    }

    /* renamed from: y */
    public final void m48506y(final ShapeColorPropertyLayout colorLayout) {
        final Shape shape = this.shape;
        if (shape == null) {
            return;
        }
        colorLayout.setShape(shape.getType());
        colorLayout.setSaveColorProperty(false);
        colorLayout.setSelectColor(ShapeTypes.INSTANCE.getPrimaryColor(shape));
        colorLayout.setListener(new ShapeColorPropertyLayout.ColorSelectedListener() { // from class: com.onyx.galaxy.note.editor.view.popup.AdjustShapeStylePopup$initColorLayout$1
            @Override // com.onyx.galaxy.note.editor.view.toolbar.ShapeColorPropertyLayout.ColorSelectedListener
            public void onSelected(int color, int colorIndex) {
                if (color == ShapeTypes.INSTANCE.getPrimaryColor(Shape.this)) {
                    this.m48491H(colorLayout, color, colorIndex);
                } else {
                    this.m48496o(color);
                }
            }
        });
    }

    /* renamed from: z */
    public final void m48507z() {
        MediumTextView titleBar = getBinding().titleBar;
        Intrinsics.checkNotNullExpressionValue(titleBar, "titleBar");
        new PopupDragHandler(this, titleBar, null, null, 12, null).initialize();
    }
}
