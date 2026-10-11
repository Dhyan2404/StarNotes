.class public final Lorg/mortbay/jetty/HttpFields$Field;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/HttpFields;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Field"
.end annotation


# instance fields
.field public a:Lorg/mortbay/io/Buffer;

.field public b:Lorg/mortbay/io/Buffer;

.field public c:Ljava/lang/String;

.field public d:J

.field public e:Lorg/mortbay/jetty/HttpFields$Field;

.field public f:Lorg/mortbay/jetty/HttpFields$Field;

.field public g:I


# direct methods
.method public constructor <init>(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;JI)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->asImmutableBuffer()Lorg/mortbay/io/Buffer;

    move-result-object p1

    iput-object p1, p0, Lorg/mortbay/jetty/HttpFields$Field;->a:Lorg/mortbay/io/Buffer;

    .line 4
    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->isImmutable()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/mortbay/io/View;

    invoke-direct {p1, p2}, Lorg/mortbay/io/View;-><init>(Lorg/mortbay/io/Buffer;)V

    move-object p2, p1

    :goto_0
    iput-object p2, p0, Lorg/mortbay/jetty/HttpFields$Field;->b:Lorg/mortbay/io/Buffer;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lorg/mortbay/jetty/HttpFields$Field;->e:Lorg/mortbay/jetty/HttpFields$Field;

    .line 6
    iput-object p1, p0, Lorg/mortbay/jetty/HttpFields$Field;->f:Lorg/mortbay/jetty/HttpFields$Field;

    .line 7
    iput p5, p0, Lorg/mortbay/jetty/HttpFields$Field;->g:I

    .line 8
    iput-wide p3, p0, Lorg/mortbay/jetty/HttpFields$Field;->d:J

    .line 9
    iput-object p1, p0, Lorg/mortbay/jetty/HttpFields$Field;->c:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;JILorg/mortbay/jetty/c;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lorg/mortbay/jetty/HttpFields$Field;-><init>(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;JI)V

    return-void
.end method

.method public static synthetic a(Lorg/mortbay/jetty/HttpFields$Field;)Lorg/mortbay/jetty/HttpFields$Field;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/HttpFields$Field;->f:Lorg/mortbay/jetty/HttpFields$Field;

    return-object p0
.end method

.method public static synthetic b(Lorg/mortbay/jetty/HttpFields$Field;Lorg/mortbay/jetty/HttpFields$Field;)Lorg/mortbay/jetty/HttpFields$Field;
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/HttpFields$Field;->f:Lorg/mortbay/jetty/HttpFields$Field;

    return-object p1
.end method

.method public static synthetic c(Lorg/mortbay/jetty/HttpFields$Field;)I
    .locals 0

    iget p0, p0, Lorg/mortbay/jetty/HttpFields$Field;->g:I

    return p0
.end method

.method public static synthetic d(Lorg/mortbay/jetty/HttpFields$Field;)Lorg/mortbay/io/Buffer;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/HttpFields$Field;->a:Lorg/mortbay/io/Buffer;

    return-object p0
.end method

.method public static synthetic e(Lorg/mortbay/jetty/HttpFields$Field;)Lorg/mortbay/io/Buffer;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/HttpFields$Field;->b:Lorg/mortbay/io/Buffer;

    return-object p0
.end method

.method public static synthetic f(Lorg/mortbay/jetty/HttpFields$Field;)Lorg/mortbay/jetty/HttpFields$Field;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/HttpFields$Field;->e:Lorg/mortbay/jetty/HttpFields$Field;

    return-object p0
.end method

.method public static synthetic g(Lorg/mortbay/jetty/HttpFields$Field;Lorg/mortbay/jetty/HttpFields$Field;)Lorg/mortbay/jetty/HttpFields$Field;
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/HttpFields$Field;->e:Lorg/mortbay/jetty/HttpFields$Field;

    return-object p1
.end method

.method public static synthetic h(Lorg/mortbay/jetty/HttpFields$Field;Lorg/mortbay/io/Buffer;JI)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/mortbay/jetty/HttpFields$Field;->p(Lorg/mortbay/io/Buffer;JI)V

    return-void
.end method

.method public static synthetic i(Lorg/mortbay/jetty/HttpFields$Field;)V
    .locals 0

    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpFields$Field;->m()V

    return-void
.end method

.method public static synthetic j(Lorg/mortbay/jetty/HttpFields$Field;)J
    .locals 2

    iget-wide v0, p0, Lorg/mortbay/jetty/HttpFields$Field;->d:J

    return-wide v0
.end method

.method public static synthetic k(Lorg/mortbay/jetty/HttpFields$Field;J)J
    .locals 0

    iput-wide p1, p0, Lorg/mortbay/jetty/HttpFields$Field;->d:J

    return-wide p1
.end method

.method public static synthetic l(Lorg/mortbay/jetty/HttpFields$Field;)V
    .locals 0

    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpFields$Field;->n()V

    return-void
.end method


# virtual methods
.method public getIntValue()I
    .locals 2

    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpFields$Field;->getLongValue()J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public getLongValue()J
    .locals 4

    iget-wide v0, p0, Lorg/mortbay/jetty/HttpFields$Field;->d:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields$Field;->b:Lorg/mortbay/io/Buffer;

    invoke-static {v0}, Lorg/mortbay/io/BufferUtil;->toLong(Lorg/mortbay/io/Buffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/mortbay/jetty/HttpFields$Field;->d:J

    :cond_0
    iget-wide v0, p0, Lorg/mortbay/jetty/HttpFields$Field;->d:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/HttpFields$Field;->a:Lorg/mortbay/io/Buffer;

    invoke-static {p0}, Lorg/mortbay/io/BufferUtil;->to8859_1_String(Lorg/mortbay/io/Buffer;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNameOrdinal()I
    .locals 1

    sget-object v0, Lorg/mortbay/jetty/HttpHeaders;->CACHE:Lorg/mortbay/jetty/HttpHeaders;

    iget-object p0, p0, Lorg/mortbay/jetty/HttpFields$Field;->a:Lorg/mortbay/io/Buffer;

    invoke-virtual {v0, p0}, Lorg/mortbay/io/BufferCache;->getOrdinal(Lorg/mortbay/io/Buffer;)I

    move-result p0

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields$Field;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields$Field;->b:Lorg/mortbay/io/Buffer;

    invoke-static {v0}, Lorg/mortbay/io/BufferUtil;->to8859_1_String(Lorg/mortbay/io/Buffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/HttpFields$Field;->c:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lorg/mortbay/jetty/HttpFields$Field;->c:Ljava/lang/String;

    return-object p0
.end method

.method public getValueBuffer()Lorg/mortbay/io/Buffer;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/HttpFields$Field;->b:Lorg/mortbay/io/Buffer;

    return-object p0
.end method

.method public getValueOrdinal()I
    .locals 1

    sget-object v0, Lorg/mortbay/jetty/HttpHeaderValues;->CACHE:Lorg/mortbay/jetty/HttpHeaderValues;

    iget-object p0, p0, Lorg/mortbay/jetty/HttpFields$Field;->b:Lorg/mortbay/io/Buffer;

    invoke-virtual {v0, p0}, Lorg/mortbay/io/BufferCache;->getOrdinal(Lorg/mortbay/io/Buffer;)I

    move-result p0

    return p0
.end method

.method public final m()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lorg/mortbay/jetty/HttpFields$Field;->g:I

    return-void
.end method

.method public final n()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/HttpFields$Field;->a:Lorg/mortbay/io/Buffer;

    iput-object v0, p0, Lorg/mortbay/jetty/HttpFields$Field;->b:Lorg/mortbay/io/Buffer;

    iput-object v0, p0, Lorg/mortbay/jetty/HttpFields$Field;->e:Lorg/mortbay/jetty/HttpFields$Field;

    iput-object v0, p0, Lorg/mortbay/jetty/HttpFields$Field;->f:Lorg/mortbay/jetty/HttpFields$Field;

    iput-object v0, p0, Lorg/mortbay/jetty/HttpFields$Field;->c:Ljava/lang/String;

    return-void
.end method

.method public o()Lorg/mortbay/io/Buffer;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/HttpFields$Field;->a:Lorg/mortbay/io/Buffer;

    return-object p0
.end method

.method public final p(Lorg/mortbay/io/Buffer;JI)V
    .locals 2

    iput p4, p0, Lorg/mortbay/jetty/HttpFields$Field;->g:I

    iget-object p4, p0, Lorg/mortbay/jetty/HttpFields$Field;->b:Lorg/mortbay/io/Buffer;

    const/4 v0, 0x0

    if-nez p4, :cond_1

    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->isImmutable()Z

    move-result p4

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p4, Lorg/mortbay/io/View;

    invoke-direct {p4, p1}, Lorg/mortbay/io/View;-><init>(Lorg/mortbay/io/Buffer;)V

    move-object p1, p4

    :goto_0
    iput-object p1, p0, Lorg/mortbay/jetty/HttpFields$Field;->b:Lorg/mortbay/io/Buffer;

    iput-wide p2, p0, Lorg/mortbay/jetty/HttpFields$Field;->d:J

    iput-object v0, p0, Lorg/mortbay/jetty/HttpFields$Field;->c:Ljava/lang/String;

    goto :goto_3

    :cond_1
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->isImmutable()Z

    move-result p4

    if-eqz p4, :cond_2

    iput-object p1, p0, Lorg/mortbay/jetty/HttpFields$Field;->b:Lorg/mortbay/io/Buffer;

    iput-wide p2, p0, Lorg/mortbay/jetty/HttpFields$Field;->d:J

    iput-object v0, p0, Lorg/mortbay/jetty/HttpFields$Field;->c:Ljava/lang/String;

    goto :goto_3

    :cond_2
    iget-object p4, p0, Lorg/mortbay/jetty/HttpFields$Field;->b:Lorg/mortbay/io/Buffer;

    instance-of v1, p4, Lorg/mortbay/io/View;

    if-eqz v1, :cond_3

    check-cast p4, Lorg/mortbay/io/View;

    invoke-virtual {p4, p1}, Lorg/mortbay/io/View;->update(Lorg/mortbay/io/Buffer;)V

    goto :goto_1

    :cond_3
    new-instance p4, Lorg/mortbay/io/View;

    invoke-direct {p4, p1}, Lorg/mortbay/io/View;-><init>(Lorg/mortbay/io/Buffer;)V

    iput-object p4, p0, Lorg/mortbay/jetty/HttpFields$Field;->b:Lorg/mortbay/io/Buffer;

    :goto_1
    iput-wide p2, p0, Lorg/mortbay/jetty/HttpFields$Field;->d:J

    iget-object p2, p0, Lorg/mortbay/jetty/HttpFields$Field;->c:Ljava/lang/String;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->length()I

    move-result p3

    if-eq p2, p3, :cond_4

    iput-object v0, p0, Lorg/mortbay/jetty/HttpFields$Field;->c:Ljava/lang/String;

    goto :goto_3

    :cond_4
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->length()I

    move-result p2

    :goto_2
    add-int/lit8 p3, p2, -0x1

    if-lez p2, :cond_6

    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result p2

    add-int/2addr p2, p3

    invoke-interface {p1, p2}, Lorg/mortbay/io/Buffer;->peek(I)B

    move-result p2

    iget-object p4, p0, Lorg/mortbay/jetty/HttpFields$Field;->c:Ljava/lang/String;

    invoke-virtual {p4, p3}, Ljava/lang/String;->charAt(I)C

    move-result p4

    if-eq p2, p4, :cond_5

    iput-object v0, p0, Lorg/mortbay/jetty/HttpFields$Field;->c:Ljava/lang/String;

    goto :goto_3

    :cond_5
    move p2, p3

    goto :goto_2

    :cond_6
    :goto_3
    return-void
.end method

.method public put(Lorg/mortbay/io/Buffer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields$Field;->a:Lorg/mortbay/io/Buffer;

    instance-of v1, v0, Lorg/mortbay/io/BufferCache$CachedBuffer;

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    check-cast v0, Lorg/mortbay/io/BufferCache$CachedBuffer;

    invoke-virtual {v0}, Lorg/mortbay/io/BufferCache$CachedBuffer;->getOrdinal()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/16 v1, 0xd

    const/16 v3, 0xa

    const/16 v4, 0x3a

    if-ltz v0, :cond_1

    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields$Field;->a:Lorg/mortbay/io/Buffer;

    invoke-interface {p1, v0}, Lorg/mortbay/io/Buffer;->put(Lorg/mortbay/io/Buffer;)I

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields$Field;->a:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v0

    iget-object v5, p0, Lorg/mortbay/jetty/HttpFields$Field;->a:Lorg/mortbay/io/Buffer;

    invoke-interface {v5}, Lorg/mortbay/io/Buffer;->putIndex()I

    move-result v5

    :goto_1
    if-ge v0, v5, :cond_3

    iget-object v6, p0, Lorg/mortbay/jetty/HttpFields$Field;->a:Lorg/mortbay/io/Buffer;

    add-int/lit8 v7, v0, 0x1

    invoke-interface {v6, v0}, Lorg/mortbay/io/Buffer;->peek(I)B

    move-result v0

    if-eq v0, v3, :cond_2

    if-eq v0, v1, :cond_2

    if-eq v0, v4, :cond_2

    invoke-interface {p1, v0}, Lorg/mortbay/io/Buffer;->put(B)V

    :cond_2
    move v0, v7

    goto :goto_1

    :cond_3
    :goto_2
    invoke-interface {p1, v4}, Lorg/mortbay/io/Buffer;->put(B)V

    const/16 v0, 0x20

    invoke-interface {p1, v0}, Lorg/mortbay/io/Buffer;->put(B)V

    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields$Field;->b:Lorg/mortbay/io/Buffer;

    instance-of v4, v0, Lorg/mortbay/io/BufferCache$CachedBuffer;

    if-eqz v4, :cond_4

    check-cast v0, Lorg/mortbay/io/BufferCache$CachedBuffer;

    invoke-virtual {v0}, Lorg/mortbay/io/BufferCache$CachedBuffer;->getOrdinal()I

    move-result v2

    :cond_4
    if-gez v2, :cond_7

    iget-wide v4, p0, Lorg/mortbay/jetty/HttpFields$Field;->d:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_5

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields$Field;->b:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v0

    iget-object v2, p0, Lorg/mortbay/jetty/HttpFields$Field;->b:Lorg/mortbay/io/Buffer;

    invoke-interface {v2}, Lorg/mortbay/io/Buffer;->putIndex()I

    move-result v2

    :goto_3
    if-ge v0, v2, :cond_8

    iget-object v4, p0, Lorg/mortbay/jetty/HttpFields$Field;->b:Lorg/mortbay/io/Buffer;

    add-int/lit8 v5, v0, 0x1

    invoke-interface {v4, v0}, Lorg/mortbay/io/Buffer;->peek(I)B

    move-result v0

    if-eq v0, v3, :cond_6

    if-eq v0, v1, :cond_6

    invoke-interface {p1, v0}, Lorg/mortbay/io/Buffer;->put(B)V

    :cond_6
    move v0, v5

    goto :goto_3

    :cond_7
    :goto_4
    iget-object p0, p0, Lorg/mortbay/jetty/HttpFields$Field;->b:Lorg/mortbay/io/Buffer;

    invoke-interface {p1, p0}, Lorg/mortbay/io/Buffer;->put(Lorg/mortbay/io/Buffer;)I

    :cond_8
    invoke-static {p1}, Lorg/mortbay/io/BufferUtil;->putCRLF(Lorg/mortbay/io/Buffer;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/mortbay/jetty/HttpFields$Field;->f:Lorg/mortbay/jetty/HttpFields$Field;

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    const-string v1, "<-"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpFields$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v3, p0, Lorg/mortbay/jetty/HttpFields$Field;->g:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/mortbay/jetty/HttpFields$Field;->b:Lorg/mortbay/io/Buffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lorg/mortbay/jetty/HttpFields$Field;->e:Lorg/mortbay/jetty/HttpFields$Field;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "->"

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
