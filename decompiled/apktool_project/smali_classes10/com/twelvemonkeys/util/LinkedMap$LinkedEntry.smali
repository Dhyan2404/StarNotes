.class public Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;
.super Lcom/twelvemonkeys/util/AbstractDecoratedMap$BasicEntry;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twelvemonkeys/util/LinkedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LinkedEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/twelvemonkeys/util/AbstractDecoratedMap$BasicEntry<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field next:Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field previous:Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/twelvemonkeys/util/AbstractDecoratedMap$BasicEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;->next:Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;

    return-void
.end method


# virtual methods
.method public addBefore(Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;->next:Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;

    iget-object p1, p1, Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;->previous:Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;

    iput-object p1, p0, Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;->previous:Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;

    iput-object p0, p1, Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;->next:Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;

    iget-object p1, p0, Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;->next:Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;

    iput-object p0, p1, Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;->previous:Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;

    return-void
.end method

.method public recordAccess(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    check-cast p1, Lcom/twelvemonkeys/util/LinkedMap;

    iget-boolean v0, p1, Lcom/twelvemonkeys/util/LinkedMap;->accessOrder:Z

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->modCount:I

    invoke-virtual {p0}, Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;->remove()V

    iget-object p1, p1, Lcom/twelvemonkeys/util/LinkedMap;->head:Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;->addBefore(Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;)V

    :cond_0
    return-void
.end method

.method public recordRemoval(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;->remove()V

    return-void
.end method

.method public remove()V
    .locals 2

    iget-object v0, p0, Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;->previous:Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;

    iget-object v1, p0, Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;->next:Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;

    iput-object v1, v0, Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;->next:Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;

    iget-object p0, p0, Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;->next:Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;

    iput-object v0, p0, Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;->previous:Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;

    return-void
.end method
