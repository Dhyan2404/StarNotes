.class public final synthetic Lcom/sunia/HTREnginev2/gfi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic e:Lonyx/org/apache/commons/io/function/IOSupplier;


# direct methods
.method public synthetic constructor <init>(Lonyx/org/apache/commons/io/function/IOSupplier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/gfi;->e:Lonyx/org/apache/commons/io/function/IOSupplier;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/gfi;->e:Lonyx/org/apache/commons/io/function/IOSupplier;

    invoke-static {p0}, Lonyx/org/apache/commons/io/function/IOSupplier;->b(Lonyx/org/apache/commons/io/function/IOSupplier;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
