.class public final Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment$refreshProgress$nativeArgs$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;->E0(Lcom/onyx/galaxy/note/datarepository/event/DownloadEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\t*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001R\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000cR\u0017\u0010\u0010\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\n\u001a\u0004\u0008\u000f\u0010\u000c\u00a8\u0006\u0011"
    }
    d2 = {
        "com/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment$refreshProgress$nativeArgs$1",
        "",
        "",
        "a",
        "Ljava/lang/String;",
        "getId",
        "()Ljava/lang/String;",
        "id",
        "",
        "b",
        "I",
        "getPercent",
        "()I",
        "percent",
        "c",
        "getStatus",
        "status",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/datarepository/event/DownloadEvent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/datarepository/event/DownloadEvent;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment$refreshProgress$nativeArgs$1;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/datarepository/event/DownloadEvent;->getPercent()I

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment$refreshProgress$nativeArgs$1;->b:I

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/datarepository/event/DownloadEvent;->getStatus()I

    move-result p1

    iput p1, p0, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment$refreshProgress$nativeArgs$1;->c:I

    return-void
.end method


# virtual methods
.method public final getId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment$refreshProgress$nativeArgs$1;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final getPercent()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment$refreshProgress$nativeArgs$1;->b:I

    return p0
.end method

.method public final getStatus()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment$refreshProgress$nativeArgs$1;->c:I

    return p0
.end method
