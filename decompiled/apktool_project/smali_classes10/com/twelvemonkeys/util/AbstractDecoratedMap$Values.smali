.class public Lcom/twelvemonkeys/util/AbstractDecoratedMap$Values;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twelvemonkeys/util/AbstractDecoratedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/twelvemonkeys/util/AbstractDecoratedMap;


# direct methods
.method public constructor <init>(Lcom/twelvemonkeys/util/AbstractDecoratedMap;)V
    .locals 0

    iput-object p1, p0, Lcom/twelvemonkeys/util/AbstractDecoratedMap$Values;->e:Lcom/twelvemonkeys/util/AbstractDecoratedMap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/util/AbstractDecoratedMap$Values;->e:Lcom/twelvemonkeys/util/AbstractDecoratedMap;

    invoke-virtual {p0}, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/util/AbstractDecoratedMap$Values;->e:Lcom/twelvemonkeys/util/AbstractDecoratedMap;

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/twelvemonkeys/util/AbstractDecoratedMap$Values;->e:Lcom/twelvemonkeys/util/AbstractDecoratedMap;

    invoke-virtual {p0}, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->newValueIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/util/AbstractDecoratedMap$Values;->e:Lcom/twelvemonkeys/util/AbstractDecoratedMap;

    invoke-virtual {p0}, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->size()I

    move-result p0

    return p0
.end method
