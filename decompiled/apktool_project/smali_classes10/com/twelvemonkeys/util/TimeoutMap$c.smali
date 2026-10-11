.class public Lcom/twelvemonkeys/util/TimeoutMap$c;
.super Lcom/twelvemonkeys/util/TimeoutMap$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twelvemonkeys/util/TimeoutMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twelvemonkeys/util/TimeoutMap<",
        "TK;TV;>.d<TK;>;"
    }
.end annotation


# instance fields
.field public final synthetic i:Lcom/twelvemonkeys/util/TimeoutMap;


# direct methods
.method public constructor <init>(Lcom/twelvemonkeys/util/TimeoutMap;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/twelvemonkeys/util/TimeoutMap$c;->i:Lcom/twelvemonkeys/util/TimeoutMap;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/twelvemonkeys/util/TimeoutMap$d;-><init>(Lcom/twelvemonkeys/util/TimeoutMap;Lcom/twelvemonkeys/util/TimeoutMap$a;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/twelvemonkeys/util/TimeoutMap;Lcom/twelvemonkeys/util/TimeoutMap$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/twelvemonkeys/util/TimeoutMap$c;-><init>(Lcom/twelvemonkeys/util/TimeoutMap;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/twelvemonkeys/util/TimeoutMap$d;->a()Lcom/twelvemonkeys/util/AbstractDecoratedMap$BasicEntry;

    move-result-object p0

    iget-object p0, p0, Lcom/twelvemonkeys/util/AbstractDecoratedMap$BasicEntry;->mKey:Ljava/lang/Object;

    return-object p0
.end method
