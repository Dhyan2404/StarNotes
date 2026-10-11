.class public final synthetic Lcom/sunia/HTREnginev2/us;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, [B

    invoke-static {p1}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$b;->a([B)I

    move-result p0

    return p0
.end method
