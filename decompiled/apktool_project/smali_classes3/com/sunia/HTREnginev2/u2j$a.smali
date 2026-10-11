.class public Lcom/sunia/HTREnginev2/u2j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/util/pool/FactoryPools$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/HTREnginev2/u2j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/util/pool/FactoryPools$Factory<",
        "Lcom/sunia/HTREnginev2/u2j<",
        "*>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/sunia/HTREnginev2/u2j;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sunia/HTREnginev2/u2j<",
            "*>;"
        }
    .end annotation

    new-instance p0, Lcom/sunia/HTREnginev2/u2j;

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/u2j;-><init>()V

    return-object p0
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/u2j$a;->a()Lcom/sunia/HTREnginev2/u2j;

    move-result-object p0

    return-object p0
.end method
