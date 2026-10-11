.class public final synthetic Lcom/sunia/HTREnginev2/dsn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lonyx/org/apache/commons/io/function/IOConsumer;


# instance fields
.field public final synthetic a:Lonyx/org/apache/commons/io/function/IOSpliterator;


# direct methods
.method public synthetic constructor <init>(Lonyx/org/apache/commons/io/function/IOSpliterator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/dsn;->a:Lonyx/org/apache/commons/io/function/IOSpliterator;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/dsn;->a:Lonyx/org/apache/commons/io/function/IOSpliterator;

    check-cast p1, Lonyx/org/apache/commons/io/function/IOConsumer;

    invoke-interface {p0, p1}, Lonyx/org/apache/commons/io/function/IOSpliterator;->forEachRemaining(Lonyx/org/apache/commons/io/function/IOConsumer;)V

    return-void
.end method
