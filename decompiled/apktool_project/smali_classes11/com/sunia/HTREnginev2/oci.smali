.class public final synthetic Lcom/sunia/HTREnginev2/oci;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lonyx/org/apache/commons/io/function/IOBinaryOperator;


# instance fields
.field public final synthetic a:Lonyx/org/apache/commons/io/function/IOComparator;


# direct methods
.method public synthetic constructor <init>(Lonyx/org/apache/commons/io/function/IOComparator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/oci;->a:Lonyx/org/apache/commons/io/function/IOComparator;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/oci;->a:Lonyx/org/apache/commons/io/function/IOComparator;

    invoke-static {p0, p1, p2}, Lonyx/org/apache/commons/io/function/IOBinaryOperator;->i(Lonyx/org/apache/commons/io/function/IOComparator;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
