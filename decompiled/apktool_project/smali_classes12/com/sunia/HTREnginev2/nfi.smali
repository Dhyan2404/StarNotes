.class public final synthetic Lcom/sunia/HTREnginev2/nfi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/io/function/IOFunction;


# instance fields
.field public final synthetic a:Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/nfi;->a:Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/nfi;->a:Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;

    check-cast p1, Lorg/apache/commons/io/output/ThresholdingOutputStream;

    invoke-static {p0, p1}, Lorg/apache/commons/io/IOUtils;->b(Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;Lorg/apache/commons/io/output/ThresholdingOutputStream;)Ljava/io/OutputStream;

    move-result-object p0

    return-object p0
.end method
