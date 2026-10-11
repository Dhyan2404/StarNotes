.class public final Lcom/onyx/galaxy/note/category/handler/DocManagerHandler$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/handler/DocManagerHandler;->createNoteByTemplate(Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;)V
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
.field public final synthetic e:Lcom/onyx/galaxy/note/category/handler/DocManagerHandler;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/handler/DocManagerHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/handler/DocManagerHandler$e;->e:Lcom/onyx/galaxy/note/category/handler/DocManagerHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/handler/DocManagerHandler$e;->e:Lcom/onyx/galaxy/note/category/handler/DocManagerHandler;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;->getNoteModel()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/handler/DocManagerHandler;->access$postCreateNoteModelResultEvent(Lcom/onyx/galaxy/note/category/handler/DocManagerHandler;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/handler/DocManagerHandler$e;->a(Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;)V

    return-void
.end method
