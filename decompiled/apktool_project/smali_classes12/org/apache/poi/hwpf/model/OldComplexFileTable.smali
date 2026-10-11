.class public final Lorg/apache/poi/hwpf/model/OldComplexFileTable;
.super Lorg/apache/poi/hwpf/model/ComplexFileTable;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# direct methods
.method public constructor <init>([B[BIILjava/nio/charset/Charset;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lorg/apache/poi/hwpf/model/ComplexFileTable;-><init>([B[BIILjava/nio/charset/Charset;)V

    return-void
.end method


# virtual methods
.method public newTextPieceTable([B[BIIILjava/nio/charset/Charset;)Lorg/apache/poi/hwpf/model/TextPieceTable;
    .locals 7

    new-instance p0, Lorg/apache/poi/hwpf/model/OldTextPieceTable;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/hwpf/model/OldTextPieceTable;-><init>([B[BIIILjava/nio/charset/Charset;)V

    return-object p0
.end method
