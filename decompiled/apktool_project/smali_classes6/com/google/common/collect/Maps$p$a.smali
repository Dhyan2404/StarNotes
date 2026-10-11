.class public Lcom/google/common/collect/Maps$p$a;
.super Lcom/google/common/collect/Maps$q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Maps$p;->e()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$q<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/google/common/collect/Maps$p;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/Maps$p;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/Maps$p$a;->e:Lcom/google/common/collect/Maps$p;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$q;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/collect/Maps$p$a;->e:Lcom/google/common/collect/Maps$p;

    return-object p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/collect/Maps$p$a;->e:Lcom/google/common/collect/Maps$p;

    invoke-virtual {p0}, Lcom/google/common/collect/Maps$p;->entryIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
