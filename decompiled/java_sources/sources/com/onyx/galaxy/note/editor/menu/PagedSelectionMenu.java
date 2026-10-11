package com.onyx.galaxy.note.editor.menu;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.credentials.provider.utils.PrivilegedApp;
import androidx.fragment.app.FragmentManager;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.IntList;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.extension.TypeExtKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.ElementType;
import com.onyx.android.sdk.data.utils.IntListOption;
import com.onyx.android.sdk.data.utils.IntOption;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.event.StatisticsElementLinkCreateEvent;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.geometry.utils.BoxInfoUtils;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeOptions;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.shape.object.EditTextShape;
import com.onyx.android.sdk.note.common.shape.object.ImageShape;
import com.onyx.android.sdk.note.common.shape.object.LinkShape;
import com.onyx.android.sdk.note.common.shape.object.SvgShape;
import com.onyx.android.sdk.note.common.shape.universal.UniversalShape;
import com.onyx.android.sdk.note.common.utils.ShapeRectUtils;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.textbox.widget.TintImageView;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.display.RotationHandleHelper;
import com.onyx.android.sdk.universal.editor.events.note.AnnotationSelectionInfo;
import com.onyx.android.sdk.universal.editor.events.note.ShowExcerptPopupArgs;
import com.onyx.android.sdk.universal.editor.events.note.TextSelectionInfo;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.adapter.ColorViewAdapter;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.databinding.LayoutSelectionMenuPagedBinding;
import com.onyx.galaxy.note.editor.data.SelectionMenuType;
import com.onyx.galaxy.note.editor.menu.PagedSelectionMenu;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000Ô\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b#\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 \u009e\u00012\u00020\u0001:\u0002\u009e\u0001B\u0015\b\u0016\u0012\b\u0010\u0096\u0001\u001a\u00030\u0095\u0001¢\u0006\u0006\b\u0097\u0001\u0010\u0098\u0001B!\b\u0016\u0012\b\u0010\u0096\u0001\u001a\u00030\u0095\u0001\u0012\n\u0010\u009a\u0001\u001a\u0005\u0018\u00010\u0099\u0001¢\u0006\u0006\b\u0097\u0001\u0010\u009b\u0001B*\b\u0016\u0012\b\u0010\u0096\u0001\u001a\u00030\u0095\u0001\u0012\n\u0010\u009a\u0001\u001a\u0005\u0018\u00010\u0099\u0001\u0012\u0007\u0010\u009c\u0001\u001a\u00020\t¢\u0006\u0006\b\u0097\u0001\u0010\u009d\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0002H\u0003J\b\u0010\u0006\u001a\u00020\u0002H\u0002J\u0018\u0010\u000b\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0002J\b\u0010\f\u001a\u00020\u0002H\u0002J\u001a\u0010\u000f\u001a\u00020\u00022\b\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\n\u001a\u00020\tH\u0002J\u0010\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\tH\u0002J\b\u0010\u0012\u001a\u00020\u0002H\u0002J\u001a\u0010\u0015\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\t2\b\b\u0002\u0010\u0014\u001a\u00020\u0013H\u0002J\u0010\u0010\u0016\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0002J \u0010\u001c\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\r2\u0006\u0010\u001b\u001a\u00020\u001aH\u0002J\u001e\u0010\u001f\u001a\u00020\u00022\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\r0\u001d2\u0006\u0010\u001b\u001a\u00020\u001aH\u0002J\b\u0010 \u001a\u00020\u0002H\u0002J\b\u0010!\u001a\u00020\u0002H\u0002J\b\u0010\"\u001a\u00020\u0002H\u0002J\b\u0010#\u001a\u00020\u0002H\u0002J\b\u0010$\u001a\u00020\u0013H\u0002J\b\u0010%\u001a\u00020\u0013H\u0002J\b\u0010&\u001a\u00020\tH\u0002J\b\u0010'\u001a\u00020\tH\u0002J\u0018\u0010+\u001a\u00020\u00022\u0006\u0010)\u001a\u00020(2\u0006\u0010*\u001a\u00020(H\u0002J\u0010\u0010-\u001a\u00020\u00022\u0006\u0010,\u001a\u00020\tH\u0002J\u001c\u00100\u001a\b\u0012\u0004\u0012\u00020\u00170.2\f\u0010/\u001a\b\u0012\u0004\u0012\u00020\u00170.H\u0002J\u0010\u00102\u001a\u00020\u00132\u0006\u00101\u001a\u00020\u0017H\u0002J\b\u00103\u001a\u00020\u0002H\u0002J\n\u00105\u001a\u0004\u0018\u000104H\u0002J\u0010\u00107\u001a\u00020\u00022\u0006\u00106\u001a\u00020\u0013H\u0002J\b\u00108\u001a\u00020\u0002H\u0014J\u0006\u00109\u001a\u00020\u0002J\u0006\u0010:\u001a\u00020\u0002J\u0006\u0010;\u001a\u00020\u0002J\u001e\u0010?\u001a\u00020\u00022\f\u0010=\u001a\b\u0012\u0004\u0012\u00020<0.2\b\b\u0002\u0010>\u001a\u00020\u0013J\u000e\u0010B\u001a\u00020\u00022\u0006\u0010A\u001a\u00020@J\u000e\u0010D\u001a\u00020\u00022\u0006\u0010A\u001a\u00020CJ\u000e\u0010G\u001a\u00020\u00022\u0006\u0010F\u001a\u00020EJ\u001c\u0010J\u001a\u00020\u00022\f\u0010=\u001a\b\u0012\u0004\u0012\u00020<0.2\u0006\u0010I\u001a\u00020HJ\u001c\u0010K\u001a\u00020\u00022\f\u0010=\u001a\b\u0012\u0004\u0012\u00020<0.2\u0006\u0010I\u001a\u00020HJ$\u0010N\u001a\u00020\u00022\u0006\u0010)\u001a\u00020(2\u0006\u0010*\u001a\u00020(2\f\u0010M\u001a\b\u0012\u0004\u0012\u00020L0.J\u0006\u0010O\u001a\u00020\tJ\u0006\u0010P\u001a\u00020\tJ\u0006\u0010Q\u001a\u00020(J\u0006\u0010R\u001a\u00020\tJ\u000e\u0010T\u001a\u00020\u00022\u0006\u0010S\u001a\u00020\tJ\u000e\u0010W\u001a\u00020\u00022\u0006\u0010V\u001a\u00020UJ\u000e\u0010Z\u001a\u00020\u00022\u0006\u0010Y\u001a\u00020XJ\u0006\u0010[\u001a\u00020\u0013J\u0006\u0010\\\u001a\u00020\u0002R\u001b\u0010a\u001a\u00020]8@X\u0080\u0084\u0002¢\u0006\f\n\u0004\b0\u0010^\u001a\u0004\b_\u0010`R\u001b\u0010d\u001a\u00020\u00018@X\u0080\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010^\u001a\u0004\bb\u0010cR\u001b\u0010h\u001a\u00020e8@X\u0080\u0084\u0002¢\u0006\f\n\u0004\b#\u0010^\u001a\u0004\bf\u0010gR\u001b\u0010l\u001a\u00020i8@X\u0080\u0084\u0002¢\u0006\f\n\u0004\b\"\u0010^\u001a\u0004\bj\u0010kR\u001b\u0010p\u001a\u00020m8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0004\u0010^\u001a\u0004\bn\u0010oR\u001b\u0010t\u001a\u00020q8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0005\u0010^\u001a\u0004\br\u0010sR\u001c\u0010=\u001a\b\u0012\u0004\u0012\u00020<0.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bu\u0010vR\"\u0010)\u001a\u00020(8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\bw\u0010x\u001a\u0004\by\u0010z\"\u0004\b{\u0010|R\"\u0010*\u001a\u00020(8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b}\u0010x\u001a\u0004\b~\u0010z\"\u0004\b\u007f\u0010|R)\u0010\u0086\u0001\u001a\u00020\u00138\u0000@\u0000X\u0080\u000e¢\u0006\u0018\n\u0006\b\u0080\u0001\u0010\u0081\u0001\u001a\u0006\b\u0082\u0001\u0010\u0083\u0001\"\u0006\b\u0084\u0001\u0010\u0085\u0001R'\u0010\u008b\u0001\u001a\u00020L8\u0000@\u0000X\u0080\u000e¢\u0006\u0016\n\u0004\b%\u0010\u000b\u001a\u0006\b\u0087\u0001\u0010\u0088\u0001\"\u0006\b\u0089\u0001\u0010\u008a\u0001R'\u0010\u008e\u0001\u001a\u00020L8\u0000@\u0000X\u0080\u000e¢\u0006\u0016\n\u0004\b$\u0010\u000b\u001a\u0006\b\u008c\u0001\u0010\u0088\u0001\"\u0006\b\u008d\u0001\u0010\u008a\u0001R\u0018\u0010\u0090\u0001\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u001c\u0010\u008f\u0001R\u001a\u0010\u0092\u0001\u001a\u0004\u0018\u0001048\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u001f\u0010\u0091\u0001R\u0018\u0010\u0093\u0001\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0003\u0010\u008f\u0001R\u0019\u0010V\u001a\u0004\u0018\u00010U8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b!\u0010\u0094\u0001¨\u0006\u009f\u0001"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;", "Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;", "", "t", "j", C4921e.f26537n, "E", "Landroid/widget/ImageView;", "iconView", "", "style", "F", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "Landroid/view/View;", "view", SardineUtil.DEFAULT_NAMESPACE_PREFIX, "color", "e", "x", "", "changeColor", "y", C6998g.f39679a, "Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;", "menu", "itemView", "Landroid/view/ViewGroup;", "menuRoot", "r", "", "menuViews", "s", "v", "u", "i", C6999h.f39688c, "q", "p", "getMenuWidth", "getMenuHeight", "Landroid/graphics/RectF;", "selectionRect", "limitRect", "B", "menuViewWidth", "setArrowLocation", "", "menus", C6997f.f39671c, "menuType", "A", "w", "Lcom/onyx/android/sdk/data/ElementType;", "getElementTypeByShape", "isReversed", "setWrapperLayoutOrder", "onDetachedFromWindow", "cancel", "hide", "update", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shapes", "forceUpdate", "updateSelectedShapes", "Lcom/onyx/android/sdk/universal/editor/events/note/TextSelectionInfo;", PrivilegedApp.f6532i, "updateTextSelection", "Lcom/onyx/android/sdk/universal/editor/events/note/AnnotationSelectionInfo;", "updateAnnotationSelection", "Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupArgs;", "args", "updateExcerptSelection", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualPageBoxInfo", "updateEditTextShapeSelection", "updateUniversalShapeSelection", "", "noteOffset", "updateLocation", "getAnnotationMenuHeight", "getAnnotationMenuWidth", "getVisibleContentRectF", "getArrowDirection", "maxMenuWidth", "setMaxMenuWidth", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "setEditorBundle", "Landroidx/fragment/app/FragmentManager;", "fragmentManager", "setFragmentManager", "isOpen", "flushUI", "Lcom/onyx/galaxy/note/databinding/LayoutSelectionMenuPagedBinding;", "Lkotlin/Lazy;", "getBinding$note_overseasRelease", "()Lcom/onyx/galaxy/note/databinding/LayoutSelectionMenuPagedBinding;", "binding", "getMenuContainer$note_overseasRelease", "()Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;", "menuContainer", "Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;", "getHandler$note_overseasRelease", "()Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;", Constants.TRANSLET_OUTPUT_PNAME, "Lcom/onyx/galaxy/note/editor/menu/PrimarySelectionMenuAdapter;", "getPrimaryMenuAdapter$note_overseasRelease", "()Lcom/onyx/galaxy/note/editor/menu/PrimarySelectionMenuAdapter;", "primaryMenuAdapter", "Lcom/onyx/galaxy/note/editor/menu/SecondarySelectionMenuAdapter;", "getSecondaryMenuAdapter", "()Lcom/onyx/galaxy/note/editor/menu/SecondarySelectionMenuAdapter;", "secondaryMenuAdapter", "Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;", "getAnnotationColorAdapter", "()Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;", "annotationColorAdapter", "l", "Ljava/util/List;", "m", "Landroid/graphics/RectF;", "getSelectionRect$note_overseasRelease", "()Landroid/graphics/RectF;", "setSelectionRect$note_overseasRelease", "(Landroid/graphics/RectF;)V", GoogleApiAvailabilityLight.f29016b, "getLimitRect$note_overseasRelease", "setLimitRect$note_overseasRelease", C4921e.f26528e, Constants.HASIDCALL_INDEX_SIG, "getFixMenuPosition$note_overseasRelease", Constants.BOOLEAN_VALUE_SIG, "setFixMenuPosition$note_overseasRelease", "(Z)V", "fixMenuPosition", "getOffsetX$note_overseasRelease", "()F", "setOffsetX$note_overseasRelease", "(F)V", "offsetX", "getOffsetY$note_overseasRelease", "setOffsetY$note_overseasRelease", "offsetY", "I", "arrowDirection", "Lcom/onyx/android/sdk/data/ElementType;", "currElementType", "annotationColorStyle", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "Landroid/content/Context;", "context", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nPagedSelectionMenu.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PagedSelectionMenu.kt\ncom/onyx/galaxy/note/editor/menu/PagedSelectionMenu\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,639:1\n1855#2,2:640\n800#2,11:647\n1549#2:658\n1620#2,3:659\n1855#2:662\n1856#2:664\n41#3,5:642\n1#4:663\n*S KotlinDebug\n*F\n+ 1 PagedSelectionMenu.kt\ncom/onyx/galaxy/note/editor/menu/PagedSelectionMenu\n*L\n281#1:640,2\n401#1:647,11\n405#1:658\n405#1:659,3\n519#1:662\n519#1:664\n357#1:642,5\n*E\n"})
/* loaded from: classes9.dex */
public final class PagedSelectionMenu extends TintLinearLayout {
    public static final int BOTTOM = 2;
    public static final int TOP = 1;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Lazy menuContainer;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Lazy handler;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final Lazy primaryMenuAdapter;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final Lazy secondaryMenuAdapter;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final Lazy annotationColorAdapter;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public List<? extends Shape> shapes;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public RectF selectionRect;

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public RectF limitRect;

    /* renamed from: o, reason: from kotlin metadata */
    public boolean fixMenuPosition;

    /* renamed from: p, reason: from kotlin metadata */
    public float offsetX;

    /* renamed from: q, reason: from kotlin metadata */
    public float offsetY;

    /* renamed from: r, reason: from kotlin metadata */
    public int arrowDirection;

    /* renamed from: s, reason: from kotlin metadata */
    @Nullable
    public ElementType currElementType;

    /* renamed from: t, reason: from kotlin metadata */
    public int annotationColorStyle;

    /* renamed from: u, reason: from kotlin metadata */
    @Nullable
    public EditorBundle editorBundle;

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[SelectionMenuType.values().length];
            try {
                iArr[SelectionMenuType.HIGHLIGHT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[SelectionMenuType.UNDERLINE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[SelectionMenuType.WAVY_LINE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PagedSelectionMenu(@NotNull Context context) {
        super(context);
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        Lazy lazy5;
        Lazy lazy6;
        List<? extends Shape> emptyList;
        Intrinsics.checkNotNullParameter(context, "context");
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<LayoutSelectionMenuPagedBinding>() { // from class: com.onyx.galaxy.note.editor.menu.PagedSelectionMenu$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final LayoutSelectionMenuPagedBinding invoke() {
                return LayoutSelectionMenuPagedBinding.inflate(LayoutInflater.from(PagedSelectionMenu.this.getContext()));
            }
        });
        this.binding = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<TintLinearLayout>() { // from class: com.onyx.galaxy.note.editor.menu.PagedSelectionMenu$menuContainer$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final TintLinearLayout invoke() {
                return PagedSelectionMenu.this.getBinding$note_overseasRelease().menuContainer;
            }
        });
        this.menuContainer = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(PagedSelectionMenu$handler$2.INSTANCE);
        this.handler = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(new Function0<PrimarySelectionMenuAdapter>() { // from class: com.onyx.galaxy.note.editor.menu.PagedSelectionMenu$primaryMenuAdapter$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PrimarySelectionMenuAdapter invoke() {
                Context context2 = PagedSelectionMenu.this.getContext();
                Intrinsics.checkNotNullExpressionValue(context2, "getContext(...)");
                return new PrimarySelectionMenuAdapter(context2);
            }
        });
        this.primaryMenuAdapter = lazy4;
        lazy5 = LazyKt__LazyJVMKt.lazy(new Function0<SecondarySelectionMenuAdapter>() { // from class: com.onyx.galaxy.note.editor.menu.PagedSelectionMenu$secondaryMenuAdapter$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final SecondarySelectionMenuAdapter invoke() {
                Context context2 = PagedSelectionMenu.this.getContext();
                Intrinsics.checkNotNullExpressionValue(context2, "getContext(...)");
                return new SecondarySelectionMenuAdapter(context2);
            }
        });
        this.secondaryMenuAdapter = lazy5;
        lazy6 = LazyKt__LazyJVMKt.lazy(PagedSelectionMenu$annotationColorAdapter$2.INSTANCE);
        this.annotationColorAdapter = lazy6;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.shapes = emptyList;
        this.selectionRect = new RectF();
        this.limitRect = new RectF();
        this.arrowDirection = 2;
        this.annotationColorStyle = SelectionMenuType.INSTANCE.getAnnotationStyleOption().get();
        m46404t();
        m46398j();
        m46399k();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ColorViewAdapter getAnnotationColorAdapter() {
        return (ColorViewAdapter) this.annotationColorAdapter.getValue();
    }

    private final ElementType getElementTypeByShape() {
        Object firstOrNull;
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) this.shapes);
        Shape shape = (Shape) firstOrNull;
        if (shape == null) {
            return null;
        }
        if (shape instanceof ImageShape) {
            return ElementType.PHOTO;
        }
        if (shape instanceof SvgShape) {
            return ElementType.STICKER;
        }
        if (shape instanceof EditTextShape) {
            return ElementType.TEXT;
        }
        if (shape instanceof UniversalShape) {
            return ElementType.GRAPH;
        }
        if (!(shape instanceof LinkShape) && ShapeTypes.INSTANCE.isPenShape(shape)) {
            return ElementType.HANDWRITING;
        }
        return ElementType.PAGE;
    }

    private final int getMenuHeight() {
        int contentHeight = getPrimaryMenuAdapter$note_overseasRelease().getContentHeight();
        if (!(m46401q() || m46400p())) {
            return contentHeight;
        }
        int contentHeight2 = getSecondaryMenuAdapter().getContentHeight();
        ResManager resManager = ResManager.INSTANCE;
        return Math.max(contentHeight, Math.max(contentHeight2 + resManager.getDimens(C7384R.dimen.dp_32), m46400p() ? resManager.getDimens(C7384R.dimen.dp_32) + getAnnotationMenuHeight() : 0));
    }

    private final int getMenuWidth() {
        int contentWidth = getPrimaryMenuAdapter$note_overseasRelease().getContentWidth();
        ResManager resManager = ResManager.INSTANCE;
        int dimens = contentWidth + resManager.getDimens(C7384R.dimen.dp_32);
        if (m46401q() || m46400p()) {
            return Math.max(dimens, Math.max(getSecondaryMenuAdapter().getContentWidth() + resManager.getDimens(C7384R.dimen.dp_32), m46400p() ? getAnnotationMenuWidth() + resManager.getDimens(C7384R.dimen.dp_32) : 0));
        }
        return dimens;
    }

    private final SecondarySelectionMenuAdapter getSecondaryMenuAdapter() {
        return (SecondarySelectionMenuAdapter) this.secondaryMenuAdapter.getValue();
    }

    /* renamed from: l */
    public static final boolean m46382l(View view, MotionEvent motionEvent) {
        return true;
    }

    /* renamed from: m */
    public static final void m46383m(PagedSelectionMenu this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        m46386z(this$0, 0, false, 2, null);
    }

    /* renamed from: n */
    public static final void m46384n(PagedSelectionMenu this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        m46386z(this$0, 1, false, 2, null);
    }

    /* renamed from: o */
    public static final void m46385o(PagedSelectionMenu this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        m46386z(this$0, 3, false, 2, null);
    }

    private final void setArrowLocation(int menuViewWidth) {
        float coerceIn;
        float centerX = this.selectionRect.centerX();
        float dimens = ResManager.INSTANCE.getDimens(C7384R.dimen.dp_34);
        coerceIn = RangesKt___RangesKt.coerceIn(centerX, getX() + dimens, (getX() + menuViewWidth) - dimens);
        getBinding$note_overseasRelease().arrowView.setTranslationX(coerceIn - (getX() + (menuViewWidth / 2)));
    }

    private final void setWrapperLayoutOrder(boolean isReversed) {
        int i;
        int[] iArr;
        float dimension;
        ConstraintSet constraintSet = new ConstraintSet();
        constraintSet.clone(getBinding$note_overseasRelease().wrapper);
        if (isReversed) {
            i = C10651R.drawable.icon_menu_arrow_top;
            iArr = new int[]{C10651R.id.arrowView, C10651R.id.fl_primary_menu, C10651R.id.fl_sub_menu, C10651R.id.cl_annotation_menu};
            dimension = ResManager.INSTANCE.getDimension(C7384R.dimen.dp_7);
        } else {
            i = C10651R.drawable.icon_menu_arrow_bottom;
            iArr = new int[]{C10651R.id.cl_annotation_menu, C10651R.id.fl_sub_menu, C10651R.id.fl_primary_menu, C10651R.id.arrowView};
            dimension = 0 - ResManager.INSTANCE.getDimension(C7384R.dimen.dp_7);
        }
        int length = iArr.length;
        int i2 = 0;
        while (i2 < length) {
            constraintSet.connect(iArr[i2], 3, i2 == 0 ? 0 : iArr[i2 - 1], i2 == 0 ? 3 : 4);
            i2++;
        }
        constraintSet.applyTo(getBinding$note_overseasRelease().wrapper);
        getBinding$note_overseasRelease().arrowView.setImageDrawable(ThemeUtils.getThemeDrawable(i));
        getBinding$note_overseasRelease().arrowView.bringToFront();
        getBinding$note_overseasRelease().arrowView.setTranslationY(dimension);
    }

    public static /* synthetic */ void updateSelectedShapes$default(PagedSelectionMenu pagedSelectionMenu, List list, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        pagedSelectionMenu.updateSelectedShapes(list, z);
    }

    /* renamed from: z */
    public static /* synthetic */ void m46386z(PagedSelectionMenu pagedSelectionMenu, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = true;
        }
        pagedSelectionMenu.m46409y(i, z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: A */
    public final boolean m46387A(SelectionMenuType menuType) {
        SelectionMenuType.Companion companion = SelectionMenuType.INSTANCE;
        if (!companion.isAnnotationMenuType(menuType) || companion.isRootMenuType(menuType)) {
            return false;
        }
        NoteConfigManager.INSTANCE.saveFrequentlyAnnotationMenu(((SelectionMenuType) SelectionMenuType.getEntries().get(menuType.getParentMenu())).name(), menuType.name());
        return true;
    }

    /* renamed from: B */
    public final void m46388B(RectF selectionRect, RectF limitRect) {
        this.selectionRect = selectionRect;
        this.limitRect = limitRect;
        this.arrowDirection = 2;
        int menuWidth = getMenuWidth();
        int contentHeight = getPrimaryMenuAdapter$note_overseasRelease().getContentHeight();
        if (m46401q()) {
            contentHeight += getSecondaryMenuAdapter().getHeight();
        }
        if (m46400p()) {
            contentHeight += getAnnotationMenuHeight();
        }
        float f = menuWidth;
        float centerX = selectionRect.centerX() - (f / 2.0f);
        float f2 = selectionRect.top;
        float f3 = contentHeight;
        float f4 = f2 - f3;
        if (f4 < limitRect.top || f4 > f2) {
            float f5 = selectionRect.bottom;
            if (f5 + f3 < limitRect.bottom) {
                this.arrowDirection = 1;
                f4 = f5;
            }
        }
        RectF rectF = new RectF(centerX, f4, centerX + f, f3 + f4);
        boolean limit = RectFKt.limit(rectF, limitRect);
        boolean z = getX() + f > limitRect.right;
        if (limit) {
            centerX = rectF.left;
            f4 = rectF.top;
        }
        if (!this.fixMenuPosition || limit || z) {
            setX(centerX);
            setY(f4);
        }
        setArrowLocation(menuWidth);
        setWrapperLayoutOrder(this.arrowDirection == 1);
    }

    /* renamed from: C */
    public final void m46389C() {
        m46390D(getMenuContainer$note_overseasRelease().getChildAt(0), 0);
        m46390D(getMenuContainer$note_overseasRelease().getChildAt(2), 1);
        m46390D(getMenuContainer$note_overseasRelease().getChildAt(4), 3);
    }

    /* renamed from: D */
    public final void m46390D(View view, int style) {
        ImageView imageView = view instanceof ImageView ? (ImageView) view : null;
        if (imageView == null) {
            return;
        }
        Drawable drawable = imageView.getDrawable();
        LayerDrawable layerDrawable = drawable instanceof LayerDrawable ? (LayerDrawable) drawable : null;
        if (layerDrawable == null) {
            return;
        }
        Drawable drawable2 = layerDrawable.getDrawable(0);
        Drawable drawable3 = layerDrawable.getDrawable(1);
        int i = SelectionMenuType.INSTANCE.getAnnotationColorOption(style).get();
        int colorById = ThemeUtils.getColorById(C7996R.color.theme_icon_color_01);
        drawable2.setTint(i);
        drawable3.setTint(colorById);
    }

    /* renamed from: E */
    public final void m46391E() {
        TintImageView ivHighlight = getBinding$note_overseasRelease().ivHighlight;
        Intrinsics.checkNotNullExpressionValue(ivHighlight, "ivHighlight");
        m46392F(ivHighlight, 0);
        TintImageView ivUnderline = getBinding$note_overseasRelease().ivUnderline;
        Intrinsics.checkNotNullExpressionValue(ivUnderline, "ivUnderline");
        m46392F(ivUnderline, 1);
        TintImageView ivWavyLine = getBinding$note_overseasRelease().ivWavyLine;
        Intrinsics.checkNotNullExpressionValue(ivWavyLine, "ivWavyLine");
        m46392F(ivWavyLine, 3);
    }

    /* renamed from: F */
    public final void m46392F(ImageView iconView, int style) {
        int colorById;
        boolean z = this.annotationColorStyle == style;
        Drawable drawable = iconView.getDrawable();
        Intrinsics.checkNotNull(drawable, "null cannot be cast to non-null type android.graphics.drawable.LayerDrawable");
        Drawable drawable2 = ((LayerDrawable) drawable).getDrawable(0);
        Drawable drawable3 = iconView.getDrawable();
        Intrinsics.checkNotNull(drawable3, "null cannot be cast to non-null type android.graphics.drawable.LayerDrawable");
        Drawable drawable4 = ((LayerDrawable) drawable3).getDrawable(1);
        if (z) {
            colorById = m46395g(style);
        } else {
            colorById = ThemeUtils.getColorById(style == 0 ? C7996R.color.theme_text_color_04 : C7996R.color.theme_icon_color_03);
        }
        int colorById2 = z ? ThemeUtils.getColorById(C7996R.color.theme_icon_color_01) : ThemeUtils.getColorById(C7996R.color.theme_icon_color_03);
        drawable2.setTint(colorById);
        drawable4.setTint(colorById2);
    }

    public final void cancel() {
        List emptyList;
        hide();
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        updateSelectedShapes$default(this, emptyList, false, 2, null);
    }

    /* renamed from: e */
    public final void m46393e(int color) {
        BaseSelectionMenuHandler activeHandler = getHandler$note_overseasRelease().getActiveHandler();
        int i = this.annotationColorStyle;
        if (i == -1) {
            i = 0;
        }
        if (activeHandler instanceof AnnotationSelectionMenuHandler) {
            ((AnnotationSelectionMenuHandler) activeHandler).changeAnnotation(i, color);
        } else if (activeHandler instanceof TextSelectionMenuHandler) {
            ((TextSelectionMenuHandler) activeHandler).changeAnnotation(i, color);
        }
        SelectionMenuType.INSTANCE.getAnnotationColorOption(i).put(color);
        m46389C();
        m46391E();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: f */
    public final List<SelectionMenuType> m46394f(List<? extends SelectionMenuType> menus) {
        Object obj;
        for (SelectionMenuType selectionMenuType : menus) {
            int i = WhenMappings.$EnumSwitchMapping$0[selectionMenuType.ordinal()];
            if (i == 1 || i == 2 || i == 3) {
                String frequentlyAnnotationMenu = NoteConfigManager.INSTANCE.getFrequentlyAnnotationMenu(selectionMenuType.name());
                if (frequentlyAnnotationMenu.length() > 0) {
                    Iterator<E> it2 = SelectionMenuType.getEntries().iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            obj = null;
                            break;
                        }
                        obj = it2.next();
                        if (Intrinsics.areEqual(((SelectionMenuType) obj).name(), frequentlyAnnotationMenu)) {
                            break;
                        }
                    }
                    SelectionMenuType selectionMenuType2 = (SelectionMenuType) obj;
                    if (selectionMenuType2 != null) {
                        selectionMenuType.setImageResId(selectionMenuType2.getImageResId());
                    }
                }
            }
        }
        return menus;
    }

    public final void flushUI() {
        getBinding$note_overseasRelease().rvAnnotationColor.setAdapter(getAnnotationColorAdapter());
    }

    /* renamed from: g */
    public final int m46395g(int style) {
        SelectionMenuType.Companion companion = SelectionMenuType.INSTANCE;
        Integer num = companion.getAnnotationColorListOption(style).getValue().get(companion.getAnnotationColorIndexOption(style).get());
        Intrinsics.checkNotNullExpressionValue(num, "get(...)");
        return num.intValue();
    }

    public final int getAnnotationMenuHeight() {
        return ResManager.INSTANCE.getDimens(C7384R.dimen.dp_40);
    }

    public final int getAnnotationMenuWidth() {
        return ResManager.INSTANCE.getDimens(C7384R.dimen.dp_296);
    }

    public final int getArrowDirection() {
        return this.arrowDirection;
    }

    @NotNull
    public final LayoutSelectionMenuPagedBinding getBinding$note_overseasRelease() {
        return (LayoutSelectionMenuPagedBinding) this.binding.getValue();
    }

    /* renamed from: getFixMenuPosition$note_overseasRelease, reason: from getter */
    public final boolean getFixMenuPosition() {
        return this.fixMenuPosition;
    }

    @NotNull
    public final SelectionMenuHandlerManager getHandler$note_overseasRelease() {
        return (SelectionMenuHandlerManager) this.handler.getValue();
    }

    @NotNull
    /* renamed from: getLimitRect$note_overseasRelease, reason: from getter */
    public final RectF getLimitRect() {
        return this.limitRect;
    }

    @NotNull
    public final TintLinearLayout getMenuContainer$note_overseasRelease() {
        return (TintLinearLayout) this.menuContainer.getValue();
    }

    /* renamed from: getOffsetX$note_overseasRelease, reason: from getter */
    public final float getOffsetX() {
        return this.offsetX;
    }

    /* renamed from: getOffsetY$note_overseasRelease, reason: from getter */
    public final float getOffsetY() {
        return this.offsetY;
    }

    @NotNull
    public final PrimarySelectionMenuAdapter getPrimaryMenuAdapter$note_overseasRelease() {
        return (PrimarySelectionMenuAdapter) this.primaryMenuAdapter.getValue();
    }

    @NotNull
    /* renamed from: getSelectionRect$note_overseasRelease, reason: from getter */
    public final RectF getSelectionRect() {
        return this.selectionRect;
    }

    @NotNull
    public final RectF getVisibleContentRectF() {
        return new RectF(getX(), getY(), getX() + getMenuWidth(), getY() + getMenuHeight());
    }

    /* renamed from: h */
    public final void m46396h() {
        getBinding$note_overseasRelease().clAnnotationMenu.setVisibility(8);
    }

    public final void hide() {
        m46397i();
        m46396h();
        ViewKt.setViewVisibleOrInvisible(this, false);
    }

    /* renamed from: i */
    public final void m46397i() {
        getBinding$note_overseasRelease().subMenuContainer.removeAllViews();
        getBinding$note_overseasRelease().flSubMenu.setVisibility(8);
    }

    public final boolean isOpen() {
        return ViewKt.isVisible(this) || (this.shapes.isEmpty() ^ true);
    }

    /* renamed from: j */
    public final void m46398j() {
        getHandler$note_overseasRelease().setMenuView$note_overseasRelease(this);
        getPrimaryMenuAdapter$note_overseasRelease().setCallback(new SelectionMenuCallback() { // from class: com.onyx.galaxy.note.editor.menu.PagedSelectionMenu$initAdapterAndHandler$1
            @Override // com.onyx.galaxy.note.editor.menu.SelectionMenuCallback
            public void onMenuClick(@NotNull SelectionMenuType menu, @NotNull View itemView) {
                Intrinsics.checkNotNullParameter(menu, "menu");
                Intrinsics.checkNotNullParameter(itemView, "itemView");
                PagedSelectionMenu pagedSelectionMenu = PagedSelectionMenu.this;
                TintLinearLayout menuContainer$note_overseasRelease = pagedSelectionMenu.getMenuContainer$note_overseasRelease();
                Intrinsics.checkNotNullExpressionValue(menuContainer$note_overseasRelease, "<get-menuContainer>(...)");
                pagedSelectionMenu.m46402r(menu, itemView, menuContainer$note_overseasRelease);
                if (menu == SelectionMenuType.CREATE_LINK) {
                    PagedSelectionMenu.this.m46407w();
                }
            }

            @Override // com.onyx.galaxy.note.editor.menu.SelectionMenuCallback
            public void onMenuUpdated(@NotNull List<View> menuViews) {
                Intrinsics.checkNotNullParameter(menuViews, "menuViews");
                PagedSelectionMenu pagedSelectionMenu = PagedSelectionMenu.this;
                TintLinearLayout menuContainer$note_overseasRelease = pagedSelectionMenu.getMenuContainer$note_overseasRelease();
                Intrinsics.checkNotNullExpressionValue(menuContainer$note_overseasRelease, "<get-menuContainer>(...)");
                pagedSelectionMenu.m46403s(menuViews, menuContainer$note_overseasRelease);
            }
        });
        getSecondaryMenuAdapter().setCallback(new SelectionMenuCallback() { // from class: com.onyx.galaxy.note.editor.menu.PagedSelectionMenu$initAdapterAndHandler$2
            @Override // com.onyx.galaxy.note.editor.menu.SelectionMenuCallback
            public void onMenuClick(@NotNull SelectionMenuType menu, @NotNull View itemView) {
                Intrinsics.checkNotNullParameter(menu, "menu");
                Intrinsics.checkNotNullParameter(itemView, "itemView");
                PagedSelectionMenu pagedSelectionMenu = PagedSelectionMenu.this;
                TintLinearLayout subMenuContainer = pagedSelectionMenu.getBinding$note_overseasRelease().subMenuContainer;
                Intrinsics.checkNotNullExpressionValue(subMenuContainer, "subMenuContainer");
                pagedSelectionMenu.m46402r(menu, itemView, subMenuContainer);
                if (menu == SelectionMenuType.CREATE_LINK) {
                    PagedSelectionMenu.this.m46407w();
                }
            }

            @Override // com.onyx.galaxy.note.editor.menu.SelectionMenuCallback
            public void onMenuUpdated(@NotNull List<View> menuViews) {
                Intrinsics.checkNotNullParameter(menuViews, "menuViews");
                PagedSelectionMenu pagedSelectionMenu = PagedSelectionMenu.this;
                TintLinearLayout subMenuContainer = pagedSelectionMenu.getBinding$note_overseasRelease().subMenuContainer;
                Intrinsics.checkNotNullExpressionValue(subMenuContainer, "subMenuContainer");
                pagedSelectionMenu.m46403s(menuViews, subMenuContainer);
            }
        });
    }

    @SuppressLint({"ClickableViewAccessibility"})
    /* renamed from: k */
    public final void m46399k() {
        m46391E();
        getBinding$note_overseasRelease().clAnnotationMenu.setOnTouchListener(new View.OnTouchListener() { // from class: com.sunia.HTREnginev2.duk
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean m46382l;
                m46382l = PagedSelectionMenu.m46382l(view, motionEvent);
                return m46382l;
            }
        });
        TintImageView ivHighlight = getBinding$note_overseasRelease().ivHighlight;
        Intrinsics.checkNotNullExpressionValue(ivHighlight, "ivHighlight");
        com.onyx.android.sdk.extension.ViewKt.click$default(ivHighlight, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.euk
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PagedSelectionMenu.m46383m(PagedSelectionMenu.this, view);
            }
        }, 1, null);
        TintImageView ivUnderline = getBinding$note_overseasRelease().ivUnderline;
        Intrinsics.checkNotNullExpressionValue(ivUnderline, "ivUnderline");
        com.onyx.android.sdk.extension.ViewKt.click$default(ivUnderline, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.fuk
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PagedSelectionMenu.m46384n(PagedSelectionMenu.this, view);
            }
        }, 1, null);
        TintImageView ivWavyLine = getBinding$note_overseasRelease().ivWavyLine;
        Intrinsics.checkNotNullExpressionValue(ivWavyLine, "ivWavyLine");
        com.onyx.android.sdk.extension.ViewKt.click$default(ivWavyLine, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.guk
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PagedSelectionMenu.m46385o(PagedSelectionMenu.this, view);
            }
        }, 1, null);
        getAnnotationColorAdapter().setPickOpaqueColorOnly(false);
        getAnnotationColorAdapter().setColorViewListener(new ColorViewAdapter.ColorViewListener() { // from class: com.onyx.galaxy.note.editor.menu.PagedSelectionMenu$initAnnotationMenu$5
            @Override // com.onyx.galaxy.note.category.view.adapter.ColorViewAdapter.ColorViewListener
            public void onDismissColorPicker() {
                ColorViewAdapter.ColorViewListener.DefaultImpls.onDismissColorPicker(this);
            }

            @Override // com.onyx.galaxy.note.category.view.adapter.ColorViewAdapter.ColorViewListener
            public void onSelectColor(int color) {
                int i;
                int i2;
                ColorViewAdapter annotationColorAdapter;
                int i3;
                ColorViewAdapter annotationColorAdapter2;
                i = PagedSelectionMenu.this.annotationColorStyle;
                if (i == -1) {
                    PagedSelectionMenu.this.annotationColorStyle = 0;
                }
                SelectionMenuType.Companion companion = SelectionMenuType.INSTANCE;
                i2 = PagedSelectionMenu.this.annotationColorStyle;
                IntListOption annotationColorListOption = companion.getAnnotationColorListOption(i2);
                annotationColorAdapter = PagedSelectionMenu.this.getAnnotationColorAdapter();
                annotationColorListOption.set(TypeExtKt.toIntList(annotationColorAdapter.getItems()));
                i3 = PagedSelectionMenu.this.annotationColorStyle;
                IntOption annotationColorIndexOption = companion.getAnnotationColorIndexOption(i3);
                annotationColorAdapter2 = PagedSelectionMenu.this.getAnnotationColorAdapter();
                annotationColorIndexOption.put(annotationColorAdapter2.getSelectedPosition());
                PagedSelectionMenu.this.m46393e(color);
            }

            @Override // com.onyx.galaxy.note.category.view.adapter.ColorViewAdapter.ColorViewListener
            public void onShowColorPicker() {
                ColorViewAdapter.ColorViewListener.DefaultImpls.onShowColorPicker(this);
            }
        });
        getBinding$note_overseasRelease().rvAnnotationColor.setAdapter(getAnnotationColorAdapter());
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        getPrimaryMenuAdapter$note_overseasRelease().release();
        getSecondaryMenuAdapter().release();
        getHandler$note_overseasRelease().release();
        super.onDetachedFromWindow();
    }

    /* renamed from: p */
    public final boolean m46400p() {
        return ViewKt.isVisible(getBinding$note_overseasRelease().clAnnotationMenu);
    }

    /* renamed from: q */
    public final boolean m46401q() {
        return ViewKt.isVisible(getBinding$note_overseasRelease().flSubMenu);
    }

    /* renamed from: r */
    public final void m46402r(SelectionMenuType menu, View itemView, ViewGroup menuRoot) {
        if (menu == SelectionMenuType.LAST_PAGE || menu == SelectionMenuType.NEXT_PAGE) {
            menuRoot.removeAllViews();
        }
        getHandler$note_overseasRelease().onMenuClick(menu, itemView);
        if (m46387A(menu)) {
            getPrimaryMenuAdapter$note_overseasRelease().setMenus(m46394f(getPrimaryMenuAdapter$note_overseasRelease().getMenus()));
        }
    }

    /* renamed from: s */
    public final void m46403s(List<View> menuViews, ViewGroup menuRoot) {
        menuRoot.removeAllViews();
        Iterator<T> it2 = menuViews.iterator();
        while (it2.hasNext()) {
            menuRoot.addView((View) it2.next());
        }
        if (this.selectionRect.isEmpty() || !(!menuViews.isEmpty())) {
            return;
        }
        m46388B(this.selectionRect, this.limitRect);
    }

    public final void setEditorBundle(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.editorBundle = editorBundle;
        getHandler$note_overseasRelease().setEditorBundle$note_overseasRelease(editorBundle);
    }

    public final void setFixMenuPosition$note_overseasRelease(boolean z) {
        this.fixMenuPosition = z;
    }

    public final void setFragmentManager(@NotNull FragmentManager fragmentManager) {
        Intrinsics.checkNotNullParameter(fragmentManager, "fragmentManager");
        getHandler$note_overseasRelease().setFragmentManager$note_overseasRelease(fragmentManager);
    }

    public final void setLimitRect$note_overseasRelease(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.limitRect = rectF;
    }

    public final void setMaxMenuWidth(int maxMenuWidth) {
        int dimens = maxMenuWidth - ResManager.INSTANCE.getDimens(C7384R.dimen.dp_150);
        getPrimaryMenuAdapter$note_overseasRelease().setMaxWidth(dimens);
        getSecondaryMenuAdapter().setMaxWidth(dimens);
        getBinding$note_overseasRelease().clAnnotationMenu.setMaxHeight(maxMenuWidth);
    }

    public final void setOffsetX$note_overseasRelease(float f) {
        this.offsetX = f;
    }

    public final void setOffsetY$note_overseasRelease(float f) {
        this.offsetY = f;
    }

    public final void setSelectionRect$note_overseasRelease(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.selectionRect = rectF;
    }

    /* renamed from: t */
    public final void m46404t() {
        setOrientation(0);
        setGravity(17);
        addView(getBinding$note_overseasRelease().getRoot());
        m46397i();
        m46396h();
    }

    /* renamed from: u */
    public final void m46405u() {
        getBinding$note_overseasRelease().clAnnotationMenu.setVisibility(0);
    }

    public final void update() {
        updateSelectedShapes(this.shapes, true);
    }

    public final void updateAnnotationSelection(@NotNull AnnotationSelectionInfo info) {
        Intrinsics.checkNotNullParameter(info, "info");
        getHandler$note_overseasRelease().activeProvider(SelectionMenuHandlerManager.ANNOTATION_SELECTION);
        getHandler$note_overseasRelease().updateAnnotationSelection(info);
        getPrimaryMenuAdapter$note_overseasRelease().setMenus(m46394f(SelectionMenuType.INSTANCE.getAnnotationMenuTypes()));
        Integer style = info.getStyle();
        int intValue = style != null ? style.intValue() : -1;
        boolean z = info.getColor() != null;
        if (intValue == -1) {
            m46408x();
        } else {
            m46409y(intValue, z);
        }
        m46405u();
        this.selectionRect = info.getRenderRectF();
    }

    public final void updateEditTextShapeSelection(@NotNull List<? extends Shape> shapes, @NotNull BoxInfo virtualPageBoxInfo) {
        List<? extends SelectionMenuType> mutableList;
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        Intrinsics.checkNotNullParameter(virtualPageBoxInfo, "virtualPageBoxInfo");
        getHandler$note_overseasRelease().activeProvider(SelectionMenuHandlerManager.EDIT_TEXT_SHAPE_SELECTION);
        getHandler$note_overseasRelease().updateEditTextShapeSelection(virtualPageBoxInfo, shapes);
        PrimarySelectionMenuAdapter primaryMenuAdapter$note_overseasRelease = getPrimaryMenuAdapter$note_overseasRelease();
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) ShapeMenuProvider.INSTANCE.getShapeMenus(shapes));
        mutableList.remove(SelectionMenuType.EDIT);
        primaryMenuAdapter$note_overseasRelease.setMenus(mutableList);
        this.selectionRect = BoxInfoUtils.INSTANCE.mapToScreenRectF(ShapeRectUtils.INSTANCE.getBoundingRect(shapes), virtualPageBoxInfo);
        this.currElementType = ElementType.TEXT;
    }

    public final void updateExcerptSelection(@NotNull ShowExcerptPopupArgs args) {
        RectF copy;
        List<TouchPoint> mutableListOf;
        Intrinsics.checkNotNullParameter(args, "args");
        getHandler$note_overseasRelease().activeProvider(SelectionMenuHandlerManager.EXCERPT_SELECTION);
        getHandler$note_overseasRelease().updateExcerptSelection(args);
        getPrimaryMenuAdapter$note_overseasRelease().setMenus(SelectionMenuType.INSTANCE.getExcerptMenus(!args.getExcerptCollectionList().isEmpty()));
        if (!ShapeTypes.INSTANCE.isTextExcerptShape(args.getHitTestShape())) {
            copy = RectFKt.copy(args.getHitTestShape().getOriginRect());
            Matrix shapeMatrix = args.getHitTestShape().getShapeMatrix();
            if (shapeMatrix != null) {
                shapeMatrix.mapRect(copy);
            }
            ShapeOptions.INSTANCE.getTransformingMatrix(args.getHitTestShape()).mapRect(copy);
            BoxInfoUtils.INSTANCE.noteRenderMatrix(args.getHitTestVirtualPage()).mapRect(copy);
        } else {
            if (args.getHitTestShape().getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().size() < 2) {
                return;
            }
            List<TouchPoint> points = args.getHitTestShape().getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().getPoints();
            GeometryUtils geometryUtils = GeometryUtils.INSTANCE;
            mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(points.get(0), points.get(1));
            copy = geometryUtils.boundRect(mutableListOf);
            Matrix shapeMatrix2 = args.getHitTestShape().getShapeMatrix();
            if (shapeMatrix2 != null) {
                shapeMatrix2.mapRect(copy);
            }
            BoxInfoUtils.INSTANCE.renderMatrix(args.getHitTestVirtualPage()).mapRect(copy);
        }
        this.selectionRect = copy;
    }

    public final void updateLocation(@NotNull RectF selectionRect, @NotNull RectF limitRect, @NotNull List<Float> noteOffset) {
        Intrinsics.checkNotNullParameter(selectionRect, "selectionRect");
        Intrinsics.checkNotNullParameter(limitRect, "limitRect");
        Intrinsics.checkNotNullParameter(noteOffset, "noteOffset");
        this.offsetX = noteOffset.get(0).floatValue();
        float floatValue = noteOffset.get(1).floatValue();
        this.offsetY = floatValue;
        selectionRect.offset(this.offsetX, floatValue);
        limitRect.offset(this.offsetX, this.offsetY);
        m46388B(selectionRect, limitRect);
    }

    public final void updateSelectedShapes(@NotNull List<? extends Shape> shapes, boolean forceUpdate) {
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        this.shapes = shapes;
        getHandler$note_overseasRelease().activeProvider(SelectionMenuHandlerManager.SHAPE_SELECTION);
        getHandler$note_overseasRelease().updateSelectedShapes(shapes);
        getPrimaryMenuAdapter$note_overseasRelease().setMenusByShape(shapes, forceUpdate);
        ElementType elementTypeByShape = getElementTypeByShape();
        if (elementTypeByShape != null) {
            this.currElementType = elementTypeByShape;
        }
    }

    public final void updateTextSelection(@NotNull TextSelectionInfo info) {
        Intrinsics.checkNotNullParameter(info, "info");
        if (info.getSelection().rectangles().isEmpty()) {
            return;
        }
        getHandler$note_overseasRelease().activeProvider(SelectionMenuHandlerManager.TEXT_SELECTION);
        getHandler$note_overseasRelease().updateTextSelection(info);
        getPrimaryMenuAdapter$note_overseasRelease().setMenus(m46394f(SelectionMenuType.INSTANCE.getTextSelectionMenuTypes()));
        m46408x();
        m46405u();
        this.selectionRect = RectFKt.boundingRectF(info.getSelection().rectangles());
    }

    public final void updateUniversalShapeSelection(@NotNull List<? extends Shape> shapes, @NotNull BoxInfo virtualPageBoxInfo) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        Intrinsics.checkNotNullParameter(virtualPageBoxInfo, "virtualPageBoxInfo");
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : shapes) {
            if (obj instanceof UniversalShape) {
                arrayList.add(obj);
            }
        }
        Matrix renderMatrix = BoxInfoUtils.INSTANCE.renderMatrix(virtualPageBoxInfo);
        float dimension = ResManager.INSTANCE.getDimension(C7384R.dimen.dp_20);
        RectF viewportRect = EditorBundleKt.viewportRect(editorBundle);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            arrayList2.add(RectKt.expand(RotationHandleHelper.findBoundRectIncludingRotationPoint$default(RotationHandleHelper.INSTANCE, (UniversalShape) it2.next(), viewportRect, renderMatrix, null, 8, null), dimension));
        }
        RectF boundingRectF = RectFKt.boundingRectF(arrayList2);
        getHandler$note_overseasRelease().activeProvider(SelectionMenuHandlerManager.UNIVERSAL_SHAPE_SELECTION);
        getHandler$note_overseasRelease().updateUniversalShapeSelection(virtualPageBoxInfo, shapes);
        getPrimaryMenuAdapter$note_overseasRelease().setMenus(SelectionMenuType.INSTANCE.getUniversalMenus());
        this.selectionRect = boundingRectF;
        this.currElementType = ElementType.GRAPH;
    }

    /* renamed from: v */
    public final void m46406v() {
        getBinding$note_overseasRelease().flSubMenu.setVisibility(0);
    }

    /* renamed from: w */
    public final void m46407w() {
        ElementType elementType = this.currElementType;
        if (elementType == null) {
            elementType = getElementTypeByShape();
        }
        if (elementType != null) {
            StatisticsBundle.INSTANCE.postEvent(new StatisticsElementLinkCreateEvent(elementType));
        }
    }

    /* renamed from: x */
    public final void m46408x() {
        int i = this.annotationColorStyle;
        IntList value = SelectionMenuType.INSTANCE.getAnnotationColorListOption(i).getValue();
        getAnnotationColorAdapter().setSelectedPosition(-1);
        getAnnotationColorAdapter().submitList(value);
        this.annotationColorStyle = -1;
        m46391E();
        this.annotationColorStyle = i;
    }

    /* renamed from: y */
    public final void m46409y(int style, boolean changeColor) {
        IntList value;
        this.annotationColorStyle = style;
        SelectionMenuType.Companion companion = SelectionMenuType.INSTANCE;
        companion.getAnnotationStyleOption().put(style);
        int i = -1;
        if (style == -1) {
            value = companion.getAnnotationColorListOption(0).getValue();
        } else {
            value = companion.getAnnotationColorListOption(this.annotationColorStyle).getValue();
            i = companion.getAnnotationColorIndexOption(this.annotationColorStyle).get();
        }
        getAnnotationColorAdapter().setSelectedPosition(i);
        getAnnotationColorAdapter().submitList(value);
        if (changeColor) {
            Integer num = value.get(i);
            Intrinsics.checkNotNullExpressionValue(num, "get(...)");
            m46393e(num.intValue());
        }
        m46391E();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PagedSelectionMenu(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        Lazy lazy5;
        Lazy lazy6;
        List<? extends Shape> emptyList;
        Intrinsics.checkNotNullParameter(context, "context");
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<LayoutSelectionMenuPagedBinding>() { // from class: com.onyx.galaxy.note.editor.menu.PagedSelectionMenu$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final LayoutSelectionMenuPagedBinding invoke() {
                return LayoutSelectionMenuPagedBinding.inflate(LayoutInflater.from(PagedSelectionMenu.this.getContext()));
            }
        });
        this.binding = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<TintLinearLayout>() { // from class: com.onyx.galaxy.note.editor.menu.PagedSelectionMenu$menuContainer$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final TintLinearLayout invoke() {
                return PagedSelectionMenu.this.getBinding$note_overseasRelease().menuContainer;
            }
        });
        this.menuContainer = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(PagedSelectionMenu$handler$2.INSTANCE);
        this.handler = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(new Function0<PrimarySelectionMenuAdapter>() { // from class: com.onyx.galaxy.note.editor.menu.PagedSelectionMenu$primaryMenuAdapter$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PrimarySelectionMenuAdapter invoke() {
                Context context2 = PagedSelectionMenu.this.getContext();
                Intrinsics.checkNotNullExpressionValue(context2, "getContext(...)");
                return new PrimarySelectionMenuAdapter(context2);
            }
        });
        this.primaryMenuAdapter = lazy4;
        lazy5 = LazyKt__LazyJVMKt.lazy(new Function0<SecondarySelectionMenuAdapter>() { // from class: com.onyx.galaxy.note.editor.menu.PagedSelectionMenu$secondaryMenuAdapter$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final SecondarySelectionMenuAdapter invoke() {
                Context context2 = PagedSelectionMenu.this.getContext();
                Intrinsics.checkNotNullExpressionValue(context2, "getContext(...)");
                return new SecondarySelectionMenuAdapter(context2);
            }
        });
        this.secondaryMenuAdapter = lazy5;
        lazy6 = LazyKt__LazyJVMKt.lazy(PagedSelectionMenu$annotationColorAdapter$2.INSTANCE);
        this.annotationColorAdapter = lazy6;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.shapes = emptyList;
        this.selectionRect = new RectF();
        this.limitRect = new RectF();
        this.arrowDirection = 2;
        this.annotationColorStyle = SelectionMenuType.INSTANCE.getAnnotationStyleOption().get();
        m46404t();
        m46398j();
        m46399k();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PagedSelectionMenu(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        Lazy lazy5;
        Lazy lazy6;
        List<? extends Shape> emptyList;
        Intrinsics.checkNotNullParameter(context, "context");
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<LayoutSelectionMenuPagedBinding>() { // from class: com.onyx.galaxy.note.editor.menu.PagedSelectionMenu$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final LayoutSelectionMenuPagedBinding invoke() {
                return LayoutSelectionMenuPagedBinding.inflate(LayoutInflater.from(PagedSelectionMenu.this.getContext()));
            }
        });
        this.binding = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<TintLinearLayout>() { // from class: com.onyx.galaxy.note.editor.menu.PagedSelectionMenu$menuContainer$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final TintLinearLayout invoke() {
                return PagedSelectionMenu.this.getBinding$note_overseasRelease().menuContainer;
            }
        });
        this.menuContainer = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(PagedSelectionMenu$handler$2.INSTANCE);
        this.handler = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(new Function0<PrimarySelectionMenuAdapter>() { // from class: com.onyx.galaxy.note.editor.menu.PagedSelectionMenu$primaryMenuAdapter$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PrimarySelectionMenuAdapter invoke() {
                Context context2 = PagedSelectionMenu.this.getContext();
                Intrinsics.checkNotNullExpressionValue(context2, "getContext(...)");
                return new PrimarySelectionMenuAdapter(context2);
            }
        });
        this.primaryMenuAdapter = lazy4;
        lazy5 = LazyKt__LazyJVMKt.lazy(new Function0<SecondarySelectionMenuAdapter>() { // from class: com.onyx.galaxy.note.editor.menu.PagedSelectionMenu$secondaryMenuAdapter$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final SecondarySelectionMenuAdapter invoke() {
                Context context2 = PagedSelectionMenu.this.getContext();
                Intrinsics.checkNotNullExpressionValue(context2, "getContext(...)");
                return new SecondarySelectionMenuAdapter(context2);
            }
        });
        this.secondaryMenuAdapter = lazy5;
        lazy6 = LazyKt__LazyJVMKt.lazy(PagedSelectionMenu$annotationColorAdapter$2.INSTANCE);
        this.annotationColorAdapter = lazy6;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.shapes = emptyList;
        this.selectionRect = new RectF();
        this.limitRect = new RectF();
        this.arrowDirection = 2;
        this.annotationColorStyle = SelectionMenuType.INSTANCE.getAnnotationStyleOption().get();
        m46404t();
        m46398j();
        m46399k();
    }
}
