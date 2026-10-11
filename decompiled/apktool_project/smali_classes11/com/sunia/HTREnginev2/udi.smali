.class public final synthetic Lcom/sunia/HTREnginev2/udi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/LongSupplier;


# instance fields
.field public final synthetic a:Lonyx/org/apache/commons/io/function/IOLongSupplier;


# direct methods
.method public synthetic constructor <init>(Lonyx/org/apache/commons/io/function/IOLongSupplier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/udi;->a:Lonyx/org/apache/commons/io/function/IOLongSupplier;

    return-void
.end method


# virtual methods
.method public final getAsLong()J
    .locals 2

    iget-object p0, p0, Lcom/sunia/HTREnginev2/udi;->a:Lonyx/org/apache/commons/io/function/IOLongSupplier;

    invoke-static {p0}, Lonyx/org/apache/commons/io/function/IOLongSupplier;->b(Lonyx/org/apache/commons/io/function/IOLongSupplier;)J

    move-result-wide v0

    return-wide v0
.end method
