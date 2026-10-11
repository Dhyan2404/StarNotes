.class public final Lcom/twelvemonkeys/io/ole2/Entry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/twelvemonkeys/io/ole2/Entry;",
        ">;"
    }
.end annotation


# static fields
.field public static final LENGTH:I = 0x80

.field public static final r:I = 0x0

.field public static final s:I = 0x1

.field public static final t:I = 0x2

.field public static final u:I = 0x3

.field public static final v:I = 0x4

.field public static final w:I = 0x5

.field public static final x:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "Lcom/twelvemonkeys/io/ole2/Entry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public e:Ljava/lang/String;

.field public f:B

.field public g:B

.field public h:I

.field public i:I

.field public j:I

.field public k:J

.field public l:J

.field public m:I

.field public n:I

.field public o:Lcom/twelvemonkeys/io/ole2/CompoundDocument;

.field public p:Lcom/twelvemonkeys/io/ole2/Entry;

.field public q:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "Lcom/twelvemonkeys/io/ole2/Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v0

    sput-object v0, Lcom/twelvemonkeys/io/ole2/Entry;->x:Ljava/util/SortedSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Ljava/io/DataInput;)Lcom/twelvemonkeys/io/ole2/Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/twelvemonkeys/io/ole2/Entry;

    invoke-direct {v0}, Lcom/twelvemonkeys/io/ole2/Entry;-><init>()V

    invoke-virtual {v0, p0}, Lcom/twelvemonkeys/io/ole2/Entry;->a(Ljava/io/DataInput;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/io/DataInput;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x40

    new-array v0, v0, [B

    invoke-interface {p1, v0}, Ljava/io/DataInput;->readFully([B)V

    invoke-interface {p1}, Ljava/io/DataInput;->readShort()S

    move-result v1

    new-instance v2, Ljava/lang/String;

    add-int/lit8 v1, v1, -0x2

    const-string v3, "UTF-16LE"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v0, v4, v1, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v2, p0, Lcom/twelvemonkeys/io/ole2/Entry;->e:Ljava/lang/String;

    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/twelvemonkeys/io/ole2/Entry;->f:B

    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/twelvemonkeys/io/ole2/Entry;->g:B

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twelvemonkeys/io/ole2/Entry;->h:I

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twelvemonkeys/io/ole2/Entry;->i:I

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twelvemonkeys/io/ole2/Entry;->j:I

    const/16 v0, 0x14

    invoke-interface {p1, v0}, Ljava/io/DataInput;->skipBytes(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->toJavaTimeInMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twelvemonkeys/io/ole2/Entry;->k:J

    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->toJavaTimeInMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twelvemonkeys/io/ole2/Entry;->l:J

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twelvemonkeys/io/ole2/Entry;->m:I

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twelvemonkeys/io/ole2/Entry;->n:I

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    return-void

    :cond_0
    new-instance p0, Lcom/twelvemonkeys/io/ole2/CorruptDocumentException;

    invoke-direct {p0}, Lcom/twelvemonkeys/io/ole2/CorruptDocumentException;-><init>()V

    throw p0
.end method

.method public compareTo(Lcom/twelvemonkeys/io/ole2/Entry;)I
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/twelvemonkeys/io/ole2/Entry;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p1, Lcom/twelvemonkeys/io/ole2/Entry;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_1

    return v0

    .line 3
    :cond_1
    iget-object p0, p0, Lcom/twelvemonkeys/io/ole2/Entry;->e:Ljava/lang/String;

    iget-object p1, p1, Lcom/twelvemonkeys/io/ole2/Entry;->e:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/twelvemonkeys/io/ole2/Entry;

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/io/ole2/Entry;->compareTo(Lcom/twelvemonkeys/io/ole2/Entry;)I

    move-result p0

    return p0
.end method

.method public created()J
    .locals 2

    iget-wide v0, p0, Lcom/twelvemonkeys/io/ole2/Entry;->k:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/twelvemonkeys/io/ole2/Entry;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/twelvemonkeys/io/ole2/Entry;

    iget-object v1, p0, Lcom/twelvemonkeys/io/ole2/Entry;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/twelvemonkeys/io/ole2/Entry;->e:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/twelvemonkeys/io/ole2/Entry;->p:Lcom/twelvemonkeys/io/ole2/Entry;

    iget-object p1, p1, Lcom/twelvemonkeys/io/ole2/Entry;->p:Lcom/twelvemonkeys/io/ole2/Entry;

    if-eq p0, p1, :cond_3

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/io/ole2/Entry;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :cond_3
    :goto_0
    return v0
.end method

.method public getChildEntries()Ljava/util/SortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "Lcom/twelvemonkeys/io/ole2/Entry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/twelvemonkeys/io/ole2/Entry;->q:Ljava/util/SortedSet;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/twelvemonkeys/io/ole2/Entry;->isFile()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/twelvemonkeys/io/ole2/Entry;->j:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/twelvemonkeys/io/ole2/Entry;->o:Lcom/twelvemonkeys/io/ole2/CompoundDocument;

    invoke-virtual {v1, v0, p0}, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->e(ILcom/twelvemonkeys/io/ole2/Entry;)Ljava/util/SortedSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v0

    iput-object v0, p0, Lcom/twelvemonkeys/io/ole2/Entry;->q:Ljava/util/SortedSet;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Lcom/twelvemonkeys/io/ole2/Entry;->x:Ljava/util/SortedSet;

    iput-object v0, p0, Lcom/twelvemonkeys/io/ole2/Entry;->q:Ljava/util/SortedSet;

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/twelvemonkeys/io/ole2/Entry;->q:Ljava/util/SortedSet;

    return-object p0
.end method

.method public getChildEntry(Ljava/lang/String;)Lcom/twelvemonkeys/io/ole2/Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/twelvemonkeys/io/ole2/Entry;->isFile()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/twelvemonkeys/io/ole2/Entry;->j:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/twelvemonkeys/io/ole2/Entry;

    invoke-direct {v0}, Lcom/twelvemonkeys/io/ole2/Entry;-><init>()V

    iput-object p1, v0, Lcom/twelvemonkeys/io/ole2/Entry;->e:Ljava/lang/String;

    iput-object p0, v0, Lcom/twelvemonkeys/io/ole2/Entry;->p:Lcom/twelvemonkeys/io/ole2/Entry;

    invoke-virtual {p0}, Lcom/twelvemonkeys/io/ole2/Entry;->getChildEntries()Ljava/util/SortedSet;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/twelvemonkeys/io/ole2/Entry;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getInputStream()Lcom/twelvemonkeys/io/SeekableInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/twelvemonkeys/io/ole2/Entry;->isFile()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/twelvemonkeys/io/ole2/Entry;->o:Lcom/twelvemonkeys/io/ole2/CompoundDocument;

    iget v1, p0, Lcom/twelvemonkeys/io/ole2/Entry;->m:I

    iget p0, p0, Lcom/twelvemonkeys/io/ole2/Entry;->n:I

    invoke-virtual {v0, v1, p0}, Lcom/twelvemonkeys/io/ole2/CompoundDocument;->i(II)Lcom/twelvemonkeys/io/SeekableInputStream;

    move-result-object p0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/io/ole2/Entry;->e:Ljava/lang/String;

    return-object p0
.end method

.method public getParentEntry()Lcom/twelvemonkeys/io/ole2/Entry;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/io/ole2/Entry;->p:Lcom/twelvemonkeys/io/ole2/Entry;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/twelvemonkeys/io/ole2/Entry;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget p0, p0, Lcom/twelvemonkeys/io/ole2/Entry;->m:I

    xor-int/2addr p0, v0

    return p0
.end method

.method public isDirectory()Z
    .locals 1

    iget-byte p0, p0, Lcom/twelvemonkeys/io/ole2/Entry;->f:B

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFile()Z
    .locals 1

    iget-byte p0, p0, Lcom/twelvemonkeys/io/ole2/Entry;->f:B

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRoot()Z
    .locals 1

    iget-byte p0, p0, Lcom/twelvemonkeys/io/ole2/Entry;->f:B

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public lastModified()J
    .locals 2

    iget-wide v0, p0, Lcom/twelvemonkeys/io/ole2/Entry;->l:J

    return-wide v0
.end method

.method public length()J
    .locals 2

    invoke-virtual {p0}, Lcom/twelvemonkeys/io/ole2/Entry;->isFile()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget p0, p0, Lcom/twelvemonkeys/io/ole2/Entry;->n:I

    int-to-long v0, p0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/twelvemonkeys/io/ole2/Entry;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/twelvemonkeys/io/ole2/Entry;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Document"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/twelvemonkeys/io/ole2/Entry;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Directory"

    goto :goto_0

    :cond_1
    const-string v2, "Root"

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/twelvemonkeys/io/ole2/Entry;->p:Lcom/twelvemonkeys/io/ole2/Entry;

    const-string v3, ""

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", parent: \""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/twelvemonkeys/io/ole2/Entry;->p:Lcom/twelvemonkeys/io/ole2/Entry;

    invoke-virtual {v4}, Lcom/twelvemonkeys/io/ole2/Entry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/twelvemonkeys/io/ole2/Entry;->isFile()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", children: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/twelvemonkeys/io/ole2/Entry;->q:Ljava/util/SortedSet;

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_4
    const-string v2, "(unknown)"

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", SId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/twelvemonkeys/io/ole2/Entry;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/twelvemonkeys/io/ole2/Entry;->n:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
