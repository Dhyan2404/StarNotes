.class public final synthetic Lcom/sunia/HTREnginev2/bei;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lonyx/org/apache/commons/io/function/IOQuadFunction;


# instance fields
.field public final synthetic a:Lonyx/org/apache/commons/io/function/IOQuadFunction;

.field public final synthetic b:Lonyx/org/apache/commons/io/function/IOFunction;


# direct methods
.method public synthetic constructor <init>(Lonyx/org/apache/commons/io/function/IOQuadFunction;Lonyx/org/apache/commons/io/function/IOFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/bei;->a:Lonyx/org/apache/commons/io/function/IOQuadFunction;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/bei;->b:Lonyx/org/apache/commons/io/function/IOFunction;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/sunia/HTREnginev2/bei;->a:Lonyx/org/apache/commons/io/function/IOQuadFunction;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/bei;->b:Lonyx/org/apache/commons/io/function/IOFunction;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lonyx/org/apache/commons/io/function/IOQuadFunction;->b(Lonyx/org/apache/commons/io/function/IOQuadFunction;Lonyx/org/apache/commons/io/function/IOFunction;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
