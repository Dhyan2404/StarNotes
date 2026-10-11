.class final Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$handler$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;[ILandroid/graphics/Rect;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;",
        "invoke"
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
.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$handler$2;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$handler$2;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$handler$2;->invoke()Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;

    move-result-object p0

    return-object p0
.end method
