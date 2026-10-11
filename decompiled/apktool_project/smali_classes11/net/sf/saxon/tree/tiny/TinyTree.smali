.class public final Lnet/sf/saxon/tree/tiny/TinyTree;
.super Lnet/sf/saxon/om/GenericTreeInfo;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/tree/tiny/NodeVectorTree;


# static fields
.field public static final H0:[Ljava/lang/String;

.field public static final synthetic I0:Z = false

.field public static final TYPECODE_IDREF:I = 0x20000000


# instance fields
.field public A0:Lnet/sf/saxon/om/PrefixPool;

.field public B0:Lnet/sf/saxon/tree/tiny/TinyDocumentImpl;

.field public C0:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lnet/sf/saxon/om/NodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field public D0:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public E0:Lnet/sf/saxon/om/NodeInfo;

.field public F0:Lnet/sf/saxon/z/IntHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/sf/saxon/z/IntHashMap<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public G0:Ljava/lang/String;

.field public J:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/sf/saxon/z/IntSet;",
            ">;"
        }
    .end annotation
.end field

.field public O:I

.field public Q:[I

.field public Z:[I

.field public j:Lnet/sf/saxon/str/LargeTextBuffer;

.field public k:Lnet/sf/saxon/str/UnicodeString;

.field public k0:[Ljava/lang/String;

.field public l:I

.field public m:[S

.field public n:[I

.field public nodeKind:[B

.field public o:[I

.field public p:[I

.field public q:[I

.field public q0:[Lnet/sf/saxon/om/AtomicSequence;

.field public r:[I

.field public s:[Lnet/sf/saxon/type/SchemaType;

.field public t:[Lnet/sf/saxon/om/AtomicSequence;

.field public t0:[Lnet/sf/saxon/type/SimpleType;

.field public u:Lnet/sf/saxon/z/IntSet;

.field public u0:I

.field public v:Lnet/sf/saxon/z/IntSet;

.field public v0:[Lnet/sf/saxon/om/NamespaceMap;

.field public w:Lnet/sf/saxon/z/IntSet;

.field public w0:[I

.field public x:Lnet/sf/saxon/z/IntSet;

.field public x0:[I

.field public y:Lnet/sf/saxon/z/IntSet;

.field public y0:Lnet/sf/saxon/tree/linked/SystemIdMap;

.field public z:Z

.field public z0:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lnet/sf/saxon/tree/tiny/TinyTree;->H0:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/Configuration;Lnet/sf/saxon/tree/tiny/Statistics;)V
    .locals 6

    invoke-direct {p0, p1}, Lnet/sf/saxon/om/GenericTreeInfo;-><init>(Lnet/sf/saxon/Configuration;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->k:Lnet/sf/saxon/str/UnicodeString;

    const/4 v1, 0x0

    iput v1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->l:I

    iput-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->r:[I

    iput-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->s:[Lnet/sf/saxon/type/SchemaType;

    iput-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->t:[Lnet/sf/saxon/om/AtomicSequence;

    iput-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->u:Lnet/sf/saxon/z/IntSet;

    iput-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->v:Lnet/sf/saxon/z/IntSet;

    iput-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->w:Lnet/sf/saxon/z/IntSet;

    iput-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->x:Lnet/sf/saxon/z/IntSet;

    iput-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->y:Lnet/sf/saxon/z/IntSet;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->z:Z

    iput-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->J:Ljava/util/Map;

    iput v1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->O:I

    iput v1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->u0:I

    iput-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->w0:[I

    iput-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->x0:[I

    iput-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->y0:Lnet/sf/saxon/tree/linked/SystemIdMap;

    iput-boolean v1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->z0:Z

    new-instance v3, Lnet/sf/saxon/om/PrefixPool;

    invoke-direct {v3}, Lnet/sf/saxon/om/PrefixPool;-><init>()V

    iput-object v3, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->A0:Lnet/sf/saxon/om/PrefixPool;

    iput-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->G0:Ljava/lang/String;

    invoke-virtual {p2}, Lnet/sf/saxon/tree/tiny/Statistics;->getAverageNodes()D

    move-result-wide v3

    double-to-int v0, v3

    add-int/2addr v0, v2

    invoke-virtual {p2}, Lnet/sf/saxon/tree/tiny/Statistics;->getAverageAttributes()D

    move-result-wide v3

    double-to-int v3, v3

    add-int/2addr v3, v2

    invoke-virtual {p2}, Lnet/sf/saxon/tree/tiny/Statistics;->getAverageNamespaces()D

    move-result-wide v4

    double-to-int v4, v4

    add-int/2addr v4, v2

    invoke-virtual {p2}, Lnet/sf/saxon/tree/tiny/Statistics;->getAverageCharacters()D

    new-array p2, v0, [B

    iput-object p2, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->nodeKind:[B

    new-array p2, v0, [S

    iput-object p2, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->m:[S

    new-array p2, v0, [I

    iput-object p2, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->n:[I

    new-array p2, v0, [I

    iput-object p2, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->o:[I

    new-array p2, v0, [I

    iput-object p2, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->p:[I

    new-array p2, v0, [I

    iput-object p2, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->q:[I

    iput v1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->O:I

    new-array p2, v3, [I

    iput-object p2, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->Q:[I

    new-array p2, v3, [I

    iput-object p2, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->Z:[I

    new-array p2, v3, [Ljava/lang/String;

    iput-object p2, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->k0:[Ljava/lang/String;

    iput v1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->u0:I

    new-array p2, v4, [Lnet/sf/saxon/om/NamespaceMap;

    iput-object p2, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->v0:[Lnet/sf/saxon/om/NamespaceMap;

    new-instance p2, Lnet/sf/saxon/str/LargeTextBuffer;

    invoke-direct {p2}, Lnet/sf/saxon/str/LargeTextBuffer;-><init>()V

    iput-object p2, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->j:Lnet/sf/saxon/str/LargeTextBuffer;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/tree/tiny/TinyTree;->setConfiguration(Lnet/sf/saxon/Configuration;)V

    return-void
.end method

.method public static declared-synchronized diagnosticDump(Lnet/sf/saxon/om/NodeInfo;)V
    .locals 5

    const-class v0, Lnet/sf/saxon/tree/tiny/TinyTree;

    monitor-enter v0

    .line 17
    :try_start_0
    instance-of v1, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    if-eqz v1, :cond_0

    .line 18
    move-object v1, p0

    check-cast v1, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    iget-object v1, v1, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    .line 19
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tree containing node "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    iget p0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v1}, Lnet/sf/saxon/tree/tiny/TinyTree;->diagnosticDump()V

    goto :goto_0

    .line 21
    :cond_0
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Node is not in a TinyTree"

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static r(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "        "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x8

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lnet/sf/saxon/om/NodeInfo;IILnet/sf/saxon/type/SimpleType;Ljava/lang/String;I)V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/sf/saxon/tree/tiny/TinyTree;->g(I)V

    iget-object v1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->Q:[I

    iget v2, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->O:I

    aput p2, v1, v2

    iget-object v1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->Z:[I

    aput p3, v1, v2

    iget-object v1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->k0:[Ljava/lang/String;

    invoke-virtual {p5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {p4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyTree;->p()V

    :cond_0
    iget-object v1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->t0:[Lnet/sf/saxon/type/SimpleType;

    if-eqz v1, :cond_1

    iget v2, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->O:I

    aput-object p4, v1, v2

    :cond_1
    iget-object v1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->o:[I

    aget v2, v1, p2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    iget v2, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->O:I

    aput v2, v1, p2

    :cond_2
    instance-of p1, p1, Lnet/sf/saxon/tree/tiny/TinyDocumentImpl;

    if-eqz p1, :cond_e

    const/16 p1, 0x800

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p6, p1}, Lnet/sf/saxon/event/ReceiverOption;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_3

    :goto_0
    move p1, v0

    goto :goto_1

    :cond_3
    const p1, 0xfffff

    and-int/2addr p1, p3

    const/16 p3, 0x184

    if-ne p1, p3, :cond_4

    goto :goto_0

    :cond_4
    invoke-interface {p4}, Lnet/sf/saxon/type/SchemaType;->isIdType()Z

    move-result p1
    :try_end_0
    .catch Lnet/sf/saxon/type/MissingComponentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_5

    goto :goto_0

    :catch_0
    :cond_5
    move p1, v1

    :goto_1
    if-eqz p1, :cond_7

    invoke-static {p5}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->k0:[Ljava/lang/String;

    iget v2, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->O:I

    aput-object p1, p3, v2

    invoke-static {p1}, Lnet/sf/saxon/om/NameChecker;->isValidNCName(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-virtual {p0, p2}, Lnet/sf/saxon/tree/tiny/TinyTree;->getNode(I)Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lnet/sf/saxon/tree/tiny/TinyTree;->s(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->t0:[Lnet/sf/saxon/type/SimpleType;

    if-eqz p1, :cond_7

    iget p2, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->O:I

    sget-object p3, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    aput-object p3, p1, p2

    :cond_7
    :goto_2
    const/16 p1, 0x1000

    :try_start_1
    invoke-static {p6, p1}, Lnet/sf/saxon/event/ReceiverOption;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_3

    :cond_8
    sget-object p1, Lnet/sf/saxon/type/BuiltInAtomicType;->IDREF:Lnet/sf/saxon/type/BuiltInAtomicType;

    if-eq p4, p1, :cond_b

    sget-object p1, Lnet/sf/saxon/type/BuiltInListType;->IDREFS:Lnet/sf/saxon/type/BuiltInListType;

    if-ne p4, p1, :cond_9

    goto :goto_3

    :cond_9
    invoke-interface {p4}, Lnet/sf/saxon/type/SchemaType;->isIdRefType()Z

    move-result p1
    :try_end_1
    .catch Lnet/sf/saxon/type/MissingComponentException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz p1, :cond_c

    :try_start_2
    invoke-static {p5}, Lnet/sf/saxon/str/StringView;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/om/GenericTreeInfo;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/Configuration;->getConversionRules()Lnet/sf/saxon/lib/ConversionRules;

    move-result-object p2

    const/4 p3, 0x0

    invoke-interface {p4, p1, p3, p2}, Lnet/sf/saxon/type/SimpleType;->getTypedValue(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/om/NamespaceResolver;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/om/AtomicSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/value/AtomicValue;

    invoke-virtual {p2}, Lnet/sf/saxon/value/AtomicValue;->getItemType()Lnet/sf/saxon/type/AtomicType;

    move-result-object p2

    invoke-interface {p2}, Lnet/sf/saxon/type/AtomicType;->isIdRefType()Z

    move-result p2
    :try_end_2
    .catch Lnet/sf/saxon/type/ValidationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lnet/sf/saxon/type/MissingComponentException; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz p2, :cond_a

    :cond_b
    :goto_3
    move v1, v0

    :catch_1
    :cond_c
    if-eqz v1, :cond_e

    iget-object p1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->v:Lnet/sf/saxon/z/IntSet;

    if-nez p1, :cond_d

    new-instance p1, Lnet/sf/saxon/z/IntHashSet;

    invoke-direct {p1}, Lnet/sf/saxon/z/IntHashSet;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->v:Lnet/sf/saxon/z/IntSet;

    :cond_d
    iget-object p1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->v:Lnet/sf/saxon/z/IntSet;

    iget p2, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->O:I

    invoke-virtual {p1, p2}, Lnet/sf/saxon/z/IntSet;->add(I)Z

    :cond_e
    iget p1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->O:I

    add-int/2addr p1, v0

    iput p1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->O:I

    return-void
.end method

.method public addTextNodeCopy(II)I
    .locals 6

    const/4 v1, 0x3

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->o:[I

    aget v3, v0, p2

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->p:[I

    aget v4, v0, p2

    const/4 v5, -0x1

    move-object v0, p0

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lnet/sf/saxon/tree/tiny/TinyTree;->d(SIIII)I

    move-result p0

    return p0
.end method

.method public b(Lnet/sf/saxon/tree/tiny/TinyDocumentImpl;)I
    .locals 6

    invoke-virtual {p0, p1}, Lnet/sf/saxon/om/GenericTreeInfo;->setRootNode(Lnet/sf/saxon/om/NodeInfo;)V

    const/16 v1, 0x9

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lnet/sf/saxon/tree/tiny/TinyTree;->d(SIIII)I

    move-result p0

    return p0
.end method

.method public c(ILnet/sf/saxon/om/NamespaceMap;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->z0:Z

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->u0:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->v0:[Lnet/sf/saxon/om/NamespaceMap;

    aget-object v2, v2, v1

    invoke-virtual {v2, p2}, Lnet/sf/saxon/om/NamespaceMap;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->p:[I

    aput v1, p0, p1

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lnet/sf/saxon/tree/tiny/TinyTree;->h(I)V

    iget-object v1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->v0:[Lnet/sf/saxon/om/NamespaceMap;

    iget v2, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->u0:I

    aput-object p2, v1, v2

    iget-object p2, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->p:[I

    aput v2, p2, p1

    add-int/2addr v2, v0

    iput v2, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->u0:I

    return-void
.end method

.method public d(SIIII)I
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/tree/tiny/TinyTree;->i(SI)V

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->nodeKind:[B

    iget v1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->l:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    iget-object p1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->m:[S

    int-to-short p2, p2

    aput-short p2, p1, v1

    iget-object p1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->o:[I

    aput p3, p1, v1

    iget-object p1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->p:[I

    aput p4, p1, v1

    iget-object p1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->q:[I

    aput p5, p1, v1

    iget-object p1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->n:[I

    const/4 p2, -0x1

    aput p2, p1, v1

    iget-object p1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->s:[Lnet/sf/saxon/type/SchemaType;

    if-eqz p1, :cond_0

    invoke-static {}, Lnet/sf/saxon/type/Untyped;->getInstance()Lnet/sf/saxon/type/Untyped;

    move-result-object p2

    aput-object p2, p1, v1

    :cond_0
    iget p1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->l:I

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/om/GenericTreeInfo;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getDocumentNumberAllocator()Lnet/sf/saxon/tree/util/DocumentNumberAllocator;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/tree/util/DocumentNumberAllocator;->allocateDocumentNumber()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/om/GenericTreeInfo;->setDocumentNumber(J)V

    :cond_1
    iget p1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->l:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->l:I

    return p1
.end method

.method public diagnosticDump()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyTree;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v0

    .line 2
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "    node    kind   depth    next   alpha    beta    name    type"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    .line 3
    :goto_0
    iget v3, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->l:I

    if-ge v2, v3, :cond_1

    .line 4
    iget-object v3, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->q:[I

    aget v3, v3, v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 5
    :try_start_0
    invoke-virtual {v0, v3}, Lnet/sf/saxon/om/NamePool;->getEQName(I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 6
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->q:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    const-string v3, ""

    .line 7
    :goto_1
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lnet/sf/saxon/tree/tiny/TinyTree;->r(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->nodeKind:[B

    aget-byte v6, v6, v2

    invoke-static {v6}, Lnet/sf/saxon/tree/tiny/TinyTree;->r(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->m:[S

    aget-short v6, v6, v2

    invoke-static {v6}, Lnet/sf/saxon/tree/tiny/TinyTree;->r(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->n:[I

    aget v6, v6, v2

    invoke-static {v6}, Lnet/sf/saxon/tree/tiny/TinyTree;->r(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->o:[I

    aget v6, v6, v2

    .line 8
    invoke-static {v6}, Lnet/sf/saxon/tree/tiny/TinyTree;->r(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->p:[I

    aget v6, v6, v2

    invoke-static {v6}, Lnet/sf/saxon/tree/tiny/TinyTree;->r(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->q:[I

    aget v6, v6, v2

    invoke-static {v6}, Lnet/sf/saxon/tree/tiny/TinyTree;->r(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p0, v2}, Lnet/sf/saxon/tree/tiny/TinyTree;->getTypeAnnotation(I)I

    move-result v6

    invoke-static {v6}, Lnet/sf/saxon/tree/tiny/TinyTree;->r(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 11
    :cond_1
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "    attr  parent    name    value"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v1

    .line 12
    :goto_2
    iget v2, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->O:I

    if-ge v0, v2, :cond_2

    .line 13
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lnet/sf/saxon/tree/tiny/TinyTree;->r(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->Q:[I

    aget v4, v4, v0

    invoke-static {v4}, Lnet/sf/saxon/tree/tiny/TinyTree;->r(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->Z:[I

    aget v4, v4, v0

    invoke-static {v4}, Lnet/sf/saxon/tree/tiny/TinyTree;->r(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->k0:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 14
    :cond_2
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "      ns  parent  prefix     uri"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 15
    :goto_3
    iget v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->u0:I

    if-ge v1, v0, :cond_3

    .line 16
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lnet/sf/saxon/tree/tiny/TinyTree;->r(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->v0:[Lnet/sf/saxon/om/NamespaceMap;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public e(Lnet/sf/saxon/str/UnicodeString;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->j:Lnet/sf/saxon/str/LargeTextBuffer;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/str/LargeTextBuffer;->appendUnicodeString(Lnet/sf/saxon/str/UnicodeString;)V

    return-void
.end method

.method public f(Lnet/sf/saxon/tree/tiny/Statistics;)V
    .locals 4

    iget v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->l:I

    mul-int/lit8 v1, v0, 0x3

    iget-object v2, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->nodeKind:[B

    array-length v3, v2

    if-lt v1, v3, :cond_0

    array-length v1, v2

    sub-int/2addr v1, v0

    const/16 v3, 0x4e20

    if-le v1, v3, :cond_2

    :cond_0
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->nodeKind:[B

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->n:[I

    iget v1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->l:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->n:[I

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->m:[S

    iget v1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->l:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->m:[S

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->o:[I

    iget v1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->l:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->o:[I

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->p:[I

    iget v1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->l:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->p:[I

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->q:[I

    iget v1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->l:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->q:[I

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->s:[Lnet/sf/saxon/type/SchemaType;

    if-eqz v0, :cond_1

    iget v1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->l:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sf/saxon/type/SchemaType;

    iput-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->s:[Lnet/sf/saxon/type/SchemaType;

    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->w0:[I

    if-eqz v0, :cond_2

    iget v1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->l:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->w0:[I

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->x0:[I

    iget v1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->l:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->x0:[I

    :cond_2
    iget v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->O:I

    mul-int/lit8 v1, v0, 0x3

    iget-object v2, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->Q:[I

    array-length v3, v2

    if-lt v1, v3, :cond_3

    array-length v1, v2

    sub-int/2addr v1, v0

    const/16 v3, 0x3e8

    if-le v1, v3, :cond_5

    :cond_3
    if-nez v0, :cond_4

    sget-object v0, Lnet/sf/saxon/z/IntArraySet;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->Q:[I

    iput-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->Z:[I

    sget-object v0, Lnet/sf/saxon/tree/tiny/TinyTree;->H0:[Ljava/lang/String;

    iput-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->k0:[Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->t0:[Lnet/sf/saxon/type/SimpleType;

    goto :goto_0

    :cond_4
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->Q:[I

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->Z:[I

    iget v1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->O:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->Z:[I

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->k0:[Ljava/lang/String;

    iget v1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->O:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->k0:[Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->t0:[Lnet/sf/saxon/type/SimpleType;

    if-eqz v0, :cond_5

    iget v1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->O:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sf/saxon/type/SimpleType;

    iput-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->t0:[Lnet/sf/saxon/type/SimpleType;

    :cond_5
    iget v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->u0:I

    mul-int/lit8 v1, v0, 0x3

    iget-object v2, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->v0:[Lnet/sf/saxon/om/NamespaceMap;

    array-length v3, v2

    if-ge v1, v3, :cond_6

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sf/saxon/om/NamespaceMap;

    iput-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->v0:[Lnet/sf/saxon/om/NamespaceMap;

    :cond_6
    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->A0:Lnet/sf/saxon/om/PrefixPool;

    invoke-virtual {v0}, Lnet/sf/saxon/om/PrefixPool;->condense()V

    iget v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->l:I

    iget v1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->O:I

    iget v2, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->u0:I

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->j:Lnet/sf/saxon/str/LargeTextBuffer;

    invoke-virtual {p0}, Lnet/sf/saxon/str/LargeTextBuffer;->length()I

    move-result p0

    invoke-virtual {p1, v0, v1, v2, p0}, Lnet/sf/saxon/tree/tiny/Statistics;->updateStatistics(IIII)V

    return-void
.end method

.method public final g(I)V
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->Q:[I

    array-length v0, v0

    iget v1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->O:I

    add-int v2, v1, p1

    if-ge v0, v2, :cond_2

    add-int v0, v1, p1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 v0, p1, 0xa

    :cond_0
    iget-object p1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->Q:[I

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->Q:[I

    iget-object p1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->Z:[I

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->Z:[I

    iget-object p1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->k0:[Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->k0:[Ljava/lang/String;

    iget-object p1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->t0:[Lnet/sf/saxon/type/SimpleType;

    if-eqz p1, :cond_1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lnet/sf/saxon/type/SimpleType;

    iput-object p1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->t0:[Lnet/sf/saxon/type/SimpleType;

    :cond_1
    iget-object p1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->q0:[Lnet/sf/saxon/om/AtomicSequence;

    if-eqz p1, :cond_2

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lnet/sf/saxon/om/AtomicSequence;

    iput-object p1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->q0:[Lnet/sf/saxon/om/AtomicSequence;

    :cond_2
    return-void
.end method

.method public getAlphaArray()[I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->o:[I

    return-object p0
.end method

.method public getAttributeNameCodeArray()[I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->Z:[I

    return-object p0
.end method

.method public getAttributeParentArray()[I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->Q:[I

    return-object p0
.end method

.method public getAttributeTypeArray()[Lnet/sf/saxon/type/SimpleType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->t0:[Lnet/sf/saxon/type/SimpleType;

    return-object p0
.end method

.method public getAttributeValueArray()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->k0:[Ljava/lang/String;

    return-object p0
.end method

.method public getBetaArray()[I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->p:[I

    return-object p0
.end method

.method public getCharacterBuffer()Lnet/sf/saxon/str/LargeTextBuffer;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->j:Lnet/sf/saxon/str/LargeTextBuffer;

    return-object p0
.end method

.method public getColumnNumber(I)I
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->x0:[I

    if-eqz v0, :cond_1

    :goto_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->x0:[I

    aget v0, v0, p1

    if-lez v0, :cond_0

    return v0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getCommentBuffer()Lnet/sf/saxon/str/UnicodeString;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->k:Lnet/sf/saxon/str/UnicodeString;

    return-object p0
.end method

.method public getCopiedFrom()Lnet/sf/saxon/om/NodeInfo;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->E0:Lnet/sf/saxon/om/NodeInfo;

    return-object p0
.end method

.method public getFingerprint(I)I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->q:[I

    aget p0, p0, p1

    const/4 p1, -0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0xfffff

    and-int/2addr p1, p0

    :goto_0
    return p1
.end method

.method public getLineNumber(I)I
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->w0:[I

    if-eqz v0, :cond_1

    :goto_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->w0:[I

    aget v0, v0, p1

    if-lez v0, :cond_0

    return v0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public declared-synchronized getLocalNameIndex()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/sf/saxon/z/IntSet;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->J:Ljava/util/Map;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->J:Ljava/util/Map;

    new-instance v0, Lnet/sf/saxon/z/IntHashSet;

    invoke-direct {v0}, Lnet/sf/saxon/z/IntHashSet;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->l:I

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->nodeKind:[B

    aget-byte v2, v2, v1

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->q:[I

    aget v2, v2, v1

    const v3, 0xfffff

    and-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lnet/sf/saxon/z/IntHashSet;->contains(I)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyTree;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v3

    invoke-virtual {v3, v2}, Lnet/sf/saxon/om/NamePool;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2}, Lnet/sf/saxon/z/IntHashSet;->add(I)Z

    iget-object v4, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->J:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/z/IntSet;

    if-nez v4, :cond_0

    iget-object v4, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->J:Ljava/util/Map;

    new-instance v5, Lnet/sf/saxon/z/IntSingletonSet;

    invoke-direct {v5, v2}, Lnet/sf/saxon/z/IntSingletonSet;-><init>(I)V

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_0
    invoke-virtual {v4}, Lnet/sf/saxon/z/IntSet;->isMutable()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Lnet/sf/saxon/z/IntSet;->mutableCopy()Lnet/sf/saxon/z/IntSet;

    move-result-object v4

    :goto_1
    invoke-virtual {v4, v2}, Lnet/sf/saxon/z/IntSet;->add(I)Z

    iget-object v2, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->J:Ljava/util/Map;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->J:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNameCode(I)I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->q:[I

    aget p0, p0, p1

    return p0
.end method

.method public getNameCodeArray()[I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->q:[I

    return-object p0
.end method

.method public getNamePool()Lnet/sf/saxon/om/NamePool;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/om/GenericTreeInfo;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object p0

    return-object p0
.end method

.method public getNamespaceBindings()[Lnet/sf/saxon/om/NamespaceBinding;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getNamespaceMaps()[Lnet/sf/saxon/om/NamespaceMap;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->v0:[Lnet/sf/saxon/om/NamespaceMap;

    return-object p0
.end method

.method public getNamespaceParentArray()[I
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getNextPointerArray()[I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->n:[I

    return-object p0
.end method

.method public bridge synthetic getNode(I)Lnet/sf/saxon/om/NodeInfo;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/tree/tiny/TinyTree;->getNode(I)Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    move-result-object p0

    return-object p0
.end method

.method public final getNode(I)Lnet/sf/saxon/tree/tiny/TinyNodeImpl;
    .locals 3

    .line 2
    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->nodeKind:[B

    aget-byte v0, v0, p1

    int-to-short v0, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    const/16 v1, 0x11

    if-eq v0, v1, :cond_7

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    const/4 v1, 0x4

    if-eq v0, v1, :cond_5

    const/4 v1, 0x7

    if-eq v0, v1, :cond_4

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    .line 3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown node kind "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->nodeKind:[B

    aget-byte p0, p0, p1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Attempting to treat a parent pointer as a node"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Attempting to treat a stopper entry as a node"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyTree;->getRootNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/tree/tiny/TinyDocumentImpl;

    return-object p0

    .line 7
    :cond_3
    new-instance v0, Lcom/sunia/HTREnginev2/rin;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/rin;-><init>(Lnet/sf/saxon/tree/tiny/TinyTree;I)V

    return-object v0

    .line 8
    :cond_4
    new-instance v0, Lcom/sunia/HTREnginev2/tin;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/tin;-><init>(Lnet/sf/saxon/tree/tiny/TinyTree;I)V

    return-object v0

    .line 9
    :cond_5
    new-instance v0, Lnet/sf/saxon/tree/tiny/WhitespaceTextImpl;

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/tree/tiny/WhitespaceTextImpl;-><init>(Lnet/sf/saxon/tree/tiny/TinyTree;I)V

    return-object v0

    .line 10
    :cond_6
    new-instance v0, Lnet/sf/saxon/tree/tiny/TinyTextImpl;

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/tree/tiny/TinyTextImpl;-><init>(Lnet/sf/saxon/tree/tiny/TinyTree;I)V

    return-object v0

    .line 11
    :cond_7
    new-instance v0, Lnet/sf/saxon/tree/tiny/TinyTextualElement;

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/tree/tiny/TinyTextualElement;-><init>(Lnet/sf/saxon/tree/tiny/TinyTree;I)V

    return-object v0

    .line 12
    :cond_8
    new-instance v0, Lnet/sf/saxon/tree/tiny/TinyElementImpl;

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/tree/tiny/TinyElementImpl;-><init>(Lnet/sf/saxon/tree/tiny/TinyTree;I)V

    return-object v0
.end method

.method public getNodeDepthArray()[S
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->m:[S

    return-object p0
.end method

.method public getNodeKind(I)I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->nodeKind:[B

    aget-byte p0, p0, p1

    const/4 p1, 0x4

    if-ne p0, p1, :cond_0

    const/4 p0, 0x3

    :cond_0
    return p0
.end method

.method public getNodeKindArray()[B
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->nodeKind:[B

    return-object p0
.end method

.method public getNumberOfAttributes()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->O:I

    return p0
.end method

.method public getNumberOfNamespaces()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->u0:I

    return p0
.end method

.method public getNumberOfNodes()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->l:I

    return p0
.end method

.method public getPrefix(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->q:[I

    aget p1, v0, p1

    shr-int/lit8 p1, p1, 0x14

    if-gtz p1, :cond_1

    if-nez p1, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0

    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->A0:Lnet/sf/saxon/om/PrefixPool;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/om/PrefixPool;->getPrefix(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPrefixPool()Lnet/sf/saxon/om/PrefixPool;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->A0:Lnet/sf/saxon/om/PrefixPool;

    return-object p0
.end method

.method public getRootNode()Lnet/sf/saxon/om/NodeInfo;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/tree/tiny/TinyTree;->getNodeKind(I)I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->B0:Lnet/sf/saxon/tree/tiny/TinyDocumentImpl;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lnet/sf/saxon/tree/tiny/TinyDocumentImpl;

    invoke-direct {v0, p0}, Lnet/sf/saxon/tree/tiny/TinyDocumentImpl;-><init>(Lnet/sf/saxon/tree/tiny/TinyTree;)V

    iput-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->B0:Lnet/sf/saxon/tree/tiny/TinyDocumentImpl;

    return-object v0

    :cond_1
    invoke-virtual {p0, v0}, Lnet/sf/saxon/tree/tiny/TinyTree;->getNode(I)Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    move-result-object p0

    return-object p0
.end method

.method public getSchemaType(I)Lnet/sf/saxon/type/SchemaType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->s:[Lnet/sf/saxon/type/SchemaType;

    if-nez p0, :cond_0

    invoke-static {}, Lnet/sf/saxon/type/Untyped;->getInstance()Lnet/sf/saxon/type/Untyped;

    move-result-object p0

    return-object p0

    :cond_0
    aget-object p0, p0, p1

    return-object p0
.end method

.method public getSystemId(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->y0:Lnet/sf/saxon/tree/linked/SystemIdMap;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lnet/sf/saxon/tree/linked/SystemIdMap;->getSystemId(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTypeAnnotation(I)I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->s:[Lnet/sf/saxon/type/SchemaType;

    if-nez p0, :cond_0

    const/16 p0, 0x276

    return p0

    :cond_0
    aget-object p0, p0, p1

    invoke-interface {p0}, Lnet/sf/saxon/type/SchemaType;->getFingerprint()I

    move-result p0

    return p0
.end method

.method public getTypeArray()[Lnet/sf/saxon/type/SchemaType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->s:[Lnet/sf/saxon/type/SchemaType;

    return-object p0
.end method

.method public getTypedValueOfAttribute(Lnet/sf/saxon/tree/tiny/TinyAttributeImpl;I)Lnet/sf/saxon/om/AtomicSequence;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->t0:[Lnet/sf/saxon/type/SimpleType;

    if-nez v0, :cond_0

    new-instance p1, Lnet/sf/saxon/value/StringValue;

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->k0:[Ljava/lang/String;

    aget-object p0, p0, p2

    sget-object p2, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-direct {p1, p0, p2}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;Lnet/sf/saxon/type/AtomicType;)V

    return-object p1

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->q0:[Lnet/sf/saxon/om/AtomicSequence;

    if-eqz v0, :cond_2

    aget-object v0, v0, p2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    invoke-virtual {p0, p2}, Lnet/sf/saxon/tree/tiny/TinyTree;->n(I)Lnet/sf/saxon/type/SimpleType;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance p1, Lnet/sf/saxon/value/StringValue;

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->k0:[Ljava/lang/String;

    aget-object p0, p0, p2

    invoke-direct {p1, p0, v1}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;Lnet/sf/saxon/type/AtomicType;)V

    return-object p1

    :cond_3
    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance p1, Lnet/sf/saxon/value/StringValue;

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->k0:[Ljava/lang/String;

    aget-object p0, p0, p2

    invoke-direct {p1, p0}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_4
    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_URI:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance p1, Lnet/sf/saxon/value/AnyURIValue;

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->k0:[Ljava/lang/String;

    aget-object p0, p0, p2

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/value/AnyURIValue;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_5
    if-nez p1, :cond_6

    new-instance p1, Lnet/sf/saxon/tree/tiny/TinyAttributeImpl;

    invoke-direct {p1, p0, p2}, Lnet/sf/saxon/tree/tiny/TinyAttributeImpl;-><init>(Lnet/sf/saxon/tree/tiny/TinyTree;I)V

    :cond_6
    invoke-interface {v0, p1}, Lnet/sf/saxon/type/SchemaType;->atomize(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/om/AtomicSequence;

    move-result-object p1

    iget-boolean v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->z:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->q0:[Lnet/sf/saxon/om/AtomicSequence;

    if-nez v0, :cond_7

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->Q:[I

    array-length v0, v0

    new-array v0, v0, [Lnet/sf/saxon/om/AtomicSequence;

    iput-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->q0:[Lnet/sf/saxon/om/AtomicSequence;

    :cond_7
    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->q0:[Lnet/sf/saxon/om/AtomicSequence;

    aput-object p1, p0, p2

    :cond_8
    return-object p1
.end method

.method public getTypedValueOfElement(I)Lnet/sf/saxon/om/AtomicSequence;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->t:[Lnet/sf/saxon/om/AtomicSequence;

    if-eqz v0, :cond_1

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    .line 17
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lnet/sf/saxon/tree/tiny/TinyTree;->getSchemaType(I)Lnet/sf/saxon/type/SchemaType;

    move-result-object v0

    .line 18
    invoke-interface {v0}, Lnet/sf/saxon/type/SchemaType;->getFingerprint()I

    move-result v1

    const/16 v2, 0x277

    if-eq v1, v2, :cond_8

    const/16 v2, 0x276

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    const/16 v2, 0x201

    if-ne v1, v2, :cond_3

    .line 19
    new-instance v0, Lnet/sf/saxon/value/StringValue;

    invoke-static {p0, p1}, Lnet/sf/saxon/tree/tiny/TinyParentNodeImpl;->getStringValue(Lnet/sf/saxon/tree/tiny/TinyTree;I)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/value/StringValue;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    return-object v0

    :cond_3
    const/16 v2, 0x211

    if-ne v1, v2, :cond_4

    .line 20
    new-instance v0, Lnet/sf/saxon/value/AnyURIValue;

    invoke-static {p0, p1}, Lnet/sf/saxon/tree/tiny/TinyParentNodeImpl;->getStringValue(Lnet/sf/saxon/tree/tiny/TinyTree;I)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/value/AnyURIValue;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    return-object v0

    :cond_4
    const/16 v2, 0x230

    if-ne v1, v2, :cond_5

    .line 21
    new-instance v0, Lnet/sf/saxon/value/StringValue;

    invoke-static {p0, p1}, Lnet/sf/saxon/tree/tiny/TinyParentNodeImpl;->getStringValue(Lnet/sf/saxon/tree/tiny/TinyTree;I)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    sget-object p1, Lnet/sf/saxon/type/BuiltInAtomicType;->ID:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/value/StringValue;-><init>(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/type/AtomicType;)V

    return-object v0

    .line 22
    :cond_5
    invoke-virtual {p0, p1}, Lnet/sf/saxon/tree/tiny/TinyTree;->getNode(I)Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    move-result-object v1

    .line 23
    invoke-interface {v0, v1}, Lnet/sf/saxon/type/SchemaType;->atomize(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/om/AtomicSequence;

    move-result-object v0

    .line 24
    iget-boolean v1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->z:Z

    if-eqz v1, :cond_7

    .line 25
    iget-object v1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->t:[Lnet/sf/saxon/om/AtomicSequence;

    if-nez v1, :cond_6

    .line 26
    iget-object v1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->nodeKind:[B

    array-length v1, v1

    new-array v1, v1, [Lnet/sf/saxon/om/AtomicSequence;

    iput-object v1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->t:[Lnet/sf/saxon/om/AtomicSequence;

    .line 27
    :cond_6
    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->t:[Lnet/sf/saxon/om/AtomicSequence;

    aput-object v0, p0, p1

    :cond_7
    return-object v0

    .line 28
    :cond_8
    :goto_1
    invoke-static {p0, p1}, Lnet/sf/saxon/tree/tiny/TinyParentNodeImpl;->getStringValue(Lnet/sf/saxon/tree/tiny/TinyTree;I)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/value/StringValue;->makeUntypedAtomic(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/value/StringValue;

    move-result-object p0

    return-object p0
.end method

.method public getTypedValueOfElement(Lnet/sf/saxon/tree/tiny/TinyElementImpl;)Lnet/sf/saxon/om/AtomicSequence;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    iget v0, p1, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    .line 2
    iget-object v1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->t:[Lnet/sf/saxon/om/AtomicSequence;

    if-eqz v1, :cond_1

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v1

    .line 3
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lnet/sf/saxon/tree/tiny/TinyTree;->getSchemaType(I)Lnet/sf/saxon/type/SchemaType;

    move-result-object v1

    .line 4
    invoke-interface {v1}, Lnet/sf/saxon/type/SchemaType;->getFingerprint()I

    move-result v2

    const/16 v3, 0x276

    if-eq v2, v3, :cond_7

    const/16 v3, 0x277

    if-eq v2, v3, :cond_7

    const/16 v3, 0x23c

    if-ne v2, v3, :cond_2

    goto :goto_1

    :cond_2
    const/16 v3, 0x201

    if-ne v2, v3, :cond_3

    .line 5
    invoke-static {p0, v0}, Lnet/sf/saxon/tree/tiny/TinyParentNodeImpl;->getStringValue(Lnet/sf/saxon/tree/tiny/TinyTree;I)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    .line 6
    new-instance p1, Lnet/sf/saxon/value/StringValue;

    invoke-direct {p1, p0}, Lnet/sf/saxon/value/StringValue;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    return-object p1

    :cond_3
    const/16 v3, 0x211

    if-ne v2, v3, :cond_4

    .line 7
    invoke-static {p0, v0}, Lnet/sf/saxon/tree/tiny/TinyParentNodeImpl;->getStringValue(Lnet/sf/saxon/tree/tiny/TinyTree;I)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    .line 8
    new-instance p1, Lnet/sf/saxon/value/AnyURIValue;

    invoke-direct {p1, p0}, Lnet/sf/saxon/value/AnyURIValue;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    return-object p1

    .line 9
    :cond_4
    invoke-interface {v1, p1}, Lnet/sf/saxon/type/SchemaType;->atomize(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/om/AtomicSequence;

    move-result-object p1

    .line 10
    iget-boolean v1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->z:Z

    if-eqz v1, :cond_6

    .line 11
    iget-object v1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->t:[Lnet/sf/saxon/om/AtomicSequence;

    if-nez v1, :cond_5

    .line 12
    iget-object v1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->nodeKind:[B

    array-length v1, v1

    new-array v1, v1, [Lnet/sf/saxon/om/AtomicSequence;

    iput-object v1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->t:[Lnet/sf/saxon/om/AtomicSequence;

    .line 13
    :cond_5
    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->t:[Lnet/sf/saxon/om/AtomicSequence;

    aput-object p1, p0, v0

    :cond_6
    return-object p1

    .line 14
    :cond_7
    :goto_1
    invoke-static {p0, v0}, Lnet/sf/saxon/tree/tiny/TinyParentNodeImpl;->getStringValue(Lnet/sf/saxon/tree/tiny/TinyTree;I)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    .line 15
    invoke-static {p0}, Lnet/sf/saxon/value/StringValue;->makeUntypedAtomic(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/value/StringValue;

    move-result-object p0

    return-object p0
.end method

.method public getUnparsedEntity(Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->D0:Ljava/util/HashMap;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getUnparsedEntityNames()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->D0:Ljava/util/HashMap;

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public final h(I)V
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->v0:[Lnet/sf/saxon/om/NamespaceMap;

    array-length v0, v0

    iget v1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->u0:I

    add-int v2, v1, p1

    if-ge v0, v2, :cond_1

    mul-int/lit8 v0, v1, 0x2

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0xa

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->v0:[Lnet/sf/saxon/om/NamespaceMap;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lnet/sf/saxon/om/NamespaceMap;

    iput-object p1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->v0:[Lnet/sf/saxon/om/NamespaceMap;

    :cond_1
    return-void
.end method

.method public hasXmlSpacePreserveAttribute()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->O:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->Z:[I

    aget v2, v2, v1

    const v3, 0xfffff

    and-int/2addr v2, v3

    const/16 v3, 0x182

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->k0:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "preserve"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final i(SI)V
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->nodeKind:[B

    array-length v0, v0

    iget v1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->l:I

    add-int v2, v1, p2

    if-ge v0, v2, :cond_3

    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    mul-int/lit8 p1, v1, 0x2

    add-int/2addr v1, p2

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_0
    iget-object p1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->nodeKind:[B

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->nodeKind:[B

    iget-object p1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->n:[I

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->n:[I

    iget-object p1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->m:[S

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->m:[S

    iget-object p1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->o:[I

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->o:[I

    iget-object p1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->p:[I

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->p:[I

    iget-object p1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->q:[I

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->q:[I

    iget-object p1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->s:[Lnet/sf/saxon/type/SchemaType;

    if-eqz p1, :cond_1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lnet/sf/saxon/type/SchemaType;

    iput-object p1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->s:[Lnet/sf/saxon/type/SchemaType;

    :cond_1
    iget-object p1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->t:[Lnet/sf/saxon/om/AtomicSequence;

    if-eqz p1, :cond_2

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lnet/sf/saxon/om/AtomicSequence;

    iput-object p1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->t:[Lnet/sf/saxon/om/AtomicSequence;

    :cond_2
    iget-object p1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->w0:[I

    if-eqz p1, :cond_3

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->w0:[I

    iget-object p1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->x0:[I

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->x0:[I

    :cond_3
    return-void
.end method

.method public indexIDElement(Lnet/sf/saxon/om/NodeInfo;I)V
    .locals 2

    invoke-static {p0, p2}, Lnet/sf/saxon/tree/tiny/TinyParentNodeImpl;->getStringValue(Lnet/sf/saxon/tree/tiny/TinyTree;I)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeString;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/value/Whitespace;->trim(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result p1

    const/16 v1, 0x9

    if-ne p1, v1, :cond_0

    invoke-static {v0}, Lnet/sf/saxon/om/NameChecker;->isValidNCName(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lnet/sf/saxon/tree/tiny/TinyTree;->getNode(I)Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/tree/tiny/TinyTree;->s(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public isDefaultedAttribute(I)Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->x:Lnet/sf/saxon/z/IntSet;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/z/IntSet;->contains(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isIdAttribute(I)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->t0:[Lnet/sf/saxon/type/SimpleType;

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/tree/tiny/TinyTree;->n(I)Lnet/sf/saxon/type/SimpleType;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/type/SchemaType;->isIdType()Z

    move-result p0
    :try_end_0
    .catch Lnet/sf/saxon/type/MissingComponentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public isIdElement(I)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lnet/sf/saxon/tree/tiny/TinyTree;->getSchemaType(I)Lnet/sf/saxon/type/SchemaType;

    move-result-object v1

    invoke-interface {v1}, Lnet/sf/saxon/type/SchemaType;->isIdType()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/tree/tiny/TinyTree;->getTypedValueOfElement(I)Lnet/sf/saxon/om/AtomicSequence;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/AtomicSequence;->getLength()I

    move-result p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    move v0, p1

    :catch_0
    :cond_0
    return v0
.end method

.method public isIdrefAttribute(I)Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->v:Lnet/sf/saxon/z/IntSet;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/z/IntSet;->contains(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isIdrefElement(I)Z
    .locals 4

    invoke-virtual {p0, p1}, Lnet/sf/saxon/tree/tiny/TinyTree;->getSchemaType(I)Lnet/sf/saxon/type/SchemaType;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0}, Lnet/sf/saxon/type/SchemaType;->isIdRefType()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lnet/sf/saxon/type/BuiltInAtomicType;->IDREF:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/4 v3, 0x1

    if-eq v0, v2, :cond_2

    sget-object v2, Lnet/sf/saxon/type/BuiltInListType;->IDREFS:Lnet/sf/saxon/type/BuiltInListType;
    :try_end_0
    .catch Lnet/sf/saxon/type/MissingComponentException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/tree/tiny/TinyTree;->getTypedValueOfElement(I)Lnet/sf/saxon/om/AtomicSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/value/AtomicValue;

    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->getItemType()Lnet/sf/saxon/type/AtomicType;

    move-result-object p1

    invoke-interface {p1}, Lnet/sf/saxon/type/AtomicType;->isIdRefType()Z

    move-result p1
    :try_end_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lnet/sf/saxon/type/MissingComponentException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p1, :cond_1

    :cond_2
    :goto_0
    return v3

    :catch_0
    :cond_3
    return v1
.end method

.method public isNilled(I)Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->w:Lnet/sf/saxon/z/IntSet;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/z/IntSet;->contains(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTopWithinEntity(I)Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->y:Lnet/sf/saxon/z/IntSet;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/z/IntSet;->contains(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTyped()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->s:[Lnet/sf/saxon/type/SchemaType;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUsesNamespaces()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->z0:Z

    return p0
.end method

.method public j()V
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->r:[I

    if-eqz v0, :cond_0

    array-length v0, v0

    iget v1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->l:I

    if-ge v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyTree;->q()V

    :cond_1
    return-void
.end method

.method public k(I)Lnet/sf/saxon/value/AtomicValue;
    .locals 9

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->nodeKind:[B

    aget-byte v1, v0, p1

    int-to-short v1, v1

    const-wide v2, 0xffffffffL

    const/16 v4, 0x20

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-eq v1, v7, :cond_5

    if-eq v1, v6, :cond_4

    if-eq v1, v5, :cond_3

    const/4 v8, 0x7

    if-eq v1, v8, :cond_1

    const/16 v8, 0x8

    if-eq v1, v8, :cond_1

    const/16 v8, 0x9

    if-ne v1, v8, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unknown node kind"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->o:[I

    aget v0, v0, p1

    iget-object v1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->p:[I

    aget p1, v1, p1

    if-nez p1, :cond_2

    sget-object p0, Lnet/sf/saxon/value/StringValue;->ZERO_LENGTH_UNTYPED:Lnet/sf/saxon/value/StringValue;

    return-object p0

    :cond_2
    new-array v1, p1, [C

    new-instance v1, Lnet/sf/saxon/value/StringValue;

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->k:Lnet/sf/saxon/str/UnicodeString;

    int-to-long v2, v0

    add-int/2addr v0, p1

    int-to-long v4, v0

    invoke-virtual {p0, v2, v3, v4, v5}, Lnet/sf/saxon/str/UnicodeString;->substring(JJ)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-direct {v1, p0}, Lnet/sf/saxon/value/StringValue;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    return-object v1

    :cond_3
    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->o:[I

    aget v0, v0, p1

    int-to-long v0, v0

    shl-long/2addr v0, v4

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->p:[I

    aget p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    new-instance v0, Lnet/sf/saxon/str/CompressedWhitespace;

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/str/CompressedWhitespace;-><init>(J)V

    invoke-static {v0}, Lnet/sf/saxon/value/StringValue;->makeUntypedAtomic(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/value/StringValue;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance v0, Lnet/sf/saxon/value/StringValue;

    invoke-static {p0, p1}, Lnet/sf/saxon/tree/tiny/TinyTextImpl;->getStringValue(Lnet/sf/saxon/tree/tiny/TinyTree;I)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/value/StringValue;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    return-object v0

    :cond_5
    :goto_0
    iget-object v1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->m:[S

    aget-short v8, v1, p1

    add-int/2addr p1, v7

    aget-short v7, v1, p1

    if-gt v7, v8, :cond_6

    sget-object p0, Lnet/sf/saxon/value/StringValue;->ZERO_LENGTH_UNTYPED:Lnet/sf/saxon/value/StringValue;

    return-object p0

    :cond_6
    aget-byte v0, v0, p1

    if-ne v0, v6, :cond_7

    add-int/lit8 v7, p1, 0x1

    aget-short v7, v1, v7

    if-gt v7, v8, :cond_7

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->p:[I

    aget v0, v0, p1

    iget-object v1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->o:[I

    aget p1, v1, p1

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->j:Lnet/sf/saxon/str/LargeTextBuffer;

    add-int/2addr v0, p1

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/str/LargeTextBuffer;->substring(II)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/value/StringValue;->makeUntypedAtomic(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/value/StringValue;

    move-result-object p0

    return-object p0

    :cond_7
    if-ne v0, v5, :cond_8

    add-int/lit8 v0, p1, 0x1

    aget-short v0, v1, v0

    if-gt v0, v8, :cond_8

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->o:[I

    aget v0, v0, p1

    int-to-long v0, v0

    shl-long/2addr v0, v4

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->p:[I

    aget p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    new-instance v0, Lnet/sf/saxon/str/CompressedWhitespace;

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/str/CompressedWhitespace;-><init>(J)V

    invoke-static {v0}, Lnet/sf/saxon/value/StringValue;->makeUntypedAtomic(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/value/StringValue;

    move-result-object p0

    return-object p0

    :cond_8
    new-instance v0, Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-direct {v0}, Lnet/sf/saxon/str/UnicodeBuilder;-><init>()V

    :goto_1
    iget v1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->l:I

    if-ge p1, v1, :cond_b

    iget-object v1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->m:[S

    aget-short v1, v1, p1

    if-le v1, v8, :cond_b

    iget-object v1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->nodeKind:[B

    aget-byte v1, v1, p1

    if-ne v1, v6, :cond_9

    invoke-static {p0, p1}, Lnet/sf/saxon/tree/tiny/TinyTextImpl;->getStringValue(Lnet/sf/saxon/tree/tiny/TinyTree;I)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/str/UnicodeBuilder;->accept(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeBuilder;

    goto :goto_2

    :cond_9
    if-ne v1, v5, :cond_a

    invoke-static {p0, p1, v0}, Lnet/sf/saxon/tree/tiny/WhitespaceTextImpl;->appendStringValue(Lnet/sf/saxon/tree/tiny/TinyTree;ILnet/sf/saxon/str/UnicodeBuilder;)V

    :cond_a
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_b
    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v0, p0}, Lnet/sf/saxon/str/UnicodeBuilder;->toStringItem(Lnet/sf/saxon/type/AtomicType;)Lnet/sf/saxon/value/StringValue;

    move-result-object p0

    return-object p0
.end method

.method public l(I)I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->t0:[Lnet/sf/saxon/type/SimpleType;

    if-nez p0, :cond_0

    const/16 p0, 0x277

    return p0

    :cond_0
    aget-object p0, p0, p1

    invoke-interface {p0}, Lnet/sf/saxon/type/SchemaType;->getFingerprint()I

    move-result p0

    return p0
.end method

.method public m(I)Lnet/sf/saxon/tree/tiny/TinyAttributeImpl;
    .locals 1

    new-instance v0, Lnet/sf/saxon/tree/tiny/TinyAttributeImpl;

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/tree/tiny/TinyAttributeImpl;-><init>(Lnet/sf/saxon/tree/tiny/TinyTree;I)V

    return-object v0
.end method

.method public markDefaultedAttribute(I)V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->x:Lnet/sf/saxon/z/IntSet;

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/z/IntHashSet;

    invoke-direct {v0}, Lnet/sf/saxon/z/IntHashSet;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->x:Lnet/sf/saxon/z/IntSet;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->x:Lnet/sf/saxon/z/IntSet;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/z/IntSet;->add(I)Z

    return-void
.end method

.method public markTopWithinEntity(I)V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->y:Lnet/sf/saxon/z/IntSet;

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/z/IntHashSet;

    invoke-direct {v0}, Lnet/sf/saxon/z/IntHashSet;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->y:Lnet/sf/saxon/z/IntSet;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->y:Lnet/sf/saxon/z/IntSet;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/z/IntSet;->add(I)Z

    return-void
.end method

.method public n(I)Lnet/sf/saxon/type/SimpleType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->t0:[Lnet/sf/saxon/type/SimpleType;

    if-nez p0, :cond_0

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0

    :cond_0
    aget-object p0, p0, p1

    return-object p0
.end method

.method public o()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->G0:Ljava/lang/String;

    return-object p0
.end method

.method public final p()V
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->t0:[Lnet/sf/saxon/type/SimpleType;

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->Q:[I

    array-length v0, v0

    new-array v0, v0, [Lnet/sf/saxon/type/SimpleType;

    iput-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->t0:[Lnet/sf/saxon/type/SimpleType;

    iget p0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->O:I

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/4 v2, 0x0

    invoke-static {v0, v2, p0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final declared-synchronized q()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->l:I

    new-array v1, v0, [I

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v2}, Ljava/util/Arrays;->fill([IIII)V

    :goto_0
    iget v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->l:I

    if-ge v3, v0, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->n:[I

    aget v0, v0, v3

    if-le v0, v3, :cond_0

    aput v3, v1, v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->r:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public s(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->C0:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->C0:Ljava/util/HashMap;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->C0:Ljava/util/HashMap;

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public selectID(Ljava/lang/String;Z)Lnet/sf/saxon/om/NodeInfo;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->C0:Ljava/util/HashMap;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/om/NodeInfo;

    if-eqz p0, :cond_1

    if-eqz p2, :cond_1

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->isId()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public setConfiguration(Lnet/sf/saxon/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lnet/sf/saxon/om/GenericTreeInfo;->setConfiguration(Lnet/sf/saxon/Configuration;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lnet/sf/saxon/Configuration;->isLicensedFeature(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lnet/sf/saxon/lib/Feature;->USE_TYPED_VALUE_CACHE:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {p1, v1}, Lnet/sf/saxon/Configuration;->getBooleanProperty(Lnet/sf/saxon/lib/Feature;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->z:Z

    return-void
.end method

.method public setCopiedFrom(Lnet/sf/saxon/om/NodeInfo;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->E0:Lnet/sf/saxon/om/NodeInfo;

    return-void
.end method

.method public setLineNumbering()V
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->nodeKind:[B

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->w0:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->nodeKind:[B

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->x0:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method public setNilled(I)V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->w:Lnet/sf/saxon/z/IntSet;

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/z/IntHashSet;

    invoke-direct {v0}, Lnet/sf/saxon/z/IntHashSet;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->w:Lnet/sf/saxon/z/IntSet;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->w:Lnet/sf/saxon/z/IntSet;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/z/IntSet;->add(I)Z

    return-void
.end method

.method public showSize()V
    .locals 3

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tree size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " nodes, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->j:Lnet/sf/saxon/str/LargeTextBuffer;

    invoke-virtual {v2}, Lnet/sf/saxon/str/LargeTextBuffer;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " characters, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->O:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " attributes"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public t(ILnet/sf/saxon/type/SchemaType;)V
    .locals 4

    invoke-static {}, Lnet/sf/saxon/type/Untyped;->getInstance()Lnet/sf/saxon/type/Untyped;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->s:[Lnet/sf/saxon/type/SchemaType;

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->nodeKind:[B

    array-length v1, v0

    new-array v1, v1, [Lnet/sf/saxon/type/SchemaType;

    iput-object v1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->s:[Lnet/sf/saxon/type/SchemaType;

    array-length v0, v0

    invoke-static {}, Lnet/sf/saxon/type/Untyped;->getInstance()Lnet/sf/saxon/type/Untyped;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->s:[Lnet/sf/saxon/type/SchemaType;

    aput-object p2, p0, p1

    :cond_1
    return-void
.end method

.method public u(III)V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->w0:[I

    if-eqz v0, :cond_0

    aput p2, v0, p1

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->x0:[I

    aput p3, p0, p1

    :cond_0
    return-void
.end method

.method public v(ILjava/lang/String;)V
    .locals 1

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->y0:Lnet/sf/saxon/tree/linked/SystemIdMap;

    if-nez v0, :cond_1

    new-instance v0, Lnet/sf/saxon/tree/linked/SystemIdMap;

    invoke-direct {v0}, Lnet/sf/saxon/tree/linked/SystemIdMap;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->y0:Lnet/sf/saxon/tree/linked/SystemIdMap;

    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->y0:Lnet/sf/saxon/tree/linked/SystemIdMap;

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/tree/linked/SystemIdMap;->setSystemId(ILjava/lang/String;)V

    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->G0:Ljava/lang/String;

    return-void
.end method

.method public x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->D0:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->D0:Ljava/util/HashMap;

    :cond_0
    filled-new-array {p2, p3}, [Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->D0:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
