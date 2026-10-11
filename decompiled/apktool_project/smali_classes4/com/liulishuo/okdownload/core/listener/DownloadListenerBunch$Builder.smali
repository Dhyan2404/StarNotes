.class public Lcom/liulishuo/okdownload/core/listener/DownloadListenerBunch$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/okdownload/core/listener/DownloadListenerBunch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/liulishuo/okdownload/DownloadListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/okdownload/core/listener/DownloadListenerBunch$Builder;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public append(Lcom/liulishuo/okdownload/DownloadListener;)Lcom/liulishuo/okdownload/core/listener/DownloadListenerBunch$Builder;
    .locals 1
    .param p1    # Lcom/liulishuo/okdownload/DownloadListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/listener/DownloadListenerBunch$Builder;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/listener/DownloadListenerBunch$Builder;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public build()Lcom/liulishuo/okdownload/core/listener/DownloadListenerBunch;
    .locals 2

    new-instance v0, Lcom/liulishuo/okdownload/core/listener/DownloadListenerBunch;

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/listener/DownloadListenerBunch$Builder;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/liulishuo/okdownload/DownloadListener;

    invoke-interface {p0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/liulishuo/okdownload/DownloadListener;

    invoke-direct {v0, p0}, Lcom/liulishuo/okdownload/core/listener/DownloadListenerBunch;-><init>([Lcom/liulishuo/okdownload/DownloadListener;)V

    return-object v0
.end method

.method public remove(Lcom/liulishuo/okdownload/DownloadListener;)Z
    .locals 0

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/listener/DownloadListenerBunch$Builder;->a:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
