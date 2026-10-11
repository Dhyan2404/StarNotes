.class public Lorg/apache/commons/compress/harmony/unpack200/ClassBands;
.super Lorg/apache/commons/compress/harmony/unpack200/BandSet;
.source "SourceFile"


# instance fields
.field public final A:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

.field public final B:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

.field public final C:Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;

.field public final D:I

.field public E:[I

.field public F:[[I

.field public G:[[I

.field public H:[[I

.field public I:[[I

.field public J:[Z

.field public a:[I

.field public b:[J

.field public c:[J

.field public d:[[I

.field public e:[I

.field public f:[I

.field public g:[Ljava/lang/String;

.field public h:[I

.field public i:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList<",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;",
            ">;"
        }
    .end annotation
.end field

.field public j:[I

.field public k:[I

.field public l:[[Lorg/apache/commons/compress/harmony/unpack200/IcTuple;

.field public m:[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;",
            ">;"
        }
    .end annotation
.end field

.field public n:[I

.field public o:[I

.field public p:[I

.field public q:[[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[",
            "Ljava/util/ArrayList<",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;",
            ">;"
        }
    .end annotation
.end field

.field public r:[[Ljava/lang/String;

.field public s:[[I

.field public t:[[J

.field public u:[[J

.field public v:[[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[",
            "Ljava/util/ArrayList<",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;",
            ">;"
        }
    .end annotation
.end field

.field public w:[[Ljava/lang/String;

.field public x:[[I

.field public y:[[J

.field public z:[[J


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/harmony/unpack200/Segment;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;-><init>(Lorg/apache/commons/compress/harmony/unpack200/Segment;)V

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getAttrDefinitionBands()Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;->getAttributeDefinitionMap()Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->A:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->B:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    iget-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getClassCount()I

    move-result p1

    iput p1, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->D:I

    iget-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getOptions()Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->C:Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;

    return-void
.end method

.method public static synthetic c(I)Ljava/util/ArrayList;
    .locals 0

    invoke-static {p0}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->g(I)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lorg/apache/commons/compress/harmony/unpack200/ClassBands;[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;I)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->i([Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;I)I

    move-result p0

    return p0
.end method

.method public static synthetic e(I)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->h(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(I)Ljava/util/ArrayList;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static synthetic h(I)Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method private synthetic i([Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;I)I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->y:[[J

    aget-object p1, p1, p2

    invoke-static {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countMatches([[JLorg/apache/commons/compress/harmony/unpack200/IMatcher;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final f([[I[[JI)I
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    move v3, v0

    :goto_1
    aget-object v4, p1, v1

    array-length v5, v4

    if-ge v3, v5, :cond_0

    aget v4, v4, v3

    iget-object v5, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->A:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    invoke-virtual {v5, v4, p3}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(II)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->numBackwardsCallables()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move p1, v0

    move v1, p1

    :goto_2
    array-length v3, p2

    if-ge p1, v3, :cond_3

    move v3, v0

    :goto_3
    aget-object v4, p2, p1

    array-length v5, v4

    if-ge v3, v5, :cond_2

    int-to-long v5, v1

    aget-wide v7, v4, v3

    or-long v4, v5, v7

    long-to-int v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_3
    :goto_4
    const/16 p1, 0x1a

    if-ge v0, p1, :cond_5

    const/4 p1, 0x1

    shl-int/2addr p1, v0

    and-int/2addr p1, v1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->A:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    invoke-virtual {p1, v0, p3}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(II)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->numBackwardsCallables()I

    move-result p1

    add-int/2addr v2, p1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    return v2
.end method

.method public getClassAttributes()[Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/ArrayList<",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->i:[Ljava/util/ArrayList;

    return-object p0
.end method

.method public getClassFieldCount()[I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->a:[I

    return-object p0
.end method

.method public getClassFlags()[J
    .locals 7

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->c:[J

    if-nez v0, :cond_2

    const/4 v0, 0x0

    const-wide/16 v1, 0x7fff

    move v3, v0

    :goto_0
    const/16 v4, 0x10

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->A:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    invoke-virtual {v4, v3, v0}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(II)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->isDefaultLayout()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    shl-int/2addr v4, v3

    not-int v4, v4

    int-to-long v4, v4

    and-long/2addr v1, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->b:[J

    array-length v3, v3

    new-array v3, v3, [J

    iput-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->c:[J

    :goto_1
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->b:[J

    array-length v4, v3

    if-ge v0, v4, :cond_2

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->c:[J

    aget-wide v5, v3, v0

    and-long/2addr v5, v1

    aput-wide v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->c:[J

    return-object p0
.end method

.method public getClassInterfacesInts()[[I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->d:[[I

    return-object p0
.end method

.method public getClassMethodCount()[I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->e:[I

    return-object p0
.end method

.method public getClassSuperInts()[I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->f:[I

    return-object p0
.end method

.method public getClassThisInts()[I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->h:[I

    return-object p0
.end method

.method public getClassVersionMajor()[I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->j:[I

    return-object p0
.end method

.method public getClassVersionMinor()[I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->k:[I

    return-object p0
.end method

.method public getCodeHandlerCatchPO()[[I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->H:[[I

    return-object p0
.end method

.method public getCodeHandlerClassRCN()[[I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->I:[[I

    return-object p0
.end method

.method public getCodeHandlerCount()[I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->n:[I

    return-object p0
.end method

.method public getCodeHandlerEndPO()[[I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->G:[[I

    return-object p0
.end method

.method public getCodeHandlerStartP()[[I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->F:[[I

    return-object p0
.end method

.method public getCodeHasAttributes()[Z
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->J:[Z

    return-object p0
.end method

.method public getCodeMaxNALocals()[I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->o:[I

    return-object p0
.end method

.method public getCodeMaxStack()[I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->p:[I

    return-object p0
.end method

.method public getFieldAttributes()[[Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[[",
            "Ljava/util/ArrayList<",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->q:[[Ljava/util/ArrayList;

    return-object p0
.end method

.method public getFieldDescrInts()[[I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->s:[[I

    return-object p0
.end method

.method public getFieldFlags()[[J
    .locals 9

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->u:[[J

    if-nez v0, :cond_3

    const/4 v0, 0x0

    const-wide/16 v1, 0x7fff

    move v3, v0

    :goto_0
    const/16 v4, 0x10

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->A:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(II)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->isDefaultLayout()Z

    move-result v4

    if-nez v4, :cond_0

    shl-int v4, v5, v3

    not-int v4, v4

    int-to-long v4, v4

    and-long/2addr v1, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->t:[[J

    array-length v3, v3

    new-array v3, v3, [[J

    iput-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->u:[[J

    move v3, v0

    :goto_1
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->t:[[J

    array-length v5, v4

    if-ge v3, v5, :cond_3

    iget-object v5, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->u:[[J

    aget-object v4, v4, v3

    array-length v4, v4

    new-array v4, v4, [J

    aput-object v4, v5, v3

    move v4, v0

    :goto_2
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->t:[[J

    aget-object v5, v5, v3

    array-length v6, v5

    if-ge v4, v6, :cond_2

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->u:[[J

    aget-object v6, v6, v3

    aget-wide v7, v5, v4

    and-long/2addr v7, v1

    aput-wide v7, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->u:[[J

    return-object p0
.end method

.method public getIcLocal()[[Lorg/apache/commons/compress/harmony/unpack200/IcTuple;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->l:[[Lorg/apache/commons/compress/harmony/unpack200/IcTuple;

    return-object p0
.end method

.method public getMethodAttributes()[[Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[[",
            "Ljava/util/ArrayList<",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->v:[[Ljava/util/ArrayList;

    return-object p0
.end method

.method public getMethodDescr()[[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->w:[[Ljava/lang/String;

    return-object p0
.end method

.method public getMethodDescrInts()[[I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->x:[[I

    return-object p0
.end method

.method public getMethodFlags()[[J
    .locals 9

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->z:[[J

    if-nez v0, :cond_3

    const/4 v0, 0x0

    const-wide/16 v1, 0x7fff

    move v3, v0

    :goto_0
    const/16 v4, 0x10

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->A:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const/4 v5, 0x2

    invoke-virtual {v4, v3, v5}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(II)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->isDefaultLayout()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    shl-int/2addr v4, v3

    not-int v4, v4

    int-to-long v4, v4

    and-long/2addr v1, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->y:[[J

    array-length v3, v3

    new-array v3, v3, [[J

    iput-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->z:[[J

    move v3, v0

    :goto_1
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->y:[[J

    array-length v5, v4

    if-ge v3, v5, :cond_3

    iget-object v5, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->z:[[J

    aget-object v4, v4, v3

    array-length v4, v4

    new-array v4, v4, [J

    aput-object v4, v5, v3

    move v4, v0

    :goto_2
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->y:[[J

    aget-object v5, v5, v3

    array-length v6, v5

    if-ge v4, v6, :cond_2

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->z:[[J

    aget-object v6, v6, v3

    aget-wide v7, v5, v4

    and-long/2addr v7, v1

    aput-wide v7, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->z:[[J

    return-object p0
.end method

.method public getOrderedCodeAttributes()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->m:[Ljava/util/List;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->m:[Ljava/util/List;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->m:[Ljava/util/List;

    aget-object v4, v4, v2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move v4, v1

    :goto_1
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->m:[Ljava/util/List;

    aget-object v5, v5, v2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    iget-object v5, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->m:[Ljava/util/List;

    aget-object v5, v5, v2

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getRawClassFlags()[J
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->b:[J

    return-object p0
.end method

.method public final j(Ljava/io/InputStream;)V
    .locals 50
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->B:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->getCpUTF8()[Ljava/lang/String;

    move-result-object v8

    iget-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->B:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->getCpClass()[Ljava/lang/String;

    move-result-object v9

    iget v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->D:I

    new-array v0, v0, [Ljava/util/ArrayList;

    iput-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->i:[Ljava/util/ArrayList;

    new-instance v1, Lcom/sunia/HTREnginev2/ytd;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/ytd;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Arrays;->setAll([Ljava/lang/Object;Ljava/util/function/IntFunction;)V

    const-string v1, "class_flags"

    iget v3, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->D:I

    sget-object v10, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    iget-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->C:Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;->hasClassFlagsHi()Z

    move-result v5

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object v4, v10

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->parseFlags(Ljava/lang/String;Ljava/io/InputStream;ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;Z)[J

    move-result-object v0

    iput-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->b:[J

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countBit16([J)I

    move-result v0

    const-string v1, "class_attr_count"

    invoke-virtual {v6, v1, v7, v10, v0}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v0

    const-string v1, "class_attr_indexes"

    invoke-virtual {v6, v1, v7, v10, v0}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[I

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [[J

    iget-object v3, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->b:[J

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v6, v0, v2, v4}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->f([[I[[JI)I

    move-result v0

    const-string v2, "class_attr_calls"

    invoke-virtual {v6, v2, v7, v10, v0}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v0

    iget-object v2, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->A:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const-string v3, "Deprecated"

    invoke-virtual {v2, v3, v4}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v2

    iget-object v3, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->A:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const-string v5, "SourceFile"

    invoke-virtual {v3, v5, v4}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v3

    iget-object v5, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->b:[J

    invoke-static {v5, v3}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countMatches([JLorg/apache/commons/compress/harmony/unpack200/IMatcher;)I

    move-result v5

    const-string v11, "class_SourceFile_RUN"

    invoke-virtual {v6, v11, v7, v10, v5}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v5

    iget-object v11, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->A:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const-string v12, "EnclosingMethod"

    invoke-virtual {v11, v12, v4}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v11

    iget-object v12, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->b:[J

    invoke-static {v12, v11}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countMatches([JLorg/apache/commons/compress/harmony/unpack200/IMatcher;)I

    move-result v12

    const-string v13, "class_EnclosingMethod_RC"

    invoke-virtual {v6, v13, v7, v10, v12}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v13

    const-string v14, "class_EnclosingMethod_RDN"

    invoke-virtual {v6, v14, v7, v10, v12}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v12

    iget-object v14, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->A:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const-string v15, "Signature"

    invoke-virtual {v14, v15, v4}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v14

    iget-object v15, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->b:[J

    invoke-static {v15, v14}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countMatches([JLorg/apache/commons/compress/harmony/unpack200/IMatcher;)I

    move-result v15

    const-string v1, "class_Signature_RS"

    invoke-virtual {v6, v1, v7, v10, v15}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v1

    invoke-virtual {v6, v7, v0}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->k(Ljava/io/InputStream;[I)I

    move-result v15

    move/from16 v16, v15

    iget-object v15, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->A:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    move-object/from16 v17, v8

    const-string v8, "InnerClasses"

    invoke-virtual {v15, v8, v4}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v8

    iget-object v15, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->b:[J

    invoke-static {v15, v8}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countMatches([JLorg/apache/commons/compress/harmony/unpack200/IMatcher;)I

    move-result v15

    const-string v4, "class_InnerClasses_N"

    invoke-virtual {v6, v4, v7, v10, v15}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v4

    const-string v15, "class_InnerClasses_RC"

    invoke-virtual {v6, v15, v7, v10, v4}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[I

    move-result-object v15

    move-object/from16 v18, v9

    const-string v9, "class_InnerClasses_F"

    invoke-virtual {v6, v9, v7, v10, v4}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[I

    move-result-object v9

    move-object/from16 v20, v4

    move-object/from16 v19, v15

    const/4 v10, 0x0

    const/4 v15, 0x0

    :goto_0
    array-length v4, v9

    if-ge v10, v4, :cond_2

    move-object/from16 v21, v8

    const/4 v4, 0x0

    :goto_1
    aget-object v8, v9, v10

    move-object/from16 v22, v9

    array-length v9, v8

    if-ge v4, v9, :cond_1

    aget v8, v8, v4

    if-eqz v8, :cond_0

    add-int/lit8 v15, v15, 0x1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v9, v22

    goto :goto_1

    :cond_1
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v8, v21

    move-object/from16 v9, v22

    goto :goto_0

    :cond_2
    move-object/from16 v21, v8

    move-object/from16 v22, v9

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v8, "class_InnerClasses_outer_RCN"

    invoke-virtual {v6, v8, v7, v4, v15}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v8

    const-string v9, "class_InnerClasses_name_RUN"

    invoke-virtual {v6, v9, v7, v4, v15}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v9

    iget-object v10, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->A:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const-string v15, "class-file version"

    move-object/from16 v23, v9

    const/4 v9, 0x0

    invoke-virtual {v10, v15, v9}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v10

    iget-object v9, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->b:[J

    invoke-static {v9, v10}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countMatches([JLorg/apache/commons/compress/harmony/unpack200/IMatcher;)I

    move-result v9

    const-string v15, "class_file_version_minor_H"

    invoke-virtual {v6, v15, v7, v4, v9}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v15

    move-object/from16 v24, v15

    const-string v15, "class_file_version_major_H"

    invoke-virtual {v6, v15, v7, v4, v9}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v4

    if-lez v9, :cond_3

    iget v9, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->D:I

    new-array v15, v9, [I

    iput-object v15, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->j:[I

    new-array v9, v9, [I

    iput-object v9, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->k:[I

    :cond_3
    iget-object v9, v6, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {v9}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getDefaultClassMajorVersion()I

    move-result v9

    iget-object v15, v6, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {v15}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getDefaultClassMinorVersion()I

    move-result v15

    move/from16 v25, v15

    iget-object v15, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->C:Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;

    invoke-virtual {v15}, Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;->hasClassFlagsHi()Z

    move-result v15

    if-eqz v15, :cond_4

    const/16 v15, 0x3e

    goto :goto_2

    :cond_4
    const/16 v15, 0x1f

    :goto_2
    move/from16 v26, v9

    add-int/lit8 v9, v15, 0x1

    move-object/from16 v27, v4

    new-array v4, v9, [Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-object/from16 v28, v10

    new-array v10, v9, [I

    move-object/from16 v29, v8

    new-array v8, v9, [Ljava/util/List;

    move-object/from16 v30, v1

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v15, :cond_6

    move/from16 v31, v15

    iget-object v15, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->A:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    move-object/from16 v32, v14

    const/4 v14, 0x0

    invoke-virtual {v15, v1, v14}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(II)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v15

    if-eqz v15, :cond_5

    invoke-virtual {v15}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->isDefaultLayout()Z

    move-result v14

    if-nez v14, :cond_5

    aput-object v15, v4, v1

    iget-object v14, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->b:[J

    invoke-static {v14, v15}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countMatches([JLorg/apache/commons/compress/harmony/unpack200/IMatcher;)I

    move-result v14

    aput v14, v10, v1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    move/from16 v15, v31

    move-object/from16 v14, v32

    goto :goto_3

    :cond_6
    move-object/from16 v32, v14

    move/from16 v15, v16

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v9, :cond_9

    aget v14, v10, v1

    if-lez v14, :cond_7

    iget-object v14, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->A:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    move/from16 v16, v9

    aget-object v9, v4, v1

    invoke-virtual {v14, v9}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeBands(Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;)Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;

    move-result-object v9

    aget v14, v10, v1

    invoke-virtual {v9, v7, v14}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->parseAttributes(Ljava/io/InputStream;I)Ljava/util/List;

    move-result-object v14

    aput-object v14, v8, v1

    aget-object v14, v4, v1

    invoke-virtual {v14}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->numBackwardsCallables()I

    move-result v14

    if-lez v14, :cond_8

    new-array v7, v14, [I

    move-object/from16 v31, v10

    const/4 v10, 0x0

    invoke-static {v0, v15, v7, v10, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v9, v7}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->setBackwardsCalls([I)V

    add-int/2addr v15, v14

    goto :goto_5

    :cond_7
    move/from16 v16, v9

    :cond_8
    move-object/from16 v31, v10

    :goto_5
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v7, p1

    move/from16 v9, v16

    move-object/from16 v10, v31

    goto :goto_4

    :cond_9
    move/from16 v16, v9

    iget v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->D:I

    new-array v0, v0, [[Lorg/apache/commons/compress/harmony/unpack200/IcTuple;

    iput-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->l:[[Lorg/apache/commons/compress/harmony/unpack200/IcTuple;

    const/16 p1, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x0

    :goto_6
    iget v15, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->D:I

    if-ge v9, v15, :cond_1c

    iget-object v15, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->b:[J

    move/from16 v31, v14

    aget-wide v14, v15, v9

    invoke-virtual {v2, v14, v15}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v33

    if-eqz v33, :cond_a

    move-object/from16 v33, v2

    iget-object v2, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->i:[Ljava/util/ArrayList;

    aget-object v2, v2, v9

    move-object/from16 v34, v8

    new-instance v8, Lorg/apache/commons/compress/harmony/unpack200/bytecode/DeprecatedAttribute;

    invoke-direct {v8}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/DeprecatedAttribute;-><init>()V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_a
    move-object/from16 v33, v2

    move-object/from16 v34, v8

    :goto_7
    invoke-virtual {v3, v14, v15}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v2

    if-eqz v2, :cond_f

    aget v2, v5, v0

    move/from16 v35, v9

    int-to-long v8, v2

    iget-object v2, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->B:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->getConstantPool()Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPool;

    move-result-object v2

    invoke-virtual {v3, v8, v9, v2}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->getValue(JLorg/apache/commons/compress/harmony/unpack200/SegmentConstantPool;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    move-result-object v2

    if-nez v2, :cond_e

    iget-object v2, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->g:[Ljava/lang/String;

    aget-object v2, v2, v35

    const/16 v8, 0x2f

    invoke-virtual {v2, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    const/4 v9, 0x1

    add-int/2addr v8, v9

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/16 v8, 0x2e

    invoke-virtual {v2, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    add-int/2addr v8, v9

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    move-object/from16 v36, v3

    const/4 v9, 0x0

    :goto_8
    array-length v3, v8

    if-ge v9, v3, :cond_c

    aget-char v3, v8, v9

    move-object/from16 v37, v5

    const/16 v5, 0x2d

    if-gt v3, v5, :cond_b

    const/4 v3, -0x1

    goto :goto_9

    :cond_b
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v5, v37

    goto :goto_8

    :cond_c
    move-object/from16 v37, v5

    const/4 v3, -0x1

    const/4 v9, -0x1

    :goto_9
    if-le v9, v3, :cond_d

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_d
    iget-object v5, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->B:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".java"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    invoke-virtual {v5, v2, v8}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8Value(Ljava/lang/String;Z)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v2

    goto :goto_a

    :cond_e
    move-object/from16 v36, v3

    move-object/from16 v37, v5

    const/4 v3, -0x1

    const/4 v8, 0x1

    :goto_a
    iget-object v5, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->i:[Ljava/util/ArrayList;

    aget-object v5, v5, v35

    new-instance v9, Lorg/apache/commons/compress/harmony/unpack200/bytecode/SourceFileAttribute;

    check-cast v2, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    invoke-direct {v9, v2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/SourceFileAttribute;-><init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_f
    move-object/from16 v36, v3

    move-object/from16 v37, v5

    move/from16 v35, v9

    const/4 v3, -0x1

    const/4 v8, 0x1

    :goto_b
    invoke-virtual {v11, v14, v15}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->B:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    aget v9, v13, v1

    invoke-virtual {v2, v9}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpClassValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    move-result-object v2

    aget v9, v12, v1

    if-eqz v9, :cond_10

    iget-object v3, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->B:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v3, v9}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpNameAndTypeValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;

    move-result-object v3

    goto :goto_c

    :cond_10
    const/4 v3, 0x0

    :goto_c
    iget-object v9, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->i:[Ljava/util/ArrayList;

    aget-object v9, v9, v35

    new-instance v5, Lorg/apache/commons/compress/harmony/unpack200/bytecode/EnclosingMethodAttribute;

    invoke-direct {v5, v2, v3}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/EnclosingMethodAttribute;-><init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;)V

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    :cond_11
    move-object/from16 v2, v32

    invoke-virtual {v2, v14, v15}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v3

    if-eqz v3, :cond_12

    aget v3, v30, v7

    int-to-long v8, v3

    iget-object v3, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->B:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->getConstantPool()Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPool;

    move-result-object v3

    invoke-virtual {v2, v8, v9, v3}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->getValue(JLorg/apache/commons/compress/harmony/unpack200/SegmentConstantPool;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    iget-object v8, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->i:[Ljava/util/ArrayList;

    aget-object v8, v8, v35

    new-instance v9, Lorg/apache/commons/compress/harmony/unpack200/bytecode/SignatureAttribute;

    invoke-direct {v9, v3}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/SignatureAttribute;-><init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    :cond_12
    move-object/from16 v3, v21

    invoke-virtual {v3, v14, v15}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v8

    if-eqz v8, :cond_17

    iget-object v8, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->l:[[Lorg/apache/commons/compress/harmony/unpack200/IcTuple;

    aget v9, v20, v10

    new-array v9, v9, [Lorg/apache/commons/compress/harmony/unpack200/IcTuple;

    aput-object v9, v8, v35

    move/from16 v8, p1

    const/4 v9, 0x0

    :goto_d
    iget-object v5, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->l:[[Lorg/apache/commons/compress/harmony/unpack200/IcTuple;

    aget-object v5, v5, v35

    array-length v5, v5

    if-ge v9, v5, :cond_16

    aget-object v5, v19, v10

    aget v43, v5, v9

    aget-object v5, v18, v43

    aget-object v32, v22, v10

    aget v32, v32, v9

    if-eqz v32, :cond_13

    aget v38, v29, v8

    aget v39, v23, v8

    aget-object v40, v18, v38

    aget-object v41, v17, v39

    add-int/lit8 v8, v8, 0x1

    move/from16 v47, v0

    move/from16 v48, v1

    move-object/from16 v49, v2

    move/from16 v44, v38

    move/from16 v45, v39

    move-object/from16 v42, v41

    move-object/from16 v41, v40

    move/from16 v40, v32

    goto :goto_10

    :cond_13
    move/from16 v47, v0

    iget-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getIcBands()Lorg/apache/commons/compress/harmony/unpack200/IcBands;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/IcBands;->getIcTuples()[Lorg/apache/commons/compress/harmony/unpack200/IcTuple;

    move-result-object v0

    move/from16 v48, v1

    move-object/from16 v49, v2

    const/4 v1, 0x0

    :goto_e
    array-length v2, v0

    if-ge v1, v2, :cond_15

    aget-object v2, v0, v1

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->getC()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    aget-object v2, v0, v1

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->getF()I

    move-result v2

    aget-object v32, v0, v1

    invoke-virtual/range {v32 .. v32}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->getC2()Ljava/lang/String;

    move-result-object v32

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->getN()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v42, v0

    move/from16 v40, v2

    move-object/from16 v41, v32

    goto :goto_f

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_15
    move/from16 v40, v32

    const/16 v41, 0x0

    const/16 v42, 0x0

    :goto_f
    const/16 v44, -0x1

    const/16 v45, -0x1

    :goto_10
    new-instance v0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;

    move-object/from16 v38, v0

    move-object/from16 v39, v5

    move/from16 v46, v9

    invoke-direct/range {v38 .. v46}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIII)V

    iget-object v1, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->l:[[Lorg/apache/commons/compress/harmony/unpack200/IcTuple;

    aget-object v1, v1, v35

    aput-object v0, v1, v9

    add-int/lit8 v9, v9, 0x1

    move/from16 v0, v47

    move/from16 v1, v48

    move-object/from16 v2, v49

    goto/16 :goto_d

    :cond_16
    move/from16 v47, v0

    move/from16 v48, v1

    move-object/from16 v49, v2

    add-int/lit8 v10, v10, 0x1

    goto :goto_11

    :cond_17
    move/from16 v47, v0

    move/from16 v48, v1

    move-object/from16 v49, v2

    move/from16 v8, p1

    :goto_11
    move-object/from16 v0, v28

    invoke-virtual {v0, v14, v15}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->j:[I

    aget v2, v27, v31

    aput v2, v1, v35

    iget-object v1, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->k:[I

    aget v2, v24, v31

    aput v2, v1, v35

    add-int/lit8 v1, v31, 0x1

    move/from16 v31, v1

    goto :goto_12

    :cond_18
    iget-object v1, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->j:[I

    if-eqz v1, :cond_19

    aput v26, v1, v35

    iget-object v1, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->k:[I

    aput v25, v1, v35

    :cond_19
    :goto_12
    move/from16 v1, v16

    const/4 v9, 0x0

    :goto_13
    if-ge v9, v1, :cond_1b

    aget-object v2, v4, v9

    if-eqz v2, :cond_1a

    invoke-virtual {v2, v14, v15}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v2

    if-eqz v2, :cond_1a

    iget-object v2, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->i:[Ljava/util/ArrayList;

    aget-object v2, v2, v35

    aget-object v5, v34, v9

    move-object/from16 v28, v0

    const/4 v0, 0x0

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v2, v34, v9

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_14

    :cond_1a
    move-object/from16 v28, v0

    const/4 v0, 0x0

    :goto_14
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, v28

    goto :goto_13

    :cond_1b
    move-object/from16 v28, v0

    const/4 v0, 0x0

    add-int/lit8 v9, v35, 0x1

    move/from16 v16, v1

    move-object/from16 v21, v3

    move/from16 p1, v8

    move/from16 v14, v31

    move-object/from16 v2, v33

    move-object/from16 v8, v34

    move-object/from16 v3, v36

    move-object/from16 v5, v37

    move/from16 v0, v47

    move/from16 v1, v48

    move-object/from16 v32, v49

    goto/16 :goto_6

    :cond_1c
    return-void
.end method

.method public final k(Ljava/io/InputStream;[I)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "RVA"

    const-string v1, "RIA"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->A:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const-string v1, "RuntimeVisibleAnnotations"

    const/4 v8, 0x0

    invoke-virtual {v0, v1, v8}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->A:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const-string v2, "RuntimeInvisibleAnnotations"

    invoke-virtual {v1, v2, v8}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->b:[J

    invoke-static {v2, v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countMatches([JLorg/apache/commons/compress/harmony/unpack200/IMatcher;)I

    move-result v2

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->b:[J

    invoke-static {v3, v1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countMatches([JLorg/apache/commons/compress/harmony/unpack200/IMatcher;)I

    move-result v3

    filled-new-array {v2, v3}, [I

    move-result-object v5

    filled-new-array {v8, v8}, [I

    move-result-object v6

    const/4 v9, 0x1

    if-lez v2, :cond_1

    aget v2, p2, v8

    aput v2, v6, v8

    if-lez v3, :cond_0

    aget p2, p2, v9

    aput p2, v6, v9

    const/4 p2, 0x2

    goto :goto_1

    :cond_0
    :goto_0
    move p2, v9

    goto :goto_1

    :cond_1
    if-lez v3, :cond_2

    aget p2, p2, v8

    aput p2, v6, v9

    goto :goto_0

    :cond_2
    move p2, v8

    :goto_1
    const-string v7, "class"

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->q(Ljava/io/InputStream;[Ljava/lang/String;[I[ILjava/lang/String;)[Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;

    move-result-object p1

    aget-object v2, p1, v8

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->getAttributes()Ljava/util/List;

    move-result-object v2

    aget-object p1, p1, v9

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->getAttributes()Ljava/util/List;

    move-result-object p1

    move v3, v8

    move v4, v3

    :goto_2
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->b:[J

    array-length v6, v5

    if-ge v8, v6, :cond_5

    aget-wide v5, v5, v8

    invoke-virtual {v0, v5, v6}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->i:[Ljava/util/ArrayList;

    aget-object v5, v5, v8

    add-int/lit8 v6, v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v6

    :cond_3
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->b:[J

    aget-wide v5, v5, v8

    invoke-virtual {v1, v5, v6}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->i:[Ljava/util/ArrayList;

    aget-object v5, v5, v8

    add-int/lit8 v6, v4, 0x1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v6

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_5
    return p2
.end method

.method public final l(Ljava/io/InputStream;I)V
    .locals 39
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const-string v1, "code_flags"

    sget-object v8, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    iget-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getSegmentHeader()Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getOptions()Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;->hasCodeFlagsHi()Z

    move-result v5

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object v4, v8

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->parseFlags(Ljava/lang/String;Ljava/io/InputStream;ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;Z)[J

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countBit16([J)I

    move-result v1

    const-string v2, "code_attr_count"

    invoke-virtual {v6, v2, v7, v8, v1}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v1

    const-string v2, "code_attr_indexes"

    invoke-virtual {v6, v2, v7, v8, v1}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[I

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    array-length v5, v1

    const/4 v8, 0x3

    if-ge v3, v5, :cond_1

    const/4 v5, 0x0

    :goto_1
    aget-object v9, v1, v3

    array-length v10, v9

    if-ge v5, v10, :cond_0

    aget v9, v9, v5

    iget-object v10, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->A:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    invoke-virtual {v10, v9, v8}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(II)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->numBackwardsCallables()I

    move-result v9

    add-int/2addr v4, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v3, "code_attr_calls"

    invoke-virtual {v6, v3, v7, v1, v4}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v3

    iget-object v4, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->A:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const-string v5, "LineNumberTable"

    invoke-virtual {v4, v5, v8}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v4

    invoke-static {v0, v4}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countMatches([JLorg/apache/commons/compress/harmony/unpack200/IMatcher;)I

    move-result v5

    const-string v9, "code_LineNumberTable_N"

    invoke-virtual {v6, v9, v7, v1, v5}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v5

    sget-object v9, Lorg/apache/commons/compress/harmony/pack200/Codec;->BCI5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v10, "code_LineNumberTable_bci_P"

    invoke-virtual {v6, v10, v7, v9, v5}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[I

    move-result-object v10

    const-string v11, "code_LineNumberTable_line"

    invoke-virtual {v6, v11, v7, v1, v5}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[I

    move-result-object v11

    iget-object v12, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->A:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const-string v13, "LocalVariableTable"

    invoke-virtual {v12, v13, v8}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v12

    iget-object v13, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->A:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const-string v14, "LocalVariableTypeTable"

    invoke-virtual {v13, v14, v8}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v13

    invoke-static {v0, v12}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countMatches([JLorg/apache/commons/compress/harmony/unpack200/IMatcher;)I

    move-result v14

    const-string v15, "code_LocalVariableTable_N"

    invoke-virtual {v6, v15, v7, v1, v14}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v14

    const-string v15, "code_LocalVariableTable_bci_P"

    invoke-virtual {v6, v15, v7, v9, v14}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[I

    move-result-object v15

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->BRANCH5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v8, "code_LocalVariableTable_span_O"

    invoke-virtual {v6, v8, v7, v2, v14}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[I

    move-result-object v8

    move-object/from16 v17, v8

    const-string v8, "code_LocalVariableTable_name_RU"

    invoke-virtual {v6, v8, v7, v1, v14}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->parseCPUTF8References(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v8

    move-object/from16 v18, v8

    const-string v8, "code_LocalVariableTable_type_RS"

    invoke-virtual {v6, v8, v7, v1, v14}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->parseCPSignatureReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v8

    move-object/from16 v19, v8

    const-string v8, "code_LocalVariableTable_slot"

    invoke-virtual {v6, v8, v7, v1, v14}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[I

    move-result-object v8

    move-object/from16 v20, v8

    invoke-static {v0, v13}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countMatches([JLorg/apache/commons/compress/harmony/unpack200/IMatcher;)I

    move-result v8

    move-object/from16 v21, v13

    const-string v13, "code_LocalVariableTypeTable_N"

    invoke-virtual {v6, v13, v7, v1, v8}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v8

    const-string v13, "code_LocalVariableTypeTable_bci_P"

    invoke-virtual {v6, v13, v7, v9, v8}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[I

    move-result-object v9

    const-string v13, "code_LocalVariableTypeTable_span_O"

    invoke-virtual {v6, v13, v7, v2, v8}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[I

    move-result-object v2

    const-string v13, "code_LocalVariableTypeTable_name_RU"

    invoke-virtual {v6, v13, v7, v1, v8}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->parseCPUTF8References(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v13

    move-object/from16 v22, v13

    const-string v13, "code_LocalVariableTypeTable_type_RS"

    invoke-virtual {v6, v13, v7, v1, v8}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->parseCPSignatureReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v13

    move-object/from16 v23, v13

    const-string v13, "code_LocalVariableTypeTable_slot"

    invoke-virtual {v6, v13, v7, v1, v8}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[I

    move-result-object v1

    iget-object v13, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->C:Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;

    invoke-virtual {v13}, Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;->hasCodeFlagsHi()Z

    move-result v13

    if-eqz v13, :cond_2

    const/16 v13, 0x3e

    goto :goto_2

    :cond_2
    const/16 v13, 0x1f

    :goto_2
    move-object/from16 v24, v1

    add-int/lit8 v1, v13, 0x1

    move-object/from16 v25, v2

    new-array v2, v1, [Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-object/from16 v26, v9

    new-array v9, v1, [I

    move-object/from16 v27, v8

    new-array v8, v1, [Ljava/util/List;

    move-object/from16 v28, v15

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v13, :cond_4

    move/from16 v29, v13

    iget-object v13, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->A:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    move-object/from16 v30, v14

    const/4 v14, 0x3

    invoke-virtual {v13, v15, v14}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(II)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v13

    if-eqz v13, :cond_3

    invoke-virtual {v13}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->isDefaultLayout()Z

    move-result v16

    if-nez v16, :cond_3

    aput-object v13, v2, v15

    invoke-static {v0, v13}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countMatches([JLorg/apache/commons/compress/harmony/unpack200/IMatcher;)I

    move-result v13

    aput v13, v9, v15

    :cond_3
    add-int/lit8 v15, v15, 0x1

    move/from16 v13, v29

    move-object/from16 v14, v30

    goto :goto_3

    :cond_4
    move-object/from16 v30, v14

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_4
    if-ge v13, v1, :cond_7

    aget v15, v9, v13

    if-lez v15, :cond_5

    iget-object v15, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->A:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    move/from16 v16, v1

    aget-object v1, v2, v13

    invoke-virtual {v15, v1}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeBands(Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;)Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;

    move-result-object v1

    aget v15, v9, v13

    invoke-virtual {v1, v7, v15}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->parseAttributes(Ljava/io/InputStream;I)Ljava/util/List;

    move-result-object v15

    aput-object v15, v8, v13

    aget-object v15, v2, v13

    invoke-virtual {v15}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->numBackwardsCallables()I

    move-result v15

    if-lez v15, :cond_6

    new-array v7, v15, [I

    move-object/from16 v29, v9

    const/4 v9, 0x0

    invoke-static {v3, v14, v7, v9, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v1, v7}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->setBackwardsCalls([I)V

    add-int/2addr v14, v15

    goto :goto_5

    :cond_5
    move/from16 v16, v1

    :cond_6
    move-object/from16 v29, v9

    :goto_5
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v7, p1

    move/from16 v1, v16

    move-object/from16 v9, v29

    goto :goto_4

    :cond_7
    move/from16 v16, v1

    move/from16 v13, p2

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_6
    if-ge v9, v13, :cond_d

    aget-wide v14, v0, v9

    invoke-virtual {v4, v14, v15}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v14

    if-eqz v14, :cond_8

    new-instance v14, Lorg/apache/commons/compress/harmony/unpack200/bytecode/LineNumberTableAttribute;

    aget v15, v5, v1

    move-object/from16 v29, v4

    aget-object v4, v10, v1

    move-object/from16 v31, v5

    aget-object v5, v11, v1

    invoke-direct {v14, v15, v4, v5}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/LineNumberTableAttribute;-><init>(I[I[I)V

    add-int/lit8 v1, v1, 0x1

    iget-object v4, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->m:[Ljava/util/List;

    aget-object v4, v4, v9

    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_8
    move-object/from16 v29, v4

    move-object/from16 v31, v5

    :goto_7
    aget-wide v4, v0, v9

    invoke-virtual {v12, v4, v5}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v4

    if-eqz v4, :cond_9

    new-instance v4, Lorg/apache/commons/compress/harmony/unpack200/bytecode/LocalVariableTableAttribute;

    aget v33, v30, v3

    aget-object v34, v28, v3

    aget-object v35, v17, v3

    aget-object v36, v18, v3

    aget-object v37, v19, v3

    aget-object v38, v20, v3

    move-object/from16 v32, v4

    invoke-direct/range {v32 .. v38}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/LocalVariableTableAttribute;-><init>(I[I[I[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;[I)V

    add-int/lit8 v3, v3, 0x1

    iget-object v5, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->m:[Ljava/util/List;

    aget-object v5, v5, v9

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    aget-wide v4, v0, v9

    move-object/from16 v14, v21

    invoke-virtual {v14, v4, v5}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v4

    if-eqz v4, :cond_a

    new-instance v4, Lorg/apache/commons/compress/harmony/unpack200/bytecode/LocalVariableTypeTableAttribute;

    aget v33, v27, v7

    aget-object v34, v26, v7

    aget-object v35, v25, v7

    aget-object v36, v22, v7

    aget-object v37, v23, v7

    aget-object v38, v24, v7

    move-object/from16 v32, v4

    invoke-direct/range {v32 .. v38}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/LocalVariableTypeTableAttribute;-><init>(I[I[I[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;[I)V

    add-int/lit8 v7, v7, 0x1

    iget-object v5, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->m:[Ljava/util/List;

    aget-object v5, v5, v9

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    move/from16 v5, v16

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v5, :cond_c

    aget-object v15, v2, v4

    move/from16 p1, v1

    move-object/from16 v16, v2

    if-eqz v15, :cond_b

    aget-wide v1, v0, v9

    invoke-virtual {v15, v1, v2}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->m:[Ljava/util/List;

    aget-object v1, v1, v9

    aget-object v2, v8, v4

    const/4 v15, 0x0

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v1, v8, v4

    invoke-interface {v1, v15}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_9

    :cond_b
    const/4 v15, 0x0

    :goto_9
    add-int/lit8 v4, v4, 0x1

    move/from16 v1, p1

    move-object/from16 v2, v16

    goto :goto_8

    :cond_c
    move/from16 p1, v1

    move-object/from16 v16, v2

    const/4 v15, 0x0

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v21, v14

    move-object/from16 v4, v29

    move/from16 v16, v5

    move-object/from16 v5, v31

    goto/16 :goto_6

    :cond_d
    return-void
.end method

.method public final m(Ljava/io/InputStream;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->A:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const-string v3, "Code"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v2

    iget-object v3, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->y:[[J

    invoke-static {v3, v2}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countMatches([[JLorg/apache/commons/compress/harmony/unpack200/IMatcher;)I

    move-result v2

    const-string v3, "code_headers"

    sget-object v5, Lorg/apache/commons/compress/harmony/pack200/Codec;->BYTE1:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v0, v3, v1, v5, v2}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v3

    iget-object v5, v0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getSegmentHeader()Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getOptions()Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;->hasAllCodeFlags()Z

    move-result v5

    if-nez v5, :cond_0

    new-array v6, v2, [Z

    iput-object v6, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->J:[Z

    :cond_0
    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    :goto_0
    const/4 v9, 0x1

    if-ge v7, v2, :cond_2

    aget v10, v3, v7

    if-nez v10, :cond_1

    add-int/lit8 v8, v8, 0x1

    if-nez v5, :cond_1

    iget-object v10, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->J:[Z

    aput-boolean v9, v10, v7

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    sget-object v7, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v10, "code_max_stack"

    invoke-virtual {v0, v10, v1, v7, v8}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v10

    const-string v11, "code_max_na_locals"

    invoke-virtual {v0, v11, v1, v7, v8}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v11

    const-string v12, "code_handler_count"

    invoke-virtual {v0, v12, v1, v7, v8}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v7

    new-array v12, v2, [I

    iput-object v12, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->p:[I

    new-array v12, v2, [I

    iput-object v12, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->o:[I

    new-array v12, v2, [I

    iput-object v12, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->n:[I

    move v12, v6

    move v13, v12

    :goto_1
    if-ge v12, v2, :cond_8

    aget v14, v3, v12

    const/16 v15, 0xff

    and-int/2addr v14, v15

    if-ltz v14, :cond_7

    if-nez v14, :cond_3

    iget-object v14, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->p:[I

    aget v15, v10, v13

    aput v15, v14, v12

    iget-object v14, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->o:[I

    aget v15, v11, v13

    aput v15, v14, v12

    iget-object v14, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->n:[I

    aget v15, v7, v13

    aput v15, v14, v12

    add-int/lit8 v13, v13, 0x1

    move v14, v4

    goto :goto_3

    :cond_3
    const/16 v4, 0x90

    if-gt v14, v4, :cond_4

    iget-object v4, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->p:[I

    add-int/lit8 v14, v14, -0x1

    rem-int/lit8 v15, v14, 0xc

    aput v15, v4, v12

    iget-object v4, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->o:[I

    div-int/lit8 v14, v14, 0xc

    aput v14, v4, v12

    iget-object v4, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->n:[I

    aput v6, v4, v12

    :goto_2
    const/4 v14, 0x2

    goto :goto_3

    :cond_4
    const/16 v4, 0xd0

    if-gt v14, v4, :cond_5

    iget-object v4, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->p:[I

    add-int/lit16 v14, v14, -0x91

    rem-int/lit8 v15, v14, 0x8

    aput v15, v4, v12

    iget-object v4, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->o:[I

    div-int/lit8 v14, v14, 0x8

    aput v14, v4, v12

    iget-object v4, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->n:[I

    aput v9, v4, v12

    goto :goto_2

    :cond_5
    if-gt v14, v15, :cond_6

    iget-object v4, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->p:[I

    add-int/lit16 v14, v14, -0xd1

    rem-int/lit8 v15, v14, 0x7

    aput v15, v4, v12

    iget-object v4, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->o:[I

    div-int/lit8 v14, v14, 0x7

    aput v14, v4, v12

    iget-object v4, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->n:[I

    const/4 v14, 0x2

    aput v14, v4, v12

    :goto_3
    add-int/lit8 v12, v12, 0x1

    move v4, v14

    goto :goto_1

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Shouldn\'t get here either"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Shouldn\'t get here"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->BCI5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    iget-object v4, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->n:[I

    const-string v6, "code_handler_start_P"

    invoke-virtual {v0, v6, v1, v3, v4}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[I

    move-result-object v3

    iput-object v3, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->F:[[I

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->BRANCH5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    iget-object v4, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->n:[I

    const-string v6, "code_handler_end_PO"

    invoke-virtual {v0, v6, v1, v3, v4}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[I

    move-result-object v4

    iput-object v4, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->G:[[I

    const-string v4, "code_handler_catch_PO"

    iget-object v6, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->n:[I

    invoke-virtual {v0, v4, v1, v3, v6}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[I

    move-result-object v3

    iput-object v3, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->H:[[I

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    iget-object v4, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->n:[I

    const-string v6, "code_handler_class_RCN"

    invoke-virtual {v0, v6, v1, v3, v4}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[I

    move-result-object v3

    iput-object v3, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->I:[[I

    if-eqz v5, :cond_9

    goto :goto_4

    :cond_9
    move v2, v8

    :goto_4
    new-array v3, v2, [Ljava/util/List;

    iput-object v3, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->m:[Ljava/util/List;

    new-instance v4, Lcom/sunia/HTREnginev2/wtd;

    invoke-direct {v4}, Lcom/sunia/HTREnginev2/wtd;-><init>()V

    invoke-static {v3, v4}, Ljava/util/Arrays;->setAll([Ljava/lang/Object;Ljava/util/function/IntFunction;)V

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->l(Ljava/io/InputStream;I)V

    return-void
.end method

.method public final n(Ljava/io/InputStream;)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const-string v1, "field_flags"

    iget-object v3, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->a:[I

    sget-object v8, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    iget-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->C:Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;->hasFieldFlagsHi()Z

    move-result v5

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object v4, v8

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->parseFlags(Ljava/lang/String;Ljava/io/InputStream;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;Z)[[J

    move-result-object v0

    iput-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->t:[[J

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countBit16([[J)I

    move-result v0

    const-string v1, "field_attr_count"

    invoke-virtual {v6, v1, v7, v8, v0}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v0

    const-string v1, "field_attr_indexes"

    invoke-virtual {v6, v1, v7, v8, v0}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[I

    move-result-object v0

    iget-object v1, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->t:[[J

    const/4 v2, 0x1

    invoke-virtual {v6, v0, v1, v2}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->f([[I[[JI)I

    move-result v0

    const-string v1, "field_attr_calls"

    invoke-virtual {v6, v1, v7, v8, v0}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v0

    iget v1, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->D:I

    new-array v1, v1, [[Ljava/util/ArrayList;

    iput-object v1, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->q:[[Ljava/util/ArrayList;

    const/4 v3, 0x0

    :goto_0
    iget v4, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->D:I

    if-ge v3, v4, :cond_1

    iget-object v4, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->q:[[Ljava/util/ArrayList;

    iget-object v5, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->t:[[J

    aget-object v5, v5, v3

    array-length v5, v5

    new-array v5, v5, [Ljava/util/ArrayList;

    aput-object v5, v4, v3

    const/4 v4, 0x0

    :goto_1
    iget-object v5, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->t:[[J

    aget-object v5, v5, v3

    array-length v5, v5

    if-ge v4, v5, :cond_0

    iget-object v5, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->q:[[Ljava/util/ArrayList;

    aget-object v5, v5, v3

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    aput-object v8, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->A:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const-string v4, "ConstantValue"

    invoke-virtual {v3, v4, v2}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v3

    iget-object v4, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->t:[[J

    invoke-static {v4, v3}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countMatches([[JLorg/apache/commons/compress/harmony/unpack200/IMatcher;)I

    move-result v4

    sget-object v5, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v8, "field_ConstantValue_KQ"

    invoke-virtual {v6, v8, v7, v5, v4}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v4

    iget-object v8, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->A:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const-string v9, "Signature"

    invoke-virtual {v8, v9, v2}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v8

    iget-object v9, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->t:[[J

    invoke-static {v9, v8}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countMatches([[JLorg/apache/commons/compress/harmony/unpack200/IMatcher;)I

    move-result v9

    const-string v10, "field_Signature_RS"

    invoke-virtual {v6, v10, v7, v5, v9}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v5

    iget-object v9, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->A:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const-string v10, "Deprecated"

    invoke-virtual {v9, v10, v2}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_2
    iget v13, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->D:I

    if-ge v10, v13, :cond_8

    const/4 v13, 0x0

    :goto_3
    iget-object v14, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->t:[[J

    aget-object v14, v14, v10

    array-length v15, v14

    if-ge v13, v15, :cond_7

    aget-wide v14, v14, v13

    invoke-virtual {v9, v14, v15}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v16

    if-eqz v16, :cond_2

    iget-object v1, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->q:[[Ljava/util/ArrayList;

    aget-object v1, v1, v10

    aget-object v1, v1, v13

    new-instance v2, Lorg/apache/commons/compress/harmony/unpack200/bytecode/DeprecatedAttribute;

    invoke-direct {v2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/DeprecatedAttribute;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v3, v14, v15}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v1

    if-eqz v1, :cond_5

    aget v1, v4, v11

    move-object/from16 v17, v3

    int-to-long v2, v1

    iget-object v1, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->r:[[Ljava/lang/String;

    aget-object v1, v1, v10

    aget-object v1, v1, v13

    move-object/from16 v18, v4

    const/16 v4, 0x3a

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v19

    move-object/from16 v20, v9

    const/4 v4, 0x1

    add-int/lit8 v9, v19, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "B"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "S"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "C"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "Z"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    const-string v1, "I"

    :cond_4
    iget-object v4, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->B:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v4}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->getConstantPool()Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPool;

    move-result-object v4

    move-object/from16 v9, v17

    invoke-virtual {v9, v2, v3, v1, v4}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->getValue(JLjava/lang/String;Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPool;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    move-result-object v1

    iget-object v2, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->q:[[Ljava/util/ArrayList;

    aget-object v2, v2, v10

    aget-object v2, v2, v13

    new-instance v3, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ConstantValueAttribute;

    invoke-direct {v3, v1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ConstantValueAttribute;-><init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_5
    move-object/from16 v18, v4

    move-object/from16 v20, v9

    move-object v9, v3

    :goto_4
    invoke-virtual {v8, v14, v15}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v1

    if-eqz v1, :cond_6

    aget v1, v5, v12

    int-to-long v1, v1

    iget-object v3, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->r:[[Ljava/lang/String;

    aget-object v3, v3, v10

    aget-object v3, v3, v13

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v14, 0x1

    add-int/2addr v4, v14

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->B:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v4}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->getConstantPool()Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPool;

    move-result-object v4

    invoke-virtual {v8, v1, v2, v3, v4}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->getValue(JLjava/lang/String;Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPool;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    iget-object v2, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->q:[[Ljava/util/ArrayList;

    aget-object v2, v2, v10

    aget-object v2, v2, v13

    new-instance v3, Lorg/apache/commons/compress/harmony/unpack200/bytecode/SignatureAttribute;

    invoke-direct {v3, v1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/SignatureAttribute;-><init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    :cond_6
    add-int/lit8 v13, v13, 0x1

    move-object v3, v9

    move-object/from16 v4, v18

    move-object/from16 v9, v20

    const/4 v2, 0x1

    goto/16 :goto_3

    :cond_7
    move-object/from16 v18, v4

    move-object/from16 v20, v9

    move-object v9, v3

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v9, v20

    const/4 v2, 0x1

    goto/16 :goto_2

    :cond_8
    invoke-virtual {v6, v7, v0}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->p(Ljava/io/InputStream;[I)I

    move-result v1

    iget-object v2, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->C:Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;->hasFieldFlagsHi()Z

    move-result v2

    if-eqz v2, :cond_9

    const/16 v2, 0x3e

    goto :goto_5

    :cond_9
    const/16 v2, 0x1f

    :goto_5
    add-int/lit8 v3, v2, 0x1

    new-array v4, v3, [Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    new-array v5, v3, [I

    new-array v8, v3, [Ljava/util/List;

    const/4 v9, 0x0

    :goto_6
    if-ge v9, v2, :cond_b

    iget-object v10, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->A:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const/4 v11, 0x1

    invoke-virtual {v10, v9, v11}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(II)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v10

    if-eqz v10, :cond_a

    invoke-virtual {v10}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->isDefaultLayout()Z

    move-result v12

    if-nez v12, :cond_a

    aput-object v10, v4, v9

    iget-object v12, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->t:[[J

    invoke-static {v12, v10}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countMatches([[JLorg/apache/commons/compress/harmony/unpack200/IMatcher;)I

    move-result v10

    aput v10, v5, v9

    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_b
    const/4 v2, 0x0

    :goto_7
    if-ge v2, v3, :cond_d

    aget v9, v5, v2

    if-lez v9, :cond_c

    iget-object v9, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->A:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    aget-object v10, v4, v2

    invoke-virtual {v9, v10}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeBands(Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;)Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;

    move-result-object v9

    aget v10, v5, v2

    invoke-virtual {v9, v7, v10}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->parseAttributes(Ljava/io/InputStream;I)Ljava/util/List;

    move-result-object v10

    aput-object v10, v8, v2

    aget-object v10, v4, v2

    invoke-virtual {v10}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->numBackwardsCallables()I

    move-result v10

    if-lez v10, :cond_c

    new-array v11, v10, [I

    const/4 v12, 0x0

    invoke-static {v0, v1, v11, v12, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v9, v11}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->setBackwardsCalls([I)V

    add-int/2addr v1, v10

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_d
    const/4 v12, 0x0

    :goto_8
    iget v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->D:I

    if-ge v12, v0, :cond_12

    const/4 v0, 0x0

    :goto_9
    iget-object v1, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->t:[[J

    aget-object v1, v1, v12

    array-length v2, v1

    if-ge v0, v2, :cond_11

    aget-wide v1, v1, v0

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_a
    if-ge v5, v3, :cond_10

    aget-object v9, v4, v5

    if-eqz v9, :cond_f

    invoke-virtual {v9, v1, v2}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v9

    if-eqz v9, :cond_f

    aget-object v9, v4, v5

    invoke-virtual {v9}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->getIndex()I

    move-result v9

    const/16 v10, 0xf

    if-ge v9, v10, :cond_e

    iget-object v9, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->q:[[Ljava/util/ArrayList;

    aget-object v9, v9, v12

    aget-object v9, v9, v0

    add-int/lit8 v10, v7, 0x1

    aget-object v11, v8, v5

    const/4 v13, 0x0

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v7, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v7, v10

    goto :goto_b

    :cond_e
    const/4 v13, 0x0

    iget-object v9, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->q:[[Ljava/util/ArrayList;

    aget-object v9, v9, v12

    aget-object v9, v9, v0

    aget-object v10, v8, v5

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_b
    aget-object v9, v8, v5

    invoke-interface {v9, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_c

    :cond_f
    const/4 v13, 0x0

    :goto_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_10
    const/4 v13, 0x0

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_11
    const/4 v13, 0x0

    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    :cond_12
    return-void
.end method

.method public final o(Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    sget-object v0, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->a:[I

    const-string v2, "field_descr"

    invoke-virtual {p0, v2, p1, v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->s:[[I

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->B:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->getCpDescriptor()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->getReferences([[I[Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->r:[[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->n(Ljava/io/InputStream;)V

    return-void
.end method

.method public final p(Ljava/io/InputStream;[I)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "RVA"

    const-string v1, "RIA"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->A:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const-string v1, "RuntimeVisibleAnnotations"

    const/4 v8, 0x1

    invoke-virtual {v0, v1, v8}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->A:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const-string v2, "RuntimeInvisibleAnnotations"

    invoke-virtual {v1, v2, v8}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->t:[[J

    invoke-static {v2, v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countMatches([[JLorg/apache/commons/compress/harmony/unpack200/IMatcher;)I

    move-result v2

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->t:[[J

    invoke-static {v3, v1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countMatches([[JLorg/apache/commons/compress/harmony/unpack200/IMatcher;)I

    move-result v3

    filled-new-array {v2, v3}, [I

    move-result-object v5

    const/4 v9, 0x0

    filled-new-array {v9, v9}, [I

    move-result-object v6

    if-lez v2, :cond_1

    aget v2, p2, v9

    aput v2, v6, v9

    if-lez v3, :cond_0

    aget p2, p2, v8

    aput p2, v6, v8

    const/4 p2, 0x2

    goto :goto_1

    :cond_0
    :goto_0
    move p2, v8

    goto :goto_1

    :cond_1
    if-lez v3, :cond_2

    aget p2, p2, v9

    aput p2, v6, v8

    goto :goto_0

    :cond_2
    move p2, v9

    :goto_1
    const-string v7, "field"

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->q(Ljava/io/InputStream;[Ljava/lang/String;[I[ILjava/lang/String;)[Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;

    move-result-object p1

    aget-object v2, p1, v9

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->getAttributes()Ljava/util/List;

    move-result-object v2

    aget-object p1, p1, v8

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->getAttributes()Ljava/util/List;

    move-result-object p1

    move v3, v9

    move v4, v3

    move v5, v4

    :goto_2
    iget-object v6, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->t:[[J

    array-length v6, v6

    if-ge v3, v6, :cond_6

    move v6, v9

    :goto_3
    iget-object v7, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->t:[[J

    aget-object v7, v7, v3

    array-length v8, v7

    if-ge v6, v8, :cond_5

    aget-wide v7, v7, v6

    invoke-virtual {v0, v7, v8}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->q:[[Ljava/util/ArrayList;

    aget-object v7, v7, v3

    aget-object v7, v7, v6

    add-int/lit8 v8, v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v8

    :cond_3
    iget-object v7, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->t:[[J

    aget-object v7, v7, v3

    aget-wide v7, v7, v6

    invoke-virtual {v1, v7, v8}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->q:[[Ljava/util/ArrayList;

    aget-object v7, v7, v3

    aget-object v7, v7, v6

    add-int/lit8 v8, v5, 0x1

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v8

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    return p2
.end method

.method public final q(Ljava/io/InputStream;[Ljava/lang/String;[I[ILjava/lang/String;)[Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p5

    array-length v0, v8

    new-array v10, v0, [Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;

    const/4 v12, 0x0

    :goto_0
    array-length v0, v8

    if-ge v12, v0, :cond_e

    new-instance v0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;

    aget-object v1, v8, v12

    iget-object v2, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->B:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;-><init>(Ljava/lang/String;Lorg/apache/commons/compress/harmony/unpack200/CpBands;)V

    aput-object v0, v10, v12

    aget-object v13, v8, v12

    const/16 v0, 0x50

    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const-string v14, "_"

    if-ltz v0, :cond_0

    aget-object v0, v10, v12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_param_NB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->BYTE1:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    aget v3, p3, v12

    invoke-virtual {v6, v1, v7, v2, v3}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->param_NB:[I

    :cond_0
    const-string v0, "AD"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    aget-object v0, v10, v12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_anno_N"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    aget v3, p3, v12

    invoke-virtual {v6, v1, v7, v2, v3}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->anno_N:[I

    aget-object v0, v10, v12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_type_RS"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aget-object v3, v10, v12

    iget-object v3, v3, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->anno_N:[I

    invoke-virtual {v6, v1, v7, v2, v3}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->parseCPSignatureReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->type_RS:[[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    aget-object v0, v10, v12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_pair_N"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aget-object v3, v10, v12

    iget-object v3, v3, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->anno_N:[I

    invoke-virtual {v6, v1, v7, v2, v3}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[I

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->pair_N:[[I

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    aget-object v2, v10, v12

    iget-object v3, v2, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->pair_N:[[I

    array-length v3, v3

    if-ge v0, v3, :cond_2

    const/4 v2, 0x0

    :goto_2
    aget-object v3, v10, v12

    iget-object v3, v3, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->pair_N:[[I

    aget-object v3, v3, v0

    array-length v4, v3

    if-ge v2, v4, :cond_1

    aget v3, v3, v2

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_name_RU"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v0, v7, v3, v1}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->parseCPUTF8References(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v0

    iput-object v0, v2, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->name_RU:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    goto :goto_3

    :cond_3
    aget v1, p3, v12

    :goto_3
    aget-object v0, v10, v12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_T"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->BYTE1:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    aget v4, p4, v12

    add-int/2addr v1, v4

    invoke-virtual {v6, v2, v7, v3, v1}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->T:[I

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v15, 0x0

    :goto_4
    aget-object v7, v10, v12

    move-object/from16 v16, v10

    iget-object v10, v7, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->T:[I

    move-object/from16 v17, v7

    array-length v7, v10

    if-ge v0, v7, :cond_c

    aget v7, v10, v0

    int-to-char v7, v7

    const/16 v10, 0x40

    if-eq v7, v10, :cond_b

    const/16 v10, 0x46

    if-eq v7, v10, :cond_a

    const/16 v10, 0x53

    if-eq v7, v10, :cond_9

    const/16 v10, 0x63

    if-eq v7, v10, :cond_8

    const/16 v10, 0x65

    if-eq v7, v10, :cond_7

    const/16 v10, 0x73

    if-eq v7, v10, :cond_6

    const/16 v10, 0x49

    if-eq v7, v10, :cond_9

    const/16 v10, 0x4a

    if-eq v7, v10, :cond_5

    const/16 v10, 0x5a

    if-eq v7, v10, :cond_9

    const/16 v10, 0x5b

    if-eq v7, v10, :cond_4

    packed-switch v7, :pswitch_data_0

    goto :goto_5

    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_7
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_9
    :pswitch_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_b
    add-int/lit8 v6, v6, 0x1

    :goto_5
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v10, v16

    goto :goto_4

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_caseI_KI"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v7, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v10, p1

    move/from16 v18, v6

    move-object/from16 v6, p0

    move-object/from16 v19, v17

    move/from16 v17, v8

    move-object/from16 v8, v19

    invoke-virtual {v6, v0, v10, v7, v1}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->parseCPIntReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPInteger;

    move-result-object v0

    iput-object v0, v8, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->caseI_KI:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPInteger;

    aget-object v0, v16, v12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_caseD_KD"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1, v10, v7, v2}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->parseCPDoubleReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPDouble;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->caseD_KD:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPDouble;

    aget-object v0, v16, v12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_caseF_KF"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1, v10, v7, v3}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->parseCPFloatReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFloat;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->caseF_KF:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFloat;

    aget-object v0, v16, v12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_caseJ_KJ"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1, v10, v7, v4}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->parseCPLongReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPLong;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->caseJ_KJ:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPLong;

    aget-object v0, v16, v12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_casec_RS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1, v10, v7, v5}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->parseCPSignatureReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->casec_RS:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    aget-object v8, v16, v12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_caseet_RS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->B:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->getCpSignature()[Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object v3, v7

    move v4, v15

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->parseReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->caseet_RS:[Ljava/lang/String;

    aget-object v8, v16, v12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_caseec_RU"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->B:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->getCpUTF8()[Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->parseReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->caseec_RU:[Ljava/lang/String;

    aget-object v0, v16, v12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_cases_RU"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1, v10, v7, v11}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->parseCPUTF8References(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->cases_RU:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    aget-object v0, v16, v12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_casearray_N"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move/from16 v11, v17

    invoke-virtual {v6, v1, v10, v7, v11}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->casearray_N:[I

    aget-object v0, v16, v12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_nesttype_RS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move/from16 v11, v18

    invoke-virtual {v6, v1, v10, v7, v11}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->parseCPUTF8References(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->nesttype_RS:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    aget-object v0, v16, v12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_nestpair_N"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1, v10, v7, v11}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->nestpair_N:[I

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_6
    aget-object v2, v16, v12

    iget-object v3, v2, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->nestpair_N:[I

    array-length v4, v3

    if-ge v0, v4, :cond_d

    aget v2, v3, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_nestname_RU"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v0, v10, v3, v1}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->parseCPUTF8References(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v0

    iput-object v0, v2, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->nestname_RU:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v8, p2

    move-object v7, v10

    move-object/from16 v10, v16

    goto/16 :goto_0

    :cond_e
    move-object/from16 v16, v10

    return-object v16

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final r(Ljava/io/InputStream;)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const-string v1, "method_flags"

    iget-object v3, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->e:[I

    sget-object v8, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    iget-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->C:Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;->hasMethodFlagsHi()Z

    move-result v5

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object v4, v8

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->parseFlags(Ljava/lang/String;Ljava/io/InputStream;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;Z)[[J

    move-result-object v0

    iput-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->y:[[J

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countBit16([[J)I

    move-result v0

    const-string v1, "method_attr_count"

    invoke-virtual {v6, v1, v7, v8, v0}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v0

    const-string v1, "method_attr_indexes"

    invoke-virtual {v6, v1, v7, v8, v0}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[I

    move-result-object v0

    iget-object v1, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->y:[[J

    const/4 v2, 0x2

    invoke-virtual {v6, v0, v1, v2}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->f([[I[[JI)I

    move-result v0

    const-string v1, "method_attr_calls"

    invoke-virtual {v6, v1, v7, v8, v0}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v0

    iput-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->E:[I

    iget v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->D:I

    new-array v0, v0, [[Ljava/util/ArrayList;

    iput-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->v:[[Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_0
    iget v3, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->D:I

    if-ge v1, v3, :cond_1

    iget-object v3, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->v:[[Ljava/util/ArrayList;

    iget-object v4, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->y:[[J

    aget-object v4, v4, v1

    array-length v4, v4

    new-array v4, v4, [Ljava/util/ArrayList;

    aput-object v4, v3, v1

    const/4 v3, 0x0

    :goto_1
    iget-object v4, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->y:[[J

    aget-object v4, v4, v1

    array-length v4, v4

    if-ge v3, v4, :cond_0

    iget-object v4, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->v:[[Ljava/util/ArrayList;

    aget-object v4, v4, v1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->A:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const-string v3, "Exceptions"

    invoke-virtual {v1, v3, v2}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v1

    iget-object v3, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->y:[[J

    invoke-static {v3, v1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countMatches([[JLorg/apache/commons/compress/harmony/unpack200/IMatcher;)I

    move-result v3

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v5, "method_Exceptions_n"

    invoke-virtual {v6, v5, v7, v4, v3}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v3

    const-string v5, "method_Exceptions_RC"

    invoke-virtual {v6, v5, v7, v4, v3}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[I

    move-result-object v5

    iget-object v8, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->A:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const-string v9, "Signature"

    invoke-virtual {v8, v9, v2}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v8

    iget-object v9, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->y:[[J

    invoke-static {v9, v8}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countMatches([[JLorg/apache/commons/compress/harmony/unpack200/IMatcher;)I

    move-result v9

    const-string v10, "method_signature_RS"

    invoke-virtual {v6, v10, v7, v4, v9}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v4

    iget-object v9, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->A:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const-string v10, "Deprecated"

    invoke-virtual {v9, v10, v2}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_2
    iget-object v13, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->v:[[Ljava/util/ArrayList;

    array-length v13, v13

    if-ge v10, v13, :cond_9

    const/4 v13, 0x0

    :goto_3
    iget-object v14, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->v:[[Ljava/util/ArrayList;

    aget-object v14, v14, v10

    array-length v14, v14

    if-ge v13, v14, :cond_8

    iget-object v14, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->y:[[J

    aget-object v14, v14, v10

    aget-wide v14, v14, v13

    invoke-virtual {v1, v14, v15}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v16

    if-eqz v16, :cond_3

    aget v0, v3, v11

    aget-object v17, v5, v11

    new-array v2, v0, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    move-object/from16 v18, v1

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_2

    move/from16 v19, v0

    iget-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->B:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-object/from16 v20, v3

    aget v3, v17, v1

    invoke-virtual {v0, v3}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpClassValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    move-result-object v0

    aput-object v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    move/from16 v0, v19

    move-object/from16 v3, v20

    goto :goto_4

    :cond_2
    move-object/from16 v20, v3

    iget-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->v:[[Ljava/util/ArrayList;

    aget-object v0, v0, v10

    aget-object v0, v0, v13

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionsAttribute;

    invoke-direct {v1, v2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionsAttribute;-><init>([Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_3
    move-object/from16 v18, v1

    move-object/from16 v20, v3

    :goto_5
    invoke-virtual {v8, v14, v15}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v0

    if-eqz v0, :cond_6

    aget v0, v4, v12

    int-to-long v0, v0

    iget-object v2, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->w:[[Ljava/lang/String;

    aget-object v2, v2, v10

    aget-object v2, v2, v13

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "B"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "H"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    const-string v2, "I"

    :cond_5
    iget-object v3, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->B:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->getConstantPool()Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPool;

    move-result-object v3

    invoke-virtual {v8, v0, v1, v2, v3}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->getValue(JLjava/lang/String;Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPool;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    iget-object v1, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->v:[[Ljava/util/ArrayList;

    aget-object v1, v1, v10

    aget-object v1, v1, v13

    new-instance v2, Lorg/apache/commons/compress/harmony/unpack200/bytecode/SignatureAttribute;

    invoke-direct {v2, v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/SignatureAttribute;-><init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    :cond_6
    invoke-virtual {v9, v14, v15}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->v:[[Ljava/util/ArrayList;

    aget-object v0, v0, v10

    aget-object v0, v0, v13

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/DeprecatedAttribute;

    invoke-direct {v1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/DeprecatedAttribute;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, v18

    move-object/from16 v3, v20

    const/4 v2, 0x2

    goto/16 :goto_3

    :cond_8
    move-object/from16 v18, v1

    move-object/from16 v20, v3

    add-int/lit8 v10, v10, 0x1

    const/4 v2, 0x2

    goto/16 :goto_2

    :cond_9
    iget-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->E:[I

    invoke-virtual {v6, v7, v0}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->t(Ljava/io/InputStream;[I)I

    move-result v0

    iget-object v1, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->C:Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;->hasMethodFlagsHi()Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v1, 0x3e

    goto :goto_6

    :cond_a
    const/16 v1, 0x1f

    :goto_6
    add-int/lit8 v2, v1, 0x1

    new-array v3, v2, [Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    new-array v4, v2, [I

    const/4 v5, 0x0

    :goto_7
    if-ge v5, v1, :cond_c

    iget-object v8, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->A:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const/4 v9, 0x2

    invoke-virtual {v8, v5, v9}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(II)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v8

    if-eqz v8, :cond_b

    invoke-virtual {v8}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->isDefaultLayout()Z

    move-result v10

    if-nez v10, :cond_b

    aput-object v8, v3, v5

    iget-object v10, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->y:[[J

    invoke-static {v10, v8}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countMatches([[JLorg/apache/commons/compress/harmony/unpack200/IMatcher;)I

    move-result v8

    aput v8, v4, v5

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_c
    new-array v1, v2, [Ljava/util/List;

    const/4 v5, 0x0

    :goto_8
    if-ge v5, v2, :cond_e

    aget v8, v4, v5

    if-lez v8, :cond_d

    iget-object v8, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->A:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    aget-object v9, v3, v5

    invoke-virtual {v8, v9}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeBands(Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;)Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;

    move-result-object v8

    aget v9, v4, v5

    invoke-virtual {v8, v7, v9}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->parseAttributes(Ljava/io/InputStream;I)Ljava/util/List;

    move-result-object v9

    aput-object v9, v1, v5

    aget-object v9, v3, v5

    invoke-virtual {v9}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->numBackwardsCallables()I

    move-result v9

    if-lez v9, :cond_d

    new-array v10, v9, [I

    iget-object v11, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->E:[I

    const/4 v12, 0x0

    invoke-static {v11, v0, v10, v12, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v8, v10}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->setBackwardsCalls([I)V

    add-int/2addr v0, v9

    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_e
    const/4 v12, 0x0

    :goto_9
    iget-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->v:[[Ljava/util/ArrayList;

    array-length v0, v0

    if-ge v12, v0, :cond_13

    const/4 v0, 0x0

    :goto_a
    iget-object v4, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->v:[[Ljava/util/ArrayList;

    aget-object v4, v4, v12

    array-length v4, v4

    if-ge v0, v4, :cond_12

    iget-object v4, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->y:[[J

    aget-object v4, v4, v12

    aget-wide v4, v4, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_b
    if-ge v7, v2, :cond_11

    aget-object v9, v3, v7

    if-eqz v9, :cond_10

    invoke-virtual {v9, v4, v5}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v9

    if-eqz v9, :cond_10

    aget-object v9, v3, v7

    invoke-virtual {v9}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->getIndex()I

    move-result v9

    const/16 v10, 0xf

    if-ge v9, v10, :cond_f

    iget-object v9, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->v:[[Ljava/util/ArrayList;

    aget-object v9, v9, v12

    aget-object v9, v9, v0

    add-int/lit8 v10, v8, 0x1

    aget-object v11, v1, v7

    const/4 v13, 0x0

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v8, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v8, v10

    goto :goto_c

    :cond_f
    const/4 v13, 0x0

    iget-object v9, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->v:[[Ljava/util/ArrayList;

    aget-object v9, v9, v12

    aget-object v9, v9, v0

    aget-object v10, v1, v7

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_c
    aget-object v9, v1, v7

    invoke-interface {v9, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_d

    :cond_10
    const/4 v13, 0x0

    :goto_d
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    :cond_11
    const/4 v13, 0x0

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_12
    const/4 v13, 0x0

    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    :cond_13
    return-void
.end method

.method public read(Ljava/io/InputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getClassCount()I

    move-result v0

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v2, "class_this"

    invoke-virtual {p0, v2, p1, v1, v0}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->h:[I

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->B:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->getCpClass()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->getReferences([I[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->g:[Ljava/lang/String;

    const-string v2, "class_super"

    invoke-virtual {p0, v2, p1, v1, v0}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->f:[I

    const-string v2, "class_interface_count"

    invoke-virtual {p0, v2, p1, v1, v0}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v2

    const-string v3, "class_interface"

    invoke-virtual {p0, v3, p1, v1, v2}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[I

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->d:[[I

    const-string v2, "class_field_count"

    invoke-virtual {p0, v2, p1, v1, v0}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->a:[I

    const-string v2, "class_method_count"

    invoke-virtual {p0, v2, p1, v1, v0}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->e:[I

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->o(Ljava/io/InputStream;)V

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->s(Ljava/io/InputStream;)V

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->j(Ljava/io/InputStream;)V

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->m(Ljava/io/InputStream;)V

    return-void
.end method

.method public final s(Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    sget-object v0, Lorg/apache/commons/compress/harmony/pack200/Codec;->MDELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->e:[I

    const-string v2, "method_descr"

    invoke-virtual {p0, v2, p1, v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->x:[[I

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->B:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->getCpDescriptor()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->getReferences([[I[Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->w:[[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->r(Ljava/io/InputStream;)V

    return-void
.end method

.method public final t(Ljava/io/InputStream;[I)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "RIPA"

    const-string v1, "AD"

    const-string v2, "RVA"

    const-string v3, "RIA"

    const-string v4, "RVPA"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x0

    filled-new-array {v0, v0, v0, v0, v0}, [I

    move-result-object v8

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->A:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const-string v2, "RuntimeVisibleAnnotations"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->A:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const-string v4, "RuntimeInvisibleAnnotations"

    invoke-virtual {v2, v4, v3}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v2

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->A:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const-string v5, "RuntimeVisibleParameterAnnotations"

    invoke-virtual {v4, v5, v3}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->A:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const-string v6, "RuntimeInvisibleParameterAnnotations"

    invoke-virtual {v5, v6, v3}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->A:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const-string v9, "AnnotationDefault"

    invoke-virtual {v6, v9, v3}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v6

    const/4 v11, 0x5

    new-array v12, v11, [Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    aput-object v1, v12, v0

    const/4 v1, 0x1

    aput-object v2, v12, v1

    aput-object v4, v12, v3

    const/4 v1, 0x3

    aput-object v5, v12, v1

    const/4 v1, 0x4

    aput-object v6, v12, v1

    new-instance v1, Lcom/sunia/HTREnginev2/aud;

    invoke-direct {v1, p0, v12}, Lcom/sunia/HTREnginev2/aud;-><init>(Lorg/apache/commons/compress/harmony/unpack200/ClassBands;[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;)V

    invoke-static {v8, v1}, Ljava/util/Arrays;->setAll([ILjava/util/function/IntUnaryOperator;)V

    new-array v9, v11, [I

    move v1, v0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v1, v11, :cond_1

    aget v4, v8, v1

    if-lez v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    aget v4, p2, v3

    aput v4, v9, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    aput v0, v9, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v10, "method"

    move-object v5, p0

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->q(Ljava/io/InputStream;[Ljava/lang/String;[I[ILjava/lang/String;)[Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;

    move-result-object p1

    new-array p2, v11, [Ljava/util/List;

    new-array v1, v11, [I

    move v3, v0

    :goto_2
    array-length v4, p1

    if-ge v3, v4, :cond_2

    aget-object v4, p1, v3

    invoke-virtual {v4}, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->getAttributes()Ljava/util/List;

    move-result-object v4

    aput-object v4, p2, v3

    aput v0, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    move p1, v0

    :goto_3
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->y:[[J

    array-length v3, v3

    if-ge p1, v3, :cond_6

    move v3, v0

    :goto_4
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->y:[[J

    aget-object v4, v4, p1

    array-length v4, v4

    if-ge v3, v4, :cond_5

    move v4, v0

    :goto_5
    if-ge v4, v11, :cond_4

    aget-object v5, v12, v4

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->y:[[J

    aget-object v6, v6, p1

    aget-wide v6, v6, v3

    invoke-virtual {v5, v6, v7}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->v:[[Ljava/util/ArrayList;

    aget-object v5, v5, p1

    aget-object v5, v5, v3

    aget-object v6, p2, v4

    aget v7, v1, v4

    add-int/lit8 v8, v7, 0x1

    aput v8, v1, v4

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_6
    return v2
.end method

.method public unpack()V
    .locals 0

    return-void
.end method
