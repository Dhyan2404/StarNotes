.class public Lnet/sf/saxon/ma/arrays/SimpleArrayItem;
.super Lnet/sf/saxon/ma/arrays/AbstractArrayItem;
.source "SourceFile"


# static fields
.field public static final EMPTY_ARRAY:Lnet/sf/saxon/ma/arrays/SimpleArrayItem;


# instance fields
.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/om/GroundedValue;",
            ">;"
        }
    .end annotation
.end field

.field public g:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnet/sf/saxon/ma/arrays/SimpleArrayItem;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1}, Lnet/sf/saxon/ma/arrays/SimpleArrayItem;-><init>(Ljava/util/List;)V

    sput-object v0, Lnet/sf/saxon/ma/arrays/SimpleArrayItem;->EMPTY_ARRAY:Lnet/sf/saxon/ma/arrays/SimpleArrayItem;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/sf/saxon/om/GroundedValue;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lnet/sf/saxon/ma/arrays/AbstractArrayItem;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/ma/arrays/SimpleArrayItem;->g:Z

    iput-object p1, p0, Lnet/sf/saxon/ma/arrays/SimpleArrayItem;->f:Ljava/util/List;

    return-void
.end method

.method public static synthetic c(Ljava/util/List;Lnet/sf/saxon/om/Item;)V
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/ma/arrays/SimpleArrayItem;->d(Ljava/util/List;Lnet/sf/saxon/om/Item;)V

    return-void
.end method

.method public static synthetic d(Ljava/util/List;Lnet/sf/saxon/om/Item;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.saxonica.functions.extfn.ArrayMemberValue"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/value/ObjectValue;

    invoke-virtual {p1}, Lnet/sf/saxon/value/ObjectValue;->getObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/om/GroundedValue;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public static makeSimpleArrayItem(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/ma/arrays/SimpleArrayItem;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/sunia/HTREnginev2/dsm;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/dsm;-><init>(Ljava/util/List;)V

    invoke-static {p0, v1}, Lnet/sf/saxon/om/SequenceTool;->supply(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/om/ItemConsumer;)V

    new-instance p0, Lnet/sf/saxon/ma/arrays/SimpleArrayItem;

    invoke-direct {p0, v0}, Lnet/sf/saxon/ma/arrays/SimpleArrayItem;-><init>(Ljava/util/List;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/ma/arrays/SimpleArrayItem;->g:Z

    return-object p0
.end method


# virtual methods
.method public arrayLength()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/ma/arrays/SimpleArrayItem;->f:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public concat(Lnet/sf/saxon/ma/arrays/ArrayItem;)Lnet/sf/saxon/ma/arrays/ArrayItem;
    .locals 1

    new-instance v0, Lnet/sf/saxon/ma/arrays/ImmutableArrayItem;

    invoke-direct {v0, p0}, Lnet/sf/saxon/ma/arrays/ImmutableArrayItem;-><init>(Lnet/sf/saxon/ma/arrays/SimpleArrayItem;)V

    invoke-virtual {v0, p1}, Lnet/sf/saxon/ma/arrays/ImmutableArrayItem;->concat(Lnet/sf/saxon/ma/arrays/ArrayItem;)Lnet/sf/saxon/ma/arrays/ArrayItem;

    move-result-object p0

    return-object p0
.end method

.method public get(I)Lnet/sf/saxon/om/GroundedValue;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/ma/arrays/SimpleArrayItem;->f:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/om/GroundedValue;

    return-object p0
.end method

.method public getAnnotations()Lnet/sf/saxon/query/AnnotationList;
    .locals 0

    sget-object p0, Lnet/sf/saxon/query/AnnotationList;->EMPTY:Lnet/sf/saxon/query/AnnotationList;

    return-object p0
.end method

.method public getMembers()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/sf/saxon/om/GroundedValue;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/ma/arrays/SimpleArrayItem;->f:Ljava/util/List;

    return-object p0
.end method

.method public getOperandRoles()[Lnet/sf/saxon/expr/OperandRole;
    .locals 2

    const/4 p0, 0x1

    new-array p0, p0, [Lnet/sf/saxon/expr/OperandRole;

    const/4 v0, 0x0

    sget-object v1, Lnet/sf/saxon/expr/OperandRole;->SINGLE_ATOMIC:Lnet/sf/saxon/expr/OperandRole;

    aput-object v1, p0, v0

    return-object p0
.end method

.method public insert(ILnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/ma/arrays/ArrayItem;
    .locals 1

    new-instance v0, Lnet/sf/saxon/ma/arrays/ImmutableArrayItem;

    invoke-direct {v0, p0}, Lnet/sf/saxon/ma/arrays/ImmutableArrayItem;-><init>(Lnet/sf/saxon/ma/arrays/SimpleArrayItem;)V

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/ma/arrays/ImmutableArrayItem;->insert(ILnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/ma/arrays/ArrayItem;

    move-result-object p0

    return-object p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/ma/arrays/SimpleArrayItem;->f:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public makeGrounded()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/ma/arrays/SimpleArrayItem;->g:Z

    if-nez v0, :cond_1

    monitor-enter p0

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lnet/sf/saxon/ma/arrays/SimpleArrayItem;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lnet/sf/saxon/ma/arrays/SimpleArrayItem;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/om/Sequence;

    invoke-interface {v2}, Lnet/sf/saxon/om/Sequence;->materialize()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/ma/arrays/SimpleArrayItem;->g:Z

    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_1
    return-void
.end method

.method public members()Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lnet/sf/saxon/om/GroundedValue;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/ma/arrays/SimpleArrayItem;->f:Ljava/util/List;

    return-object p0
.end method

.method public put(ILnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/ma/arrays/ArrayItem;
    .locals 1

    new-instance v0, Lnet/sf/saxon/ma/arrays/ImmutableArrayItem;

    invoke-direct {v0, p0}, Lnet/sf/saxon/ma/arrays/ImmutableArrayItem;-><init>(Lnet/sf/saxon/ma/arrays/SimpleArrayItem;)V

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/ma/arrays/ImmutableArrayItem;->put(ILnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/ma/arrays/ArrayItem;

    move-result-object p0

    return-object p0
.end method

.method public remove(I)Lnet/sf/saxon/ma/arrays/ArrayItem;
    .locals 1

    new-instance v0, Lnet/sf/saxon/ma/arrays/ImmutableArrayItem;

    invoke-direct {v0, p0}, Lnet/sf/saxon/ma/arrays/ImmutableArrayItem;-><init>(Lnet/sf/saxon/ma/arrays/SimpleArrayItem;)V

    invoke-virtual {v0, p1}, Lnet/sf/saxon/ma/arrays/ImmutableArrayItem;->remove(I)Lnet/sf/saxon/ma/arrays/ArrayItem;

    move-result-object p0

    return-object p0
.end method

.method public removeSeveral(Lnet/sf/saxon/z/IntSet;)Lnet/sf/saxon/ma/arrays/ArrayItem;
    .locals 1

    new-instance v0, Lnet/sf/saxon/ma/arrays/ImmutableArrayItem;

    invoke-direct {v0, p0}, Lnet/sf/saxon/ma/arrays/ImmutableArrayItem;-><init>(Lnet/sf/saxon/ma/arrays/SimpleArrayItem;)V

    invoke-virtual {v0, p1}, Lnet/sf/saxon/ma/arrays/ImmutableArrayItem;->removeSeveral(Lnet/sf/saxon/z/IntSet;)Lnet/sf/saxon/ma/arrays/ArrayItem;

    move-result-object p0

    return-object p0
.end method

.method public subArray(II)Lnet/sf/saxon/ma/arrays/ArrayItem;
    .locals 1

    new-instance v0, Lnet/sf/saxon/ma/arrays/SimpleArrayItem;

    iget-object p0, p0, Lnet/sf/saxon/ma/arrays/SimpleArrayItem;->f:Ljava/util/List;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/ma/arrays/SimpleArrayItem;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public toShortString()Ljava/lang/String;
    .locals 3

    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getLength()I

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "[]"

    return-object p0

    :cond_0
    const/4 v1, 0x5

    if-le v0, v1, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[(:size "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":)]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/ma/arrays/SimpleArrayItem;->members()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/om/GroundedValue;

    invoke-static {v2}, Lnet/sf/saxon/trans/Err;->depictSequence(Lnet/sf/saxon/om/Sequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    if-ne v0, p0, :cond_3

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x2

    const/16 v0, 0x5d

    invoke-virtual {v1, p0, v0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
