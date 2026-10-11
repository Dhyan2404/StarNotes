package com.onyx.galaxy.note.editor.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.app.NotificationCompat;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.BitmapKt;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.extension.SizeKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.genericshape.GeoLayoutMargin;
import com.onyx.android.sdk.genericshape.GeoLayoutMarginBase;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.data.MarginPercent;
import com.onyx.android.sdk.geometry.data.MarginPixel;
import com.onyx.android.sdk.geometry.data.MarginStyle;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.replicator.note.bean.SizeFormat;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateModel;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.data.AdjustViewControlType;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000¼\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 \u0099\u00012\u00020\u0001:\u0004\u0099\u0001\u009a\u0001B\u0017\b\u0016\u0012\n\u0010\u0091\u0001\u001a\u0005\u0018\u00010\u0090\u0001¢\u0006\u0006\b\u0092\u0001\u0010\u0093\u0001B#\b\u0016\u0012\n\u0010\u0091\u0001\u001a\u0005\u0018\u00010\u0090\u0001\u0012\n\u0010\u0095\u0001\u001a\u0005\u0018\u00010\u0094\u0001¢\u0006\u0006\b\u0092\u0001\u0010\u0096\u0001B,\b\u0016\u0012\n\u0010\u0091\u0001\u001a\u0005\u0018\u00010\u0090\u0001\u0012\n\u0010\u0095\u0001\u001a\u0005\u0018\u00010\u0094\u0001\u0012\u0007\u0010\u0097\u0001\u001a\u00020(¢\u0006\u0006\b\u0092\u0001\u0010\u0098\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH\u0002J\u0010\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\f\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\r\u001a\u00020\u0002H\u0002J\b\u0010\u000f\u001a\u00020\u000eH\u0002J\b\u0010\u0011\u001a\u00020\u0010H\u0002J\b\u0010\u0012\u001a\u00020\u0010H\u0002J\b\u0010\u0014\u001a\u00020\u0013H\u0002J\b\u0010\u0015\u001a\u00020\u0002H\u0002J\u0010\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0016H\u0002J)\u0010\u001f\u001a\u00020\u00022!\u0010\u001e\u001a\u001d\u0012\u0013\u0012\u00110\u001a¢\u0006\f\b\u001b\u0012\b\b\u001c\u0012\u0004\b\b(\u001d\u0012\u0004\u0012\u00020\u00020\u0019J\u000e\u0010\"\u001a\u00020\u00022\u0006\u0010!\u001a\u00020 J\u000e\u0010$\u001a\u00020\u00022\u0006\u0010#\u001a\u00020\u0013J\u0016\u0010'\u001a\u00020\u00022\u0006\u0010!\u001a\u00020 2\u0006\u0010&\u001a\u00020%J\u000e\u0010*\u001a\u00020\u00022\u0006\u0010)\u001a\u00020(J\u000e\u0010-\u001a\u00020\u00022\u0006\u0010,\u001a\u00020+J\u0010\u00100\u001a\u00020\u00022\b\u0010/\u001a\u0004\u0018\u00010.J\u0006\u00101\u001a\u00020\u0002J\u000e\u00103\u001a\u00020\u00022\u0006\u00102\u001a\u00020\u0013J\u0010\u00105\u001a\u0002042\u0006\u0010\u0005\u001a\u00020\u0004H\u0017J\u0006\u00106\u001a\u00020\u0013J\u0006\u00107\u001a\u00020\u0013J\u000e\u00109\u001a\u00020\u00022\u0006\u00108\u001a\u000204J\u0010\u0010:\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH\u0014J\u0006\u0010;\u001a\u00020\u001aJ\u0006\u0010<\u001a\u000204J\u0006\u0010=\u001a\u00020(J\b\u0010>\u001a\u0004\u0018\u00010.J\u0006\u0010?\u001a\u00020\u0013J\u0006\u0010@\u001a\u00020\u001aJ\u0006\u0010A\u001a\u00020\u0013R3\u0010\u001e\u001a\u001f\u0012\u0013\u0012\u00110\u001a¢\u0006\f\b\u001b\u0012\b\b\u001c\u0012\u0004\b\b(\u001d\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010BR\u0014\u0010E\u001a\u00020C8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010DR\u0014\u0010F\u001a\u00020C8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010DR\u0014\u0010G\u001a\u00020C8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010DR\u0014\u0010I\u001a\u00020C8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bH\u0010DR\u0016\u0010L\u001a\u00020(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bJ\u0010KR\u0016\u0010O\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bM\u0010NR\u0016\u0010Q\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bP\u0010NR\u0016\u0010S\u001a\u00020(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bR\u0010KR\u0016\u0010W\u001a\u00020T8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bU\u0010VR\"\u0010^\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bX\u0010Y\u001a\u0004\bZ\u0010[\"\u0004\b\\\u0010]R\u0016\u0010`\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b_\u0010YR$\u0010&\u001a\u0004\u0018\u00010%8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\ba\u0010b\u001a\u0004\bc\u0010d\"\u0004\be\u0010fR\u0014\u0010h\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bg\u0010YR\u0016\u0010l\u001a\u00020i8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bj\u0010kR\u0016\u0010n\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bm\u0010NR\u0016\u0010p\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bo\u0010NR\u0018\u0010s\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bq\u0010rR\u0016\u0010w\u001a\u00020t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bu\u0010vR\u0016\u0010y\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bx\u0010YR\u0014\u0010{\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bz\u0010YR\u0016\u0010}\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b|\u0010YR'\u0010\u0082\u0001\u001a\u0012\u0012\u0004\u0012\u00020\u00060~j\b\u0012\u0004\u0012\u00020\u0006`\u007f8\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0080\u0001\u0010\u0081\u0001R\u0017\u0010\u0085\u0001\u001a\u00020+8\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0083\u0001\u0010\u0084\u0001R\u0016\u0010\u0087\u0001\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b\u0086\u0001\u0010YR\u0018\u0010!\u001a\u00020 8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0088\u0001\u0010\u0089\u0001R)\u0010\u008c\u0001\u001a\u0002048\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b\u008a\u0001\u0010\u008b\u0001\u001a\u0006\b\u008c\u0001\u0010\u008d\u0001\"\u0006\b\u008e\u0001\u0010\u008f\u0001¨\u0006\u009b\u0001"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;", "Landroid/view/View;", "", "d", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView$TouchBean;", "a", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "b", C6997f.f39671c, C6998g.f39679a, "c", "Landroid/graphics/RectF;", "getPageScaleRectF", "Lcom/onyx/android/sdk/geometry/data/MarginPixel;", "getMarginPixel", "getMaxMarginPixel", "", "getScaleRatio", C6999h.f39688c, "Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;", "controlType", "e", "Lkotlin/Function1;", "Lcom/onyx/android/sdk/geometry/data/MarginPercent;", "Lkotlin/ParameterName;", "name", "marginPercent", "callback", "setPageMarginChangeCallback", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "boxInfo", "initView", "layoutExpectedWidth", "initPageSize", "Landroid/graphics/Bitmap;", "bitmap", "setData", "", "color", "setMarginColor", "Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;", Constants.ATTRNAME_FORMAT, "setFixedMarginFormat", "", "templateResource", "updateMarginTemplate", "clearMarginTemplate", "space", "updateMarginTemplateSpace", "", "onTouchEvent", "getExpectedWidth", "getSmallWindowExpectedWidth", "isSmallWindow", "displayForSmallWindow", "onDraw", "getMarginPercent", "isLandscape", "getMarginColor", "getMarginTemplateRes", "getMarginTemplateSpace", "getMaxMarginPercent", "getMaxScale", "Lkotlin/jvm/functions/Function1;", "Landroid/graphics/Paint;", "Landroid/graphics/Paint;", "bitmapPaint", "originRectPaint", "strokePaint", "i", "maskPaint", "j", "I", "touchSize", C4921e.f26537n, "F", "halfTouchSize", "l", "hitTestRadius", "m", "adjustType", "Lcom/onyx/android/sdk/genericshape/GeoLayoutMargin;", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/genericshape/GeoLayoutMargin;", "marginLayout", C4921e.f26528e, "Landroid/graphics/RectF;", "getEditArea", "()Landroid/graphics/RectF;", "setEditArea", "(Landroid/graphics/RectF;)V", "editArea", "p", "spaceArea", "q", "Landroid/graphics/Bitmap;", "getBitmap", "()Landroid/graphics/Bitmap;", "setBitmap", "(Landroid/graphics/Bitmap;)V", "r", "bitmapScaleRect", "Lcom/onyx/android/sdk/geometry/data/MarginStyle;", "s", "Lcom/onyx/android/sdk/geometry/data/MarginStyle;", "marginStyle", "t", "centerX", "u", "centerY", "v", "Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView$TouchBean;", "draggingPoint", "Landroid/graphics/PointF;", "w", "Landroid/graphics/PointF;", "downPointF", "x", "downSpace", "y", "pageScaleRectF", "z", "pageOriginSize", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "J", "Ljava/util/ArrayList;", "touchPointList", BaseTLSIdentity.CERT_ATTRIBUTE_ORGANIZATION, "Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;", "minPageSizeFormat", "Q", "pageRectForMargin", "k0", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "q0", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "isSmallWindowLayout", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, "setSmallWindowLayout", "(Z)V", "Landroid/content/Context;", "context", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Companion", "TouchBean", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nPageMarginAdjustView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PageMarginAdjustView.kt\ncom/onyx/galaxy/note/editor/view/PageMarginAdjustView\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,577:1\n1855#2,2:578\n1855#2,2:580\n13309#3,2:582\n*S KotlinDebug\n*F\n+ 1 PageMarginAdjustView.kt\ncom/onyx/galaxy/note/editor/view/PageMarginAdjustView\n*L\n285#1:578,2\n305#1:580,2\n471#1:582,2\n*E\n"})
/* loaded from: classes9.dex */
public final class PageMarginAdjustView extends View {
    public static final int ADJUST_TYPE_MOVE = 1;
    public static final int ADJUST_TYPE_RESIZE = 0;

    /* renamed from: J, reason: from kotlin metadata */
    @NotNull
    public final ArrayList<TouchBean> touchPointList;

    /* renamed from: O, reason: from kotlin metadata */
    @NotNull
    public final SizeFormat minPageSizeFormat;

    /* renamed from: Q, reason: from kotlin metadata */
    @NotNull
    public final RectF pageRectForMargin;

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public Function1<? super MarginPercent, Unit> callback;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final Paint bitmapPaint;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Paint originRectPaint;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Paint strokePaint;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final Paint maskPaint;

    /* renamed from: j, reason: from kotlin metadata */
    public int touchSize;

    /* renamed from: k, reason: from kotlin metadata */
    public float halfTouchSize;

    /* renamed from: k0, reason: from kotlin metadata */
    @NotNull
    public BoxInfo boxInfo;

    /* renamed from: l, reason: from kotlin metadata */
    public float hitTestRadius;

    /* renamed from: m, reason: from kotlin metadata */
    public int adjustType;

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public GeoLayoutMargin marginLayout;

    /* renamed from: o, reason: from kotlin metadata */
    @NotNull
    public RectF editArea;

    /* renamed from: p, reason: from kotlin metadata */
    @NotNull
    public RectF spaceArea;

    /* renamed from: q, reason: from kotlin metadata */
    @Nullable
    public Bitmap bitmap;

    /* renamed from: q0, reason: from kotlin metadata */
    public boolean isSmallWindowLayout;

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final RectF bitmapScaleRect;

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public MarginStyle marginStyle;

    /* renamed from: t, reason: from kotlin metadata */
    public float centerX;

    /* renamed from: u, reason: from kotlin metadata */
    public float centerY;

    /* renamed from: v, reason: from kotlin metadata */
    @Nullable
    public TouchBean draggingPoint;

    /* renamed from: w, reason: from kotlin metadata */
    @NotNull
    public PointF downPointF;

    /* renamed from: x, reason: from kotlin metadata */
    @NotNull
    public RectF downSpace;

    /* renamed from: y, reason: from kotlin metadata */
    @NotNull
    public final RectF pageScaleRectF;

    /* renamed from: z, reason: from kotlin metadata */
    @NotNull
    public RectF pageOriginSize;

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\u0011\u001a\u00020\n¢\u0006\u0004\b\u0012\u0010\u0013R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\u0011\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView$TouchBean;", "", "Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;", "a", "Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;", "getType", "()Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;", "setType", "(Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;)V", "type", "Landroid/graphics/RectF;", "b", "Landroid/graphics/RectF;", "getControlRectF", "()Landroid/graphics/RectF;", "setControlRectF", "(Landroid/graphics/RectF;)V", "controlRectF", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;Landroid/graphics/RectF;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final class TouchBean {

        /* renamed from: a, reason: from kotlin metadata */
        @NotNull
        public AdjustViewControlType type;

        /* renamed from: b, reason: from kotlin metadata */
        @NotNull
        public RectF controlRectF;

        public TouchBean(@NotNull AdjustViewControlType type, @NotNull RectF controlRectF) {
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(controlRectF, "controlRectF");
            this.type = type;
            this.controlRectF = controlRectF;
        }

        @NotNull
        public final RectF getControlRectF() {
            return this.controlRectF;
        }

        @NotNull
        public final AdjustViewControlType getType() {
            return this.type;
        }

        public final void setControlRectF(@NotNull RectF rectF) {
            Intrinsics.checkNotNullParameter(rectF, "<set-?>");
            this.controlRectF = rectF;
        }

        public final void setType(@NotNull AdjustViewControlType adjustViewControlType) {
            Intrinsics.checkNotNullParameter(adjustViewControlType, "<set-?>");
            this.type = adjustViewControlType;
        }
    }

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[AdjustViewControlType.values().length];
            try {
                iArr[AdjustViewControlType.TOP_LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AdjustViewControlType.TOP_MIDDLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[AdjustViewControlType.TOP_RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[AdjustViewControlType.MIDDLE_LEFT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[AdjustViewControlType.MIDDLE_RIGHT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[AdjustViewControlType.BOTTOM_LEFT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[AdjustViewControlType.BOTTOM_MIDDLE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[AdjustViewControlType.BOTTOM_RIGHT.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public PageMarginAdjustView(@Nullable Context context) {
        this(context, null);
    }

    private final MarginPixel getMarginPixel() {
        m47427d();
        MarginPixel marginPixel = new MarginPixel();
        RectF rectF = this.pageScaleRectF;
        float f = rectF.left;
        RectF rectF2 = this.spaceArea;
        ((RectF) marginPixel).left = f - rectF2.left;
        ((RectF) marginPixel).top = rectF.top - rectF2.top;
        ((RectF) marginPixel).right = rectF2.right - rectF.right;
        ((RectF) marginPixel).bottom = rectF2.bottom - rectF.bottom;
        return marginPixel;
    }

    private final MarginPixel getMaxMarginPixel() {
        MarginPixel marginPixel = new MarginPixel();
        RectF rectF = this.pageScaleRectF;
        float f = rectF.left;
        RectF rectF2 = this.editArea;
        ((RectF) marginPixel).left = f - rectF2.left;
        ((RectF) marginPixel).top = rectF.top - rectF2.top;
        ((RectF) marginPixel).right = rectF2.right - rectF.right;
        ((RectF) marginPixel).bottom = rectF2.bottom - rectF.bottom;
        return marginPixel;
    }

    private final RectF getPageScaleRectF() {
        RectF rectF = new RectF();
        float width = this.pageOriginSize.width() * getScaleRatio();
        ResManager resManager = ResManager.INSTANCE;
        float f = width / resManager.getFloat(C10651R.dimen.twice);
        float height = (this.pageOriginSize.height() * getScaleRatio()) / resManager.getFloat(C10651R.dimen.twice);
        float f2 = this.centerX;
        rectF.left = f2 - f;
        rectF.right = f2 + f;
        float f3 = this.centerY;
        rectF.top = f3 - height;
        rectF.bottom = f3 + height;
        return rectF;
    }

    private final float getScaleRatio() {
        float height = this.pageOriginSize.height();
        float width = this.pageOriginSize.width();
        return width > height ? (this.editArea.width() / getMaxScale()) / width : (this.editArea.height() / getMaxScale()) / height;
    }

    /* renamed from: a */
    public final TouchBean m47424a(MotionEvent event) {
        Object obj;
        Iterator<T> it2 = this.touchPointList.iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            RectF copy = RectFKt.copy(((TouchBean) obj).getControlRectF());
            RectKt.expand(copy, this.hitTestRadius);
            if (copy.contains(event.getX(), event.getY())) {
                break;
            }
        }
        return (TouchBean) obj;
    }

    /* renamed from: b */
    public final void m47425b(Canvas canvas) {
        m47431h();
        for (TouchBean touchBean : this.touchPointList) {
            float centerX = touchBean.getControlRectF().centerX();
            float centerY = touchBean.getControlRectF().centerY();
            float f = this.halfTouchSize / ResManager.INSTANCE.getFloat(C10651R.dimen.twice);
            this.strokePaint.setStyle(Paint.Style.FILL);
            this.strokePaint.setColor(-1);
            canvas.drawCircle(centerX, centerY, f, this.strokePaint);
            this.strokePaint.setStyle(Paint.Style.STROKE);
            this.strokePaint.setColor(ThemeUtils.getColorById(C7996R.color.theme_primary_color_01));
            canvas.drawCircle(centerX, centerY, f, this.strokePaint);
        }
    }

    /* renamed from: c */
    public final void m47426c() {
        RectF rectF = this.spaceArea;
        float f = rectF.left;
        RectF rectF2 = this.pageScaleRectF;
        float f2 = rectF2.left;
        if (f > f2) {
            rectF.left = f2;
        }
        float f3 = rectF.right;
        float f4 = rectF2.right;
        if (f3 < f4) {
            rectF.right = f4;
        }
        float f5 = rectF.top;
        float f6 = rectF2.top;
        if (f5 > f6) {
            rectF.top = f6;
        }
        float f7 = rectF.bottom;
        float f8 = rectF2.bottom;
        if (f7 < f8) {
            rectF.bottom = f8;
        }
        RectFKt.limitAndResize(rectF, this.editArea);
    }

    public final void clearMarginTemplate() {
        updateMarginTemplate(null);
    }

    /* renamed from: d */
    public final void m47427d() {
        if (RectKt.isEmptyOnScreen$default(this.spaceArea, 0.0f, 1, null)) {
            this.spaceArea.set(this.pageScaleRectF);
            Debug.INSTANCE.m32038d(AnyKt.toSimpleNameString(this), "expected spaceArea not empty, reset spaceArea", new Object[0]);
        }
        RectF rectF = this.spaceArea;
        float f = rectF.left;
        RectF rectF2 = this.editArea;
        float f2 = rectF2.left;
        if (f < f2) {
            rectF.left = f2;
        }
        float f3 = rectF.right;
        float f4 = rectF2.right;
        if (f3 > f4) {
            rectF.right = f4;
        }
        float f5 = rectF.top;
        float f6 = rectF2.top;
        if (f5 < f6) {
            rectF.top = f6;
        }
        float f7 = rectF.bottom;
        float f8 = rectF2.bottom;
        if (f7 > f8) {
            rectF.bottom = f8;
        }
    }

    public final void displayForSmallWindow(boolean isSmallWindow) {
        if (isSmallWindow == this.isSmallWindowLayout || this.boxInfo.isNaNBox()) {
            return;
        }
        this.isSmallWindowLayout = isSmallWindow;
        initPageSize(isSmallWindow ? getSmallWindowExpectedWidth() : getExpectedWidth());
    }

    /* renamed from: e */
    public final TouchBean m47428e(AdjustViewControlType controlType) {
        switch (WhenMappings.$EnumSwitchMapping$0[controlType.ordinal()]) {
            case 1:
                RectF rectF = this.spaceArea;
                float f = rectF.left;
                float f2 = this.halfTouchSize;
                float f3 = rectF.top;
                return new TouchBean(controlType, new RectF(f - f2, f3 - f2, f + f2, f3 + f2));
            case 2:
                float centerX = this.spaceArea.centerX();
                float f4 = this.halfTouchSize;
                float f5 = centerX - f4;
                RectF rectF2 = this.spaceArea;
                float f6 = rectF2.top - f4;
                float centerX2 = rectF2.centerX();
                float f7 = this.halfTouchSize;
                return new TouchBean(controlType, new RectF(f5, f6, centerX2 + f7, this.spaceArea.top + f7));
            case 3:
                RectF rectF3 = this.spaceArea;
                float f8 = rectF3.right;
                float f9 = this.halfTouchSize;
                float f10 = rectF3.top;
                return new TouchBean(controlType, new RectF(f8 - f9, f10 - f9, f8 + f9, f10 + f9));
            case 4:
                RectF rectF4 = this.spaceArea;
                float f11 = rectF4.left - this.halfTouchSize;
                float centerY = rectF4.centerY();
                float f12 = this.halfTouchSize;
                RectF rectF5 = this.spaceArea;
                return new TouchBean(controlType, new RectF(f11, centerY - f12, rectF5.left + f12, rectF5.centerY() + this.halfTouchSize));
            case 5:
                RectF rectF6 = this.spaceArea;
                float f13 = rectF6.right - this.halfTouchSize;
                float centerY2 = rectF6.centerY();
                float f14 = this.halfTouchSize;
                RectF rectF7 = this.spaceArea;
                return new TouchBean(controlType, new RectF(f13, centerY2 - f14, rectF7.right + f14, rectF7.centerY() + this.halfTouchSize));
            case 6:
                RectF rectF8 = this.spaceArea;
                float f15 = rectF8.left;
                float f16 = this.halfTouchSize;
                float f17 = rectF8.bottom;
                return new TouchBean(controlType, new RectF(f15 - f16, f17 - f16, f15 + f16, f17 + f16));
            case 7:
                float centerX3 = this.spaceArea.centerX();
                float f18 = this.halfTouchSize;
                float f19 = centerX3 - f18;
                RectF rectF9 = this.spaceArea;
                float f20 = rectF9.bottom - f18;
                float centerX4 = rectF9.centerX();
                float f21 = this.halfTouchSize;
                return new TouchBean(controlType, new RectF(f19, f20, centerX4 + f21, this.spaceArea.bottom + f21));
            case 8:
                RectF rectF10 = this.spaceArea;
                float f22 = rectF10.right;
                float f23 = this.halfTouchSize;
                float f24 = rectF10.bottom;
                return new TouchBean(controlType, new RectF(f22 - f23, f24 - f23, f22 + f23, f24 + f23));
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    /* renamed from: f */
    public final void m47429f(MotionEvent event) {
        float rawX = event.getRawX() - this.downPointF.x;
        float rawY = event.getRawY() - this.downPointF.y;
        RectF copy = RectFKt.copy(this.spaceArea);
        copy.offset(rawX, rawY);
        float f = copy.left;
        float f2 = this.pageScaleRectF.left;
        if (f > f2) {
            copy.offset(f2 - f, 0.0f);
        }
        float f3 = copy.right;
        float f4 = this.pageScaleRectF.right;
        if (f3 < f4) {
            copy.offset(f4 - f3, 0.0f);
        }
        float f5 = copy.top;
        float f6 = this.pageScaleRectF.top;
        if (f5 > f6) {
            copy.offset(0.0f, f6 - f5);
        }
        float f7 = copy.bottom;
        float f8 = this.pageScaleRectF.bottom;
        if (f7 < f8) {
            copy.offset(0.0f, f8 - f7);
        }
        RectFKt.limit(copy, this.editArea);
        this.downPointF.set(event.getRawX(), event.getRawY());
        this.spaceArea.set(copy);
        invalidate();
    }

    /* renamed from: g */
    public final void m47430g(MotionEvent event) {
        float rawX = event.getRawX() - this.downPointF.x;
        float rawY = event.getRawY() - this.downPointF.y;
        TouchBean touchBean = this.draggingPoint;
        if (touchBean != null) {
            switch (WhenMappings.$EnumSwitchMapping$0[touchBean.getType().ordinal()]) {
                case 1:
                    RectF rectF = this.spaceArea;
                    RectF rectF2 = this.downSpace;
                    rectF.left = rectF2.left + rawX;
                    rectF.top = rectF2.top + rawY;
                    break;
                case 2:
                    this.spaceArea.top = this.downSpace.top + rawY;
                    break;
                case 3:
                    RectF rectF3 = this.spaceArea;
                    RectF rectF4 = this.downSpace;
                    rectF3.right = rectF4.right + rawX;
                    rectF3.top = rectF4.top + rawY;
                    break;
                case 4:
                    this.spaceArea.left = this.downSpace.left + rawX;
                    break;
                case 5:
                    this.spaceArea.right = this.downSpace.right + rawX;
                    break;
                case 6:
                    RectF rectF5 = this.spaceArea;
                    RectF rectF6 = this.downSpace;
                    rectF5.left = rectF6.left + rawX;
                    rectF5.bottom = rectF6.bottom + rawY;
                    break;
                case 7:
                    this.spaceArea.bottom = this.downSpace.bottom + rawY;
                    break;
                case 8:
                    RectF rectF7 = this.spaceArea;
                    RectF rectF8 = this.downSpace;
                    rectF7.right = rectF8.right + rawX;
                    rectF7.bottom = rectF8.bottom + rawY;
                    break;
            }
            m47426c();
            invalidate();
        }
    }

    @Nullable
    public final Bitmap getBitmap() {
        return this.bitmap;
    }

    @NotNull
    public final RectF getEditArea() {
        return this.editArea;
    }

    public final float getExpectedWidth() {
        return ResManager.INSTANCE.getDimension(C7384R.dimen.dp_480);
    }

    public final int getMarginColor() {
        return this.marginStyle.getColor();
    }

    @NotNull
    public final MarginPercent getMarginPercent() {
        return getMarginPixel().toMarginPercent(this.pageScaleRectF);
    }

    @Nullable
    public final String getMarginTemplateRes() {
        return this.marginStyle.getTemplateResource();
    }

    public final float getMarginTemplateSpace() {
        return this.marginStyle.getTemplateSpace();
    }

    @NotNull
    public final MarginPercent getMaxMarginPercent() {
        return getMaxMarginPixel().toMarginPercent(this.pageScaleRectF);
    }

    public final float getMaxScale() {
        return (1 + ((isLandscape() ? ResManager.INSTANCE.getFloat(C10651R.dimen.landscape_margin_max_percent) : ResManager.INSTANCE.getFloat(C10651R.dimen.portrait_margin_top_bottom_max_percent)) * 2)) * ((RectKt.isNullOrEmpty(SizeKt.toRectF(this.minPageSizeFormat.getSize())) || this.pageOriginSize.width() * this.pageOriginSize.height() >= ((float) (this.minPageSizeFormat.getSize().getWidth() * this.minPageSizeFormat.getSize().getHeight()))) ? 1.0f : RectFKt.scaleToHeight(RectFKt.copy(this.pageOriginSize), SizeKt.toRectF(this.minPageSizeFormat.getSize())));
    }

    public final float getSmallWindowExpectedWidth() {
        return ResManager.INSTANCE.getDimension(C7384R.dimen.dp_320);
    }

    /* renamed from: h */
    public final void m47431h() {
        this.touchPointList.clear();
        for (AdjustViewControlType adjustViewControlType : AdjustViewControlType.values()) {
            this.touchPointList.add(m47428e(adjustViewControlType));
        }
    }

    public final void initPageSize(float layoutExpectedWidth) {
        int i = (int) layoutExpectedWidth;
        getLayoutParams().width = i;
        getLayoutParams().height = i;
        this.editArea.set(0.0f, 0.0f, layoutExpectedWidth, RectKt.isLandscape(this.boxInfo.getOriginRectF()) ? layoutExpectedWidth / RectKt.getAspectRatio(this.boxInfo.getOriginRectF()) : layoutExpectedWidth);
        RectF rectF = this.editArea;
        float f = this.halfTouchSize;
        rectF.offset(f, f);
        RectF copy = RectFKt.copy(this.editArea);
        RectKt.expand(copy, this.halfTouchSize);
        copy.offsetTo(0.0f, 0.0f);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        layoutParams.width = (int) copy.width();
        layoutParams.height = (int) copy.height();
        setLayoutParams(layoutParams);
        float width = copy.width();
        ResManager resManager = ResManager.INSTANCE;
        this.centerX = width / resManager.getFloat(C10651R.dimen.twice);
        this.centerY = copy.height() / resManager.getFloat(C10651R.dimen.twice);
        this.pageOriginSize = RectFKt.copy(this.boxInfo.getOriginRectF());
        this.pageScaleRectF.set(getPageScaleRectF());
        requestLayout();
    }

    public final void initView(@NotNull BoxInfo boxInfo) {
        Intrinsics.checkNotNullParameter(boxInfo, "boxInfo");
        this.boxInfo = boxInfo.copy();
        initPageSize(getExpectedWidth());
    }

    public final boolean isLandscape() {
        return RectKt.isLandscape(this.pageOriginSize);
    }

    /* renamed from: isSmallWindowLayout, reason: from getter */
    public final boolean getIsSmallWindowLayout() {
        return this.isSmallWindowLayout;
    }

    @Override // android.view.View
    public void onDraw(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        super.onDraw(canvas);
        if (this.boxInfo.isNaNBox()) {
            return;
        }
        this.marginLayout.setMargin(getMarginPercent(), this.marginStyle);
        this.marginLayout.setContentRect(this.pageRectForMargin);
        Bitmap bitmap = this.bitmap;
        if (bitmap != null) {
            canvas.drawBitmap(bitmap, (Rect) null, this.bitmapScaleRect, this.bitmapPaint);
            canvas.drawRect(this.pageScaleRectF, this.originRectPaint);
            Iterator<T> it2 = RectKt.createRectanglesWithHole(this.editArea, this.spaceArea).iterator();
            while (it2.hasNext()) {
                canvas.drawRect((RectF) it2.next(), this.maskPaint);
            }
            GeoLayoutMarginBase.draw$default(this.marginLayout, canvas, true, null, 4, null);
            canvas.drawRect(this.spaceArea, this.strokePaint);
            m47425b(canvas);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0013, code lost:
    
        if (r0 != 3) goto L24;
     */
    @Override // android.view.View
    @android.annotation.SuppressLint({"ClickableViewAccessibility"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(@org.jetbrains.annotations.NotNull android.view.MotionEvent r6) {
        /*
            r5 = this;
            java.lang.String r0 = "event"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
            int r0 = r6.getAction()
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L2e
            if (r0 == r2) goto L22
            r3 = 2
            if (r0 == r3) goto L16
            r6 = 3
            if (r0 == r6) goto L22
            goto L68
        L16:
            int r0 = r5.adjustType
            if (r0 != r2) goto L1e
            r5.m47429f(r6)
            goto L68
        L1e:
            r5.m47430g(r6)
            goto L68
        L22:
            kotlin.jvm.functions.Function1<? super com.onyx.android.sdk.geometry.data.MarginPercent, kotlin.Unit> r6 = r5.callback
            if (r6 == 0) goto L68
            com.onyx.android.sdk.geometry.data.MarginPercent r0 = r5.getMarginPercent()
            r6.invoke(r0)
            goto L68
        L2e:
            android.view.ViewParent r0 = r5.getParent()
            r0.requestDisallowInterceptTouchEvent(r2)
            com.onyx.galaxy.note.editor.view.PageMarginAdjustView$TouchBean r0 = r5.m47424a(r6)
            r5.draggingPoint = r0
            android.graphics.PointF r0 = r5.downPointF
            float r3 = r6.getRawX()
            float r4 = r6.getRawY()
            r0.set(r3, r4)
            android.graphics.RectF r0 = r5.downSpace
            android.graphics.RectF r3 = r5.spaceArea
            r0.set(r3)
            com.onyx.galaxy.note.editor.view.PageMarginAdjustView$TouchBean r0 = r5.draggingPoint
            if (r0 != 0) goto L65
            android.graphics.RectF r0 = r5.spaceArea
            float r3 = r6.getX()
            float r6 = r6.getY()
            boolean r6 = r0.contains(r3, r6)
            if (r6 == 0) goto L65
            r6 = r2
            goto L66
        L65:
            r6 = r1
        L66:
            r5.adjustType = r6
        L68:
            com.onyx.galaxy.note.editor.view.PageMarginAdjustView$TouchBean r6 = r5.draggingPoint
            if (r6 != 0) goto L70
            int r5 = r5.adjustType
            if (r5 != r2) goto L71
        L70:
            r1 = r2
        L71:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.editor.view.PageMarginAdjustView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public final void setBitmap(@Nullable Bitmap bitmap) {
        this.bitmap = bitmap;
    }

    public final void setData(@NotNull BoxInfo boxInfo, @NotNull Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(boxInfo, "boxInfo");
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        MarginPixel marginPixel = boxInfo.getMarginPercent().toMarginPixel(this.pageScaleRectF);
        RectF rectF = this.spaceArea;
        RectF rectF2 = this.pageScaleRectF;
        rectF.left = rectF2.left - ((RectF) marginPixel).left;
        rectF.right = rectF2.right + ((RectF) marginPixel).right;
        rectF.top = rectF2.top - ((RectF) marginPixel).top;
        rectF.bottom = rectF2.bottom + ((RectF) marginPixel).bottom;
        m47427d();
        m47431h();
        this.bitmap = bitmap;
        this.bitmapScaleRect.set(BitmapKt.boundingRectF(bitmap));
        RectF rectF3 = this.bitmapScaleRect;
        RectF rectF4 = this.editArea;
        rectF3.offsetTo(rectF4.left, rectF4.top);
        invalidate();
    }

    public final void setEditArea(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.editArea = rectF;
    }

    public final void setFixedMarginFormat(@NotNull SizeFormat format) {
        Intrinsics.checkNotNullParameter(format, "format");
        RectF rectF = isLandscape() ? new Size(format.getSize().getHeight(), format.getSize().getWidth()).toRectF() : SizeKt.toRectF(format.getSize());
        RectFKt.scaleRect(rectF, getScaleRatio());
        RectF rectF2 = this.editArea;
        float f = 2;
        float width = rectF2.left + ((rectF2.width() / f) - (rectF.width() / f));
        RectF rectF3 = this.editArea;
        rectF.offsetTo(width, rectF3.top + ((rectF3.height() / f) - (rectF.height() / f)));
        this.spaceArea.set(rectF);
        m47427d();
        invalidate();
    }

    public final void setMarginColor(int color) {
        this.marginStyle.setColor(color);
        invalidate();
    }

    public final void setPageMarginChangeCallback(@NotNull Function1<? super MarginPercent, Unit> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.callback = callback;
    }

    public final void setSmallWindowLayout(boolean z) {
        this.isSmallWindowLayout = z;
    }

    public final void updateMarginTemplate(@Nullable String templateResource) {
        this.marginStyle.setTemplateResource(templateResource);
        GeoLayoutMargin loadFromResOrDefault = GeoLayoutMargin.INSTANCE.loadFromResOrDefault(templateResource);
        this.marginLayout = loadFromResOrDefault;
        TemplateModel.INSTANCE.updateMarginTemplate(loadFromResOrDefault, true);
        this.marginLayout.setXferMode(new PorterDuffXfermode(PorterDuff.Mode.DARKEN));
        float scaleRatio = getScaleRatio();
        this.pageRectForMargin.set(this.pageScaleRectF);
        RectFKt.scale(this.pageRectForMargin, Float.valueOf(1 / scaleRatio));
        Matrix matrix = new Matrix();
        RectF rectF = this.pageScaleRectF;
        matrix.postScale(scaleRatio, scaleRatio, rectF.left, rectF.top);
        this.marginLayout.setMatrix(matrix);
        invalidate();
    }

    public final void updateMarginTemplateSpace(float space) {
        this.marginStyle.setTemplateSpace(space);
        invalidate();
    }

    public PageMarginAdjustView(@Nullable Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, -1);
    }

    public PageMarginAdjustView(@Nullable Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Paint paint = new Paint();
        this.bitmapPaint = paint;
        Paint paint2 = new Paint();
        this.originRectPaint = paint2;
        Paint paint3 = new Paint();
        this.strokePaint = paint3;
        Paint paint4 = new Paint();
        this.maskPaint = paint4;
        ResManager resManager = ResManager.INSTANCE;
        this.hitTestRadius = resManager.getDimension(C10651R.dimen.hit_test_radius);
        this.marginLayout = new GeoLayoutMargin();
        setLayerType(1, null);
        paint.setAntiAlias(true);
        paint.setFilterBitmap(true);
        paint2.setStyle(Paint.Style.STROKE);
        paint2.setStrokeWidth(resManager.getDimension(C7384R.dimen.dp_1));
        paint2.setColor(resManager.getColor(C10651R.color.overlay_04));
        paint3.setStyle(Paint.Style.STROKE);
        paint3.setStrokeWidth(resManager.getDimension(C7384R.dimen.dp_1));
        paint3.setColor(ThemeUtils.getColorById(C7996R.color.theme_primary_color_01));
        paint4.setColor(resManager.getColor(C10651R.color.black_mask));
        paint4.setStyle(Paint.Style.FILL);
        int dimens = resManager.getDimens(C7384R.dimen.dp_16);
        this.touchSize = dimens;
        this.halfTouchSize = dimens / resManager.getFloat(C10651R.dimen.twice);
        this.editArea = new RectF();
        this.spaceArea = new RectF();
        this.bitmapScaleRect = new RectF();
        this.marginStyle = new MarginStyle();
        this.downPointF = new PointF();
        this.downSpace = new RectF();
        this.pageScaleRectF = new RectF();
        this.pageOriginSize = new RectF();
        this.touchPointList = new ArrayList<>();
        this.minPageSizeFormat = SizeFormat.f45503A4;
        this.pageRectForMargin = new RectF();
        this.boxInfo = new BoxInfo();
    }
}
