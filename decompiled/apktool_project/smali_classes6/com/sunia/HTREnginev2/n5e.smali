.class public abstract Lcom/sunia/HTREnginev2/n5e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation runtime Lcom/sunia/HTREnginev2/aof;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compile(Ljava/lang/String;)Lcom/sunia/HTREnginev2/n5e;
    .locals 0

    invoke-static {p0}, Lcom/google/common/base/a;->b(Ljava/lang/String;)Lcom/sunia/HTREnginev2/n5e;

    move-result-object p0

    return-object p0
.end method

.method public static isPcreLike()Z
    .locals 1

    invoke-static {}, Lcom/google/common/base/a;->i()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public abstract flags()I
.end method

.method public abstract matcher(Ljava/lang/CharSequence;)Lcom/sunia/HTREnginev2/g5e;
.end method

.method public abstract pattern()Ljava/lang/String;
.end method

.method public abstract toString()Ljava/lang/String;
.end method
