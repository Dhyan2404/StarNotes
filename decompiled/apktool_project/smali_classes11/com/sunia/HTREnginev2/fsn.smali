.class public final synthetic Lcom/sunia/HTREnginev2/fsn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lonyx/org/apache/commons/io/function/IOFunction;


# instance fields
.field public final synthetic a:Lonyx/org/apache/commons/io/function/IOSpliterator;


# direct methods
.method public synthetic constructor <init>(Lonyx/org/apache/commons/io/function/IOSpliterator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/fsn;->a:Lonyx/org/apache/commons/io/function/IOSpliterator;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/fsn;->a:Lonyx/org/apache/commons/io/function/IOSpliterator;

    check-cast p1, Lonyx/org/apache/commons/io/function/IOConsumer;

    invoke-interface {p0, p1}, Lonyx/org/apache/commons/io/function/IOSpliterator;->tryAdvance(Lonyx/org/apache/commons/io/function/IOConsumer;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
