.class public final synthetic Lcom/sunia/HTREnginev2/adi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/io/function/IOSupplier;


# instance fields
.field public final synthetic a:Lorg/apache/commons/io/function/IOFunction;

.field public final synthetic b:Ljava/util/function/Supplier;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/io/function/IOFunction;Ljava/util/function/Supplier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/adi;->a:Lorg/apache/commons/io/function/IOFunction;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/adi;->b:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/adi;->a:Lorg/apache/commons/io/function/IOFunction;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/adi;->b:Ljava/util/function/Supplier;

    invoke-static {v0, p0}, Lorg/apache/commons/io/function/IOFunction;->e(Lorg/apache/commons/io/function/IOFunction;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
