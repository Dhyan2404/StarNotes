.class public final synthetic Lcom/sunia/HTREnginev2/iei;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# instance fields
.field public final synthetic e:Lonyx/org/apache/commons/io/function/IOBinaryOperator;


# direct methods
.method public synthetic constructor <init>(Lonyx/org/apache/commons/io/function/IOBinaryOperator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/iei;->e:Lonyx/org/apache/commons/io/function/IOBinaryOperator;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/iei;->e:Lonyx/org/apache/commons/io/function/IOBinaryOperator;

    invoke-static {p0, p1, p2}, Lonyx/org/apache/commons/io/function/IOStream;->s(Lonyx/org/apache/commons/io/function/IOBinaryOperator;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
