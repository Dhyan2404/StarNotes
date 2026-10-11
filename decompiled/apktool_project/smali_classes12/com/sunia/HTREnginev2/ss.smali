.class public final synthetic Lcom/sunia/HTREnginev2/ss;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Callback;


# instance fields
.field public final synthetic a:Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ss;->a:Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;

    return-void
.end method


# virtual methods
.method public final accept(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ss;->a:Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;

    invoke-static {p0, p1}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->f(Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block;)V

    return-void
.end method
