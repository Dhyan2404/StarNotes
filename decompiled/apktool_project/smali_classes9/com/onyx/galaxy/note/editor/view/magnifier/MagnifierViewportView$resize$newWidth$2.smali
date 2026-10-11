.class final Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$resize$newWidth$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->n(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "()Ljava/lang/Float;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$resize$newWidth$2;->this$0:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Float;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$resize$newWidth$2;->this$0:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->access$getParentWidth(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;)I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x40c00000    # 6.0f

    div-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$resize$newWidth$2;->invoke()Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
