.class public final synthetic Lcom/sunia/HTREnginev2/rvg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/compress/utils/ByteUtils$ByteSupplier;


# instance fields
.field public final synthetic a:Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/rvg;->a:Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;

    return-void
.end method


# virtual methods
.method public final getAsByte()I
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/rvg;->a:Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;

    invoke-static {p0}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->f(Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;)I

    move-result p0

    return p0
.end method
