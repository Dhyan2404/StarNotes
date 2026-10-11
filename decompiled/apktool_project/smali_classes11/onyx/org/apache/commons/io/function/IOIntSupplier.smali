.class public interface abstract Lonyx/org/apache/commons/io/function/IOIntSupplier;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method private synthetic a()I
    .locals 0

    invoke-static {p0}, Lonyx/org/apache/commons/io/function/Uncheck;->getAsInt(Lonyx/org/apache/commons/io/function/IOIntSupplier;)I

    move-result p0

    return p0
.end method

.method public static synthetic b(Lonyx/org/apache/commons/io/function/IOIntSupplier;)I
    .locals 0

    invoke-direct {p0}, Lonyx/org/apache/commons/io/function/IOIntSupplier;->a()I

    move-result p0

    return p0
.end method


# virtual methods
.method public asIntSupplier()Ljava/util/function/IntSupplier;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/sdi;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/sdi;-><init>(Lonyx/org/apache/commons/io/function/IOIntSupplier;)V

    return-object v0
.end method

.method public abstract getAsInt()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
