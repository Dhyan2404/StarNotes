.class Lcom/twelvemonkeys/util/LinkedMap$1;
.super Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twelvemonkeys/util/LinkedMap;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/twelvemonkeys/util/LinkedMap;


# direct methods
.method public constructor <init>(Lcom/twelvemonkeys/util/LinkedMap;Ljava/lang/Object;Ljava/lang/Object;Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;)V
    .locals 0

    iput-object p1, p0, Lcom/twelvemonkeys/util/LinkedMap$1;->this$0:Lcom/twelvemonkeys/util/LinkedMap;

    invoke-direct {p0, p2, p3, p4}, Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;)V

    return-void
.end method


# virtual methods
.method public addBefore(Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;)V
    .locals 0

    new-instance p0, Ljava/lang/Error;

    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    throw p0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    new-instance p0, Ljava/lang/Error;

    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    throw p0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    new-instance p0, Ljava/lang/Error;

    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    throw p0
.end method

.method public recordAccess(Ljava/util/Map;)V
    .locals 0

    new-instance p0, Ljava/lang/Error;

    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    throw p0
.end method

.method public recordRemoval()V
    .locals 0

    .line 2
    new-instance p0, Ljava/lang/Error;

    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    throw p0
.end method

.method public recordRemoval(Ljava/util/Map;)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/Error;

    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    throw p0
.end method

.method public remove()V
    .locals 0

    new-instance p0, Ljava/lang/Error;

    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    throw p0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    new-instance p0, Ljava/lang/Error;

    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "head"

    return-object p0
.end method
