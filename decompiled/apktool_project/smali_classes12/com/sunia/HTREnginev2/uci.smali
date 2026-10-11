.class public final synthetic Lcom/sunia/HTREnginev2/uci;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/io/function/IOConsumer;


# instance fields
.field public final synthetic a:Lorg/apache/commons/io/function/IOConsumer;

.field public final synthetic b:Lorg/apache/commons/io/function/IOConsumer;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/io/function/IOConsumer;Lorg/apache/commons/io/function/IOConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/uci;->a:Lorg/apache/commons/io/function/IOConsumer;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/uci;->b:Lorg/apache/commons/io/function/IOConsumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/uci;->a:Lorg/apache/commons/io/function/IOConsumer;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/uci;->b:Lorg/apache/commons/io/function/IOConsumer;

    invoke-static {v0, p0, p1}, Lorg/apache/commons/io/function/IOConsumer;->b(Lorg/apache/commons/io/function/IOConsumer;Lorg/apache/commons/io/function/IOConsumer;Ljava/lang/Object;)V

    return-void
.end method
