.class public Lcom/onyx/poi/cache/BitmapMemoryLruCache;
.super Landroid/util/LruCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Ljava/lang/String;",
        "Lcom/onyx/poi/cache/BitmapHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/String;

    check-cast p3, Lcom/onyx/poi/cache/BitmapHolder;

    check-cast p4, Lcom/onyx/poi/cache/BitmapHolder;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/poi/cache/BitmapMemoryLruCache;->entryRemoved(ZLjava/lang/String;Lcom/onyx/poi/cache/BitmapHolder;Lcom/onyx/poi/cache/BitmapHolder;)V

    return-void
.end method

.method public entryRemoved(ZLjava/lang/String;Lcom/onyx/poi/cache/BitmapHolder;Lcom/onyx/poi/cache/BitmapHolder;)V
    .locals 0

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p3}, Lcom/onyx/poi/cache/BitmapHolder;->detach()V

    :cond_0
    return-void
.end method

.method public bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/onyx/poi/cache/BitmapHolder;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/poi/cache/BitmapMemoryLruCache;->sizeOf(Ljava/lang/String;Lcom/onyx/poi/cache/BitmapHolder;)I

    move-result p0

    return p0
.end method

.method public sizeOf(Ljava/lang/String;Lcom/onyx/poi/cache/BitmapHolder;)I
    .locals 0

    if-nez p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p2}, Lcom/onyx/poi/cache/BitmapHolder;->getSize()I

    move-result p0

    :goto_0
    return p0
.end method
