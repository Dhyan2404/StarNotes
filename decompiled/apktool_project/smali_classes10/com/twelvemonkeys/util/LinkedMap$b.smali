.class public Lcom/twelvemonkeys/util/LinkedMap$b;
.super Lcom/twelvemonkeys/util/LinkedMap$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twelvemonkeys/util/LinkedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twelvemonkeys/util/LinkedMap<",
        "TK;TV;>.c<TK;>;"
    }
.end annotation


# instance fields
.field public final synthetic i:Lcom/twelvemonkeys/util/LinkedMap;


# direct methods
.method public constructor <init>(Lcom/twelvemonkeys/util/LinkedMap;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/twelvemonkeys/util/LinkedMap$b;->i:Lcom/twelvemonkeys/util/LinkedMap;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/twelvemonkeys/util/LinkedMap$c;-><init>(Lcom/twelvemonkeys/util/LinkedMap;Lcom/twelvemonkeys/util/LinkedMap$1;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/twelvemonkeys/util/LinkedMap;Lcom/twelvemonkeys/util/LinkedMap$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/twelvemonkeys/util/LinkedMap$b;-><init>(Lcom/twelvemonkeys/util/LinkedMap;)V

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

    invoke-virtual {p0}, Lcom/twelvemonkeys/util/LinkedMap$c;->a()Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;

    move-result-object p0

    iget-object p0, p0, Lcom/twelvemonkeys/util/AbstractDecoratedMap$BasicEntry;->mKey:Ljava/lang/Object;

    return-object p0
.end method
