.class public Lorg/apache/http/impl/auth/NTLMEngineImpl$e;
.super Lorg/apache/http/impl/auth/NTLMEngineImpl$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/http/impl/auth/NTLMEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public final c:[B

.field public final d:[B

.field public final e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$e;->c:[B

    .line 10
    iput-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$e;->d:[B

    .line 11
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$e;->p()I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$e;->e:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;-><init>()V

    if-nez p3, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$e;->p()I

    move-result p3

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    :goto_0
    iput p3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$e;->e:I

    .line 4
    invoke-static {p2}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-static {p1}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    .line 6
    invoke-static {}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->v()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    goto :goto_1

    :cond_1
    move-object p2, p3

    :goto_1
    iput-object p2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$e;->c:[B

    if-eqz p1, :cond_2

    .line 7
    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->v()Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p3

    :cond_2
    iput-object p3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$e;->d:[B

    return-void
.end method


# virtual methods
.method public e()V
    .locals 4

    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$e;->d:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v0, v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$e;->c:[B

    if-eqz v2, :cond_1

    array-length v1, v2

    :cond_1
    add-int/lit8 v2, v1, 0x28

    add-int/2addr v2, v0

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->j(II)V

    iget v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$e;->e:I

    invoke-virtual {p0, v2}, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->c(I)V

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->d(I)V

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->d(I)V

    add-int/lit8 v0, v1, 0x20

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->c(I)V

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->d(I)V

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->d(I)V

    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->c(I)V

    const/16 v0, 0x105

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->d(I)V

    const/16 v0, 0xa28

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->c(I)V

    const/16 v0, 0xf00

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->d(I)V

    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$e;->c:[B

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->b([B)V

    :cond_2
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$e;->d:[B

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->b([B)V

    :cond_3
    return-void
.end method

.method public final p()I
    .locals 0

    const p0, -0x5df77dff

    return p0
.end method
