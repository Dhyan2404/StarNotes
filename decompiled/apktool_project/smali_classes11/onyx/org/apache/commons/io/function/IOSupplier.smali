.class public interface abstract Lonyx/org/apache/commons/io/function/IOSupplier;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method private synthetic a()Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lonyx/org/apache/commons/io/function/Uncheck;->get(Lonyx/org/apache/commons/io/function/IOSupplier;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lonyx/org/apache/commons/io/function/IOSupplier;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lonyx/org/apache/commons/io/function/IOSupplier;->a()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public asSupplier()Ljava/util/function/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Supplier<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/gfi;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/gfi;-><init>(Lonyx/org/apache/commons/io/function/IOSupplier;)V

    return-object v0
.end method

.method public abstract get()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
