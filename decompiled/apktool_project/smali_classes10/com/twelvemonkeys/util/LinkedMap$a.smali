.class public Lcom/twelvemonkeys/util/LinkedMap$a;
.super Lcom/twelvemonkeys/util/LinkedMap$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twelvemonkeys/util/LinkedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twelvemonkeys/util/LinkedMap<",
        "TK;TV;>.c<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic i:Lcom/twelvemonkeys/util/LinkedMap;


# direct methods
.method public constructor <init>(Lcom/twelvemonkeys/util/LinkedMap;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/twelvemonkeys/util/LinkedMap$a;->i:Lcom/twelvemonkeys/util/LinkedMap;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/twelvemonkeys/util/LinkedMap$c;-><init>(Lcom/twelvemonkeys/util/LinkedMap;Lcom/twelvemonkeys/util/LinkedMap$1;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/twelvemonkeys/util/LinkedMap;Lcom/twelvemonkeys/util/LinkedMap$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/twelvemonkeys/util/LinkedMap$a;-><init>(Lcom/twelvemonkeys/util/LinkedMap;)V

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

    invoke-virtual {p0}, Lcom/twelvemonkeys/util/LinkedMap$c;->a()Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/twelvemonkeys/util/LinkedMap$a;->b()Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method
