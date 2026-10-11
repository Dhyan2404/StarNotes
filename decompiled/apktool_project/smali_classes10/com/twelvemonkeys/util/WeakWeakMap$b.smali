.class public Lcom/twelvemonkeys/util/WeakWeakMap$b;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twelvemonkeys/util/WeakWeakMap;->values()Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/twelvemonkeys/util/WeakWeakMap;


# direct methods
.method public constructor <init>(Lcom/twelvemonkeys/util/WeakWeakMap;)V
    .locals 0

    iput-object p1, p0, Lcom/twelvemonkeys/util/WeakWeakMap$b;->e:Lcom/twelvemonkeys/util/WeakWeakMap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/twelvemonkeys/util/WeakWeakMap$b$a;

    invoke-direct {v0, p0}, Lcom/twelvemonkeys/util/WeakWeakMap$b$a;-><init>(Lcom/twelvemonkeys/util/WeakWeakMap$b;)V

    return-object v0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/util/WeakWeakMap$b;->e:Lcom/twelvemonkeys/util/WeakWeakMap;

    invoke-virtual {p0}, Ljava/util/AbstractMap;->size()I

    move-result p0

    return p0
.end method
