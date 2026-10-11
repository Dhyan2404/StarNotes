.class public Lnet/sf/saxon/expr/instruct/ParameterSet;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static EMPTY_PARAMETER_SET:Lnet/sf/saxon/expr/instruct/ParameterSet; = null

.field public static final NOT_SUPPLIED:I = 0x0

.field public static final SUPPLIED:I = 0x1

.field public static final SUPPLIED_AND_CHECKED:I = 0x2


# instance fields
.field public a:[Lnet/sf/saxon/om/StructuredQName;

.field public b:[Lnet/sf/saxon/om/Sequence;

.field public c:[Z

.field public d:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnet/sf/saxon/expr/instruct/ParameterSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/sf/saxon/expr/instruct/ParameterSet;-><init>(I)V

    sput-object v0, Lnet/sf/saxon/expr/instruct/ParameterSet;->EMPTY_PARAMETER_SET:Lnet/sf/saxon/expr/instruct/ParameterSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    .line 1
    invoke-direct {p0, v0}, Lnet/sf/saxon/expr/instruct/ParameterSet;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lnet/sf/saxon/expr/instruct/ParameterSet;->d:I

    .line 4
    new-array v0, p1, [Lnet/sf/saxon/om/StructuredQName;

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/ParameterSet;->a:[Lnet/sf/saxon/om/StructuredQName;

    .line 5
    new-array v0, p1, [Lnet/sf/saxon/om/Sequence;

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/ParameterSet;->b:[Lnet/sf/saxon/om/Sequence;

    .line 6
    new-array p1, p1, [Z

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/ParameterSet;->c:[Z

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lnet/sf/saxon/om/StructuredQName;",
            "Lnet/sf/saxon/om/Sequence;",
            ">;)V"
        }
    .end annotation

    .line 7
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lnet/sf/saxon/expr/instruct/ParameterSet;-><init>(I)V

    .line 8
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 9
    iget-object v3, p0, Lnet/sf/saxon/expr/instruct/ParameterSet;->a:[Lnet/sf/saxon/om/StructuredQName;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/om/StructuredQName;

    aput-object v4, v3, v1

    .line 10
    iget-object v3, p0, Lnet/sf/saxon/expr/instruct/ParameterSet;->b:[Lnet/sf/saxon/om/Sequence;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/om/Sequence;

    aput-object v2, v3, v1

    .line 11
    iget-object v2, p0, Lnet/sf/saxon/expr/instruct/ParameterSet;->c:[Z

    add-int/lit8 v3, v1, 0x1

    aput-boolean v0, v2, v1

    move v1, v3

    goto :goto_0

    .line 12
    :cond_0
    iput v1, p0, Lnet/sf/saxon/expr/instruct/ParameterSet;->d:I

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/expr/instruct/ParameterSet;I)V
    .locals 3

    .line 13
    iget v0, p1, Lnet/sf/saxon/expr/instruct/ParameterSet;->d:I

    add-int/2addr v0, p2

    invoke-direct {p0, v0}, Lnet/sf/saxon/expr/instruct/ParameterSet;-><init>(I)V

    const/4 p2, 0x0

    .line 14
    :goto_0
    iget v0, p1, Lnet/sf/saxon/expr/instruct/ParameterSet;->d:I

    if-ge p2, v0, :cond_0

    .line 15
    iget-object v0, p1, Lnet/sf/saxon/expr/instruct/ParameterSet;->a:[Lnet/sf/saxon/om/StructuredQName;

    aget-object v0, v0, p2

    iget-object v1, p1, Lnet/sf/saxon/expr/instruct/ParameterSet;->b:[Lnet/sf/saxon/om/Sequence;

    aget-object v1, v1, p2

    iget-object v2, p1, Lnet/sf/saxon/expr/instruct/ParameterSet;->c:[Z

    aget-boolean v2, v2, p2

    invoke-virtual {p0, v0, v1, v2}, Lnet/sf/saxon/expr/instruct/ParameterSet;->put(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/Sequence;Z)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/expr/instruct/ParameterSet;->d:I

    return-void
.end method

.method public getIndex(Lnet/sf/saxon/om/StructuredQName;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lnet/sf/saxon/expr/instruct/ParameterSet;->d:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/ParameterSet;->a:[Lnet/sf/saxon/om/StructuredQName;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getParameterNames()[Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/ParameterSet;->a:[Lnet/sf/saxon/om/StructuredQName;

    return-object p0
.end method

.method public getValue(I)Lnet/sf/saxon/om/Sequence;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/ParameterSet;->b:[Lnet/sf/saxon/om/Sequence;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public isTypeChecked(I)Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/ParameterSet;->c:[Z

    aget-boolean p0, p0, p1

    return p0
.end method

.method public materializeValues()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lnet/sf/saxon/expr/instruct/ParameterSet;->d:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/ParameterSet;->b:[Lnet/sf/saxon/om/Sequence;

    aget-object v2, v1, v0

    instance-of v3, v2, Lnet/sf/saxon/value/Closure;

    if-eqz v3, :cond_0

    check-cast v2, Lnet/sf/saxon/value/Closure;

    invoke-virtual {v2}, Lnet/sf/saxon/value/Closure;->reduce()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v2

    aput-object v2, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public put(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/Sequence;Z)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lnet/sf/saxon/expr/instruct/ParameterSet;->d:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/ParameterSet;->a:[Lnet/sf/saxon/om/StructuredQName;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lnet/sf/saxon/expr/instruct/ParameterSet;->b:[Lnet/sf/saxon/om/Sequence;

    aput-object p2, p1, v0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/ParameterSet;->c:[Z

    aput-boolean p3, p0, v0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v1, 0x1

    iget-object v2, p0, Lnet/sf/saxon/expr/instruct/ParameterSet;->a:[Lnet/sf/saxon/om/StructuredQName;

    array-length v2, v2

    if-le v0, v2, :cond_3

    const/4 v0, 0x5

    if-gt v1, v0, :cond_2

    const/16 v0, 0xa

    goto :goto_1

    :cond_2
    mul-int/lit8 v0, v1, 0x2

    :goto_1
    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/ParameterSet;->b:[Lnet/sf/saxon/om/Sequence;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lnet/sf/saxon/om/Sequence;

    iput-object v1, p0, Lnet/sf/saxon/expr/instruct/ParameterSet;->b:[Lnet/sf/saxon/om/Sequence;

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/ParameterSet;->a:[Lnet/sf/saxon/om/StructuredQName;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lnet/sf/saxon/om/StructuredQName;

    iput-object v1, p0, Lnet/sf/saxon/expr/instruct/ParameterSet;->a:[Lnet/sf/saxon/om/StructuredQName;

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/ParameterSet;->c:[Z

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/ParameterSet;->c:[Z

    :cond_3
    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/ParameterSet;->a:[Lnet/sf/saxon/om/StructuredQName;

    iget v1, p0, Lnet/sf/saxon/expr/instruct/ParameterSet;->d:I

    aput-object p1, v0, v1

    iget-object p1, p0, Lnet/sf/saxon/expr/instruct/ParameterSet;->c:[Z

    aput-boolean p3, p1, v1

    iget-object p1, p0, Lnet/sf/saxon/expr/instruct/ParameterSet;->b:[Lnet/sf/saxon/om/Sequence;

    add-int/lit8 p3, v1, 0x1

    iput p3, p0, Lnet/sf/saxon/expr/instruct/ParameterSet;->d:I

    aput-object p2, p1, v1

    return-void
.end method

.method public size()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/expr/instruct/ParameterSet;->d:I

    return p0
.end method
