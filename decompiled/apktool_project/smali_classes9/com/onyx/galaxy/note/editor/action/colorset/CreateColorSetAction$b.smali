.class public final Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction;->create()Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction$b;->e:Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/replicator/colorset/core/ColorSetProvider;)Ljava/lang/Boolean;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/replicator/colorset/core/ColorSetProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction$b;->e:Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction;->access$queryCustomColorSetCount(Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction;)J

    move-result-wide p0

    sget-object v0, Lcom/onyx/android/sdk/replicator/colorset/core/ColorSetProvider;->Companion:Lcom/onyx/android/sdk/replicator/colorset/core/ColorSetProvider$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/colorset/core/ColorSetProvider$Companion;->getMAX_COLOR_SET_COUNT()I

    move-result v0

    int-to-long v0, v0

    cmp-long p0, p0, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/replicator/colorset/core/ColorSetProvider;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction$b;->a(Lcom/onyx/android/sdk/replicator/colorset/core/ColorSetProvider;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
