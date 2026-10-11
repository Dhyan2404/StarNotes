.class public final synthetic Lcom/sunia/HTREnginev2/hdi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lonyx/org/apache/commons/io/function/IOFunction;


# instance fields
.field public final synthetic a:Lonyx/org/apache/commons/io/function/IOFunction;

.field public final synthetic b:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Lonyx/org/apache/commons/io/function/IOFunction;Ljava/util/function/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/hdi;->a:Lonyx/org/apache/commons/io/function/IOFunction;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/hdi;->b:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/hdi;->a:Lonyx/org/apache/commons/io/function/IOFunction;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/hdi;->b:Ljava/util/function/Function;

    invoke-static {v0, p0, p1}, Lonyx/org/apache/commons/io/function/IOFunction;->p(Lonyx/org/apache/commons/io/function/IOFunction;Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
