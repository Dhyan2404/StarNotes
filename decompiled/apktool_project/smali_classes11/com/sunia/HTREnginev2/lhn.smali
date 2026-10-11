.class public final synthetic Lcom/sunia/HTREnginev2/lhn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lonyx/org/apache/commons/io/function/IOFunction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lonyx/org/apache/commons/io/output/ThresholdingOutputStream;

    invoke-static {p1}, Lonyx/org/apache/commons/io/output/ThresholdingOutputStream;->f(Lonyx/org/apache/commons/io/output/ThresholdingOutputStream;)Ljava/io/OutputStream;

    move-result-object p0

    return-object p0
.end method
