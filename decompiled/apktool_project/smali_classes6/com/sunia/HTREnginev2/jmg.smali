.class public interface abstract Lcom/sunia/HTREnginev2/jmg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/HTREnginev2/hmg;
.implements Lcom/google/common/collect/SetMultimap;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation runtime Lcom/sunia/HTREnginev2/snf;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sunia/HTREnginev2/hmg<",
        "TK;TV;>;",
        "Lcom/google/common/collect/SetMultimap<",
        "TK;TV;>;"
    }
.end annotation


# virtual methods
.method public bridge synthetic a()Lcom/google/common/collect/Multimap;
    .locals 0

    .line 1
    invoke-interface {p0}, Lcom/sunia/HTREnginev2/jmg;->a()Lcom/google/common/collect/SetMultimap;

    move-result-object p0

    return-object p0
.end method

.method public abstract a()Lcom/google/common/collect/SetMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/SetMultimap<",
            "TK;TV;>;"
        }
    .end annotation
.end method
