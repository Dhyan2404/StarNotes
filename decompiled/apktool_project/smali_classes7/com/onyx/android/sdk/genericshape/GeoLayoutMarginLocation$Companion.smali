.class public final Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation$Companion$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0004J\u0010\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0006\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation$Companion;",
        "",
        "()V",
        "buildRectForLocation",
        "Landroid/graphics/RectF;",
        "location",
        "",
        "viewport",
        "contentRect",
        "fromString",
        "Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;",
        "name",
        "sdk-genericshape_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final buildRectForLocation(Ljava/lang/String;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "location"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "viewport"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "contentRect"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;->Companion:Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation$Companion;->fromString(Ljava/lang/String;)Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p1, p0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_0
    invoke-static {p2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    goto/16 :goto_0

    :pswitch_1
    new-instance p0, Landroid/graphics/RectF;

    iget p1, p3, Landroid/graphics/RectF;->left:F

    iget v0, p3, Landroid/graphics/RectF;->bottom:F

    iget p3, p3, Landroid/graphics/RectF;->right:F

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0, p1, v0, p3, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0

    :pswitch_2
    new-instance p0, Landroid/graphics/RectF;

    iget p1, p3, Landroid/graphics/RectF;->right:F

    iget p3, p3, Landroid/graphics/RectF;->bottom:F

    iget v0, p2, Landroid/graphics/RectF;->right:F

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0, p1, p3, v0, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0

    :pswitch_3
    new-instance p0, Landroid/graphics/RectF;

    iget p1, p2, Landroid/graphics/RectF;->left:F

    iget v0, p3, Landroid/graphics/RectF;->bottom:F

    iget p3, p3, Landroid/graphics/RectF;->left:F

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0, p1, v0, p3, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0

    :pswitch_4
    new-instance p0, Landroid/graphics/RectF;

    iget p1, p3, Landroid/graphics/RectF;->right:F

    iget v0, p3, Landroid/graphics/RectF;->top:F

    iget p2, p2, Landroid/graphics/RectF;->right:F

    iget p3, p3, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0

    :pswitch_5
    new-instance p0, Landroid/graphics/RectF;

    iget p1, p2, Landroid/graphics/RectF;->left:F

    iget p2, p3, Landroid/graphics/RectF;->top:F

    iget v0, p3, Landroid/graphics/RectF;->left:F

    iget p3, p3, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0

    :pswitch_6
    new-instance p0, Landroid/graphics/RectF;

    iget p1, p3, Landroid/graphics/RectF;->right:F

    iget v0, p2, Landroid/graphics/RectF;->top:F

    iget p2, p2, Landroid/graphics/RectF;->right:F

    iget p3, p3, Landroid/graphics/RectF;->top:F

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0

    :pswitch_7
    new-instance p0, Landroid/graphics/RectF;

    iget p1, p3, Landroid/graphics/RectF;->left:F

    iget p2, p2, Landroid/graphics/RectF;->top:F

    iget v0, p3, Landroid/graphics/RectF;->right:F

    iget p3, p3, Landroid/graphics/RectF;->top:F

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0

    :pswitch_8
    new-instance p0, Landroid/graphics/RectF;

    iget p1, p2, Landroid/graphics/RectF;->left:F

    iget p2, p2, Landroid/graphics/RectF;->top:F

    iget v0, p3, Landroid/graphics/RectF;->left:F

    iget p3, p3, Landroid/graphics/RectF;->top:F

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final fromString(Ljava/lang/String;)Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-nez p1, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;->BACKGROUND:Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;

    return-object p0

    :cond_0
    sget-object p0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, p0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "this as java.lang.String).toUpperCase(Locale.ROOT)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;->valueOf(Ljava/lang/String;)Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;

    move-result-object p0

    return-object p0
.end method
