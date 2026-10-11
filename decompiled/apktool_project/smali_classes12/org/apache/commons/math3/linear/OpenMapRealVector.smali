.class public Lorg/apache/commons/math3/linear/OpenMapRealVector;
.super Lorg/apache/commons/math3/linear/SparseRealVector;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/linear/OpenMapRealVector$OpenMapSparseIterator;,
        Lorg/apache/commons/math3/linear/OpenMapRealVector$OpenMapEntry;
    }
.end annotation


# static fields
.field public static final DEFAULT_ZERO_TOLERANCE:D = 1.0E-12

.field private static final serialVersionUID:J = 0x79bd32107cb529bcL


# instance fields
.field private final entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

.field private final epsilon:D

.field private final virtualSize:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const-wide v1, 0x3d719799812dea11L    # 1.0E-12

    .line 1
    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/math3/linear/OpenMapRealVector;-><init>(ID)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const-wide v0, 0x3d719799812dea11L    # 1.0E-12

    .line 2
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;-><init>(ID)V

    return-void
.end method

.method public constructor <init>(ID)V
    .locals 2

    .line 3
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/SparseRealVector;-><init>()V

    .line 4
    iput p1, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->virtualSize:I

    .line 5
    new-instance p1, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;-><init>(D)V

    iput-object p1, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    .line 6
    iput-wide p2, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->epsilon:D

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    const-wide v0, 0x3d719799812dea11L    # 1.0E-12

    .line 11
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;-><init>(IID)V

    return-void
.end method

.method public constructor <init>(IID)V
    .locals 2

    .line 12
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/SparseRealVector;-><init>()V

    .line 13
    iput p1, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->virtualSize:I

    .line 14
    new-instance p1, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    const-wide/16 v0, 0x0

    invoke-direct {p1, p2, v0, v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;-><init>(ID)V

    iput-object p1, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    .line 15
    iput-wide p3, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->epsilon:D

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/OpenMapRealVector;)V
    .locals 2

    .line 34
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/SparseRealVector;-><init>()V

    .line 35
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getDimension()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->virtualSize:I

    .line 36
    new-instance v0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-direct {p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getEntries()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;-><init>(Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;)V

    iput-object v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    .line 37
    iget-wide v0, p1, Lorg/apache/commons/math3/linear/OpenMapRealVector;->epsilon:D

    iput-wide v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->epsilon:D

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/OpenMapRealVector;I)V
    .locals 1

    .line 7
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/SparseRealVector;-><init>()V

    .line 8
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getDimension()I

    move-result v0

    add-int/2addr v0, p2

    iput v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->virtualSize:I

    .line 9
    new-instance p2, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    iget-object v0, p1, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-direct {p2, v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;-><init>(Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;)V

    iput-object p2, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    .line 10
    iget-wide p1, p1, Lorg/apache/commons/math3/linear/OpenMapRealVector;->epsilon:D

    iput-wide p1, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->epsilon:D

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/RealVector;)V
    .locals 4

    .line 38
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/SparseRealVector;-><init>()V

    .line 39
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->virtualSize:I

    .line 40
    new-instance v0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;-><init>(D)V

    iput-object v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    const-wide v0, 0x3d719799812dea11L    # 1.0E-12

    .line 41
    iput-wide v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->epsilon:D

    const/4 v0, 0x0

    .line 42
    :goto_0
    iget v1, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->virtualSize:I

    if-ge v0, v1, :cond_1

    .line 43
    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v1

    .line 44
    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->isDefaultValue(D)Z

    move-result v3

    if-nez v3, :cond_0

    .line 45
    iget-object v3, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v3, v0, v1, v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->put(ID)D

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>([D)V
    .locals 2

    const-wide v0, 0x3d719799812dea11L    # 1.0E-12

    .line 16
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;-><init>([DD)V

    return-void
.end method

.method public constructor <init>([DD)V
    .locals 3

    .line 17
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/SparseRealVector;-><init>()V

    .line 18
    array-length v0, p1

    iput v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->virtualSize:I

    .line 19
    new-instance v0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;-><init>(D)V

    iput-object v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    .line 20
    iput-wide p2, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->epsilon:D

    const/4 p2, 0x0

    .line 21
    :goto_0
    array-length p3, p1

    if-ge p2, p3, :cond_1

    .line 22
    aget-wide v0, p1, p2

    .line 23
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->isDefaultValue(D)Z

    move-result p3

    if-nez p3, :cond_0

    .line 24
    iget-object p3, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {p3, p2, v0, v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->put(ID)D

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>([Ljava/lang/Double;)V
    .locals 2

    const-wide v0, 0x3d719799812dea11L    # 1.0E-12

    .line 25
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;-><init>([Ljava/lang/Double;D)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/Double;D)V
    .locals 3

    .line 26
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/SparseRealVector;-><init>()V

    .line 27
    array-length v0, p1

    iput v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->virtualSize:I

    .line 28
    new-instance v0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;-><init>(D)V

    iput-object v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    .line 29
    iput-wide p2, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->epsilon:D

    const/4 p2, 0x0

    .line 30
    :goto_0
    array-length p3, p1

    if-ge p2, p3, :cond_1

    .line 31
    aget-object p3, p1, p2

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 32
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->isDefaultValue(D)Z

    move-result p3

    if-nez p3, :cond_0

    .line 33
    iget-object p3, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {p3, p2, v0, v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->put(ID)D

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic access$000(Lorg/apache/commons/math3/linear/OpenMapRealVector;)Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    return-object p0
.end method

.method private getEntries()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    return-object p0
.end method

.method private getLInfDistance(Lorg/apache/commons/math3/linear/OpenMapRealVector;)D
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getDimension()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/RealVector;->checkVectorDimensions(I)V

    .line 2
    iget-object v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 3
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->advance()V

    .line 5
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v3

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->key()I

    move-result v5

    invoke-virtual {p1, v5}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getEntry(I)D

    move-result-wide v5

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    cmpl-double v5, v3, v1

    if-lez v5, :cond_0

    move-wide v1, v3

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getEntries()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    move-result-object p1

    .line 7
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->advance()V

    .line 9
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->key()I

    move-result v0

    .line 10
    iget-object v3, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v3, v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->containsKey(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v3

    cmpl-double v0, v3, v1

    if-lez v0, :cond_2

    .line 11
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v0

    move-wide v1, v0

    goto :goto_1

    :cond_3
    return-wide v1
.end method


# virtual methods
.method public add(Lorg/apache/commons/math3/linear/OpenMapRealVector;)Lorg/apache/commons/math3/linear/OpenMapRealVector;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 5
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getDimension()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/RealVector;->checkVectorDimensions(I)V

    .line 6
    iget-object v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->size()I

    move-result v0

    iget-object v1, p1, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->copy()Lorg/apache/commons/math3/linear/OpenMapRealVector;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->copy()Lorg/apache/commons/math3/linear/OpenMapRealVector;

    move-result-object v1

    :goto_1
    if-eqz v0, :cond_2

    .line 8
    iget-object v2, p1, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    :goto_2
    invoke-virtual {v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    move-result-object v2

    if-eqz v0, :cond_3

    .line 9
    iget-object p0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    goto :goto_3

    :cond_3
    iget-object p0, p1, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    .line 10
    :goto_3
    invoke-virtual {v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 11
    invoke-virtual {v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->advance()V

    .line 12
    invoke-virtual {v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->key()I

    move-result p1

    .line 13
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->containsKey(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->get(I)D

    move-result-wide v3

    invoke-virtual {v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v5

    add-double/2addr v3, v5

    invoke-virtual {v1, p1, v3, v4}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->setEntry(ID)V

    goto :goto_3

    .line 15
    :cond_4
    invoke-virtual {v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v3

    invoke-virtual {v1, p1, v3, v4}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->setEntry(ID)V

    goto :goto_3

    :cond_5
    return-object v1
.end method

.method public add(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/RealVector;->checkVectorDimensions(I)V

    .line 2
    instance-of v0, p1, Lorg/apache/commons/math3/linear/OpenMapRealVector;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lorg/apache/commons/math3/linear/OpenMapRealVector;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->add(Lorg/apache/commons/math3/linear/OpenMapRealVector;)Lorg/apache/commons/math3/linear/OpenMapRealVector;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/commons/math3/linear/RealVector;->add(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p0

    return-object p0
.end method

.method public append(D)Lorg/apache/commons/math3/linear/OpenMapRealVector;
    .locals 2

    .line 13
    new-instance v0, Lorg/apache/commons/math3/linear/OpenMapRealVector;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;-><init>(Lorg/apache/commons/math3/linear/OpenMapRealVector;I)V

    .line 14
    iget p0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->virtualSize:I

    invoke-virtual {v0, p0, p1, p2}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->setEntry(ID)V

    return-object v0
.end method

.method public append(Lorg/apache/commons/math3/linear/OpenMapRealVector;)Lorg/apache/commons/math3/linear/OpenMapRealVector;
    .locals 4

    .line 3
    new-instance v0, Lorg/apache/commons/math3/linear/OpenMapRealVector;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getDimension()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;-><init>(Lorg/apache/commons/math3/linear/OpenMapRealVector;I)V

    .line 4
    iget-object p1, p1, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    move-result-object p1

    .line 5
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->advance()V

    .line 7
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->key()I

    move-result v1

    iget v2, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->virtualSize:I

    add-int/2addr v1, v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->setEntry(ID)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public append(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/OpenMapRealVector;
    .locals 5

    .line 8
    instance-of v0, p1, Lorg/apache/commons/math3/linear/OpenMapRealVector;

    if-eqz v0, :cond_0

    .line 9
    check-cast p1, Lorg/apache/commons/math3/linear/OpenMapRealVector;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->append(Lorg/apache/commons/math3/linear/OpenMapRealVector;)Lorg/apache/commons/math3/linear/OpenMapRealVector;

    move-result-object p0

    return-object p0

    .line 10
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/linear/OpenMapRealVector;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;-><init>(Lorg/apache/commons/math3/linear/OpenMapRealVector;I)V

    const/4 v1, 0x0

    .line 11
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 12
    iget v2, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->virtualSize:I

    add-int/2addr v2, v1

    invoke-virtual {p1, v1}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->setEntry(ID)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public bridge synthetic append(D)Lorg/apache/commons/math3/linear/RealVector;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->append(D)Lorg/apache/commons/math3/linear/OpenMapRealVector;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic append(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->append(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/OpenMapRealVector;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/commons/math3/linear/OpenMapRealVector;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/commons/math3/linear/OpenMapRealVector;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;-><init>(Lorg/apache/commons/math3/linear/OpenMapRealVector;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/linear/RealVector;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->copy()Lorg/apache/commons/math3/linear/OpenMapRealVector;

    move-result-object p0

    return-object p0
.end method

.method public dotProduct(Lorg/apache/commons/math3/linear/OpenMapRealVector;)D
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide p0

    return-wide p0
.end method

.method public ebeDivide(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/OpenMapRealVector;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/RealVector;->checkVectorDimensions(I)V

    .line 3
    new-instance v0, Lorg/apache/commons/math3/linear/OpenMapRealVector;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;-><init>(Lorg/apache/commons/math3/linear/OpenMapRealVector;)V

    .line 4
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getDimension()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 5
    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getEntry(I)D

    move-result-wide v3

    invoke-virtual {p1, v2}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v5

    div-double/2addr v3, v5

    invoke-virtual {v0, v2, v3, v4}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->setEntry(ID)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic ebeDivide(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->ebeDivide(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/OpenMapRealVector;

    move-result-object p0

    return-object p0
.end method

.method public ebeMultiply(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/OpenMapRealVector;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/RealVector;->checkVectorDimensions(I)V

    .line 3
    new-instance v0, Lorg/apache/commons/math3/linear/OpenMapRealVector;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;-><init>(Lorg/apache/commons/math3/linear/OpenMapRealVector;)V

    .line 4
    iget-object p0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    move-result-object p0

    .line 5
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->advance()V

    .line 7
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->key()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->key()I

    move-result v4

    invoke-virtual {p1, v4}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->setEntry(ID)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic ebeMultiply(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->ebeMultiply(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/OpenMapRealVector;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/apache/commons/math3/linear/OpenMapRealVector;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/apache/commons/math3/linear/OpenMapRealVector;

    iget v1, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->virtualSize:I

    iget v3, p1, Lorg/apache/commons/math3/linear/OpenMapRealVector;->virtualSize:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->epsilon:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    iget-wide v5, p1, Lorg/apache/commons/math3/linear/OpenMapRealVector;->epsilon:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    move-result-object v1

    :cond_4
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->advance()V

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->key()I

    move-result v3

    invoke-virtual {p1, v3}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getEntry(I)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    return v2

    :cond_5
    invoke-direct {p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getEntries()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    move-result-object p1

    :cond_6
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->advance()V

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->key()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getEntry(I)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    :cond_7
    return v0
.end method

.method public getDimension()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->virtualSize:I

    return p0
.end method

.method public getDistance(Lorg/apache/commons/math3/linear/OpenMapRealVector;)D
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getDimension()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/RealVector;->checkVectorDimensions(I)V

    .line 2
    iget-object v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->advance()V

    .line 5
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->key()I

    move-result v3

    .line 6
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v4

    invoke-virtual {p1, v3}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getEntry(I)D

    move-result-wide v6

    sub-double/2addr v4, v6

    mul-double/2addr v4, v4

    add-double/2addr v1, v4

    goto :goto_0

    .line 7
    :cond_0
    invoke-direct {p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getEntries()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    move-result-object p1

    .line 8
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->advance()V

    .line 10
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->key()I

    move-result v0

    .line 11
    iget-object v3, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v3, v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->containsKey(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 12
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v3

    mul-double/2addr v3, v3

    add-double/2addr v1, v3

    goto :goto_1

    .line 13
    :cond_2
    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public getDistance(Lorg/apache/commons/math3/linear/RealVector;)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 14
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/RealVector;->checkVectorDimensions(I)V

    .line 15
    instance-of v0, p1, Lorg/apache/commons/math3/linear/OpenMapRealVector;

    if-eqz v0, :cond_0

    .line 16
    check-cast p1, Lorg/apache/commons/math3/linear/OpenMapRealVector;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getDistance(Lorg/apache/commons/math3/linear/OpenMapRealVector;)D

    move-result-wide p0

    return-wide p0

    .line 17
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/commons/math3/linear/RealVector;->getDistance(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide p0

    return-wide p0
.end method

.method public getEntry(I)D
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/RealVector;->checkIndex(I)V

    iget-object p0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->get(I)D

    move-result-wide p0

    return-wide p0
.end method

.method public getL1Distance(Lorg/apache/commons/math3/linear/OpenMapRealVector;)D
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getDimension()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/RealVector;->checkVectorDimensions(I)V

    .line 2
    iget-object v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->advance()V

    .line 5
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v3

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->key()I

    move-result v5

    invoke-virtual {p1, v5}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getEntry(I)D

    move-result-wide v5

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    add-double/2addr v1, v3

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getEntries()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    move-result-object p1

    .line 7
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->advance()V

    .line 9
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->key()I

    move-result v0

    .line 10
    iget-object v3, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v3, v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->containsKey(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 11
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    .line 12
    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    add-double/2addr v1, v3

    goto :goto_1

    :cond_2
    return-wide v1
.end method

.method public getL1Distance(Lorg/apache/commons/math3/linear/RealVector;)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 13
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/RealVector;->checkVectorDimensions(I)V

    .line 14
    instance-of v0, p1, Lorg/apache/commons/math3/linear/OpenMapRealVector;

    if-eqz v0, :cond_0

    .line 15
    check-cast p1, Lorg/apache/commons/math3/linear/OpenMapRealVector;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getL1Distance(Lorg/apache/commons/math3/linear/OpenMapRealVector;)D

    move-result-wide p0

    return-wide p0

    .line 16
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/commons/math3/linear/RealVector;->getL1Distance(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide p0

    return-wide p0
.end method

.method public getLInfDistance(Lorg/apache/commons/math3/linear/RealVector;)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 12
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/RealVector;->checkVectorDimensions(I)V

    .line 13
    instance-of v0, p1, Lorg/apache/commons/math3/linear/OpenMapRealVector;

    if-eqz v0, :cond_0

    .line 14
    check-cast p1, Lorg/apache/commons/math3/linear/OpenMapRealVector;

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getLInfDistance(Lorg/apache/commons/math3/linear/OpenMapRealVector;)D

    move-result-wide p0

    return-wide p0

    .line 15
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/commons/math3/linear/RealVector;->getLInfDistance(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide p0

    return-wide p0
.end method

.method public getSparsity()D
    .locals 4

    iget-object v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->size()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getDimension()I

    move-result p0

    int-to-double v2, p0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getSubVector(II)Lorg/apache/commons/math3/linear/OpenMapRealVector;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/RealVector;->checkIndex(I)V

    if-ltz p2, :cond_2

    add-int v0, p1, p2

    add-int/lit8 v1, v0, -0x1

    .line 3
    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/linear/RealVector;->checkIndex(I)V

    .line 4
    new-instance v1, Lorg/apache/commons/math3/linear/OpenMapRealVector;

    invoke-direct {v1, p2}, Lorg/apache/commons/math3/linear/OpenMapRealVector;-><init>(I)V

    .line 5
    iget-object p0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    move-result-object p0

    .line 6
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 7
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->advance()V

    .line 8
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->key()I

    move-result p2

    if-lt p2, p1, :cond_0

    if-ge p2, v0, :cond_0

    sub-int/2addr p2, p1

    .line 9
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v2

    invoke-virtual {v1, p2, v2, v3}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->setEntry(ID)V

    goto :goto_0

    :cond_1
    return-object v1

    .line 10
    :cond_2
    new-instance p0, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_ELEMENTS_SHOULD_BE_POSITIVE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw p0
.end method

.method public bridge synthetic getSubVector(II)Lorg/apache/commons/math3/linear/RealVector;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getSubVector(II)Lorg/apache/commons/math3/linear/OpenMapRealVector;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 7

    iget-wide v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->epsilon:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget v1, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->virtualSize:I

    add-int/2addr v0, v1

    iget-object p0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->advance()V

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    mul-int/lit8 v0, v0, 0x1f

    shr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v1, v3

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public isDefaultValue(D)Z
    .locals 2

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide p1

    iget-wide v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->epsilon:D

    cmpg-double p0, p1, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInfinite()Z
    .locals 5

    iget-object p0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->advance()V

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_1

    return v0

    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public isNaN()Z
    .locals 2

    iget-object p0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    move-result-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->advance()V

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public mapAdd(D)Lorg/apache/commons/math3/linear/OpenMapRealVector;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->copy()Lorg/apache/commons/math3/linear/OpenMapRealVector;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->mapAddToSelf(D)Lorg/apache/commons/math3/linear/OpenMapRealVector;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mapAdd(D)Lorg/apache/commons/math3/linear/RealVector;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->mapAdd(D)Lorg/apache/commons/math3/linear/OpenMapRealVector;

    move-result-object p0

    return-object p0
.end method

.method public mapAddToSelf(D)Lorg/apache/commons/math3/linear/OpenMapRealVector;
    .locals 3

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->virtualSize:I

    if-ge v0, v1, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getEntry(I)D

    move-result-wide v1

    add-double/2addr v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->setEntry(ID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic mapAddToSelf(D)Lorg/apache/commons/math3/linear/RealVector;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->mapAddToSelf(D)Lorg/apache/commons/math3/linear/OpenMapRealVector;

    move-result-object p0

    return-object p0
.end method

.method public set(D)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->virtualSize:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->setEntry(ID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setEntry(ID)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/RealVector;->checkIndex(I)V

    invoke-virtual {p0, p2, p3}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->isDefaultValue(D)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->put(ID)D

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {p2, p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->containsKey(I)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->remove(I)D

    :cond_1
    :goto_0
    return-void
.end method

.method public setSubVector(ILorg/apache/commons/math3/linear/RealVector;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/RealVector;->checkIndex(I)V

    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/RealVector;->checkIndex(I)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v1

    if-ge v0, v1, :cond_0

    add-int v1, v0, p1

    invoke-virtual {p2, v0}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->setEntry(ID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public sparseIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/commons/math3/linear/RealVector$Entry;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/math3/linear/OpenMapRealVector$OpenMapSparseIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/linear/OpenMapRealVector$OpenMapSparseIterator;-><init>(Lorg/apache/commons/math3/linear/OpenMapRealVector;)V

    return-object v0
.end method

.method public subtract(Lorg/apache/commons/math3/linear/OpenMapRealVector;)Lorg/apache/commons/math3/linear/OpenMapRealVector;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getDimension()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/RealVector;->checkVectorDimensions(I)V

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->copy()Lorg/apache/commons/math3/linear/OpenMapRealVector;

    move-result-object v0

    .line 3
    invoke-direct {p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getEntries()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    move-result-object p1

    .line 4
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->advance()V

    .line 6
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->key()I

    move-result v1

    .line 7
    iget-object v2, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->containsKey(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    iget-object v2, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->get(I)D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->setEntry(ID)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v2

    neg-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->setEntry(ID)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public subtract(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 10
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/RealVector;->checkVectorDimensions(I)V

    .line 11
    instance-of v0, p1, Lorg/apache/commons/math3/linear/OpenMapRealVector;

    if-eqz v0, :cond_0

    .line 12
    check-cast p1, Lorg/apache/commons/math3/linear/OpenMapRealVector;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->subtract(Lorg/apache/commons/math3/linear/OpenMapRealVector;)Lorg/apache/commons/math3/linear/OpenMapRealVector;

    move-result-object p0

    return-object p0

    .line 13
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/commons/math3/linear/RealVector;->subtract(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p0

    return-object p0
.end method

.method public toArray()[D
    .locals 4

    iget v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->virtualSize:I

    new-array v0, v0, [D

    iget-object p0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->advance()V

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->key()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v2

    aput-wide v2, v0, v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public unitVector()Lorg/apache/commons/math3/linear/OpenMapRealVector;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->copy()Lorg/apache/commons/math3/linear/OpenMapRealVector;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->unitize()V

    return-object p0
.end method

.method public bridge synthetic unitVector()Lorg/apache/commons/math3/linear/RealVector;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->unitVector()Lorg/apache/commons/math3/linear/OpenMapRealVector;

    move-result-object p0

    return-object p0
.end method

.method public unitize()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector;->getNorm()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->isDefaultValue(D)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    move-result-object v2

    :goto_0
    invoke-virtual {v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->advance()V

    iget-object v3, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->key()I

    move-result v4

    invoke-virtual {v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v5

    div-double/2addr v5, v0

    invoke-virtual {v3, v4, v5, v6}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->put(ID)D

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_NORM:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0
.end method
