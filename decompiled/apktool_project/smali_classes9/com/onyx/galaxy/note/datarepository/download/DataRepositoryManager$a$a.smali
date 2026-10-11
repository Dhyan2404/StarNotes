.class public final Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager$a;->a(Lcom/onyx/galaxy/note/datarepository/download/DownloadTask;)Lio/reactivex/rxjava3/core/ObservableSource;
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
.field public final synthetic e:Lcom/onyx/galaxy/note/datarepository/download/DownloadTask;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/datarepository/download/DownloadTask;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager$a$a;->e:Lcom/onyx/galaxy/note/datarepository/download/DownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager;->INSTANCE:Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager;

    iget-object p0, p0, Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager$a$a;->e:Lcom/onyx/galaxy/note/datarepository/download/DownloadTask;

    invoke-static {v0, p0, p1}, Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager;->access$updateTaskProgress(Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager;Lcom/onyx/galaxy/note/datarepository/download/DownloadTask;Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager$a$a;->a(Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)V

    return-void
.end method
