.class public final synthetic Lcom/sunia/HTREnginev2/hfi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lonyx/org/apache/commons/io/function/IOTriConsumer;


# instance fields
.field public final synthetic a:Lonyx/org/apache/commons/io/function/IOTriConsumer;

.field public final synthetic b:Lonyx/org/apache/commons/io/function/IOTriConsumer;


# direct methods
.method public synthetic constructor <init>(Lonyx/org/apache/commons/io/function/IOTriConsumer;Lonyx/org/apache/commons/io/function/IOTriConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/hfi;->a:Lonyx/org/apache/commons/io/function/IOTriConsumer;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/hfi;->b:Lonyx/org/apache/commons/io/function/IOTriConsumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/hfi;->a:Lonyx/org/apache/commons/io/function/IOTriConsumer;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/hfi;->b:Lonyx/org/apache/commons/io/function/IOTriConsumer;

    invoke-static {v0, p0, p1, p2, p3}, Lonyx/org/apache/commons/io/function/IOTriConsumer;->b(Lonyx/org/apache/commons/io/function/IOTriConsumer;Lonyx/org/apache/commons/io/function/IOTriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
