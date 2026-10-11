.class public final Lcom/onyx/galaxy/note/datarepository/action/DownloadTaskAction$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/datarepository/action/DownloadTaskAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/galaxy/note/datarepository/action/DownloadTaskAction;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/datarepository/action/DownloadTaskAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/datarepository/action/DownloadTaskAction$a;->e:Lcom/onyx/galaxy/note/datarepository/action/DownloadTaskAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/galaxy/note/datarepository/action/DownloadTaskAction;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/datarepository/action/DownloadTaskAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager;->INSTANCE:Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager;

    iget-object p0, p0, Lcom/onyx/galaxy/note/datarepository/action/DownloadTaskAction$a;->e:Lcom/onyx/galaxy/note/datarepository/action/DownloadTaskAction;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/datarepository/action/DownloadTaskAction;->getLibraryBean()Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager;->deleteLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/galaxy/note/datarepository/action/DownloadTaskAction;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/datarepository/action/DownloadTaskAction$a;->a(Lcom/onyx/galaxy/note/datarepository/action/DownloadTaskAction;)V

    return-void
.end method
