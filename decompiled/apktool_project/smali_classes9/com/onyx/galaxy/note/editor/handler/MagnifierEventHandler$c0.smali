.class public final Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->X()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$c0;->e:Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$c0;->e:Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->access$updateMagnifierEditorScaleRange(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$c0;->a(Landroid/view/View;)V

    return-void
.end method
