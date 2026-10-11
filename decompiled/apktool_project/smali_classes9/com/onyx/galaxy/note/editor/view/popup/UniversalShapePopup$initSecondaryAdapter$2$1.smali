.class final synthetic Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapePopup$initSecondaryAdapter$2$1;
.super Lkotlin/jvm/internal/AdaptedFunctionReference;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapePopup;->L(Lcom/onyx/galaxy/note/editor/view/adapter/UniversalShapeTypeAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/AdaptedFunctionReference;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/view/DragEvent;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const/4 v1, 0x1

    const-class v3, Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapePopup;

    const-string v4, "handleDragAndDropEvent"

    const-string v5, "handleDragAndDropEvent(Landroid/view/DragEvent;)Z"

    const/16 v6, 0x8

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/AdaptedFunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/view/DragEvent;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapePopup$initSecondaryAdapter$2$1;->invoke(Landroid/view/DragEvent;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroid/view/DragEvent;)V
    .locals 1
    .param p1    # Landroid/view/DragEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lkotlin/jvm/internal/AdaptedFunctionReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapePopup;

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapePopup;->access$handleDragAndDropEvent(Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapePopup;Landroid/view/DragEvent;)Z

    return-void
.end method
