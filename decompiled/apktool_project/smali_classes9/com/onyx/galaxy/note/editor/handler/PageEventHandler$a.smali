.class public final Lcom/onyx/galaxy/note/editor/handler/PageEventHandler$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/editor/handler/PageEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
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
    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 0

    invoke-static {}, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler;->access$getContainerTranslationX$cp()F

    move-result p0

    return p0
.end method

.method public final b()Landroid/graphics/Rect;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler;->access$getShareLeftSideBarRect$cp()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public final c()Landroid/graphics/Rect;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler;->access$getShareRightSideBarRect$cp()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public final d()I
    .locals 0

    invoke-static {}, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler;->access$getShareToolBarRect$cp()I

    move-result p0

    return p0
.end method

.method public final e(F)V
    .locals 0

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler;->access$setContainerTranslationX$cp(F)V

    return-void
.end method

.method public final f(Landroid/graphics/Rect;)V
    .locals 0
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler;->access$setShareLeftSideBarRect$cp(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final g(Landroid/graphics/Rect;)V
    .locals 0
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler;->access$setShareRightSideBarRect$cp(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final h(I)V
    .locals 0

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler;->access$setShareToolBarRect$cp(I)V

    return-void
.end method
