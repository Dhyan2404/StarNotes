.class public final Lio/opencensus/trace/TraceOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/opencensus/trace/TraceOptions$Builder;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# static fields
.field public static final DEFAULT:Lio/opencensus/trace/TraceOptions;

.field public static final SIZE:I = 0x1

.field public static final b:B = 0x0t

.field public static final c:B = 0x1t

.field public static final d:I = 0x2


# instance fields
.field public final a:B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lio/opencensus/trace/TraceOptions;->fromByte(B)Lio/opencensus/trace/TraceOptions;

    move-result-object v0

    sput-object v0, Lio/opencensus/trace/TraceOptions;->DEFAULT:Lio/opencensus/trace/TraceOptions;

    return-void
.end method

.method public constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lio/opencensus/trace/TraceOptions;->a:B

    return-void
.end method

.method public static builder()Lio/opencensus/trace/TraceOptions$Builder;
    .locals 3

    .line 1
    new-instance v0, Lio/opencensus/trace/TraceOptions$Builder;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/opencensus/trace/TraceOptions$Builder;-><init>(BLio/opencensus/trace/TraceOptions$a;)V

    return-object v0
.end method

.method public static builder(Lio/opencensus/trace/TraceOptions;)Lio/opencensus/trace/TraceOptions$Builder;
    .locals 2

    .line 2
    new-instance v0, Lio/opencensus/trace/TraceOptions$Builder;

    iget-byte p0, p0, Lio/opencensus/trace/TraceOptions;->a:B

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/opencensus/trace/TraceOptions$Builder;-><init>(BLio/opencensus/trace/TraceOptions$a;)V

    return-object v0
.end method

.method public static fromByte(B)Lio/opencensus/trace/TraceOptions;
    .locals 1

    new-instance v0, Lio/opencensus/trace/TraceOptions;

    invoke-direct {v0, p0}, Lio/opencensus/trace/TraceOptions;-><init>(B)V

    return-object v0
.end method

.method public static fromBytes([B)Lio/opencensus/trace/TraceOptions;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "buffer"

    .line 1
    invoke-static {p0, v0}, Lio/opencensus/internal/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 3
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    array-length v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Invalid size: expected %s, got %s"

    .line 4
    invoke-static {v0, v3, v2}, Lio/opencensus/internal/Utils;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 5
    aget-byte p0, p0, v1

    invoke-static {p0}, Lio/opencensus/trace/TraceOptions;->fromByte(B)Lio/opencensus/trace/TraceOptions;

    move-result-object p0

    return-object p0
.end method

.method public static fromBytes([BI)Lio/opencensus/trace/TraceOptions;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6
    array-length v0, p0

    invoke-static {p1, v0}, Lio/opencensus/internal/Utils;->checkIndex(II)V

    .line 7
    aget-byte p0, p0, p1

    invoke-static {p0}, Lio/opencensus/trace/TraceOptions;->fromByte(B)Lio/opencensus/trace/TraceOptions;

    move-result-object p0

    return-object p0
.end method

.method public static fromLowerBase16(Ljava/lang/CharSequence;I)Lio/opencensus/trace/TraceOptions;
    .locals 1

    new-instance v0, Lio/opencensus/trace/TraceOptions;

    invoke-static {p0, p1}, Lcom/sunia/HTREnginev2/qq;->c(Ljava/lang/CharSequence;I)B

    move-result p0

    invoke-direct {v0, p0}, Lio/opencensus/trace/TraceOptions;-><init>(B)V

    return-object v0
.end method


# virtual methods
.method public a()B
    .locals 0

    iget-byte p0, p0, Lio/opencensus/trace/TraceOptions;->a:B

    return p0
.end method

.method public final b(I)Z
    .locals 0

    iget-byte p0, p0, Lio/opencensus/trace/TraceOptions;->a:B

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public copyBytesTo([BI)V
    .locals 1

    array-length v0, p1

    invoke-static {p2, v0}, Lio/opencensus/internal/Utils;->checkIndex(II)V

    iget-byte p0, p0, Lio/opencensus/trace/TraceOptions;->a:B

    aput-byte p0, p1, p2

    return-void
.end method

.method public copyLowerBase16To([CI)V
    .locals 0

    iget-byte p0, p0, Lio/opencensus/trace/TraceOptions;->a:B

    invoke-static {p0, p1, p2}, Lcom/sunia/HTREnginev2/qq;->e(B[CI)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/opencensus/trace/TraceOptions;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lio/opencensus/trace/TraceOptions;

    iget-byte p0, p0, Lio/opencensus/trace/TraceOptions;->a:B

    iget-byte p1, p1, Lio/opencensus/trace/TraceOptions;->a:B

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getByte()B
    .locals 0

    iget-byte p0, p0, Lio/opencensus/trace/TraceOptions;->a:B

    return p0
.end method

.method public getBytes()[B
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    iget-byte p0, p0, Lio/opencensus/trace/TraceOptions;->a:B

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    iget-byte p0, p0, Lio/opencensus/trace/TraceOptions;->a:B

    aput-byte p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0

    return p0
.end method

.method public isSampled()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/opencensus/trace/TraceOptions;->b(I)Z

    move-result p0

    return p0
.end method

.method public toLowerBase16()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [C

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lio/opencensus/trace/TraceOptions;->copyLowerBase16To([CI)V

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TraceOptions{sampled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/opencensus/trace/TraceOptions;->isSampled()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
