.class public interface abstract Lonyx/org/apache/commons/io/function/IOLongSupplier;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method private synthetic a()J
    .locals 2

    invoke-static {p0}, Lonyx/org/apache/commons/io/function/Uncheck;->getAsLong(Lonyx/org/apache/commons/io/function/IOLongSupplier;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic b(Lonyx/org/apache/commons/io/function/IOLongSupplier;)J
    .locals 2

    invoke-direct {p0}, Lonyx/org/apache/commons/io/function/IOLongSupplier;->a()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public asSupplier()Ljava/util/function/LongSupplier;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/udi;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/udi;-><init>(Lonyx/org/apache/commons/io/function/IOLongSupplier;)V

    return-object v0
.end method

.method public abstract getAsLong()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
