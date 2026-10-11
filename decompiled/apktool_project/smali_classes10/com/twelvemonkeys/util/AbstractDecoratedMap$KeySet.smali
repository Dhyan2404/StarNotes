.class public Lcom/twelvemonkeys/util/AbstractDecoratedMap$KeySet;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twelvemonkeys/util/AbstractDecoratedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/twelvemonkeys/util/AbstractDecoratedMap;


# direct methods
.method public constructor <init>(Lcom/twelvemonkeys/util/AbstractDecoratedMap;)V
    .locals 0

    iput-object p1, p0, Lcom/twelvemonkeys/util/AbstractDecoratedMap$KeySet;->e:Lcom/twelvemonkeys/util/AbstractDecoratedMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/util/AbstractDecoratedMap$KeySet;->e:Lcom/twelvemonkeys/util/AbstractDecoratedMap;

    invoke-virtual {p0}, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/util/AbstractDecoratedMap$KeySet;->e:Lcom/twelvemonkeys/util/AbstractDecoratedMap;

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/twelvemonkeys/util/AbstractDecoratedMap$KeySet;->e:Lcom/twelvemonkeys/util/AbstractDecoratedMap;

    invoke-virtual {p0}, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->newKeyIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/util/AbstractDecoratedMap$KeySet;->e:Lcom/twelvemonkeys/util/AbstractDecoratedMap;

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/util/AbstractDecoratedMap$KeySet;->e:Lcom/twelvemonkeys/util/AbstractDecoratedMap;

    invoke-virtual {p0}, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->size()I

    move-result p0

    return p0
.end method
