.class public Lorg/apache/poi/hdgf/streams/StreamStore;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_MAX_RECORD_LENGTH:I = 0x989680

.field private static MAX_RECORD_LENGTH:I = 0x989680


# instance fields
.field private contents:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lorg/apache/poi/hdgf/streams/StreamStore;->MAX_RECORD_LENGTH:I

    invoke-static {p1, p2, p3, v0}, Lorg/apache/poi/util/IOUtils;->safelyClone([BIII)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hdgf/streams/StreamStore;->contents:[B

    return-void
.end method

.method public static getMaxRecordLength()I
    .locals 1

    sget v0, Lorg/apache/poi/hdgf/streams/StreamStore;->MAX_RECORD_LENGTH:I

    return v0
.end method

.method public static setMaxRecordLength(I)V
    .locals 0

    sput p0, Lorg/apache/poi/hdgf/streams/StreamStore;->MAX_RECORD_LENGTH:I

    return-void
.end method


# virtual methods
.method public _getContents()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hdgf/streams/StreamStore;->contents:[B

    return-object p0
.end method

.method public copyBlockHeaderToContents()V
    .locals 0

    return-void
.end method

.method public getContents()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hdgf/streams/StreamStore;->contents:[B

    return-object p0
.end method

.method public prependContentsWith([B)V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/hdgf/streams/StreamStore;->contents:[B

    array-length v0, v0

    int-to-long v0, v0

    array-length v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    sget v2, Lorg/apache/poi/hdgf/streams/StreamStore;->MAX_RECORD_LENGTH:I

    invoke-static {v0, v1, v2}, Lorg/apache/poi/util/IOUtils;->safelyAllocate(JI)[B

    move-result-object v0

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/apache/poi/hdgf/streams/StreamStore;->contents:[B

    array-length p1, p1

    array-length v3, v1

    invoke-static {v1, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/apache/poi/hdgf/streams/StreamStore;->contents:[B

    return-void
.end method
