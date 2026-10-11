.class public final Lcom/onyx/galaxy/note/editor/action/colorset/RenameColorSetAction$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/action/colorset/RenameColorSetAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/action/colorset/RenameColorSetAction;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/action/colorset/RenameColorSetAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/action/colorset/RenameColorSetAction$e;->e:Lcom/onyx/galaxy/note/editor/action/colorset/RenameColorSetAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/Unit;)V
    .locals 1
    .param p1    # Lkotlin/Unit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    new-instance v0, Lcom/onyx/galaxy/note/editor/event/RenameColorSetModelEvent;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/colorset/RenameColorSetAction$e;->e:Lcom/onyx/galaxy/note/editor/action/colorset/RenameColorSetAction;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/action/colorset/RenameColorSetAction;->access$getColorSetModel$p(Lcom/onyx/galaxy/note/editor/action/colorset/RenameColorSetAction;)Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/event/RenameColorSetModelEvent;-><init>(Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;)V

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/action/colorset/RenameColorSetAction$e;->a(Lkotlin/Unit;)V

    return-void
.end method
