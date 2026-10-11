.class public final Lcom/onyx/galaxy/note/common/view/BasePopupWindow$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/common/view/BasePopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/common/view/BasePopupWindow$Companion$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J8\u0010\u0005\u001a\u00020\u0006*\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\tR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/common/view/BasePopupWindow$Companion;",
        "",
        "()V",
        "VISIBLE_DELAY_MS",
        "",
        "showByDockType",
        "",
        "Landroid/widget/PopupWindow;",
        "anchor",
        "Landroid/view/View;",
        "dockType",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;",
        "dx",
        "",
        "dy",
        "parent",
        "note_overseasRelease"
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
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow$Companion;-><init>()V

    return-void
.end method

.method public static synthetic showByDockType$default(Lcom/onyx/galaxy/note/common/view/BasePopupWindow$Companion;Landroid/widget/PopupWindow;Landroid/view/View;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;IILandroid/view/View;ILjava/lang/Object;)V
    .locals 9

    and-int/lit8 v0, p7, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v6, v1

    goto :goto_0

    :cond_0
    move v6, p4

    :goto_0
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_1

    move v7, v1

    goto :goto_1

    :cond_1
    move v7, p5

    :goto_1
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_2

    sget-object v0, Lcom/onyx/android/sdk/base/extension/Activity;->INSTANCE:Lcom/onyx/android/sdk/base/extension/Activity;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/extension/Activity;->getTopContentView()Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    goto :goto_2

    :cond_2
    move-object v8, p6

    :goto_2
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v2 .. v8}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow$Companion;->showByDockType(Landroid/widget/PopupWindow;Landroid/view/View;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;IILandroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final showByDockType(Landroid/widget/PopupWindow;Landroid/view/View;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;IILandroid/view/View;)V
    .locals 12
    .param p1    # Landroid/widget/PopupWindow;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object v10, p1

    move-object/from16 v11, p6

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "anchor"

    move-object v2, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dockType"

    move-object v1, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/galaxy/note/common/view/BasePopupWindow$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/base/extension/PopupLocator;->INSTANCE:Lcom/onyx/android/sdk/base/extension/PopupLocator;

    sget-object v3, Lcom/onyx/android/sdk/base/data/DockPoint;->CENTER_RIGHT:Lcom/onyx/android/sdk/base/data/DockPoint;

    sget-object v4, Lcom/onyx/android/sdk/base/data/DockPoint;->CENTER_LEFT:Lcom/onyx/android/sdk/base/data/DockPoint;

    const/4 v6, 0x0

    const/16 v8, 0x10

    const/4 v9, 0x0

    move-object v1, p1

    move-object v2, p2

    move/from16 v5, p4

    move-object/from16 v7, p6

    invoke-static/range {v0 .. v9}, Lcom/onyx/android/sdk/base/extension/PopupLocator;->getWindowLocation$default(Lcom/onyx/android/sdk/base/extension/PopupLocator;Landroid/widget/PopupWindow;Landroid/view/View;Lcom/onyx/android/sdk/base/data/DockPoint;Lcom/onyx/android/sdk/base/data/DockPoint;IILandroid/view/View;ILjava/lang/Object;)Lcom/onyx/android/sdk/base/data/WindowLocation;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_1
    sget-object v0, Lcom/onyx/android/sdk/base/extension/PopupLocator;->INSTANCE:Lcom/onyx/android/sdk/base/extension/PopupLocator;

    sget-object v3, Lcom/onyx/android/sdk/base/data/DockPoint;->CENTER_LEFT:Lcom/onyx/android/sdk/base/data/DockPoint;

    sget-object v4, Lcom/onyx/android/sdk/base/data/DockPoint;->CENTER_RIGHT:Lcom/onyx/android/sdk/base/data/DockPoint;

    const/4 v6, 0x0

    const/16 v8, 0x10

    const/4 v9, 0x0

    move-object v1, p1

    move-object v2, p2

    move/from16 v5, p4

    move-object/from16 v7, p6

    invoke-static/range {v0 .. v9}, Lcom/onyx/android/sdk/base/extension/PopupLocator;->getWindowLocation$default(Lcom/onyx/android/sdk/base/extension/PopupLocator;Landroid/widget/PopupWindow;Landroid/view/View;Lcom/onyx/android/sdk/base/data/DockPoint;Lcom/onyx/android/sdk/base/data/DockPoint;IILandroid/view/View;ILjava/lang/Object;)Lcom/onyx/android/sdk/base/data/WindowLocation;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/onyx/android/sdk/base/extension/PopupLocator;->INSTANCE:Lcom/onyx/android/sdk/base/extension/PopupLocator;

    sget-object v3, Lcom/onyx/android/sdk/base/data/DockPoint;->BOTTOM_CENTER:Lcom/onyx/android/sdk/base/data/DockPoint;

    sget-object v4, Lcom/onyx/android/sdk/base/data/DockPoint;->TOP_CENTER:Lcom/onyx/android/sdk/base/data/DockPoint;

    const/4 v5, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v1, p1

    move-object v2, p2

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-static/range {v0 .. v9}, Lcom/onyx/android/sdk/base/extension/PopupLocator;->getWindowLocation$default(Lcom/onyx/android/sdk/base/extension/PopupLocator;Landroid/widget/PopupWindow;Landroid/view/View;Lcom/onyx/android/sdk/base/data/DockPoint;Lcom/onyx/android/sdk/base/data/DockPoint;IILandroid/view/View;ILjava/lang/Object;)Lcom/onyx/android/sdk/base/data/WindowLocation;

    move-result-object v0

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/onyx/android/sdk/base/extension/PopupLocator;->INSTANCE:Lcom/onyx/android/sdk/base/extension/PopupLocator;

    sget-object v3, Lcom/onyx/android/sdk/base/data/DockPoint;->TOP_CENTER:Lcom/onyx/android/sdk/base/data/DockPoint;

    sget-object v4, Lcom/onyx/android/sdk/base/data/DockPoint;->BOTTOM_CENTER:Lcom/onyx/android/sdk/base/data/DockPoint;

    const/4 v5, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v1, p1

    move-object v2, p2

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-static/range {v0 .. v9}, Lcom/onyx/android/sdk/base/extension/PopupLocator;->getWindowLocation$default(Lcom/onyx/android/sdk/base/extension/PopupLocator;Landroid/widget/PopupWindow;Landroid/view/View;Lcom/onyx/android/sdk/base/data/DockPoint;Lcom/onyx/android/sdk/base/data/DockPoint;IILandroid/view/View;ILjava/lang/Object;)Lcom/onyx/android/sdk/base/data/WindowLocation;

    move-result-object v0

    :goto_0
    sget-object v1, Lcom/onyx/android/sdk/base/extension/PopupLocator;->INSTANCE:Lcom/onyx/android/sdk/base/extension/PopupLocator;

    invoke-virtual {v1, p1, v0, v11}, Lcom/onyx/android/sdk/base/extension/PopupLocator;->show(Landroid/widget/PopupWindow;Lcom/onyx/android/sdk/base/data/WindowLocation;Landroid/view/View;)Landroid/widget/PopupWindow;

    return-void
.end method
