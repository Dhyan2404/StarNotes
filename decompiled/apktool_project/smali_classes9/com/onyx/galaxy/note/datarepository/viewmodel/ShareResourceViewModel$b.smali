.class public final Lcom/onyx/galaxy/note/datarepository/viewmodel/ShareResourceViewModel$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/datarepository/viewmodel/ShareResourceViewModel;->startDownload(Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceBean;Lkotlin/jvm/functions/Function1;)V
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
.field public final synthetic e:Lcom/onyx/galaxy/note/datarepository/viewmodel/ShareResourceViewModel;

.field public final synthetic f:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceDownloadBean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/datarepository/viewmodel/ShareResourceViewModel;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/datarepository/viewmodel/ShareResourceViewModel;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceDownloadBean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/datarepository/viewmodel/ShareResourceViewModel$b;->e:Lcom/onyx/galaxy/note/datarepository/viewmodel/ShareResourceViewModel;

    iput-object p2, p0, Lcom/onyx/galaxy/note/datarepository/viewmodel/ShareResourceViewModel$b;->f:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/Pair;)V
    .locals 3
    .param p1    # Lkotlin/Pair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;",
            "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceDownloadBean;

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    invoke-direct {v0, v1, v2}, Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceDownloadBean;-><init>(Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/datarepository/viewmodel/ShareResourceViewModel$b;->e:Lcom/onyx/galaxy/note/datarepository/viewmodel/ShareResourceViewModel;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/datarepository/viewmodel/ShareResourceViewModel;->getDownloadProgress()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/onyx/galaxy/note/datarepository/viewmodel/ShareResourceViewModel$b;->f:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/datarepository/viewmodel/ShareResourceViewModel$b;->a(Lkotlin/Pair;)V

    return-void
.end method
