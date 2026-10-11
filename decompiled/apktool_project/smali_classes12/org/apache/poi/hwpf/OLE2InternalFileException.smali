.class public Lorg/apache/poi/hwpf/OLE2InternalFileException;
.super Lorg/apache/poi/UnsupportedFileFormatException;
.source "SourceFile"


# instance fields
.field private data:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/UnsupportedFileFormatException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/apache/poi/hwpf/OLE2InternalFileException;->data:[B

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwpf/OLE2InternalFileException;->data:[B

    return-object p0
.end method

.method public setData([B)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hwpf/OLE2InternalFileException;->data:[B

    return-void
.end method
