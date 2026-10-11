.class public final Lcom/dropbox/core/DbxStreamWriter$ByteArrayCopier;
.super Lcom/dropbox/core/DbxStreamWriter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/DbxStreamWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ByteArrayCopier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/DbxStreamWriter<",
        "Ljava/lang/RuntimeException;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:[B

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>([B)V
    .locals 2

    .line 10
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/dropbox/core/DbxStreamWriter$ByteArrayCopier;-><init>([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/dropbox/core/DbxStreamWriter;-><init>()V

    if-eqz p1, :cond_2

    if-ltz p2, :cond_1

    .line 2
    array-length v0, p1

    if-ge p2, v0, :cond_1

    add-int v0, p2, p3

    if-lt v0, p2, :cond_0

    .line 3
    array-length v1, p1

    if-gt v0, v1, :cond_0

    .line 4
    iput-object p1, p0, Lcom/dropbox/core/DbxStreamWriter$ByteArrayCopier;->a:[B

    .line 5
    iput p2, p0, Lcom/dropbox/core/DbxStreamWriter$ByteArrayCopier;->b:I

    .line 6
    iput p3, p0, Lcom/dropbox/core/DbxStreamWriter$ByteArrayCopier;->c:I

    return-void

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'offset+length\' is out of bounds"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'offset\' is out of bounds"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'data\' can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public write(Lcom/dropbox/core/NoThrowOutputStream;)V
    .locals 2

    iget-object v0, p0, Lcom/dropbox/core/DbxStreamWriter$ByteArrayCopier;->a:[B

    iget v1, p0, Lcom/dropbox/core/DbxStreamWriter$ByteArrayCopier;->b:I

    iget p0, p0, Lcom/dropbox/core/DbxStreamWriter$ByteArrayCopier;->c:I

    invoke-virtual {p1, v0, v1, p0}, Lcom/dropbox/core/NoThrowOutputStream;->write([BII)V

    return-void
.end method
