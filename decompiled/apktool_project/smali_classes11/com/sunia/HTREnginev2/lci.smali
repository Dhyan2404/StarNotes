.class public final synthetic Lcom/sunia/HTREnginev2/lci;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lonyx/org/apache/commons/io/function/IOBiConsumer;


# instance fields
.field public final synthetic a:Lonyx/org/apache/commons/io/function/IOBiConsumer;

.field public final synthetic b:Lonyx/org/apache/commons/io/function/IOBiConsumer;


# direct methods
.method public synthetic constructor <init>(Lonyx/org/apache/commons/io/function/IOBiConsumer;Lonyx/org/apache/commons/io/function/IOBiConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/lci;->a:Lonyx/org/apache/commons/io/function/IOBiConsumer;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/lci;->b:Lonyx/org/apache/commons/io/function/IOBiConsumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/lci;->a:Lonyx/org/apache/commons/io/function/IOBiConsumer;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/lci;->b:Lonyx/org/apache/commons/io/function/IOBiConsumer;

    invoke-static {v0, p0, p1, p2}, Lonyx/org/apache/commons/io/function/IOBiConsumer;->b(Lonyx/org/apache/commons/io/function/IOBiConsumer;Lonyx/org/apache/commons/io/function/IOBiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
