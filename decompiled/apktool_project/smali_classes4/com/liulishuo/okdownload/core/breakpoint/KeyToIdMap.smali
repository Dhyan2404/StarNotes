.class public Lcom/liulishuo/okdownload/core/breakpoint/KeyToIdMap;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/HashMap;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroid/util/SparseArray;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/liulishuo/okdownload/core/breakpoint/KeyToIdMap;-><init>(Ljava/util/HashMap;Landroid/util/SparseArray;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/HashMap;Landroid/util/SparseArray;)V
    .locals 0
    .param p1    # Ljava/util/HashMap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/SparseArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/liulishuo/okdownload/core/breakpoint/KeyToIdMap;->a:Ljava/util/HashMap;

    .line 4
    iput-object p2, p0, Lcom/liulishuo/okdownload/core/breakpoint/KeyToIdMap;->b:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public a(Lcom/liulishuo/okdownload/DownloadTask;)Ljava/lang/String;
    .locals 1
    .param p1    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/DownloadTask;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/DownloadTask;->getFilename()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public add(Lcom/liulishuo/okdownload/DownloadTask;I)V
    .locals 2
    .param p1    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/liulishuo/okdownload/core/breakpoint/KeyToIdMap;->a(Lcom/liulishuo/okdownload/DownloadTask;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/breakpoint/KeyToIdMap;->a:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/breakpoint/KeyToIdMap;->b:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public get(Lcom/liulishuo/okdownload/DownloadTask;)Ljava/lang/Integer;
    .locals 1
    .param p1    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/breakpoint/KeyToIdMap;->a:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/liulishuo/okdownload/core/breakpoint/KeyToIdMap;->a(Lcom/liulishuo/okdownload/DownloadTask;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public remove(I)V
    .locals 2

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/breakpoint/KeyToIdMap;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/liulishuo/okdownload/core/breakpoint/KeyToIdMap;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/breakpoint/KeyToIdMap;->b:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    return-void
.end method
