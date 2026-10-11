.class public final synthetic Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/common/extension/MovingDraggable$OnMoveInterceptListener;
.implements Lkotlin/jvm/internal/FunctionAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->show(Landroid/app/Activity;Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$a;->a:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/onyx/galaxy/note/common/extension/MovingDraggable$OnMoveInterceptListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lkotlin/jvm/internal/FunctionAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$a;->getFunctionDelegate()Lkotlin/Function;

    move-result-object p0

    check-cast p1, Lkotlin/jvm/internal/FunctionAdapter;

    invoke-interface {p1}, Lkotlin/jvm/internal/FunctionAdapter;->getFunctionDelegate()Lkotlin/Function;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :cond_0
    return v1
.end method

.method public final getFunctionDelegate()Lkotlin/Function;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Function<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v7, Lkotlin/jvm/internal/FunctionReferenceImpl;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$a;->a:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    const-class v3, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    const-string v4, "onMoveInterceptListener"

    const-string v5, "onMoveInterceptListener(FFFF)Z"

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v7
.end method

.method public final hashCode()I
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$a;->getFunctionDelegate()Lkotlin/Function;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final onIntercept(FFFF)Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$a;->a:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->access$onMoveInterceptListener(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;FFFF)Z

    move-result p0

    return p0
.end method
