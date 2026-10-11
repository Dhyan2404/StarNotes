.class public Lcom/twelvemonkeys/util/TimeoutMap$b;
.super Lcom/twelvemonkeys/util/TimeoutMap$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twelvemonkeys/util/TimeoutMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twelvemonkeys/util/TimeoutMap<",
        "TK;TV;>.d<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic i:Lcom/twelvemonkeys/util/TimeoutMap;


# direct methods
.method public constructor <init>(Lcom/twelvemonkeys/util/TimeoutMap;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/twelvemonkeys/util/TimeoutMap$b;->i:Lcom/twelvemonkeys/util/TimeoutMap;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/twelvemonkeys/util/TimeoutMap$d;-><init>(Lcom/twelvemonkeys/util/TimeoutMap;Lcom/twelvemonkeys/util/TimeoutMap$a;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/twelvemonkeys/util/TimeoutMap;Lcom/twelvemonkeys/util/TimeoutMap$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/twelvemonkeys/util/TimeoutMap$b;-><init>(Lcom/twelvemonkeys/util/TimeoutMap;)V

    return-void
.end method


# virtual methods
.method public b()Ljava/util/Map$Entry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/twelvemonkeys/util/TimeoutMap$d;->a()Lcom/twelvemonkeys/util/AbstractDecoratedMap$BasicEntry;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/twelvemonkeys/util/TimeoutMap$b;->b()Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method
