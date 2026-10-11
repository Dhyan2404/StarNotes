.class public Lnet/sf/saxon/type/AnyItemType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/type/ItemTypeWithSequenceTypeCache;


# static fields
.field public static final i:Lnet/sf/saxon/type/AnyItemType;


# instance fields
.field public e:Lnet/sf/saxon/value/SequenceType;

.field public f:Lnet/sf/saxon/value/SequenceType;

.field public g:Lnet/sf/saxon/value/SequenceType;

.field public h:Lnet/sf/saxon/value/SequenceType;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/type/AnyItemType;

    invoke-direct {v0}, Lnet/sf/saxon/type/AnyItemType;-><init>()V

    sput-object v0, Lnet/sf/saxon/type/AnyItemType;->i:Lnet/sf/saxon/type/AnyItemType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lnet/sf/saxon/type/AnyItemType;
    .locals 1

    sget-object v0, Lnet/sf/saxon/type/AnyItemType;->i:Lnet/sf/saxon/type/AnyItemType;

    return-object v0
.end method


# virtual methods
.method public getAtomizedItemType()Lnet/sf/saxon/type/AtomicType;
    .locals 0

    .line 2
    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0
.end method

.method public bridge synthetic getAtomizedItemType()Lnet/sf/saxon/type/PlainType;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/type/AnyItemType;->getAtomizedItemType()Lnet/sf/saxon/type/AtomicType;

    move-result-object p0

    return-object p0
.end method

.method public getBasicAlphaCode()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getDefaultPriority()D
    .locals 2

    const-wide/high16 v0, -0x4000000000000000L    # -2.0

    return-wide v0
.end method

.method public getGenre()Lnet/sf/saxon/om/Genre;
    .locals 0

    sget-object p0, Lnet/sf/saxon/om/Genre;->ANY:Lnet/sf/saxon/om/Genre;

    return-object p0
.end method

.method public getPrimitiveItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    return-object p0
.end method

.method public getPrimitiveType()I
    .locals 0

    const/16 p0, 0x58

    return p0
.end method

.method public getUType()Lnet/sf/saxon/type/UType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/type/UType;->ANY:Lnet/sf/saxon/type/UType;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    const p0, 0x240296d9

    return p0
.end method

.method public isAtomicType()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isAtomizable(Lnet/sf/saxon/type/TypeHierarchy;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isPlainType()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public one()Lnet/sf/saxon/value/SequenceType;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/type/AnyItemType;->e:Lnet/sf/saxon/value/SequenceType;

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/value/SequenceType;

    const/16 v1, 0x4000

    invoke-direct {v0, p0, v1}, Lnet/sf/saxon/value/SequenceType;-><init>(Lnet/sf/saxon/type/ItemType;I)V

    iput-object v0, p0, Lnet/sf/saxon/type/AnyItemType;->e:Lnet/sf/saxon/value/SequenceType;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/type/AnyItemType;->e:Lnet/sf/saxon/value/SequenceType;

    return-object p0
.end method

.method public oneOrMore()Lnet/sf/saxon/value/SequenceType;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/type/AnyItemType;->f:Lnet/sf/saxon/value/SequenceType;

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/value/SequenceType;

    const v1, 0xc000

    invoke-direct {v0, p0, v1}, Lnet/sf/saxon/value/SequenceType;-><init>(Lnet/sf/saxon/type/ItemType;I)V

    iput-object v0, p0, Lnet/sf/saxon/type/AnyItemType;->f:Lnet/sf/saxon/value/SequenceType;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/type/AnyItemType;->f:Lnet/sf/saxon/value/SequenceType;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "item()"

    return-object p0
.end method

.method public zeroOrMore()Lnet/sf/saxon/value/SequenceType;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/type/AnyItemType;->h:Lnet/sf/saxon/value/SequenceType;

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/value/SequenceType;

    const v1, 0xe000

    invoke-direct {v0, p0, v1}, Lnet/sf/saxon/value/SequenceType;-><init>(Lnet/sf/saxon/type/ItemType;I)V

    iput-object v0, p0, Lnet/sf/saxon/type/AnyItemType;->h:Lnet/sf/saxon/value/SequenceType;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/type/AnyItemType;->h:Lnet/sf/saxon/value/SequenceType;

    return-object p0
.end method

.method public zeroOrOne()Lnet/sf/saxon/value/SequenceType;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/type/AnyItemType;->g:Lnet/sf/saxon/value/SequenceType;

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/value/SequenceType;

    const/16 v1, 0x6000

    invoke-direct {v0, p0, v1}, Lnet/sf/saxon/value/SequenceType;-><init>(Lnet/sf/saxon/type/ItemType;I)V

    iput-object v0, p0, Lnet/sf/saxon/type/AnyItemType;->g:Lnet/sf/saxon/value/SequenceType;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/type/AnyItemType;->g:Lnet/sf/saxon/value/SequenceType;

    return-object p0
.end method
