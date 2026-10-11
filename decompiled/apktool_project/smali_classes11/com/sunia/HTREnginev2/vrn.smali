.class public final synthetic Lcom/sunia/HTREnginev2/vrn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lonyx/org/apache/commons/io/function/IOFunction;


# instance fields
.field public final synthetic a:Lonyx/org/apache/commons/io/function/IOBaseStream;


# direct methods
.method public synthetic constructor <init>(Lonyx/org/apache/commons/io/function/IOBaseStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/vrn;->a:Lonyx/org/apache/commons/io/function/IOBaseStream;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/vrn;->a:Lonyx/org/apache/commons/io/function/IOBaseStream;

    check-cast p1, Lonyx/org/apache/commons/io/function/IORunnable;

    invoke-interface {p0, p1}, Lonyx/org/apache/commons/io/function/IOBaseStream;->onClose(Lonyx/org/apache/commons/io/function/IORunnable;)Lonyx/org/apache/commons/io/function/IOBaseStream;

    move-result-object p0

    return-object p0
.end method
