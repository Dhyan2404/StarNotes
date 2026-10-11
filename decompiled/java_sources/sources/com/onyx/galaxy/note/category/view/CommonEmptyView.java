package com.onyx.galaxy.note.category.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.SpanUtils;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.widgets.DynamicImageView;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.CommonEmptyView;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.commonv2.global.HWREngineConstant;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\r\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u001c\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u0000 O2\u00020\u0001:\u0002OPB\u0013\b\u0016\u0012\b\u0010I\u001a\u0004\u0018\u00010H¢\u0006\u0004\bJ\u0010KB\u001d\b\u0016\u0012\b\u0010I\u001a\u0004\u0018\u00010H\u0012\b\u0010\"\u001a\u0004\u0018\u00010!¢\u0006\u0004\bJ\u0010LB%\b\u0016\u0012\b\u0010I\u001a\u0004\u0018\u00010H\u0012\b\u0010\"\u001a\u0004\u0018\u00010!\u0012\u0006\u0010M\u001a\u00020\u0006¢\u0006\u0004\bJ\u0010NJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u0010\u0010\u000b\u001a\u00020\u00042\b\u0010\n\u001a\u0004\u0018\u00010\tJ\u000e\u0010\r\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u0006J\u000e\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000eJ\u0010\u0010\u0012\u001a\u00020\u00042\b\u0010\u0011\u001a\u0004\u0018\u00010\tJ*\u0010\u0017\u001a\u00020\u00042\u0010\b\u0002\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u00132\u0010\b\u0002\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0013J\u000e\u0010\u0018\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u0006J\u000e\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000eJ\u000e\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u0006J\u000e\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\u001cJ\u000e\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0006J\b\u0010 \u001a\u00020\u0004H\u0016J\u0012\u0010#\u001a\u00020\u00042\b\u0010\"\u001a\u0004\u0018\u00010!H\u0002R#\u0010*\u001a\n %*\u0004\u0018\u00010$0$8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)R#\u0010/\u001a\n %*\u0004\u0018\u00010+0+8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b,\u0010'\u001a\u0004\b-\u0010.R#\u00102\u001a\n %*\u0004\u0018\u00010+0+8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b0\u0010'\u001a\u0004\b1\u0010.R\u0016\u00105\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00104R\u0018\u00108\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u00107R\u0016\u0010:\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u00104R\u0016\u0010=\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b;\u0010<R\u0018\u0010?\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b>\u00107R\u0016\u0010A\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b@\u00104R\u0016\u0010C\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bB\u0010<R\u0016\u0010E\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bD\u00104R\u0016\u0010G\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bF\u00104¨\u0006Q"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/CommonEmptyView;", "Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;", "Lcom/onyx/galaxy/note/category/view/CommonEmptyView$EmptyBean;", "emptyBean", "", "setEmptyBean", "", HWREngineConstant.Constant.RES_ID, "updateHolder", "", "text", "updateTitle", "colorId", "updateTitleColor", "", "size", "updateTitleSize", "subText", "updateSubTitle", "", "", "texts", "drawableIds", "updateSubDrawableTitle", "updateSubTitleColor", "updateSubTitleSize", "layoutResId", "setTipsLayout", "", "highlight", "setHighlight", "setIconSize", "tint", "Landroid/util/AttributeSet;", "attrs", "b", "Lcom/onyx/android/sdk/theme/widgets/DynamicImageView;", "kotlin.jvm.PlatformType", C6999h.f39688c, "Lkotlin/Lazy;", "getImageView", "()Lcom/onyx/android/sdk/theme/widgets/DynamicImageView;", "imageView", "Lcom/onyx/android/sdk/theme/widgets/TintTextView;", "i", "getTvTitle", "()Lcom/onyx/android/sdk/theme/widgets/TintTextView;", "tvTitle", "j", "getTvSubTitle", "tvSubTitle", C4921e.f26537n, "I", "holderRes", "l", "Ljava/lang/CharSequence;", "title", "m", "titleColorId", GoogleApiAvailabilityLight.f29016b, "F", "titleSize", C4921e.f26528e, "subTitle", "p", "subTitleColorId", "q", "subTitleSize", "r", "emptyHolderWidthRes", "s", "emptyHolderHeightRes", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Companion", "EmptyBean", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCommonEmptyView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommonEmptyView.kt\ncom/onyx/galaxy/note/category/view/CommonEmptyView\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,310:1\n1855#2,2:311\n1549#2:313\n1620#2,3:314\n1855#2,2:317\n*S KotlinDebug\n*F\n+ 1 CommonEmptyView.kt\ncom/onyx/galaxy/note/category/view/CommonEmptyView\n*L\n146#1:311,2\n215#1:313\n215#1:314,3\n216#1:317,2\n*E\n"})
/* loaded from: classes9.dex */
public final class CommonEmptyView extends TintFrameLayout {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: t */
    @NotNull
    public static final Lazy<EmptyBean> f55026t;

    /* renamed from: u */
    @NotNull
    public static final Lazy<EmptyBean> f55027u;

    /* renamed from: v */
    @NotNull
    public static final Lazy<EmptyBean> f55028v;

    /* renamed from: w */
    @NotNull
    public static final Lazy<EmptyBean> f55029w;

    /* renamed from: x */
    @NotNull
    public static final Lazy<EmptyBean> f55030x;

    /* renamed from: y */
    @NotNull
    public static final Lazy<EmptyBean> f55031y;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Lazy imageView;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final Lazy tvTitle;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final Lazy tvSubTitle;

    /* renamed from: k, reason: from kotlin metadata */
    public int holderRes;

    /* renamed from: l, reason: from kotlin metadata */
    @Nullable
    public CharSequence title;

    /* renamed from: m, reason: from kotlin metadata */
    public int titleColorId;

    /* renamed from: n, reason: from kotlin metadata */
    public float titleSize;

    /* renamed from: o, reason: from kotlin metadata */
    @Nullable
    public CharSequence subTitle;

    /* renamed from: p, reason: from kotlin metadata */
    public int subTitleColorId;

    /* renamed from: q, reason: from kotlin metadata */
    public float subTitleSize;

    /* renamed from: r, reason: from kotlin metadata */
    public int emptyHolderWidthRes;

    /* renamed from: s, reason: from kotlin metadata */
    public int emptyHolderHeightRes;

    @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0014\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001b\u0010\u0003\u001a\u00020\u00048FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006R\u001b\u0010\t\u001a\u00020\u00048FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\b\u001a\u0004\b\n\u0010\u0006R\u001b\u0010\f\u001a\u00020\u00048FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\b\u001a\u0004\b\r\u0010\u0006R\u001b\u0010\u000f\u001a\u00020\u00048FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0011\u0010\b\u001a\u0004\b\u0010\u0010\u0006R\u001b\u0010\u0012\u001a\u00020\u00048FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0014\u0010\b\u001a\u0004\b\u0013\u0010\u0006R\u001b\u0010\u0015\u001a\u00020\u00048FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\b\u001a\u0004\b\u0016\u0010\u0006¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/CommonEmptyView$Companion;", "", "()V", "DUSTBIN_EMPTY_BEAN", "Lcom/onyx/galaxy/note/category/view/CommonEmptyView$EmptyBean;", "getDUSTBIN_EMPTY_BEAN", "()Lcom/onyx/galaxy/note/category/view/CommonEmptyView$EmptyBean;", "DUSTBIN_EMPTY_BEAN$delegate", "Lkotlin/Lazy;", "FOLDER_EMPTY_BEAN", "getFOLDER_EMPTY_BEAN", "FOLDER_EMPTY_BEAN$delegate", "FOLDER_ROOT_EMPTY_BEAN", "getFOLDER_ROOT_EMPTY_BEAN", "FOLDER_ROOT_EMPTY_BEAN$delegate", "NOTE_DEFAULT_EMPTY_BEAN", "getNOTE_DEFAULT_EMPTY_BEAN", "NOTE_DEFAULT_EMPTY_BEAN$delegate", "TAG_EMPTY_BEAN", "getTAG_EMPTY_BEAN", "TAG_EMPTY_BEAN$delegate", "TAG_ROOT_EMPTY_BEAN", "getTAG_ROOT_EMPTY_BEAN", "TAG_ROOT_EMPTY_BEAN$delegate", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final EmptyBean getDUSTBIN_EMPTY_BEAN() {
            return (EmptyBean) CommonEmptyView.f55029w.getValue();
        }

        @NotNull
        public final EmptyBean getFOLDER_EMPTY_BEAN() {
            return (EmptyBean) CommonEmptyView.f55027u.getValue();
        }

        @NotNull
        public final EmptyBean getFOLDER_ROOT_EMPTY_BEAN() {
            return (EmptyBean) CommonEmptyView.f55030x.getValue();
        }

        @NotNull
        public final EmptyBean getNOTE_DEFAULT_EMPTY_BEAN() {
            return (EmptyBean) CommonEmptyView.f55026t.getValue();
        }

        @NotNull
        public final EmptyBean getTAG_EMPTY_BEAN() {
            return (EmptyBean) CommonEmptyView.f55028v.getValue();
        }

        @NotNull
        public final EmptyBean getTAG_ROOT_EMPTY_BEAN() {
            return (EmptyBean) CommonEmptyView.f55031y.getValue();
        }

        public Companion() {
        }
    }

    static {
        Lazy<EmptyBean> lazy;
        Lazy<EmptyBean> lazy2;
        Lazy<EmptyBean> lazy3;
        Lazy<EmptyBean> lazy4;
        Lazy<EmptyBean> lazy5;
        Lazy<EmptyBean> lazy6;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<EmptyBean>() { // from class: com.onyx.galaxy.note.category.view.CommonEmptyView$Companion$NOTE_DEFAULT_EMPTY_BEAN$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final CommonEmptyView.EmptyBean invoke() {
                return new CommonEmptyView.EmptyBean(C7996R.drawable.icon_empty_view_01, C10651R.string.note_empty_view_default_title, C10651R.string.note_empty_view_default_sub_title, null, null, 24, null);
            }
        });
        f55026t = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<EmptyBean>() { // from class: com.onyx.galaxy.note.category.view.CommonEmptyView$Companion$FOLDER_EMPTY_BEAN$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final CommonEmptyView.EmptyBean invoke() {
                return new CommonEmptyView.EmptyBean(C7996R.drawable.icon_empty_view_01, C10651R.string.note_empty_view_folder_title, C10651R.string.note_empty_view_folder_sub_title, null, null, 24, null);
            }
        });
        f55027u = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<EmptyBean>() { // from class: com.onyx.galaxy.note.category.view.CommonEmptyView$Companion$TAG_EMPTY_BEAN$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final CommonEmptyView.EmptyBean invoke() {
                List listOf;
                List listOf2;
                listOf = CollectionsKt__CollectionsJVMKt.listOf(Integer.valueOf(C10651R.drawable.icon_note_empty_view_tag_sub_title));
                listOf2 = CollectionsKt__CollectionsKt.listOf((Object[]) new Integer[]{Integer.valueOf(C10651R.string.note_empty_view_tag_sub_title_prefix), Integer.valueOf(C10651R.string.note_empty_view_tag_sub_title_suffix)});
                return new CommonEmptyView.EmptyBean(C7996R.drawable.icon_empty_view_01, C10651R.string.note_empty_view_tag_title, 0, listOf2, listOf, 4, null);
            }
        });
        f55028v = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(new Function0<EmptyBean>() { // from class: com.onyx.galaxy.note.category.view.CommonEmptyView$Companion$DUSTBIN_EMPTY_BEAN$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final CommonEmptyView.EmptyBean invoke() {
                return new CommonEmptyView.EmptyBean(C7996R.drawable.icon_empty_view_dustbin, C10651R.string.note_empty_view_dustbin_title, 0, null, null, 28, null);
            }
        });
        f55029w = lazy4;
        lazy5 = LazyKt__LazyJVMKt.lazy(new Function0<EmptyBean>() { // from class: com.onyx.galaxy.note.category.view.CommonEmptyView$Companion$FOLDER_ROOT_EMPTY_BEAN$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final CommonEmptyView.EmptyBean invoke() {
                List listOf;
                List listOf2;
                listOf = CollectionsKt__CollectionsJVMKt.listOf(Integer.valueOf(C10651R.drawable.icon_note_empty_view_folder_root_sub_title));
                listOf2 = CollectionsKt__CollectionsKt.listOf((Object[]) new Integer[]{Integer.valueOf(C10651R.string.note_empty_view_folder_root_sub_title_prefix), Integer.valueOf(C10651R.string.note_empty_view_folder_root_sub_title_suffix)});
                return new CommonEmptyView.EmptyBean(C7996R.drawable.icon_empty_view_folder_root, C10651R.string.note_empty_view_folder_root_title, 0, listOf2, listOf, 4, null);
            }
        });
        f55030x = lazy5;
        lazy6 = LazyKt__LazyJVMKt.lazy(new Function0<EmptyBean>() { // from class: com.onyx.galaxy.note.category.view.CommonEmptyView$Companion$TAG_ROOT_EMPTY_BEAN$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final CommonEmptyView.EmptyBean invoke() {
                List listOf;
                List listOf2;
                listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new Integer[]{Integer.valueOf(C10651R.drawable.icon_note_empty_view_tag_root_sub_title_1), Integer.valueOf(C10651R.drawable.icon_note_empty_view_tag_root_sub_title_2)});
                listOf2 = CollectionsKt__CollectionsKt.listOf((Object[]) new Integer[]{Integer.valueOf(C10651R.string.note_empty_view_tag_root_sub_title_1), Integer.valueOf(C10651R.string.note_empty_view_tag_root_sub_title_2), Integer.valueOf(C10651R.string.note_empty_view_tag_root_sub_title_3), Integer.valueOf(C10651R.string.note_empty_view_tag_root_sub_title_4)});
                return new CommonEmptyView.EmptyBean(C7996R.drawable.icon_empty_view_tag_root, C10651R.string.note_empty_view_tag_root_title, 0, listOf2, listOf, 4, null);
            }
        });
        f55031y = lazy6;
    }

    public CommonEmptyView(@Nullable Context context) {
        this(context, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void updateSubDrawableTitle$default(CommonEmptyView commonEmptyView, List list, List list2, int i, Object obj) {
        if ((i & 1) != 0) {
            list = null;
        }
        if ((i & 2) != 0) {
            list2 = null;
        }
        commonEmptyView.updateSubDrawableTitle(list, list2);
    }

    /* renamed from: b */
    public final void m43917b(AttributeSet attrs) {
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attrs, C10651R.styleable.CommonEmptyView);
        Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "obtainStyledAttributes(...)");
        int resourceId = obtainStyledAttributes.getResourceId(C10651R.styleable.CommonEmptyView_layout, C10651R.layout.common_empty_view);
        this.holderRes = obtainStyledAttributes.getResourceId(C10651R.styleable.CommonEmptyView_empty_holder_src, -1);
        this.title = obtainStyledAttributes.getString(C10651R.styleable.CommonEmptyView_empty_title);
        this.titleColorId = obtainStyledAttributes.getResourceId(C10651R.styleable.CommonEmptyView_empty_title_color, C7996R.color.theme_text_color_01);
        int i = C10651R.styleable.CommonEmptyView_empty_title_size;
        ResManager resManager = ResManager.INSTANCE;
        this.titleSize = obtainStyledAttributes.getDimension(i, resManager.getDimension(C7384R.dimen.sp_14));
        this.subTitle = obtainStyledAttributes.getString(C10651R.styleable.CommonEmptyView_empty_sub_title);
        this.subTitleColorId = obtainStyledAttributes.getResourceId(C10651R.styleable.CommonEmptyView_empty_sub_title_color, C7996R.color.theme_text_color_02);
        this.subTitleSize = obtainStyledAttributes.getDimension(C10651R.styleable.CommonEmptyView_empty_sub_title_size, resManager.getDimension(C7384R.dimen.sp_12));
        View.inflate(getContext(), resourceId, this);
        if (this.holderRes > 0) {
            getImageView().setImageDrawable(ThemeUtils.getThemeDrawableById(getContext(), this.holderRes));
        } else {
            getImageView().setImageDrawable(null);
        }
        TintTextView tvTitle = getTvTitle();
        tvTitle.setText(this.title);
        tvTitle.setTextColor(ThemeUtils.getColorById(this.titleColorId));
        tvTitle.setTextSize(0, this.titleSize);
        TintTextView tvSubTitle = getTvSubTitle();
        tvSubTitle.setText(this.subTitle);
        tvSubTitle.setTextSize(0, this.subTitleSize);
        tvSubTitle.setTextColor(ThemeUtils.getColorById(this.subTitleColorId));
        this.emptyHolderWidthRes = obtainStyledAttributes.getResourceId(C10651R.styleable.CommonEmptyView_empty_holder_width, -1);
        this.emptyHolderHeightRes = obtainStyledAttributes.getResourceId(C10651R.styleable.CommonEmptyView_empty_holder_height, -1);
        obtainStyledAttributes.recycle();
    }

    public final DynamicImageView getImageView() {
        return (DynamicImageView) this.imageView.getValue();
    }

    public final TintTextView getTvSubTitle() {
        return (TintTextView) this.tvSubTitle.getValue();
    }

    public final TintTextView getTvTitle() {
        return (TintTextView) this.tvTitle.getValue();
    }

    public final void setEmptyBean(@NotNull EmptyBean emptyBean) {
        Intrinsics.checkNotNullParameter(emptyBean, "emptyBean");
        updateHolder(emptyBean.getHolderRes());
        ResManager resManager = ResManager.INSTANCE;
        updateTitle(resManager.getStringSafely(getContext(), emptyBean.getTitleRes()));
        updateSubTitle(resManager.getStringSafely(getContext(), emptyBean.getSubtitleRes()));
        List<Integer> subDrawableTexts = emptyBean.getSubDrawableTexts();
        if (subDrawableTexts == null || subDrawableTexts.isEmpty()) {
            return;
        }
        List<Integer> subDrawableIds = emptyBean.getSubDrawableIds();
        if (subDrawableIds == null || subDrawableIds.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = emptyBean.getSubDrawableTexts().iterator();
        while (it2.hasNext()) {
            arrayList.add(ResManager.INSTANCE.getStringSafely(getContext(), ((Number) it2.next()).intValue()));
        }
        updateSubDrawableTitle(arrayList, emptyBean.getSubDrawableIds());
    }

    public final void setHighlight(boolean highlight) {
        View findViewById = findViewById(C10651R.id.tv_title);
        if (findViewById != null) {
            ViewKt.setViewVisibleOrGone(findViewById, !highlight);
        }
        View findViewById2 = findViewById(C10651R.id.highlightTipText);
        if (findViewById2 != null) {
            ViewKt.setViewVisibleOrGone(findViewById2, highlight);
        }
    }

    public final void setIconSize(int size) {
        DynamicImageView imageView = getImageView();
        Intrinsics.checkNotNullExpressionValue(imageView, "<get-imageView>(...)");
        ViewKt.setLayoutParams(imageView, size, size);
    }

    public final void setTipsLayout(int layoutResId) {
        removeAllViews();
        View.inflate(getContext(), layoutResId, this);
    }

    @Override // com.onyx.android.sdk.theme.widgets.TintFrameLayout, com.onyx.android.sdk.theme.widgets.Tintable
    public void tint() {
        super.tint();
    }

    public final void updateHolder(int resId) {
        if (this.emptyHolderWidthRes != -1) {
            ViewGroup.LayoutParams layoutParams = getImageView().getLayoutParams();
            ResManager resManager = ResManager.INSTANCE;
            layoutParams.width = (int) resManager.getDimension(this.emptyHolderWidthRes);
            getImageView().getLayoutParams().height = (int) resManager.getDimension(this.emptyHolderHeightRes);
        }
        if (this.holderRes == resId) {
            return;
        }
        this.holderRes = resId;
        if (resId > 0) {
            getImageView().setImageDrawable(ThemeUtils.getThemeDrawableById(getContext(), this.holderRes));
        } else {
            getImageView().setImageDrawable(null);
        }
    }

    public final void updateSubDrawableTitle(@Nullable List<String> texts, @Nullable List<Integer> drawableIds) {
        int collectionSizeOrDefault;
        List<String> list = texts;
        boolean z = true;
        if (!(list == null || list.isEmpty())) {
            List<Integer> list2 = drawableIds;
            if (list2 != null && !list2.isEmpty()) {
                z = false;
            }
            if (!z) {
                List<Integer> list3 = drawableIds;
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list3, 10);
                ArrayList<Drawable> arrayList = new ArrayList(collectionSizeOrDefault);
                Iterator<T> it2 = list3.iterator();
                while (it2.hasNext()) {
                    arrayList.add(ThemeUtils.getThemeDrawable(((Number) it2.next()).intValue()));
                }
                for (Drawable drawable : arrayList) {
                    drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
                    drawable.setTint(ThemeUtils.getColorById(this.subTitleColorId));
                }
                getTvSubTitle().setText(SpanUtils.INSTANCE.insertDrawable(texts, arrayList));
                return;
            }
        }
        getTvSubTitle().setText((CharSequence) null);
    }

    public final void updateSubTitle(@Nullable CharSequence subText) {
        if (Intrinsics.areEqual(subText, this.subTitle)) {
            return;
        }
        this.subTitle = subText;
        getTvSubTitle().setText(this.subTitle);
    }

    public final void updateSubTitleColor(int colorId) {
        if (colorId == this.subTitleColorId) {
            return;
        }
        this.subTitleColorId = colorId;
        getTvSubTitle().setTextColor(ThemeUtils.getColorById(this.subTitleColorId));
    }

    public final void updateSubTitleSize(float size) {
        if (this.subTitleSize == size) {
            return;
        }
        this.subTitleSize = size;
        getTvSubTitle().setTextSize(0, this.subTitleSize);
    }

    public final void updateTitle(@Nullable CharSequence text) {
        if (Intrinsics.areEqual(text, this.title)) {
            return;
        }
        this.title = text;
        getTvTitle().setText(this.title);
    }

    public final void updateTitleColor(int colorId) {
        if (colorId == this.titleColorId) {
            return;
        }
        this.titleColorId = colorId;
        getTvTitle().setTextColor(ThemeUtils.getColorById(this.subTitleColorId));
    }

    public final void updateTitleSize(float size) {
        if (this.titleSize == size) {
            return;
        }
        this.titleSize = size;
        getTvTitle().setTextSize(0, this.titleSize);
    }

    public CommonEmptyView(@Nullable Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, -1);
    }

    public CommonEmptyView(@Nullable Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<DynamicImageView>() { // from class: com.onyx.galaxy.note.category.view.CommonEmptyView$imageView$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final DynamicImageView invoke() {
                return (DynamicImageView) CommonEmptyView.this.findViewById(C10651R.id.iv_holder);
            }
        });
        this.imageView = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<TintTextView>() { // from class: com.onyx.galaxy.note.category.view.CommonEmptyView$tvTitle$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final TintTextView invoke() {
                return (TintTextView) CommonEmptyView.this.findViewById(C10651R.id.tv_title);
            }
        });
        this.tvTitle = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<TintTextView>() { // from class: com.onyx.galaxy.note.category.view.CommonEmptyView$tvSubTitle$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final TintTextView invoke() {
                return (TintTextView) CommonEmptyView.this.findViewById(C10651R.id.tv_sub_title);
            }
        });
        this.tvSubTitle = lazy3;
        this.holderRes = -1;
        this.titleColorId = C7996R.color.theme_text_color_01;
        ResManager resManager = ResManager.INSTANCE;
        this.titleSize = resManager.getDimension(C7384R.dimen.sp_14);
        this.subTitleColorId = C7996R.color.theme_text_color_02;
        this.subTitleSize = resManager.getDimension(C7384R.dimen.sp_12);
        this.emptyHolderWidthRes = -1;
        this.emptyHolderHeightRes = -1;
        m43917b(attributeSet);
    }

    @Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0012\b\u0086\b\u0018\u00002\u00020\u0001BG\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\b\b\u0002\u0010\n\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0002\u0012\u0010\b\u0002\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0006\u0012\u0010\b\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0006¢\u0006\u0004\b#\u0010$J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0004\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0002HÆ\u0003J\u0011\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0006HÆ\u0003J\u0011\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0006HÆ\u0003JK\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\t\u001a\u00020\u00022\b\b\u0002\u0010\n\u001a\u00020\u00022\b\b\u0002\u0010\u000b\u001a\u00020\u00022\u0010\b\u0002\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00062\u0010\b\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0006HÆ\u0001J\t\u0010\u0010\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0011\u001a\u00020\u0002HÖ\u0001J\u0013\u0010\u0014\u001a\u00020\u00132\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\t\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u0017\u0010\n\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0019\u0010\u0016\u001a\u0004\b\u001a\u0010\u0018R\u0017\u0010\u000b\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u001b\u0010\u0016\u001a\u0004\b\u001c\u0010\u0018R\u001f\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00068\u0006¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 R\u001f\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00068\u0006¢\u0006\f\n\u0004\b!\u0010\u001e\u001a\u0004\b\"\u0010 ¨\u0006%"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/CommonEmptyView$EmptyBean;", "", "", "component1", "component2", "component3", "", "component4", "component5", "holderRes", "titleRes", "subtitleRes", "subDrawableTexts", "subDrawableIds", "copy", "", "toString", "hashCode", com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER, "", "equals", "a", "I", "getHolderRes", "()I", "b", "getTitleRes", "c", "getSubtitleRes", "d", "Ljava/util/List;", "getSubDrawableTexts", "()Ljava/util/List;", "e", "getSubDrawableIds", Constants.CONSTRUCTOR_NAME, "(IIILjava/util/List;Ljava/util/List;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final /* data */ class EmptyBean {

        /* renamed from: a, reason: from kotlin metadata and from toString */
        public final int holderRes;

        /* renamed from: b, reason: from kotlin metadata and from toString */
        public final int titleRes;

        /* renamed from: c, reason: from kotlin metadata and from toString */
        public final int subtitleRes;

        /* renamed from: d, reason: from kotlin metadata and from toString */
        @Nullable
        public final List<Integer> subDrawableTexts;

        /* renamed from: e, reason: from kotlin metadata and from toString */
        @Nullable
        public final List<Integer> subDrawableIds;

        public EmptyBean(int i, int i2, int i3, @Nullable List<Integer> list, @Nullable List<Integer> list2) {
            this.holderRes = i;
            this.titleRes = i2;
            this.subtitleRes = i3;
            this.subDrawableTexts = list;
            this.subDrawableIds = list2;
        }

        public static /* synthetic */ EmptyBean copy$default(EmptyBean emptyBean, int i, int i2, int i3, List list, List list2, int i4, Object obj) {
            if ((i4 & 1) != 0) {
                i = emptyBean.holderRes;
            }
            if ((i4 & 2) != 0) {
                i2 = emptyBean.titleRes;
            }
            int i5 = i2;
            if ((i4 & 4) != 0) {
                i3 = emptyBean.subtitleRes;
            }
            int i6 = i3;
            if ((i4 & 8) != 0) {
                list = emptyBean.subDrawableTexts;
            }
            List list3 = list;
            if ((i4 & 16) != 0) {
                list2 = emptyBean.subDrawableIds;
            }
            return emptyBean.copy(i, i5, i6, list3, list2);
        }

        /* renamed from: component1, reason: from getter */
        public final int getHolderRes() {
            return this.holderRes;
        }

        /* renamed from: component2, reason: from getter */
        public final int getTitleRes() {
            return this.titleRes;
        }

        /* renamed from: component3, reason: from getter */
        public final int getSubtitleRes() {
            return this.subtitleRes;
        }

        @Nullable
        public final List<Integer> component4() {
            return this.subDrawableTexts;
        }

        @Nullable
        public final List<Integer> component5() {
            return this.subDrawableIds;
        }

        @NotNull
        public final EmptyBean copy(int holderRes, int titleRes, int subtitleRes, @Nullable List<Integer> subDrawableTexts, @Nullable List<Integer> subDrawableIds) {
            return new EmptyBean(holderRes, titleRes, subtitleRes, subDrawableTexts, subDrawableIds);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof EmptyBean)) {
                return false;
            }
            EmptyBean emptyBean = (EmptyBean) other;
            return this.holderRes == emptyBean.holderRes && this.titleRes == emptyBean.titleRes && this.subtitleRes == emptyBean.subtitleRes && Intrinsics.areEqual(this.subDrawableTexts, emptyBean.subDrawableTexts) && Intrinsics.areEqual(this.subDrawableIds, emptyBean.subDrawableIds);
        }

        public final int getHolderRes() {
            return this.holderRes;
        }

        @Nullable
        public final List<Integer> getSubDrawableIds() {
            return this.subDrawableIds;
        }

        @Nullable
        public final List<Integer> getSubDrawableTexts() {
            return this.subDrawableTexts;
        }

        public final int getSubtitleRes() {
            return this.subtitleRes;
        }

        public final int getTitleRes() {
            return this.titleRes;
        }

        public int hashCode() {
            int hashCode = ((((Integer.hashCode(this.holderRes) * 31) + Integer.hashCode(this.titleRes)) * 31) + Integer.hashCode(this.subtitleRes)) * 31;
            List<Integer> list = this.subDrawableTexts;
            int hashCode2 = (hashCode + (list == null ? 0 : list.hashCode())) * 31;
            List<Integer> list2 = this.subDrawableIds;
            return hashCode2 + (list2 != null ? list2.hashCode() : 0);
        }

        @NotNull
        public String toString() {
            return "EmptyBean(holderRes=" + this.holderRes + ", titleRes=" + this.titleRes + ", subtitleRes=" + this.subtitleRes + ", subDrawableTexts=" + this.subDrawableTexts + ", subDrawableIds=" + this.subDrawableIds + ')';
        }

        public /* synthetic */ EmptyBean(int i, int i2, int i3, List list, List list2, int i4, DefaultConstructorMarker defaultConstructorMarker) {
            this(i, (i4 & 2) != 0 ? -1 : i2, (i4 & 4) != 0 ? -1 : i3, (i4 & 8) != 0 ? null : list, (i4 & 16) != 0 ? null : list2);
        }
    }
}
