.class public Lsun/java2d/pipe/RenderBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final COPY_FROM_ARRAY_THRESHOLD:I = 0x6

.field protected static final SIZEOF_BYTE:J = 0x1L

.field protected static final SIZEOF_DOUBLE:J = 0x8L

.field protected static final SIZEOF_FLOAT:J = 0x4L

.field protected static final SIZEOF_INT:J = 0x4L

.field protected static final SIZEOF_LONG:J = 0x8L

.field protected static final SIZEOF_SHORT:J = 0x2L


# instance fields
.field protected curAddress:J


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allocate(I)Lsun/java2d/pipe/RenderBuffer;
    .locals 1

    new-instance v0, Lsun/java2d/pipe/RenderBuffer;

    invoke-direct {v0, p0}, Lsun/java2d/pipe/RenderBuffer;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public final capacity()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final clear()V
    .locals 0

    return-void
.end method

.method public final getAddress()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final position()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    return p0
.end method

.method public final position(J)V
    .locals 0

    .line 2
    return-void
.end method

.method public put([B)Lsun/java2d/pipe/RenderBuffer;
    .locals 2

    .line 6
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lsun/java2d/pipe/RenderBuffer;->put([BII)Lsun/java2d/pipe/RenderBuffer;

    move-result-object p0

    return-object p0
.end method

.method public put([BII)Lsun/java2d/pipe/RenderBuffer;
    .locals 0

    .line 1
    return-object p0
.end method

.method public put([F)Lsun/java2d/pipe/RenderBuffer;
    .locals 2

    .line 9
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lsun/java2d/pipe/RenderBuffer;->put([FII)Lsun/java2d/pipe/RenderBuffer;

    move-result-object p0

    return-object p0
.end method

.method public put([FII)Lsun/java2d/pipe/RenderBuffer;
    .locals 0

    .line 2
    return-object p0
.end method

.method public put([I)Lsun/java2d/pipe/RenderBuffer;
    .locals 2

    .line 8
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lsun/java2d/pipe/RenderBuffer;->put([III)Lsun/java2d/pipe/RenderBuffer;

    move-result-object p0

    return-object p0
.end method

.method public put([III)Lsun/java2d/pipe/RenderBuffer;
    .locals 0

    .line 3
    return-object p0
.end method

.method public put([J)Lsun/java2d/pipe/RenderBuffer;
    .locals 2

    .line 10
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lsun/java2d/pipe/RenderBuffer;->put([JII)Lsun/java2d/pipe/RenderBuffer;

    move-result-object p0

    return-object p0
.end method

.method public put([JII)Lsun/java2d/pipe/RenderBuffer;
    .locals 0

    .line 4
    return-object p0
.end method

.method public put([S)Lsun/java2d/pipe/RenderBuffer;
    .locals 2

    .line 7
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lsun/java2d/pipe/RenderBuffer;->put([SII)Lsun/java2d/pipe/RenderBuffer;

    move-result-object p0

    return-object p0
.end method

.method public put([SII)Lsun/java2d/pipe/RenderBuffer;
    .locals 0

    .line 5
    return-object p0
.end method

.method public final putByte(B)Lsun/java2d/pipe/RenderBuffer;
    .locals 0

    return-object p0
.end method

.method public final putDouble(D)Lsun/java2d/pipe/RenderBuffer;
    .locals 0

    return-object p0
.end method

.method public final putFloat(F)Lsun/java2d/pipe/RenderBuffer;
    .locals 0

    return-object p0
.end method

.method public final putInt(I)Lsun/java2d/pipe/RenderBuffer;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final putInt(II)Lsun/java2d/pipe/RenderBuffer;
    .locals 0

    .line 2
    return-object p0
.end method

.method public final putLong(J)Lsun/java2d/pipe/RenderBuffer;
    .locals 0

    return-object p0
.end method

.method public final putShort(S)Lsun/java2d/pipe/RenderBuffer;
    .locals 0

    return-object p0
.end method

.method public final remaining()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final skip(J)Lsun/java2d/pipe/RenderBuffer;
    .locals 2

    iget-wide v0, p0, Lsun/java2d/pipe/RenderBuffer;->curAddress:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lsun/java2d/pipe/RenderBuffer;->curAddress:J

    return-object p0
.end method
