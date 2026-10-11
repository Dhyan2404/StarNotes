.class public final synthetic Lcom/sunia/HTREnginev2/qdi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/io/function/IOConsumer;


# instance fields
.field public final synthetic a:Lorg/apache/commons/io/function/IOFunction;

.field public final synthetic b:Lorg/apache/commons/io/function/IOConsumer;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/io/function/IOFunction;Lorg/apache/commons/io/function/IOConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/qdi;->a:Lorg/apache/commons/io/function/IOFunction;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/qdi;->b:Lorg/apache/commons/io/function/IOConsumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/qdi;->a:Lorg/apache/commons/io/function/IOFunction;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/qdi;->b:Lorg/apache/commons/io/function/IOConsumer;

    invoke-static {v0, p0, p1}, Lorg/apache/commons/io/function/IOFunction;->b(Lorg/apache/commons/io/function/IOFunction;Lorg/apache/commons/io/function/IOConsumer;Ljava/lang/Object;)V

    return-void
.end method
