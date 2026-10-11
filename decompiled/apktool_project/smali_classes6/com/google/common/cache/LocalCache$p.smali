.class public Lcom/google/common/cache/LocalCache$p;
.super Lcom/google/common/cache/LocalCache$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "p"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/cache/LocalCache$d<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public final f:I

.field public final g:Lcom/google/common/cache/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/a<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public volatile h:Lcom/google/common/cache/LocalCache$t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/LocalCache$t<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;ILcom/google/common/cache/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/a<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/cache/LocalCache$d;-><init>()V

    invoke-static {}, Lcom/google/common/cache/LocalCache;->X()Lcom/google/common/cache/LocalCache$t;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$p;->h:Lcom/google/common/cache/LocalCache$t;

    iput-object p1, p0, Lcom/google/common/cache/LocalCache$p;->e:Ljava/lang/Object;

    iput p2, p0, Lcom/google/common/cache/LocalCache$p;->f:I

    iput-object p3, p0, Lcom/google/common/cache/LocalCache$p;->g:Lcom/google/common/cache/a;

    return-void
.end method


# virtual methods
.method public getHash()I
    .locals 0

    iget p0, p0, Lcom/google/common/cache/LocalCache$p;->f:I

    return p0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/cache/LocalCache$p;->e:Ljava/lang/Object;

    return-object p0
.end method

.method public getNext()Lcom/google/common/cache/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/a<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/cache/LocalCache$p;->g:Lcom/google/common/cache/a;

    return-object p0
.end method

.method public getValueReference()Lcom/google/common/cache/LocalCache$t;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/LocalCache$t<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/cache/LocalCache$p;->h:Lcom/google/common/cache/LocalCache$t;

    return-object p0
.end method

.method public setValueReference(Lcom/google/common/cache/LocalCache$t;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$t<",
            "TK;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/cache/LocalCache$p;->h:Lcom/google/common/cache/LocalCache$t;

    return-void
.end method
