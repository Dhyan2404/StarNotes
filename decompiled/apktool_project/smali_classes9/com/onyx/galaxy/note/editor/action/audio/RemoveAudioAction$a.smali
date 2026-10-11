.class public final Lcom/onyx/galaxy/note/editor/action/audio/RemoveAudioAction$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/action/audio/RemoveAudioAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
        "Lio/reactivex/rxjava3/functions/Predicate;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/action/audio/RemoveAudioAction;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/action/audio/RemoveAudioAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/action/audio/RemoveAudioAction$a;->e:Lcom/onyx/galaxy/note/editor/action/audio/RemoveAudioAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/galaxy/note/editor/action/audio/RemoveAudioAction;)Z
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/action/audio/RemoveAudioAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/audio/RemoveAudioAction$a;->e:Lcom/onyx/galaxy/note/editor/action/audio/RemoveAudioAction;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/action/audio/RemoveAudioAction;->access$getAudioList$p(Lcom/onyx/galaxy/note/editor/action/audio/RemoveAudioAction;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/onyx/galaxy/note/editor/action/audio/RemoveAudioAction;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/action/audio/RemoveAudioAction$a;->a(Lcom/onyx/galaxy/note/editor/action/audio/RemoveAudioAction;)Z

    move-result p0

    return p0
.end method
