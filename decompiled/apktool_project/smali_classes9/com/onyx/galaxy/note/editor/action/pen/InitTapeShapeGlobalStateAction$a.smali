.class public final Lcom/onyx/galaxy/note/editor/action/pen/InitTapeShapeGlobalStateAction$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/action/pen/InitTapeShapeGlobalStateAction;->create()Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/action/pen/InitTapeShapeGlobalStateAction;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/action/pen/InitTapeShapeGlobalStateAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/action/pen/InitTapeShapeGlobalStateAction$a;->e:Lcom/onyx/galaxy/note/editor/action/pen/InitTapeShapeGlobalStateAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/galaxy/note/editor/action/pen/InitTapeShapeGlobalStateAction;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/action/pen/InitTapeShapeGlobalStateAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->Companion:Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape$Companion;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/pen/InitTapeShapeGlobalStateAction$a;->e:Lcom/onyx/galaxy/note/editor/action/pen/InitTapeShapeGlobalStateAction;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/action/pen/InitTapeShapeGlobalStateAction;->getShowTape()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape$Companion;->setAllTapeClose(Z)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/galaxy/note/editor/action/pen/InitTapeShapeGlobalStateAction;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/action/pen/InitTapeShapeGlobalStateAction$a;->a(Lcom/onyx/galaxy/note/editor/action/pen/InitTapeShapeGlobalStateAction;)V

    return-void
.end method
