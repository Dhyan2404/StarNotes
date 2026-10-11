.class public Lnet/sf/saxon/str/ZenoString;
.super Lnet/sf/saxon/str/UnicodeString;
.source "SourceFile"


# static fields
.field public static final EMPTY:Lnet/sf/saxon/str/ZenoString;


# instance fields
.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/str/UnicodeString;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/str/ZenoString;

    invoke-direct {v0}, Lnet/sf/saxon/str/ZenoString;-><init>()V

    sput-object v0, Lnet/sf/saxon/str/ZenoString;->EMPTY:Lnet/sf/saxon/str/ZenoString;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnet/sf/saxon/str/UnicodeString;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/str/ZenoString;->e:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/str/ZenoString;->f:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/str/UnicodeString;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Lnet/sf/saxon/str/UnicodeString;-><init>()V

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/str/ZenoString;->e:Ljava/util/List;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/str/ZenoString;->f:Ljava/util/List;

    .line 7
    iget-object v0, p0, Lnet/sf/saxon/str/ZenoString;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object p0, p0, Lnet/sf/saxon/str/ZenoString;->f:Ljava/util/List;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static concatSegments(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->getWidth()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-gt v0, v2, :cond_0

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->getWidth()I

    move-result v0

    if-gt v0, v2, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->length32()I

    move-result v0

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->length32()I

    move-result v2

    add-int/2addr v0, v2

    new-array v0, v0, [B

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/str/UnicodeString;->c([BI)V

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->length32()I

    move-result p0

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/str/UnicodeString;->c([BI)V

    new-instance p0, Lnet/sf/saxon/str/Twine8;

    invoke-direct {p0, v0}, Lnet/sf/saxon/str/Twine8;-><init>([B)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->getWidth()I

    move-result v0

    const/16 v2, 0x10

    if-gt v0, v2, :cond_1

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->getWidth()I

    move-result v0

    if-gt v0, v2, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->length32()I

    move-result v0

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->length32()I

    move-result v2

    add-int/2addr v0, v2

    new-array v0, v0, [C

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/str/UnicodeString;->a([CI)V

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->length32()I

    move-result p0

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/str/UnicodeString;->a([CI)V

    new-instance p0, Lnet/sf/saxon/str/Twine16;

    invoke-direct {p0, v0}, Lnet/sf/saxon/str/Twine16;-><init>([C)V

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->length32()I

    move-result v0

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->length32()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [B

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/str/UnicodeString;->b([BI)V

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->length32()I

    move-result p0

    mul-int/lit8 p0, p0, 0x3

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/str/UnicodeString;->b([BI)V

    new-instance p0, Lnet/sf/saxon/str/Twine24;

    invoke-direct {p0, v0}, Lnet/sf/saxon/str/Twine24;-><init>([B)V

    return-object p0
.end method

.method public static synthetic e(Lnet/sf/saxon/str/ZenoString;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/str/ZenoString;->e:Ljava/util/List;

    return-object p0
.end method

.method public static of(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/ZenoString;
    .locals 1

    instance-of v0, p0, Lnet/sf/saxon/str/ZenoString;

    if-eqz v0, :cond_0

    check-cast p0, Lnet/sf/saxon/str/ZenoString;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Lnet/sf/saxon/str/ZenoString;

    invoke-direct {p0}, Lnet/sf/saxon/str/ZenoString;-><init>()V

    return-object p0

    :cond_1
    new-instance v0, Lnet/sf/saxon/str/ZenoString;

    invoke-direct {v0, p0}, Lnet/sf/saxon/str/ZenoString;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    return-object v0
.end method


# virtual methods
.method public a([CI)V
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/str/ZenoString;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/str/UnicodeString;->a([CI)V

    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeString;->length32()I

    move-result v0

    add-int/2addr p2, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b([BI)V
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/str/ZenoString;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/str/UnicodeString;->b([BI)V

    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeString;->length32()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    add-int/2addr p2, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c([BI)V
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/str/ZenoString;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/str/UnicodeString;->c([BI)V

    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeString;->length32()I

    move-result v0

    add-int/2addr p2, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public codePointAt(J)I
    .locals 4

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/str/ZenoString;->j(J)I

    move-result v0

    iget-object v1, p0, Lnet/sf/saxon/str/ZenoString;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/str/UnicodeString;

    iget-object p0, p0, Lnet/sf/saxon/str/ZenoString;->f:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr p1, v2

    invoke-virtual {v1, p1, p2}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result p0

    return p0
.end method

.method public codePoints()Lnet/sf/saxon/z/IntIterator;
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/str/ZenoString;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/sf/saxon/expr/sort/EmptyIntIterator;->getInstance()Lnet/sf/saxon/expr/sort/EmptyIntIterator;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lnet/sf/saxon/str/ZenoString$a;

    invoke-direct {v0, p0}, Lnet/sf/saxon/str/ZenoString$a;-><init>(Lnet/sf/saxon/str/ZenoString;)V

    return-object v0
.end method

.method public bridge synthetic concat(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/str/ZenoString;->concat(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/ZenoString;

    move-result-object p0

    return-object p0
.end method

.method public concat(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/ZenoString;
    .locals 6

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/str/ZenoString;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    instance-of p0, p1, Lnet/sf/saxon/str/ZenoString;

    if-eqz p0, :cond_0

    check-cast p1, Lnet/sf/saxon/str/ZenoString;

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/str/ZenoString;

    invoke-direct {p0, p1}, Lnet/sf/saxon/str/ZenoString;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    move-object p1, p0

    :goto_0
    return-object p1

    .line 4
    :cond_1
    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p0

    .line 5
    :cond_2
    instance-of v0, p1, Lnet/sf/saxon/str/ZenoString;

    if-eqz v0, :cond_6

    .line 6
    new-instance v0, Lnet/sf/saxon/str/ZenoString;

    invoke-direct {v0}, Lnet/sf/saxon/str/ZenoString;-><init>()V

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lnet/sf/saxon/str/ZenoString;->e:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lnet/sf/saxon/str/ZenoString;->e:Ljava/util/List;

    .line 8
    move-object v2, p1

    check-cast v2, Lnet/sf/saxon/str/ZenoString;

    iget-object v3, v2, Lnet/sf/saxon/str/ZenoString;->e:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lnet/sf/saxon/str/ZenoString;->f:Ljava/util/List;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lnet/sf/saxon/str/ZenoString;->f:Ljava/util/List;

    .line 10
    invoke-virtual {p0}, Lnet/sf/saxon/str/ZenoString;->length()J

    move-result-wide v3

    .line 11
    iget-object p0, v2, Lnet/sf/saxon/str/ZenoString;->f:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 12
    iget-object v5, v0, Lnet/sf/saxon/str/ZenoString;->f:Ljava/util/List;

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const-wide/16 v1, 0x20

    cmp-long p0, v3, v1

    if-ltz p0, :cond_4

    .line 13
    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide p0

    cmp-long p0, p0, v1

    if-gez p0, :cond_5

    :cond_4
    invoke-virtual {v0}, Lnet/sf/saxon/str/ZenoString;->h()Lnet/sf/saxon/str/ZenoString;

    move-result-object v0

    :cond_5
    return-object v0

    .line 14
    :cond_6
    new-instance v0, Lnet/sf/saxon/str/ZenoString;

    invoke-direct {v0}, Lnet/sf/saxon/str/ZenoString;-><init>()V

    .line 15
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lnet/sf/saxon/str/ZenoString;->e:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lnet/sf/saxon/str/ZenoString;->e:Ljava/util/List;

    .line 16
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lnet/sf/saxon/str/ZenoString;->f:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lnet/sf/saxon/str/ZenoString;->f:Ljava/util/List;

    .line 17
    iget-object v1, v0, Lnet/sf/saxon/str/ZenoString;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object p1, v0, Lnet/sf/saxon/str/ZenoString;->f:Ljava/util/List;

    invoke-virtual {p0}, Lnet/sf/saxon/str/ZenoString;->length()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-virtual {v0}, Lnet/sf/saxon/str/ZenoString;->h()Lnet/sf/saxon/str/ZenoString;

    move-result-object p0

    return-object p0
.end method

.method public debugSegmentLengths()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lnet/sf/saxon/str/ZenoString;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object p0, p0, Lnet/sf/saxon/str/ZenoString;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {v1}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public economize()Lnet/sf/saxon/str/UnicodeString;
    .locals 4

    iget-object v0, p0, Lnet/sf/saxon/str/ZenoString;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lnet/sf/saxon/str/EmptyUnicodeString;->getInstance()Lnet/sf/saxon/str/EmptyUnicodeString;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lnet/sf/saxon/str/ZenoString;->e:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/str/UnicodeString;

    return-object p0

    :cond_1
    const/16 v1, 0x20

    if-ge v0, v1, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/str/ZenoString;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x100

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/str/ZenoString;->getWidth()I

    move-result v0

    const/16 v1, 0x10

    if-gt v0, v1, :cond_2

    new-instance v0, Lnet/sf/saxon/str/BMPString;

    invoke-virtual {p0}, Lnet/sf/saxon/str/ZenoString;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/str/BMPString;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_2
    return-object p0
.end method

.method public final f(JII)I
    .locals 4

    if-ne p3, p4, :cond_1

    iget-object p4, p0, Lnet/sf/saxon/str/ZenoString;->f:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Long;

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p0, p0, Lnet/sf/saxon/str/ZenoString;->e:Ljava/util/List;

    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v2

    add-long/2addr v2, v0

    cmp-long p0, v0, p1

    if-gtz p0, :cond_0

    cmp-long p0, v2, p1

    if-lez p0, :cond_0

    return p3

    :cond_0
    const/4 p0, -0x1

    return p0

    :cond_1
    sub-int v0, p4, p3

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p3

    iget-object v1, p0, Lnet/sf/saxon/str/ZenoString;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-lez v1, :cond_2

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lnet/sf/saxon/str/ZenoString;->f(JII)I

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p0, p1, p2, v0, p4}, Lnet/sf/saxon/str/ZenoString;->f(JII)I

    move-result p0

    return p0
.end method

.method public final g()Lnet/sf/saxon/str/ZenoString;
    .locals 8

    iget-object v0, p0, Lnet/sf/saxon/str/ZenoString;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    iget-object v1, p0, Lnet/sf/saxon/str/ZenoString;->e:Ljava/util/List;

    add-int/lit8 v2, v0, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {v1}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v1

    :goto_0
    if-ltz v0, :cond_4

    iget-object v3, p0, Lnet/sf/saxon/str/ZenoString;->e:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {v3}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v3

    if-nez v0, :cond_0

    const-wide/16 v5, 0x0

    goto :goto_1

    :cond_0
    iget-object v5, p0, Lnet/sf/saxon/str/ZenoString;->e:Ljava/util/List;

    add-int/lit8 v6, v0, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {v5}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v5

    :goto_1
    cmp-long v7, v3, v1

    if-gtz v7, :cond_1

    cmp-long v5, v3, v5

    if-lez v5, :cond_2

    :cond_1
    add-long/2addr v1, v3

    const-wide/16 v5, 0x20

    cmp-long v1, v1, v5

    if-gtz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lnet/sf/saxon/str/ZenoString;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/str/UnicodeString;

    iget-object v3, p0, Lnet/sf/saxon/str/ZenoString;->e:Ljava/util/List;

    add-int/lit8 v4, v0, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/str/UnicodeString;

    invoke-static {v2, v3}, Lnet/sf/saxon/str/ZenoString;->concatSegments(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lnet/sf/saxon/str/ZenoString;->e:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lnet/sf/saxon/str/ZenoString;->f:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lnet/sf/saxon/str/ZenoString;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {v1}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v1

    goto :goto_2

    :cond_3
    move-wide v1, v3

    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    return-object p0
.end method

.method public getWidth()I
    .locals 3

    iget-object p0, p0, Lnet/sf/saxon/str/ZenoString;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x7

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {v1}, Lnet/sf/saxon/str/UnicodeString;->getWidth()I

    move-result v1

    const/16 v2, 0x18

    if-ne v1, v2, :cond_0

    return v2

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final h()Lnet/sf/saxon/str/ZenoString;
    .locals 7

    iget-object v0, p0, Lnet/sf/saxon/str/ZenoString;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lnet/sf/saxon/str/ZenoString;->e:Ljava/util/List;

    add-int/lit8 v2, v0, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {v1}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v3

    long-to-double v3, v3

    const-wide v5, 0x3ff199999999999aL    # 1.1

    mul-double/2addr v3, v5

    iget-object v1, p0, Lnet/sf/saxon/str/ZenoString;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {v1}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v5

    long-to-double v5, v5

    cmpg-double v1, v5, v3

    if-gez v1, :cond_0

    iget-object v1, p0, Lnet/sf/saxon/str/ZenoString;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/str/UnicodeString;

    iget-object v4, p0, Lnet/sf/saxon/str/ZenoString;->e:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/str/UnicodeString;

    invoke-static {v3, v4}, Lnet/sf/saxon/str/ZenoString;->concatSegments(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lnet/sf/saxon/str/ZenoString;->e:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lnet/sf/saxon/str/ZenoString;->f:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public final i()Lnet/sf/saxon/str/ZenoString;
    .locals 11

    iget-object v0, p0, Lnet/sf/saxon/str/ZenoString;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    add-int/lit8 v3, v0, -0x1

    const-wide/16 v4, 0x20

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lnet/sf/saxon/str/ZenoString;->e:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {v3}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v6

    iget-object v3, p0, Lnet/sf/saxon/str/ZenoString;->e:Ljava/util/List;

    add-int/lit8 v8, v2, 0x1

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {v3}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v9

    add-long/2addr v6, v9

    shl-long v3, v4, v2

    cmp-long v3, v6, v3

    if-gez v3, :cond_0

    iget-object v3, p0, Lnet/sf/saxon/str/ZenoString;->e:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/str/UnicodeString;

    iget-object v4, p0, Lnet/sf/saxon/str/ZenoString;->e:Ljava/util/List;

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {v3, v4}, Lnet/sf/saxon/str/UnicodeString;->concat(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v3

    iget-object v4, p0, Lnet/sf/saxon/str/ZenoString;->e:Ljava/util/List;

    invoke-interface {v4, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v4, p0, Lnet/sf/saxon/str/ZenoString;->f:Ljava/util/List;

    invoke-interface {v4, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v4, p0, Lnet/sf/saxon/str/ZenoString;->e:Ljava/util/List;

    invoke-interface {v4, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    move v2, v8

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lnet/sf/saxon/str/ZenoString;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-le v2, v0, :cond_3

    iget-object v3, p0, Lnet/sf/saxon/str/ZenoString;->e:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {v3}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v6

    iget-object v3, p0, Lnet/sf/saxon/str/ZenoString;->e:Ljava/util/List;

    add-int/lit8 v8, v2, -0x1

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {v3}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v9

    add-long/2addr v6, v9

    add-int/lit8 v3, v1, 0x1

    shl-long v9, v4, v1

    cmp-long v1, v6, v9

    if-gez v1, :cond_2

    iget-object v1, p0, Lnet/sf/saxon/str/ZenoString;->e:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/str/UnicodeString;

    iget-object v6, p0, Lnet/sf/saxon/str/ZenoString;->e:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {v1, v6}, Lnet/sf/saxon/str/UnicodeString;->concat(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v1

    iget-object v6, p0, Lnet/sf/saxon/str/ZenoString;->e:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v6, p0, Lnet/sf/saxon/str/ZenoString;->f:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v6, p0, Lnet/sf/saxon/str/ZenoString;->e:Ljava/util/List;

    invoke-interface {v6, v8, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v2, v2, -0x1

    move v1, v3

    goto :goto_1

    :cond_3
    return-object p0
.end method

.method public indexOf(IJ)J
    .locals 11

    const-wide/16 v0, 0x0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    invoke-virtual {p0}, Lnet/sf/saxon/str/ZenoString;->length()J

    move-result-wide v2

    cmp-long v2, p2, v2

    const-wide/16 v3, -0x1

    if-ltz v2, :cond_0

    return-wide v3

    :cond_0
    invoke-virtual {p0, p2, p3}, Lnet/sf/saxon/str/ZenoString;->j(J)I

    move-result v2

    move v5, v2

    :goto_0
    iget-object v6, p0, Lnet/sf/saxon/str/ZenoString;->e:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    iget-object v6, p0, Lnet/sf/saxon/str/ZenoString;->e:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/sf/saxon/str/UnicodeString;

    iget-object v7, p0, Lnet/sf/saxon/str/ZenoString;->f:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    if-ne v5, v2, :cond_1

    sub-long v9, p2, v7

    goto :goto_1

    :cond_1
    move-wide v9, v0

    :goto_1
    invoke-virtual {v6, p1, v9, v10}, Lnet/sf/saxon/str/UnicodeString;->indexOf(IJ)J

    move-result-wide v9

    cmp-long v6, v9, v0

    if-ltz v6, :cond_2

    add-long/2addr v9, v7

    return-wide v9

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    return-wide v3
.end method

.method public indexWhere(Ljava/util/function/IntPredicate;J)J
    .locals 9

    invoke-virtual {p0, p2, p3}, Lnet/sf/saxon/str/ZenoString;->j(J)I

    move-result v0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lnet/sf/saxon/str/ZenoString;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lnet/sf/saxon/str/ZenoString;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/str/UnicodeString;

    iget-object v3, p0, Lnet/sf/saxon/str/ZenoString;->f:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    if-ne v1, v0, :cond_0

    sub-long v7, p2, v3

    goto :goto_1

    :cond_0
    move-wide v7, v5

    :goto_1
    invoke-virtual {v2, p1, v7, v8}, Lnet/sf/saxon/str/UnicodeString;->indexWhere(Ljava/util/function/IntPredicate;J)J

    move-result-wide v7

    cmp-long v2, v7, v5

    if-ltz v2, :cond_1

    add-long/2addr v7, v3

    return-wide v7

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/str/ZenoString;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final j(J)I
    .locals 4

    iget-object v0, p0, Lnet/sf/saxon/str/ZenoString;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/str/ZenoString;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lnet/sf/saxon/str/ZenoString;->f(JII)I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " out of range 0-"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/str/ZenoString;->length()J

    move-result-wide p0

    const-wide/16 v2, 0x1

    sub-long/2addr p0, v2

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "ZenoString is empty"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final k()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lnet/sf/saxon/str/ZenoString;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/str/UnicodeString;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public final l()V
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lnet/sf/saxon/str/ZenoString;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lnet/sf/saxon/str/ZenoString;->f:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, v0

    if-nez v3, :cond_0

    iget-object v3, p0, Lnet/sf/saxon/str/ZenoString;->e:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {v3}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/str/ZenoString;->k()V

    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad offset for segment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method public length()J
    .locals 5

    iget-object v0, p0, Lnet/sf/saxon/str/ZenoString;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lnet/sf/saxon/str/ZenoString;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object p0, p0, Lnet/sf/saxon/str/ZenoString;->e:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v3

    add-long v0, v1, v3

    :goto_0
    return-wide v0
.end method

.method public substring(JJ)Lnet/sf/saxon/str/UnicodeString;
    .locals 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/sf/saxon/str/UnicodeString;->checkSubstringBounds(JJ)V

    cmp-long v0, p1, p3

    if-nez v0, :cond_0

    invoke-static {}, Lnet/sf/saxon/str/EmptyUnicodeString;->getInstance()Lnet/sf/saxon/str/EmptyUnicodeString;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/16 v0, 0x1

    add-long v2, p1, v0

    cmp-long v2, v2, p3

    if-nez v2, :cond_1

    new-instance p3, Lnet/sf/saxon/str/UnicodeChar;

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/str/ZenoString;->codePointAt(J)I

    move-result p0

    invoke-direct {p3, p0}, Lnet/sf/saxon/str/UnicodeChar;-><init>(I)V

    return-object p3

    :cond_1
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/str/ZenoString;->j(J)I

    move-result v2

    sub-long v0, p3, v0

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/str/ZenoString;->j(J)I

    move-result v0

    if-ne v2, v0, :cond_2

    iget-object v0, p0, Lnet/sf/saxon/str/ZenoString;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/str/UnicodeString;

    iget-object p0, p0, Lnet/sf/saxon/str/ZenoString;->f:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sub-long/2addr p1, v1

    sub-long/2addr p3, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Lnet/sf/saxon/str/UnicodeString;->substring(JJ)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object v1, p0, Lnet/sf/saxon/str/ZenoString;->e:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/str/UnicodeString;

    iget-object v3, p0, Lnet/sf/saxon/str/ZenoString;->f:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr p1, v3

    invoke-virtual {v1, p1, p2}, Lnet/sf/saxon/str/UnicodeString;->substring(J)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-static {p1}, Lnet/sf/saxon/str/ZenoString;->of(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/ZenoString;

    move-result-object p1

    :goto_0
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v0, :cond_3

    iget-object p2, p0, Lnet/sf/saxon/str/ZenoString;->e:Ljava/util/List;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {p1, p2}, Lnet/sf/saxon/str/ZenoString;->concat(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/ZenoString;

    move-result-object p1

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lnet/sf/saxon/str/ZenoString;->e:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/str/UnicodeString;

    iget-object p0, p0, Lnet/sf/saxon/str/ZenoString;->f:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr p3, v0

    invoke-virtual {p2, p3, p4}, Lnet/sf/saxon/str/UnicodeString;->prefix(J)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/str/ZenoString;->concat(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/ZenoString;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lnet/sf/saxon/str/ZenoString;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeSegments(Lnet/sf/saxon/str/UnicodeWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/str/ZenoString;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/str/UnicodeString;

    invoke-interface {p1, v0}, Lnet/sf/saxon/str/UnicodeWriter;->write(Lnet/sf/saxon/str/UnicodeString;)V

    goto :goto_0

    :cond_0
    return-void
.end method
