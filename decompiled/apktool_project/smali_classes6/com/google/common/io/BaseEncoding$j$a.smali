.class public Lcom/google/common/io/BaseEncoding$j$a;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/io/BaseEncoding$j;->encodingStream(Ljava/io/Writer;)Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public e:I

.field public f:I

.field public g:I

.field public final synthetic h:Ljava/io/Writer;

.field public final synthetic i:Lcom/google/common/io/BaseEncoding$j;


# direct methods
.method public constructor <init>(Lcom/google/common/io/BaseEncoding$j;Ljava/io/Writer;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/io/BaseEncoding$j$a;->i:Lcom/google/common/io/BaseEncoding$j;

    iput-object p2, p0, Lcom/google/common/io/BaseEncoding$j$a;->h:Ljava/io/Writer;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/common/io/BaseEncoding$j$a;->e:I

    iput p1, p0, Lcom/google/common/io/BaseEncoding$j$a;->f:I

    iput p1, p0, Lcom/google/common/io/BaseEncoding$j$a;->g:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/common/io/BaseEncoding$j$a;->f:I

    if-lez v0, :cond_0

    iget v1, p0, Lcom/google/common/io/BaseEncoding$j$a;->e:I

    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$j$a;->i:Lcom/google/common/io/BaseEncoding$j;

    iget-object v2, v2, Lcom/google/common/io/BaseEncoding$j;->f:Lcom/google/common/io/BaseEncoding$f;

    iget v3, v2, Lcom/google/common/io/BaseEncoding$f;->d:I

    sub-int/2addr v3, v0

    shl-int v0, v1, v3

    iget v1, v2, Lcom/google/common/io/BaseEncoding$f;->c:I

    and-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$j$a;->h:Ljava/io/Writer;

    invoke-virtual {v2, v0}, Lcom/google/common/io/BaseEncoding$f;->d(I)C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(I)V

    iget v0, p0, Lcom/google/common/io/BaseEncoding$j$a;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/io/BaseEncoding$j$a;->g:I

    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$j$a;->i:Lcom/google/common/io/BaseEncoding$j;

    iget-object v0, v0, Lcom/google/common/io/BaseEncoding$j;->g:Ljava/lang/Character;

    if-eqz v0, :cond_0

    :goto_0
    iget v0, p0, Lcom/google/common/io/BaseEncoding$j$a;->g:I

    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$j$a;->i:Lcom/google/common/io/BaseEncoding$j;

    iget-object v2, v1, Lcom/google/common/io/BaseEncoding$j;->f:Lcom/google/common/io/BaseEncoding$f;

    iget v2, v2, Lcom/google/common/io/BaseEncoding$f;->e:I

    rem-int/2addr v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$j$a;->h:Ljava/io/Writer;

    iget-object v1, v1, Lcom/google/common/io/BaseEncoding$j;->g:Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    iget v0, p0, Lcom/google/common/io/BaseEncoding$j$a;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/io/BaseEncoding$j$a;->g:I

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/common/io/BaseEncoding$j$a;->h:Ljava/io/Writer;

    invoke-virtual {p0}, Ljava/io/Writer;->close()V

    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/io/BaseEncoding$j$a;->h:Ljava/io/Writer;

    invoke-virtual {p0}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/common/io/BaseEncoding$j$a;->e:I

    shl-int/lit8 v0, v0, 0x8

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/common/io/BaseEncoding$j$a;->e:I

    iget p1, p0, Lcom/google/common/io/BaseEncoding$j$a;->f:I

    add-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/common/io/BaseEncoding$j$a;->f:I

    :goto_0
    iget p1, p0, Lcom/google/common/io/BaseEncoding$j$a;->f:I

    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$j$a;->i:Lcom/google/common/io/BaseEncoding$j;

    iget-object v0, v0, Lcom/google/common/io/BaseEncoding$j;->f:Lcom/google/common/io/BaseEncoding$f;

    iget v1, v0, Lcom/google/common/io/BaseEncoding$f;->d:I

    if-lt p1, v1, :cond_0

    iget v2, p0, Lcom/google/common/io/BaseEncoding$j$a;->e:I

    sub-int/2addr p1, v1

    shr-int p1, v2, p1

    iget v1, v0, Lcom/google/common/io/BaseEncoding$f;->c:I

    and-int/2addr p1, v1

    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$j$a;->h:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Lcom/google/common/io/BaseEncoding$f;->d(I)C

    move-result p1

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(I)V

    iget p1, p0, Lcom/google/common/io/BaseEncoding$j$a;->g:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/io/BaseEncoding$j$a;->g:I

    iget p1, p0, Lcom/google/common/io/BaseEncoding$j$a;->f:I

    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$j$a;->i:Lcom/google/common/io/BaseEncoding$j;

    iget-object v0, v0, Lcom/google/common/io/BaseEncoding$j;->f:Lcom/google/common/io/BaseEncoding$f;

    iget v0, v0, Lcom/google/common/io/BaseEncoding$f;->d:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/common/io/BaseEncoding$j$a;->f:I

    goto :goto_0

    :cond_0
    return-void
.end method
