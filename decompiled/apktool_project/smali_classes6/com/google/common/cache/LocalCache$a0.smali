.class public final Lcom/google/common/cache/LocalCache$a0;
.super Lcom/google/common/cache/LocalCache$m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/cache/LocalCache$m<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final f:I


# direct methods
.method public constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/a;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;TV;",
            "Lcom/google/common/cache/a<",
            "TK;TV;>;I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/cache/LocalCache$m;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/a;)V

    iput p4, p0, Lcom/google/common/cache/LocalCache$a0;->f:I

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/a;)Lcom/google/common/cache/LocalCache$t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;TV;",
            "Lcom/google/common/cache/a<",
            "TK;TV;>;)",
            "Lcom/google/common/cache/LocalCache$t<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/cache/LocalCache$a0;

    iget p0, p0, Lcom/google/common/cache/LocalCache$a0;->f:I

    invoke-direct {v0, p1, p2, p3, p0}, Lcom/google/common/cache/LocalCache$a0;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/a;I)V

    return-object v0
.end method

.method public getWeight()I
    .locals 0

    iget p0, p0, Lcom/google/common/cache/LocalCache$a0;->f:I

    return p0
.end method
