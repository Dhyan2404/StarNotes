.class final Lcom/onyx/android/sdk/data/utils/ObjectLruCache$saveOrUpdate$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/data/utils/ObjectLruCache;->saveOrUpdate(Ljava/lang/String;Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;
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

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003\"\u0008\u0008\u0001\u0010\u0004*\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "MODEL",
        "",
        "RESOURCE",
        "it",
        "",
        "accept"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $key:Ljava/lang/String;

.field final synthetic $tempFile:Ljava/lang/String;

.field final synthetic this$0:Lcom/onyx/android/sdk/data/utils/ObjectLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/data/utils/ObjectLruCache<",
            "TMODE",
            "L;",
            "TRESOURCE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/data/utils/ObjectLruCache;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/utils/ObjectLruCache<",
            "TMODE",
            "L;",
            "TRESOURCE;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/data/utils/ObjectLruCache$saveOrUpdate$2;->this$0:Lcom/onyx/android/sdk/data/utils/ObjectLruCache;

    iput-object p2, p0, Lcom/onyx/android/sdk/data/utils/ObjectLruCache$saveOrUpdate$2;->$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/onyx/android/sdk/data/utils/ObjectLruCache$saveOrUpdate$2;->$tempFile:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/utils/ObjectLruCache$saveOrUpdate$2;->accept(Z)V

    return-void
.end method

.method public final accept(Z)V
    .locals 2

    .line 2
    iget-object p1, p0, Lcom/onyx/android/sdk/data/utils/ObjectLruCache$saveOrUpdate$2;->this$0:Lcom/onyx/android/sdk/data/utils/ObjectLruCache;

    invoke-static {p1}, Lcom/onyx/android/sdk/data/utils/ObjectLruCache;->access$getCache(Lcom/onyx/android/sdk/data/utils/ObjectLruCache;)Lcom/bumptech/glide/disklrucache/DiskLruCache;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/android/sdk/data/utils/ObjectLruCache$saveOrUpdate$2;->this$0:Lcom/onyx/android/sdk/data/utils/ObjectLruCache;

    iget-object v1, p0, Lcom/onyx/android/sdk/data/utils/ObjectLruCache$saveOrUpdate$2;->$key:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/data/utils/ObjectLruCache;->access$getSafeKey(Lcom/onyx/android/sdk/data/utils/ObjectLruCache;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->edit(Ljava/lang/String;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->getFile(I)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object p0, p0, Lcom/onyx/android/sdk/data/utils/ObjectLruCache$saveOrUpdate$2;->$tempFile:Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lonyx/org/apache/commons/io/FileUtils;->moveFile(Ljava/io/File;Ljava/io/File;)V

    .line 5
    invoke-virtual {p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->commit()V

    return-void
.end method
