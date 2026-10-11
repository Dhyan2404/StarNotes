.class public final Lcom/onyx/android/sdk/base/extension/PopupLocator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/base/extension/PopupLocator$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0016\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008$\u0010%JU\u0010\u000e\u001a\u00020\r\"\u0008\u0008\u0000\u0010\u0003*\u00020\u0002*\u00028\u00002\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00062\u0008\u0008\u0002\u0010\n\u001a\u00020\t2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\t2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJW\u0010\u000e\u001a\u00020\r\"\u0008\u0008\u0000\u0010\u0003*\u00020\u0002*\u00028\u00002\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00062\u0008\u0008\u0002\u0010\n\u001a\u00020\t2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\t2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u000e\u0010\u0012J-\u0010\u0014\u001a\u00028\u0000\"\u0008\u0008\u0000\u0010\u0003*\u00020\u0002*\u00028\u00002\u0006\u0010\u0013\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J7\u0010\u0018\u001a\u00028\u0000\"\u0008\u0008\u0000\u0010\u0003*\u00020\u0002*\u00028\u00002\u0006\u0010\u0013\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0016\u001a\u00020\t2\u0008\u0008\u0002\u0010\u0017\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u001d\u0010\u001a\u001a\u0004\u0018\u00010\r\"\u0008\u0008\u0000\u0010\u0003*\u00020\u0002*\u00028\u0000\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0010\u0010\u001c\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0006H\u0002J\u0010\u0010\u001d\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0006H\u0002J(\u0010!\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\u00102\u0006\u0010\u001f\u001a\u00020\u00102\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010 \u001a\u00020\tH\u0002J(\u0010#\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\u00102\u0006\u0010\u001f\u001a\u00020\u00102\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020\tH\u0002\u00a8\u0006&"
    }
    d2 = {
        "Lcom/onyx/android/sdk/base/extension/PopupLocator;",
        "",
        "Landroid/widget/PopupWindow;",
        "T",
        "Landroid/view/View;",
        "anchorView",
        "Lcom/onyx/android/sdk/base/data/DockPoint;",
        "dstDockPoint",
        "srcDockPoint",
        "",
        "dx",
        "dy",
        "windowProviderView",
        "Lcom/onyx/android/sdk/base/data/WindowLocation;",
        "getWindowLocation",
        "(Landroid/widget/PopupWindow;Landroid/view/View;Lcom/onyx/android/sdk/base/data/DockPoint;Lcom/onyx/android/sdk/base/data/DockPoint;IILandroid/view/View;)Lcom/onyx/android/sdk/base/data/WindowLocation;",
        "Landroid/graphics/Rect;",
        "dstRectInWindow",
        "(Landroid/widget/PopupWindow;Landroid/graphics/Rect;Lcom/onyx/android/sdk/base/data/DockPoint;Lcom/onyx/android/sdk/base/data/DockPoint;IILandroid/view/View;)Lcom/onyx/android/sdk/base/data/WindowLocation;",
        "windowLocation",
        "show",
        "(Landroid/widget/PopupWindow;Lcom/onyx/android/sdk/base/data/WindowLocation;Landroid/view/View;)Landroid/widget/PopupWindow;",
        "width",
        "height",
        "update",
        "(Landroid/widget/PopupWindow;Lcom/onyx/android/sdk/base/data/WindowLocation;II)Landroid/widget/PopupWindow;",
        "getCachedWindowLocation",
        "(Landroid/widget/PopupWindow;)Lcom/onyx/android/sdk/base/data/WindowLocation;",
        "a",
        "b",
        "dstRect",
        "parentRect",
        "gravityX",
        "c",
        "gravityY",
        "d",
        "<init>",
        "()V",
        "sdk-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/base/extension/PopupLocator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/base/extension/PopupLocator;

    invoke-direct {v0}, Lcom/onyx/android/sdk/base/extension/PopupLocator;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/base/extension/PopupLocator;->INSTANCE:Lcom/onyx/android/sdk/base/extension/PopupLocator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic getWindowLocation$default(Lcom/onyx/android/sdk/base/extension/PopupLocator;Landroid/widget/PopupWindow;Landroid/graphics/Rect;Lcom/onyx/android/sdk/base/data/DockPoint;Lcom/onyx/android/sdk/base/data/DockPoint;IILandroid/view/View;ILjava/lang/Object;)Lcom/onyx/android/sdk/base/data/WindowLocation;
    .locals 6

    and-int/lit8 v0, p8, 0x1

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    and-int/lit8 v1, p8, 0x2

    if-eqz v1, :cond_1

    .line 6
    sget-object v1, Lcom/onyx/android/sdk/base/data/DockPoint;->BOTTOM_CENTER:Lcom/onyx/android/sdk/base/data/DockPoint;

    goto :goto_1

    :cond_1
    move-object v1, p3

    :goto_1
    and-int/lit8 v2, p8, 0x4

    if-eqz v2, :cond_2

    .line 7
    sget-object v2, Lcom/onyx/android/sdk/base/data/DockPoint;->TOP_CENTER:Lcom/onyx/android/sdk/base/data/DockPoint;

    goto :goto_2

    :cond_2
    move-object v2, p4

    :goto_2
    and-int/lit8 v3, p8, 0x8

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    move v3, v4

    goto :goto_3

    :cond_3
    move v3, p5

    :goto_3
    and-int/lit8 v5, p8, 0x10

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    move v4, p6

    :goto_4
    and-int/lit8 v5, p8, 0x20

    if-eqz v5, :cond_5

    .line 8
    sget-object v5, Lcom/onyx/android/sdk/base/extension/Activity;->INSTANCE:Lcom/onyx/android/sdk/base/extension/Activity;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/base/extension/Activity;->getTopContentView()Landroid/view/View;

    move-result-object v5

    goto :goto_5

    :cond_5
    move-object v5, p7

    :goto_5
    move-object p2, p0

    move-object p3, p1

    move-object p4, v0

    move-object p5, v1

    move-object p6, v2

    move p7, v3

    move p8, v4

    move-object p9, v5

    .line 9
    invoke-virtual/range {p2 .. p9}, Lcom/onyx/android/sdk/base/extension/PopupLocator;->getWindowLocation(Landroid/widget/PopupWindow;Landroid/graphics/Rect;Lcom/onyx/android/sdk/base/data/DockPoint;Lcom/onyx/android/sdk/base/data/DockPoint;IILandroid/view/View;)Lcom/onyx/android/sdk/base/data/WindowLocation;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getWindowLocation$default(Lcom/onyx/android/sdk/base/extension/PopupLocator;Landroid/widget/PopupWindow;Landroid/view/View;Lcom/onyx/android/sdk/base/data/DockPoint;Lcom/onyx/android/sdk/base/data/DockPoint;IILandroid/view/View;ILjava/lang/Object;)Lcom/onyx/android/sdk/base/data/WindowLocation;
    .locals 9

    and-int/lit8 v0, p8, 0x2

    if-eqz v0, :cond_0

    .line 1
    sget-object v0, Lcom/onyx/android/sdk/base/data/DockPoint;->BOTTOM_CENTER:Lcom/onyx/android/sdk/base/data/DockPoint;

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, p3

    :goto_0
    and-int/lit8 v0, p8, 0x4

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/base/data/DockPoint;->TOP_CENTER:Lcom/onyx/android/sdk/base/data/DockPoint;

    move-object v5, v0

    goto :goto_1

    :cond_1
    move-object v5, p4

    :goto_1
    and-int/lit8 v0, p8, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move v6, v1

    goto :goto_2

    :cond_2
    move v6, p5

    :goto_2
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_3

    move v7, v1

    goto :goto_3

    :cond_3
    move v7, p6

    :goto_3
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_4

    .line 3
    sget-object v0, Lcom/onyx/android/sdk/base/extension/Activity;->INSTANCE:Lcom/onyx/android/sdk/base/extension/Activity;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/extension/Activity;->getTopContentView()Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    goto :goto_4

    :cond_4
    move-object/from16 v8, p7

    :goto_4
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 4
    invoke-virtual/range {v1 .. v8}, Lcom/onyx/android/sdk/base/extension/PopupLocator;->getWindowLocation(Landroid/widget/PopupWindow;Landroid/view/View;Lcom/onyx/android/sdk/base/data/DockPoint;Lcom/onyx/android/sdk/base/data/DockPoint;IILandroid/view/View;)Lcom/onyx/android/sdk/base/data/WindowLocation;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic show$default(Lcom/onyx/android/sdk/base/extension/PopupLocator;Landroid/widget/PopupWindow;Lcom/onyx/android/sdk/base/data/WindowLocation;Landroid/view/View;ILjava/lang/Object;)Landroid/widget/PopupWindow;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    sget-object p3, Lcom/onyx/android/sdk/base/extension/Activity;->INSTANCE:Lcom/onyx/android/sdk/base/extension/Activity;

    invoke-virtual {p3}, Lcom/onyx/android/sdk/base/extension/Activity;->getTopContentView()Landroid/view/View;

    move-result-object p3

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/base/extension/PopupLocator;->show(Landroid/widget/PopupWindow;Lcom/onyx/android/sdk/base/data/WindowLocation;Landroid/view/View;)Landroid/widget/PopupWindow;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic update$default(Lcom/onyx/android/sdk/base/extension/PopupLocator;Landroid/widget/PopupWindow;Lcom/onyx/android/sdk/base/data/WindowLocation;IIILjava/lang/Object;)Landroid/widget/PopupWindow;
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getWidth()I

    move-result p3

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getHeight()I

    move-result p4

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/base/extension/PopupLocator;->update(Landroid/widget/PopupWindow;Lcom/onyx/android/sdk/base/data/WindowLocation;II)Landroid/widget/PopupWindow;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/base/data/DockPoint;)I
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/base/extension/PopupLocator$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_0
    const/4 p0, 0x5

    goto :goto_0

    :pswitch_1
    const/4 p0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 p0, 0x3

    :goto_0
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lcom/onyx/android/sdk/base/data/DockPoint;)I
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/base/extension/PopupLocator$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_0
    const/16 p0, 0x50

    goto :goto_0

    :pswitch_1
    const/16 p0, 0x10

    goto :goto_0

    :pswitch_2
    const/16 p0, 0x30

    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/onyx/android/sdk/base/data/DockPoint;I)I
    .locals 0

    const/4 p0, 0x1

    if-eq p4, p0, :cond_2

    const/4 p0, 0x3

    if-eq p4, p0, :cond_1

    const/4 p0, 0x5

    if-eq p4, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/base/extension/PopupLocator$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p0, p0, p3

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_0
    iget p0, p2, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :pswitch_1
    iget p0, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    goto :goto_0

    :pswitch_2
    iget p0, p2, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->left:I

    :goto_0
    sub-int/2addr p0, p1

    return p0

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/base/extension/PopupLocator$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p0, p0, p2

    packed-switch p0, :pswitch_data_1

    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_3
    iget p0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :pswitch_4
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p0

    goto :goto_1

    :pswitch_5
    iget p0, p1, Landroid/graphics/Rect;->left:I

    :goto_1
    return p0

    :cond_2
    sget-object p0, Lcom/onyx/android/sdk/base/extension/PopupLocator$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p0, p0, p3

    packed-switch p0, :pswitch_data_2

    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_6
    iget p0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    goto :goto_2

    :pswitch_7
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p0

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    goto :goto_2

    :pswitch_8
    iget p0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    :goto_2
    sub-int/2addr p0, p1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public final d(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/onyx/android/sdk/base/data/DockPoint;I)I
    .locals 0

    const/16 p0, 0x10

    if-eq p4, p0, :cond_2

    const/16 p0, 0x30

    if-eq p4, p0, :cond_1

    const/16 p0, 0x50

    if-eq p4, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/base/extension/PopupLocator$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p0, p0, p3

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_0
    iget p0, p2, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :pswitch_1
    iget p0, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    goto :goto_0

    :pswitch_2
    iget p0, p2, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    :goto_0
    sub-int/2addr p0, p1

    return p0

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/base/extension/PopupLocator$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p0, p0, p2

    packed-switch p0, :pswitch_data_1

    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_3
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :pswitch_4
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p0

    goto :goto_1

    :pswitch_5
    iget p0, p1, Landroid/graphics/Rect;->top:I

    :goto_1
    return p0

    :cond_2
    sget-object p0, Lcom/onyx/android/sdk/base/extension/PopupLocator$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p0, p0, p3

    packed-switch p0, :pswitch_data_2

    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_6
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    goto :goto_2

    :pswitch_7
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p0

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    goto :goto_2

    :pswitch_8
    iget p0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    :goto_2
    sub-int/2addr p0, p1

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public final getCachedWindowLocation(Landroid/widget/PopupWindow;)Lcom/onyx/android/sdk/base/data/WindowLocation;
    .locals 0
    .param p1    # Landroid/widget/PopupWindow;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/widget/PopupWindow;",
            ">(TT;)",
            "Lcom/onyx/android/sdk/base/data/WindowLocation;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    sget p1, Lcom/onyx/android/sdk/base/R$id;->pop_window_location:I

    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lcom/onyx/android/sdk/base/data/WindowLocation;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/onyx/android/sdk/base/data/WindowLocation;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getWindowLocation(Landroid/widget/PopupWindow;Landroid/graphics/Rect;Lcom/onyx/android/sdk/base/data/DockPoint;Lcom/onyx/android/sdk/base/data/DockPoint;IILandroid/view/View;)Lcom/onyx/android/sdk/base/data/WindowLocation;
    .locals 9
    .param p1    # Landroid/widget/PopupWindow;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/base/data/DockPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/android/sdk/base/data/DockPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/widget/PopupWindow;",
            ">(TT;",
            "Landroid/graphics/Rect;",
            "Lcom/onyx/android/sdk/base/data/DockPoint;",
            "Lcom/onyx/android/sdk/base/data/DockPoint;",
            "II",
            "Landroid/view/View;",
            ")",
            "Lcom/onyx/android/sdk/base/data/WindowLocation;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object v0, p0

    move-object v1, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v2, p7

    const-string v3, "<this>"

    move-object v4, p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "dstRectInWindow"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "dstDockPoint"

    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "srcDockPoint"

    invoke-static {p4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "windowProviderView"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object v3, Lcom/onyx/android/sdk/base/extension/ViewLocator;->INSTANCE:Lcom/onyx/android/sdk/base/extension/ViewLocator;

    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/base/extension/ViewLocator;->getWindowDecorView(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    const-string v4, "getWindowDecorView(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/base/extension/ViewLocator;->rectInWindow(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    .line 6
    invoke-virtual {p0, p4}, Lcom/onyx/android/sdk/base/extension/PopupLocator;->a(Lcom/onyx/android/sdk/base/data/DockPoint;)I

    move-result v3

    .line 7
    invoke-virtual {p0, p4}, Lcom/onyx/android/sdk/base/extension/PopupLocator;->b(Lcom/onyx/android/sdk/base/data/DockPoint;)I

    move-result v4

    or-int v5, v3, v4

    .line 8
    invoke-virtual {p0, p2, v2, p3, v3}, Lcom/onyx/android/sdk/base/extension/PopupLocator;->c(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/onyx/android/sdk/base/data/DockPoint;I)I

    move-result v3

    .line 9
    invoke-virtual {p0, p2, v2, p3, v4}, Lcom/onyx/android/sdk/base/extension/PopupLocator;->d(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/onyx/android/sdk/base/data/DockPoint;I)I

    move-result v2

    .line 10
    new-instance v8, Lcom/onyx/android/sdk/base/data/WindowLocation;

    move-object v0, v8

    move v1, v3

    move v3, p5

    move v4, p6

    invoke-direct/range {v0 .. v7}, Lcom/onyx/android/sdk/base/data/WindowLocation;-><init>(IIIIILcom/onyx/android/sdk/base/data/DockPoint;Lcom/onyx/android/sdk/base/data/DockPoint;)V

    return-object v8
.end method

.method public final getWindowLocation(Landroid/widget/PopupWindow;Landroid/view/View;Lcom/onyx/android/sdk/base/data/DockPoint;Lcom/onyx/android/sdk/base/data/DockPoint;IILandroid/view/View;)Lcom/onyx/android/sdk/base/data/WindowLocation;
    .locals 8
    .param p1    # Landroid/widget/PopupWindow;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/base/data/DockPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/android/sdk/base/data/DockPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/widget/PopupWindow;",
            ">(TT;",
            "Landroid/view/View;",
            "Lcom/onyx/android/sdk/base/data/DockPoint;",
            "Lcom/onyx/android/sdk/base/data/DockPoint;",
            "II",
            "Landroid/view/View;",
            ")",
            "Lcom/onyx/android/sdk/base/data/WindowLocation;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v1, "<this>"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "anchorView"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "dstDockPoint"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "srcDockPoint"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "windowProviderView"

    invoke-static {p7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lcom/onyx/android/sdk/base/extension/ViewLocator;->INSTANCE:Lcom/onyx/android/sdk/base/extension/ViewLocator;

    invoke-virtual {v1, p2}, Lcom/onyx/android/sdk/base/extension/ViewLocator;->rectInWindow(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v5

    .line 2
    invoke-virtual {v1, p2, p7}, Lcom/onyx/android/sdk/base/extension/ViewLocator;->getWindowOffset(Landroid/view/View;Landroid/view/View;)Lcom/onyx/android/sdk/base/data/WindowLocation;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/WindowLocation;->getDx()I

    move-result v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/WindowLocation;->getDy()I

    move-result v0

    invoke-virtual {v5, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, v5

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    .line 4
    invoke-virtual/range {v0 .. v7}, Lcom/onyx/android/sdk/base/extension/PopupLocator;->getWindowLocation(Landroid/widget/PopupWindow;Landroid/graphics/Rect;Lcom/onyx/android/sdk/base/data/DockPoint;Lcom/onyx/android/sdk/base/data/DockPoint;IILandroid/view/View;)Lcom/onyx/android/sdk/base/data/WindowLocation;

    move-result-object v0

    return-object v0
.end method

.method public final show(Landroid/widget/PopupWindow;Lcom/onyx/android/sdk/base/data/WindowLocation;Landroid/view/View;)Landroid/widget/PopupWindow;
    .locals 3
    .param p1    # Landroid/widget/PopupWindow;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/WindowLocation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/widget/PopupWindow;",
            ">(TT;",
            "Lcom/onyx/android/sdk/base/data/WindowLocation;",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "windowLocation"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "windowProviderView"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/WindowLocation;->getGravity()I

    move-result p0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/WindowLocation;->getX()I

    move-result v0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/WindowLocation;->getDx()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/WindowLocation;->getY()I

    move-result v1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/WindowLocation;->getDy()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1, p3, p0, v0, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    sget p3, Lcom/onyx/android/sdk/base/R$id;->pop_window_location:I

    invoke-virtual {p0, p3, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-object p1
.end method

.method public final update(Landroid/widget/PopupWindow;Lcom/onyx/android/sdk/base/data/WindowLocation;II)Landroid/widget/PopupWindow;
    .locals 2
    .param p1    # Landroid/widget/PopupWindow;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/WindowLocation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/widget/PopupWindow;",
            ">(TT;",
            "Lcom/onyx/android/sdk/base/data/WindowLocation;",
            "II)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "windowLocation"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/WindowLocation;->getX()I

    move-result p0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/WindowLocation;->getDx()I

    move-result v0

    add-int/2addr p0, v0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/WindowLocation;->getY()I

    move-result v0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/WindowLocation;->getDy()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1, p0, v0, p3, p4}, Landroid/widget/PopupWindow;->update(IIII)V

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    sget p3, Lcom/onyx/android/sdk/base/R$id;->pop_window_location:I

    invoke-virtual {p0, p3, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-object p1
.end method
