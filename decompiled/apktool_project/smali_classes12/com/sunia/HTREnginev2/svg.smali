.class public final synthetic Lcom/sunia/HTREnginev2/svg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/compress/utils/ByteUtils$ByteSupplier;


# instance fields
.field public final synthetic a:Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/svg;->a:Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;

    return-void
.end method


# virtual methods
.method public final getAsByte()I
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/svg;->a:Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;

    invoke-static {p0}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->f(Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;)I

    move-result p0

    return p0
.end method
