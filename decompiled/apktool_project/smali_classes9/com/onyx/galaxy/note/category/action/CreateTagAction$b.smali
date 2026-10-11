.class public final Lcom/onyx/galaxy/note/category/action/CreateTagAction$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/action/CreateTagAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/galaxy/note/category/action/CreateTagAction;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/action/CreateTagAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/CreateTagAction$b;->e:Lcom/onyx/galaxy/note/category/action/CreateTagAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/CreateTagAction$b;->e:Lcom/onyx/galaxy/note/category/action/CreateTagAction;

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/action/CreateTagAction;->access$statistics(Lcom/onyx/galaxy/note/category/action/CreateTagAction;Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/CreateTagAction$b;->a(Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;)V

    return-void
.end method
