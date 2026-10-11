.class public final Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShapeLinkUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeLinkUtils.kt\ncom/onyx/android/sdk/note/common/utils/ShapeLinkUtils\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,344:1\n1#2:345\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008:\u0010;J(\u0010\t\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004J\u0010\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0003\u001a\u00020\u0002J.\u0010\t\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u000c\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0004H\u0007J\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u000e\u001a\u00020\rJ\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u000e\u001a\u00020\rJ\u0010\u0010\u0014\u001a\u00020\u00132\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u000fJ*\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u00172\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\n0\u0019J\u000e\u0010\u001f\u001a\u00020\u00132\u0006\u0010\u001e\u001a\u00020\u001dJ\u0016\u0010\"\u001a\u00020\u00132\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010!\u001a\u00020 J\u0016\u0010\"\u001a\u00020\u00132\u0006\u0010\u000c\u001a\u00020\n2\u0006\u0010!\u001a\u00020 J\u001a\u0010\"\u001a\u00020\u00132\u0008\u0010!\u001a\u0004\u0018\u00010 2\u0008\u0010#\u001a\u0004\u0018\u00010\u000fJ\u001e\u0010&\u001a\u00020\u001b2\u0006\u0010%\u001a\u00020$2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rJ\u000e\u0010\'\u001a\u00020\u001d2\u0006\u0010\u0003\u001a\u00020\u0002J*\u0010(\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u000c\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004H\u0002J*\u0010)\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u000c\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004H\u0002J\u0010\u0010,\u001a\u00020\u001b2\u0006\u0010+\u001a\u00020*H\u0002J \u00100\u001a\u00020\u001b2\u0006\u0010.\u001a\u00020-2\u0006\u0010\u000c\u001a\u00020\n2\u0006\u0010/\u001a\u00020\u001dH\u0002J\u0018\u00104\u001a\u00020\u001b2\u0006\u00102\u001a\u0002012\u0006\u00103\u001a\u00020\u0013H\u0002J\u0018\u00105\u001a\u00020\u001b2\u0006\u0010.\u001a\u00020-2\u0006\u0010\u000c\u001a\u00020\nH\u0002J\"\u00107\u001a\u00020\u00132\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010!\u001a\u00020 2\u0008\u00106\u001a\u0004\u0018\u00010\u000fH\u0002R\u0014\u00108\u001a\u00020\u001d8\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u00088\u00109\u00a8\u0006<"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils;",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "shape",
        "",
        "width",
        "height",
        "scale",
        "Landroid/graphics/Bitmap;",
        "createLinkBitmap",
        "Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;",
        "createLinkModel",
        "linkModel",
        "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;",
        "linkBean",
        "",
        "getLinkTitle",
        "getLinkValue",
        "type",
        "",
        "getLinkIcon",
        "Lcom/onyx/android/sdk/replicator/note/db/LinkProvider;",
        "linkProvider",
        "Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;",
        "shapeModel",
        "",
        "linkMap",
        "",
        "loadShapeLinkModel",
        "",
        "isOnlyIconStyle",
        "calculateLinkHeight",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;",
        "renderMeasure",
        "calculateLinkWidth",
        "title",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "renderContext",
        "resetSize",
        "isAudioLink",
        "c",
        "b",
        "Landroid/view/View;",
        "content",
        "g",
        "Landroid/widget/TextView;",
        "textView",
        "underline",
        "e",
        "Landroid/widget/ImageView;",
        "imageView",
        "resId",
        "d",
        "f",
        "text",
        "a",
        "SHOW_JUMP_ICON",
        "Z",
        "<init>",
        "()V",
        "sdk-note_overseasRelease"
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
        "SMAP\nShapeLinkUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeLinkUtils.kt\ncom/onyx/android/sdk/note/common/utils/ShapeLinkUtils\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,344:1\n1#2:345\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SHOW_JUMP_ICON:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic createLinkBitmap$default(Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils;Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;FFFILjava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/high16 p4, 0x3f800000    # 1.0f

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils;->createLinkBitmap(Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;FFF)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(ZLcom/onyx/android/sdk/note/common/data/render/RenderMeasure;Ljava/lang/String;)I
    .locals 0

    if-eqz p1, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p1, Lcom/onyx/android/sdk/note/R$dimen;->link_shape_size:I

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils;->calculateLinkWidth(Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;Ljava/lang/String;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final b(Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;FFF)Landroid/graphics/Bitmap;
    .locals 9

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/onyx/android/sdk/note/R$layout;->layout_link_audio_shape:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    return-object v2

    :cond_1
    sget v1, Lcom/onyx/android/sdk/note/R$id;->content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    sget v2, Lcom/onyx/android/sdk/note/R$id;->ic_audio:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    sget v3, Lcom/onyx/android/sdk/note/R$id;->tv_content:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/FloatKt;->ceil(F)F

    move-result v4

    float-to-int v4, v4

    invoke-static {p3}, Lcom/onyx/android/sdk/base/extension/FloatKt;->ceil(F)F

    move-result v5

    float-to-int v5, v5

    int-to-float v6, v4

    div-float/2addr p2, v6

    int-to-float v7, v5

    div-float/2addr p3, v7

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v4, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils;->g(Landroid/view/View;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils;->getLinkIcon(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v2, v1}, Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils;->d(Landroid/widget/ImageView;I)V

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v3, p1, v1}, Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils;->e(Landroid/widget/TextView;Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;Z)V

    invoke-virtual {v0, v4, v5}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {v0, v1, v1, p0, p1}, Landroid/view/ViewGroup;->layout(IIII)V

    mul-float/2addr v6, p4

    invoke-static {v6}, Lcom/onyx/android/sdk/base/extension/FloatKt;->ceil(F)F

    move-result p0

    float-to-int p0, p0

    mul-float/2addr v7, p4

    invoke-static {v7}, Lcom/onyx/android/sdk/base/extension/FloatKt;->ceil(F)F

    move-result p1

    float-to-int p1, p1

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v1, p4, p4}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {v1, p2, p3}, Landroid/graphics/Matrix;->postScale(FF)Z

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0, p0, p1, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->loadBitmapWithMatrix(Landroid/view/View;IILandroid/graphics/Matrix;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final c(Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;FFF)Landroid/graphics/Bitmap;
    .locals 5

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/onyx/android/sdk/note/R$layout;->layout_link_shape:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    return-object v2

    :cond_1
    sget v1, Lcom/onyx/android/sdk/note/R$id;->ic_link:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sget v2, Lcom/onyx/android/sdk/note/R$id;->fileName:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v3, 0x1

    invoke-virtual {p0, v2, p1, v3}, Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils;->e(Landroid/widget/TextView;Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;Z)V

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils;->getLinkIcon(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils;->d(Landroid/widget/ImageView;I)V

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/FloatKt;->ceil(F)F

    move-result p1

    float-to-int p1, p1

    invoke-static {p3}, Lcom/onyx/android/sdk/base/extension/FloatKt;->ceil(F)F

    move-result v1

    float-to-int v1, v1

    int-to-float v2, p1

    div-float/2addr p2, v2

    int-to-float v3, v1

    div-float/2addr p3, v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils;->g(Landroid/view/View;)V

    invoke-virtual {v0, p1, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p0, p1}, Landroid/view/ViewGroup;->layout(IIII)V

    mul-float/2addr v2, p4

    invoke-static {v2}, Lcom/onyx/android/sdk/base/extension/FloatKt;->ceil(F)F

    move-result p0

    float-to-int p0, p0

    mul-float/2addr v3, p4

    invoke-static {v3}, Lcom/onyx/android/sdk/base/extension/FloatKt;->ceil(F)F

    move-result p1

    float-to-int p1, p1

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v1, p4, p4}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {v1, p2, p3}, Landroid/graphics/Matrix;->postScale(FF)Z

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0, p0, p1, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->loadBitmapWithMatrix(Landroid/view/View;IILandroid/graphics/Matrix;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final calculateLinkHeight(Z)I
    .locals 0

    if-eqz p1, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p1, Lcom/onyx/android/sdk/note/R$dimen;->link_shape_size:I

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p1, Lcom/onyx/android/sdk/note/R$dimen;->link_shape_height:I

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final calculateLinkWidth(Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;Ljava/lang/String;)I
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 5
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/android/sdk/note/R$integer;->link_display_title_limit:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v0

    if-nez p2, :cond_0

    const-string p2, ""

    .line 6
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-le v1, v0, :cond_1

    .line 7
    invoke-static {p2, v2, v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->safelySubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p2

    .line 8
    :cond_1
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 9
    sget v1, Lcom/onyx/android/sdk/note/R$dimen;->link_name_text_size:I

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 10
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p2

    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p2, v0

    .line 11
    sget v0, Lcom/onyx/android/sdk/note/R$dimen;->link_padding:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v0

    .line 12
    sget v1, Lcom/onyx/android/sdk/note/R$dimen;->link_icon_size:I

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result p0

    mul-int/lit8 v0, v0, 0x5

    add-int/2addr p2, v0

    const/4 v0, 0x2

    mul-int/2addr p0, v0

    add-int/2addr p2, p0

    if-nez p1, :cond_2

    goto :goto_1

    .line 13
    :cond_2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getViewPortRect()Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p0

    int-to-float p1, v0

    mul-float/2addr p0, p1

    const/high16 p1, 0x40400000    # 3.0f

    div-float/2addr p0, p1

    float-to-int p0, p0

    .line 14
    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-lez p1, :cond_3

    const/4 v2, 0x1

    :cond_3
    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    .line 16
    :goto_0
    new-instance p1, Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils$calculateLinkWidth$2;

    invoke-direct {p1, p2}, Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils$calculateLinkWidth$2;-><init>(I)V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/AnyKt;->getOrElse(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p2

    :goto_1
    return p2
.end method

.method public final calculateLinkWidth(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;)I
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "linkBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderMeasure"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->isOnlyIconStyle()Z

    move-result v0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils;->getLinkTitle(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p2, p1}, Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils;->a(ZLcom/onyx/android/sdk/note/common/data/render/RenderMeasure;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final calculateLinkWidth(Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;)I
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "linkModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderMeasure"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->isOnlyIconStyle()Z

    move-result v0

    .line 3
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->loadDisplayTitle()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p0, v0, p2, p1}, Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils;->a(ZLcom/onyx/android/sdk/note/common/data/render/RenderMeasure;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final createLinkBitmap(Lcom/onyx/android/sdk/note/common/shape/Shape;FFF)Landroid/graphics/Bitmap;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "shape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils;->createLinkModel(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils;->createLinkBitmap(Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;FFF)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final createLinkBitmap(Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;FFF)Landroid/graphics/Bitmap;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->isOnlyIconStyle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    sget-object v0, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/BitmapUtils;

    .line 4
    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils;->getLinkIcon(Ljava/lang/String;)I

    move-result p0

    mul-float/2addr p2, p4

    float-to-int p1, p2

    mul-float/2addr p3, p4

    float-to-int p2, p3

    .line 6
    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->getBitmapFromVectorDrawable(Landroid/content/Context;III)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 7
    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AUDIO"

    .line 8
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils;->b(Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;FFF)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils;->c(Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;FFF)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final createLinkModel(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "shape"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getText()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    const-class v1, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    invoke-virtual {v0, p0, v1}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->Companion:Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->getDocBean()Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel$Companion;->create(Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;)Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;

    move-result-object v0

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getDocumentUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->setDocumentId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->getRemark()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->setRemark(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->getDisplayStyle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->setDisplayStyle(I)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getShapeUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUniqueId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->setType(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->setLinkRect(Landroid/graphics/RectF;)Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->getKey()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x27dabd07

    if-eq v1, v2, :cond_5

    const v2, 0x1494f

    if-eq v1, v2, :cond_3

    const v2, 0x3bba3b6

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "AUDIO"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->setContent(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v1, "URL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->setContent(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v1, "PAGE_NUMBER"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->setTargetPageId(Ljava/lang/String;)V

    :cond_7
    :goto_0
    return-object v0
.end method

.method public final d(Landroid/widget/ImageView;I)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public final e(Landroid/widget/TextView;Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;Z)V
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils;->f(Landroid/widget/TextView;Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->loadDisplayTitle()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotEmpty(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    new-instance p2, Landroid/text/SpannableString;

    invoke-direct {p2, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance p3, Lcom/onegravity/rteditor/spans/UnderlineSpan;

    invoke-direct {p3}, Lcom/onegravity/rteditor/spans/UnderlineSpan;-><init>()V

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x21

    const/4 v1, 0x0

    invoke-virtual {p2, p3, v1, p0, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public final f(Landroid/widget/TextView;Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;)V
    .locals 1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->getType()Ljava/lang/String;

    move-result-object p0

    const-string p2, "AUDIO"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/onyx/android/sdk/note/R$color;->primary_color:I

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public final g(Landroid/view/View;)V
    .locals 2

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/android/sdk/note/R$dimen;->audio_link_audio_shape_border_width:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v0

    sget v1, Lcom/onyx/android/sdk/note/R$color;->audio_link_border_color:I

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getColor(I)I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of v1, p1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_0

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_0
    return-void
.end method

.method public final getLinkIcon(Ljava/lang/String;)I
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p0, "DOCUMENT"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget p0, Lcom/onyx/android/sdk/note/R$drawable;->ic_attachment_doc:I

    return p0

    :sswitch_1
    const-string p0, "AUDIO"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    sget p0, Lcom/onyx/android/sdk/note/R$drawable;->ic_attachment_audio:I

    return p0

    :sswitch_2
    const-string p0, "NOTE"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :sswitch_3
    const-string p0, "URL"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget p0, Lcom/onyx/android/sdk/note/R$drawable;->ic_url_link:I

    return p0

    :sswitch_4
    const-string p0, "PAGE_NUMBER"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    sget p0, Lcom/onyx/android/sdk/note/R$drawable;->ic_page_link:I

    return p0

    :cond_3
    :goto_0
    sget p0, Lcom/onyx/android/sdk/note/R$drawable;->ic_page_link:I

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x27dabd07 -> :sswitch_4
        0x1494f -> :sswitch_3
        0x24a7f2 -> :sswitch_2
        0x3bba3b6 -> :sswitch_1
        0x6202c11b -> :sswitch_0
    .end sparse-switch
.end method

.method public final getLinkTitle(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;)Ljava/lang/String;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "linkBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->getRemark()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->getRemark()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils;->getLinkValue(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getLinkValue(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;)Ljava/lang/String;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "linkBean"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->getDocBean()Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v1, "DOCUMENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :sswitch_1
    const-string v1, "NOTE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-nez p0, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->getValue()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;->loadDisplayTitle()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :sswitch_2
    const-string p0, "URL"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_3
    const-string p0, "PAGE_NUMBER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/android/sdk/replicator/R$string;->link_page_default_remark:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x31

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x27dabd07 -> :sswitch_3
        0x1494f -> :sswitch_2
        0x24a7f2 -> :sswitch_1
        0x6202c11b -> :sswitch_0
    .end sparse-switch
.end method

.method public final isAudioLink(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "shape"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getText()Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string p1, "AUDIO"

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final loadShapeLinkModel(Lcom/onyx/android/sdk/replicator/note/db/LinkProvider;Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;Ljava/util/Map;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/LinkProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/db/LinkProvider;",
            "Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;",
            ">;)V"
        }
    .end annotation

    const-string p0, "linkProvider"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "shapeModel"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "linkMap"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->getLinkIdList()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;

    if-nez v0, :cond_2

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/replicator/note/db/LinkProvider;->loadLinkModel(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-nez v0, :cond_1

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "null link model: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-class v2, Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils;

    invoke-virtual {v0, v2, p2, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final resetSize(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;)V
    .locals 6
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "renderContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shape"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "linkBean"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->getDownPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    invoke-interface {p2}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPointList;->clear()V

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getRenderMeasure()Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils;->calculateLinkWidth(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;)I

    move-result v2

    invoke-virtual {p3}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->isOnlyIconStyle()Z

    move-result p3

    invoke-virtual {p0, p3}, Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils;->calculateLinkHeight(Z)I

    move-result p0

    new-instance p3, Lcom/onyx/android/sdk/base/data/Size;

    invoke-direct {p3, v2, p0}, Lcom/onyx/android/sdk/base/data/Size;-><init>(II)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getScale()F

    move-result p0

    sget-object p1, Lcom/onyx/android/sdk/note/common/utils/ShapeMatrixUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeMatrixUtils;

    invoke-virtual {p1, v0, v1}, Lcom/onyx/android/sdk/note/common/utils/ShapeMatrixUtils;->matrixTouchPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v2

    invoke-interface {p2, v2, v2}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->onDown(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    new-instance v2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {v2, v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v3

    invoke-virtual {p3}, Lcom/onyx/android/sdk/base/data/Size;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p0

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setX(F)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v0

    invoke-virtual {p3}, Lcom/onyx/android/sdk/base/data/Size;->getHeight()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, p0

    float-to-double v3, p3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-float p0, v3

    add-float/2addr v0, p0

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setY(F)V

    invoke-virtual {p1, v2, v1}, Lcom/onyx/android/sdk/note/common/utils/ShapeMatrixUtils;->matrixTouchPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    invoke-interface {p2, p0, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->onUp(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-interface {p2}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->updateShapeRect()V

    const-string p0, ""

    invoke-interface {p2, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->setRevisionId(Ljava/lang/String;)V

    return-void
.end method
