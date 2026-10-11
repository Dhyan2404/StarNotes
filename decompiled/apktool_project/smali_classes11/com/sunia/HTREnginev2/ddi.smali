.class public final synthetic Lcom/sunia/HTREnginev2/ddi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lonyx/org/apache/commons/io/function/IOSupplier;


# instance fields
.field public final synthetic a:Lonyx/org/apache/commons/io/function/IOFunction;

.field public final synthetic b:Lonyx/org/apache/commons/io/function/IOSupplier;


# direct methods
.method public synthetic constructor <init>(Lonyx/org/apache/commons/io/function/IOFunction;Lonyx/org/apache/commons/io/function/IOSupplier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ddi;->a:Lonyx/org/apache/commons/io/function/IOFunction;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/ddi;->b:Lonyx/org/apache/commons/io/function/IOSupplier;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ddi;->a:Lonyx/org/apache/commons/io/function/IOFunction;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ddi;->b:Lonyx/org/apache/commons/io/function/IOSupplier;

    invoke-static {v0, p0}, Lonyx/org/apache/commons/io/function/IOFunction;->u(Lonyx/org/apache/commons/io/function/IOFunction;Lonyx/org/apache/commons/io/function/IOSupplier;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
