.class public Lcom/google/common/cache/LocalCache$l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/cache/LocalCache$l;->h(Ljava/lang/Object;Lcom/google/common/cache/CacheLoader;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function<",
        "TV;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/google/common/cache/LocalCache$l;


# direct methods
.method public constructor <init>(Lcom/google/common/cache/LocalCache$l;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/cache/LocalCache$l$a;->e:Lcom/google/common/cache/LocalCache$l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/cache/LocalCache$l$a;->e:Lcom/google/common/cache/LocalCache$l;

    invoke-virtual {p0, p1}, Lcom/google/common/cache/LocalCache$l;->i(Ljava/lang/Object;)Z

    return-object p1
.end method
