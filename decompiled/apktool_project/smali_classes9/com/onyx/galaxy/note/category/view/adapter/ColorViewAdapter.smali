.class public final Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;
.super Lcom/chad/library/adapter4/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$ColorViewListener;,
        Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$DynamicPopupData;,
        Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$VH;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter4/BaseQuickAdapter<",
        "Ljava/lang/Integer;",
        "Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$VH;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nColorViewAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ColorViewAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,267:1\n310#2:268\n326#2,4:269\n311#2:273\n*S KotlinDebug\n*F\n+ 1 ColorViewAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter\n*L\n81#1:268\n81#1:269,4\n81#1:273\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0004\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u0002\u0012\u0008\u0012\u00060\u0003R\u00020\u00000\u0001:\u0003GHIB\u0007\u00a2\u0006\u0004\u0008E\u0010FJ\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0002H\u0002J\u0018\u0010\u0008\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0002H\u0003J\u0008\u0010\t\u001a\u00020\u0006H\u0002J\u0008\u0010\n\u001a\u00020\u0006H\u0002J\u0010\u0010\r\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u000bH\u0002J\u0018\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u0002H\u0002J\u0008\u0010\u000f\u001a\u00020\u0006H\u0002J.\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0013H\u0002J.\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0013H\u0002J-\u0010\u001a\u001a\u00020\u00062\n\u0010\u0018\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u00022\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ$\u0010 \u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u0011\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u0002H\u0014J\u000e\u0010\"\u001a\u00020\u00062\u0006\u0010!\u001a\u00020\u0002R\"\u0010)\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008#\u0010$\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(R$\u00101\u001a\u0004\u0018\u00010*8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008+\u0010,\u001a\u0004\u0008-\u0010.\"\u0004\u0008/\u00100R\"\u00108\u001a\u0002028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u00103\u001a\u0004\u00084\u00105\"\u0004\u00086\u00107R$\u0010?\u001a\u0004\u0018\u0001098\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010:\u001a\u0004\u0008;\u0010<\"\u0004\u0008=\u0010>R\u0016\u0010C\u001a\u00020@8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008A\u0010BR\u0016\u0010D\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010$\u00a8\u0006J"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;",
        "Lcom/chad/library/adapter4/BaseQuickAdapter;",
        "",
        "Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$VH;",
        "color",
        "position",
        "",
        "p",
        "D",
        "t",
        "q",
        "Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;",
        "colorPanelView",
        "B",
        "u",
        "y",
        "Landroid/view/View;",
        "parent",
        "anchor",
        "",
        "dx",
        "dy",
        "w",
        "z",
        "holder",
        "item",
        "onBindViewHolder",
        "(Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$VH;ILjava/lang/Integer;)V",
        "Landroid/content/Context;",
        "context",
        "Landroid/view/ViewGroup;",
        "viewType",
        "onCreateViewHolder",
        "dimensionResId",
        "updateContainerWidthDimension",
        "r",
        "I",
        "getSelectedPosition",
        "()I",
        "setSelectedPosition",
        "(I)V",
        "selectedPosition",
        "Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$ColorViewListener;",
        "s",
        "Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$ColorViewListener;",
        "getColorViewListener",
        "()Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$ColorViewListener;",
        "setColorViewListener",
        "(Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$ColorViewListener;)V",
        "colorViewListener",
        "",
        "Z",
        "getPickOpaqueColorOnly",
        "()Z",
        "setPickOpaqueColorOnly",
        "(Z)V",
        "pickOpaqueColorOnly",
        "Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$DynamicPopupData;",
        "Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$DynamicPopupData;",
        "getDynamicPopupData",
        "()Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$DynamicPopupData;",
        "setDynamicPopupData",
        "(Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$DynamicPopupData;)V",
        "dynamicPopupData",
        "Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;",
        "v",
        "Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;",
        "colorPickPopup",
        "containerWidthDimension",
        "<init>",
        "()V",
        "ColorViewListener",
        "DynamicPopupData",
        "VH",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nColorViewAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ColorViewAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,267:1\n310#2:268\n326#2,4:269\n311#2:273\n*S KotlinDebug\n*F\n+ 1 ColorViewAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter\n*L\n81#1:268\n81#1:269,4\n81#1:273\n*E\n"
    }
.end annotation


# instance fields
.field public r:I

.field public s:Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$ColorViewListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public t:Z

.field public u:Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$DynamicPopupData;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public v:Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;

.field public w:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->r:I

    iput-boolean v1, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->t:Z

    sget v0, Lcom/onyx/android/sdk/device/R$dimen;->dp_36:I

    iput v0, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->w:I

    return-void
.end method

.method public static synthetic A(Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;Landroid/view/View;Landroid/view/View;Ljava/lang/Number;Ljava/lang/Number;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    move-object p2, p1

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->z(Landroid/view/View;Landroid/view/View;Ljava/lang/Number;Ljava/lang/Number;)V

    return-void
.end method

.method public static final C(Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;Z)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$colorPanelView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->r:I

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->u(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;I)V

    return-void
.end method

.method public static final synthetic access$startScreenCaptureWithCheck(Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->B(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;)V

    return-void
.end method

.method public static final synthetic access$updateSelectColor(Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->D(II)V

    return-void
.end method

.method public static synthetic l(Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;Ljava/lang/Integer;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->s(Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;Ljava/lang/Integer;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic m(Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->v(Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;)V

    return-void
.end method

.method public static synthetic n(Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->C(Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;Z)V

    return-void
.end method

.method public static synthetic o(Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->r(Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;)V

    return-void
.end method

.method public static final r(Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->s:Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$ColorViewListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$ColorViewListener;->onDismissColorPicker()V

    :cond_0
    return-void
.end method

.method public static final s(Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;Ljava/lang/Integer;ILandroid/view/View;)V
    .locals 0

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->p(II)V

    return-void
.end method

.method public static final v(Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->t()V

    return-void
.end method

.method public static synthetic x(Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;Landroid/view/View;Landroid/view/View;Ljava/lang/Number;Ljava/lang/Number;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    move-object p2, p1

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->w(Landroid/view/View;Landroid/view/View;Ljava/lang/Number;Ljava/lang/Number;)V

    return-void
.end method


# virtual methods
.method public final B(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;)V
    .locals 5

    sget-object v0, Lcom/onyx/galaxy/note/settings/utils/PermissionActionUtils;->INSTANCE:Lcom/onyx/galaxy/note/settings/utils/PermissionActionUtils;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget-object v3, Lcom/onyx/galaxy/note/settings/data/PermissionRequestConst;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/PermissionRequestConst;

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/settings/data/PermissionRequestConst;->getPERMISSION_FLOATING_COLOR_PICKER_FUNCTION_NAME()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/settings/data/PermissionRequestConst;->getPERMISSION_FLOATING_COLOR_PICKER_INTENT_NAME()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2}, Lcom/onyx/galaxy/note/settings/utils/PermissionActionUtils;->requestFloatingWindowPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/c3e;

    invoke-direct {v1, p0, p1}, Lcom/sunia/HTREnginev2/c3e;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIfTrue(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final D(II)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    iput p2, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->r:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->set(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-boolean p2, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->t:Z

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/ColorKt;->removeAlpha(I)I

    move-result p1

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->s:Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$ColorViewListener;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$ColorViewListener;->onSelectColor(I)V

    :cond_1
    return-void
.end method

.method public final getColorViewListener()Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$ColorViewListener;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->s:Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$ColorViewListener;

    return-object p0
.end method

.method public final getDynamicPopupData()Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$DynamicPopupData;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->u:Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$DynamicPopupData;

    return-object p0
.end method

.method public final getPickOpaqueColorOnly()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->t:Z

    return p0
.end method

.method public final getSelectedPosition()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->r:I

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$VH;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->onBindViewHolder(Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$VH;ILjava/lang/Integer;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$VH;ILjava/lang/Integer;)V
    .locals 6
    .param p1    # Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$VH;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$VH;->getBinding()Lcom/onyx/galaxy/note/databinding/ItemColorViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ItemColorViewBinding;->clsContainer:Landroid/widget/FrameLayout;

    const-string v1, "clsContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    iget v3, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->w:I

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$VH;->getBinding()Lcom/onyx/galaxy/note/databinding/ItemColorViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ItemColorViewBinding;->colorView:Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->setColor(I)V

    .line 7
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$VH;->getBinding()Lcom/onyx/galaxy/note/databinding/ItemColorViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ItemColorViewBinding;->colorView:Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;

    iget v1, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->r:I

    if-ne p2, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->setSelect(Z)V

    .line 8
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$VH;->getBinding()Lcom/onyx/galaxy/note/databinding/ItemColorViewBinding;

    move-result-object p1

    iget-object v0, p1, Lcom/onyx/galaxy/note/databinding/ItemColorViewBinding;->colorView:Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;

    const-string p1, "colorView"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    new-instance v3, Lcom/sunia/HTREnginev2/b3e;

    invoke-direct {v3, p0, p3, p2}, Lcom/sunia/HTREnginev2/b3e;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;Ljava/lang/Integer;I)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    return-void

    .line 9
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type android.view.ViewGroup.LayoutParams"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$VH;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$VH;
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p3, "context"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "parent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p1, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$VH;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$VH;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;Landroid/view/ViewGroup;Lcom/onyx/galaxy/note/databinding/ItemColorViewBinding;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1
.end method

.method public final p(II)V
    .locals 1

    iget v0, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->r:I

    if-ne v0, p2, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->t()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->D(II)V

    :goto_0
    return-void
.end method

.method public final q()V
    .locals 7

    new-instance v2, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$initColorPickPopup$callback$1;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$initColorPickPopup$callback$1;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;)V

    new-instance v6, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v3, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->RIGHT:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v4

    iget v5, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->r:I

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;-><init>(Landroid/content/Context;Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;Ljava/util/List;I)V

    iput-object v6, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->v:Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;

    new-instance v0, Lcom/sunia/HTREnginev2/d3e;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/d3e;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;)V

    invoke-virtual {v6, v0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->v:Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;

    const/4 v1, 0x0

    const-string v2, "colorPickPopup"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-boolean v3, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->t:Z

    invoke-virtual {v0, v3}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->setDisableAlphaColor(Z)V

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->t:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->v:Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;

    if-nez p0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->setOpaqueColorOnly()V

    :cond_2
    return-void
.end method

.method public final setColorViewListener(Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$ColorViewListener;)V
    .locals 0
    .param p1    # Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$ColorViewListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->s:Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$ColorViewListener;

    return-void
.end method

.method public final setDynamicPopupData(Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$DynamicPopupData;)V
    .locals 0
    .param p1    # Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$DynamicPopupData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->u:Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$DynamicPopupData;

    return-void
.end method

.method public final setPickOpaqueColorOnly(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->t:Z

    return-void
.end method

.method public final setSelectedPosition(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->r:I

    return-void
.end method

.method public final t()V
    .locals 10

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->s:Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$ColorViewListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$ColorViewListener;->onShowColorPicker()V

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->q()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->v:Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;

    const/4 v1, 0x0

    const-string v2, "colorPickPopup"

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->r:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->setOriginColor(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->u:Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$DynamicPopupData;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->v:Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    goto :goto_0

    :cond_2
    move-object v3, v0

    :goto_0
    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->getParentView(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v7

    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->showByDockType$default(Lcom/onyx/galaxy/note/common/view/BasePopupWindow;Landroid/view/View;IILandroid/view/View;ILjava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->y()V

    :goto_1
    return-void
.end method

.method public final u(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;I)V
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/data/R$integer;->delay_time_dialog_close:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getLong(I)J

    move-result-wide v0

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->v:Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;

    if-nez v2, :cond_0

    const-string v2, "colorPickPopup"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {v2}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->dismiss()V

    new-instance v2, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1, v3}, Lio/reactivex/rxjava3/core/Observable;->delay(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$a;

    invoke-direct {v1, p1, p0, p2}, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$a;-><init>(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;I)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p2, Lcom/sunia/HTREnginev2/a3e;

    invoke-direct {p2, p0}, Lcom/sunia/HTREnginev2/a3e;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final updateContainerWidthDimension(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->w:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final w(Landroid/view/View;Landroid/view/View;Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 6

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->v:Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;

    const/4 v1, 0x0

    const-string v2, "colorPickPopup"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/view/View;->measure(II)V

    const/4 v0, 0x2

    new-array v4, v0, [I

    invoke-virtual {p2, v4}, Landroid/view/View;->getLocationInWindow([I)V

    new-array p2, v0, [I

    invoke-virtual {p1, p2}, Landroid/view/View;->getLocationInWindow([I)V

    aget v5, v4, v3

    aget v3, p2, v3

    sub-int/2addr v5, v3

    const/4 v3, 0x1

    aget v4, v4, v3

    aget p2, p2, v3

    sub-int/2addr v4, p2

    iget-object p2, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->v:Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;

    if-nez p2, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v1

    :cond_1
    invoke-virtual {p2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    sub-int/2addr v5, p2

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p2

    add-int/2addr v5, p2

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p2

    add-int/2addr v4, p2

    iget-object p2, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->v:Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;

    if-nez p2, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v1

    :cond_2
    invoke-virtual {p2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    div-int/2addr p2, v0

    sub-int/2addr v4, p2

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->v:Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;

    if-nez p0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v1, p0

    :goto_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const p3, 0x800033

    invoke-static {v1, p1, p3, p0, p2}, Lcom/onyx/android/sdk/base/extension/PopupExtKt;->showInParent(Landroid/widget/PopupWindow;Landroid/view/View;ILjava/lang/Number;Ljava/lang/Number;)Landroid/widget/PopupWindow;

    return-void
.end method

.method public final y()V
    .locals 5

    sget-object v0, Lcom/onyx/android/sdk/base/extension/Activity;->INSTANCE:Lcom/onyx/android/sdk/base/extension/Activity;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/extension/Activity;->getTopContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->getParentView(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [I

    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationInWindow([I)V

    new-array v2, v2, [I

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v4, 0x0

    aget v2, v2, v4

    aget v3, v3, v4

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v2

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_0

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->u:Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$DynamicPopupData;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$DynamicPopupData;->getLeftDx()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->u:Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$DynamicPopupData;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$DynamicPopupData;->getLeftDy()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->w(Landroid/view/View;Landroid/view/View;Ljava/lang/Number;Ljava/lang/Number;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->u:Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$DynamicPopupData;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$DynamicPopupData;->getRightDx()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->u:Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$DynamicPopupData;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$DynamicPopupData;->getRightDy()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->z(Landroid/view/View;Landroid/view/View;Ljava/lang/Number;Ljava/lang/Number;)V

    :goto_0
    return-void
.end method

.method public final z(Landroid/view/View;Landroid/view/View;Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 7

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->v:Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;

    const/4 v1, 0x0

    const-string v2, "colorPickPopup"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/view/View;->measure(II)V

    const/4 v0, 0x2

    new-array v4, v0, [I

    invoke-virtual {p2, v4}, Landroid/view/View;->getLocationInWindow([I)V

    new-array v5, v0, [I

    invoke-virtual {p1, v5}, Landroid/view/View;->getLocationInWindow([I)V

    aget v6, v4, v3

    aget v3, v5, v3

    sub-int/2addr v6, v3

    const/4 v3, 0x1

    aget v4, v4, v3

    aget v3, v5, v3

    sub-int/2addr v4, v3

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    add-int/2addr v6, p2

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p2

    add-int/2addr v6, p2

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p2

    add-int/2addr v4, p2

    iget-object p2, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->v:Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;

    if-nez p2, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v1

    :cond_1
    invoke-virtual {p2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    div-int/2addr p2, v0

    sub-int/2addr v4, p2

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->v:Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;

    if-nez p0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, p0

    :goto_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const p3, 0x800033

    invoke-static {v1, p1, p3, p0, p2}, Lcom/onyx/android/sdk/base/extension/PopupExtKt;->showInParent(Landroid/widget/PopupWindow;Landroid/view/View;ILjava/lang/Number;Ljava/lang/Number;)Landroid/widget/PopupWindow;

    return-void
.end method
