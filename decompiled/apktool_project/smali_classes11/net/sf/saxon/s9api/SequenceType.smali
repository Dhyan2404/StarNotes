.class public Lnet/sf/saxon/s9api/SequenceType;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ANY:Lnet/sf/saxon/s9api/SequenceType;

.field public static final EMPTY:Lnet/sf/saxon/s9api/SequenceType;


# instance fields
.field public final a:Lnet/sf/saxon/s9api/ItemType;

.field public final b:Lnet/sf/saxon/s9api/OccurrenceIndicator;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/sf/saxon/s9api/SequenceType;

    sget-object v1, Lnet/sf/saxon/s9api/ItemType;->ANY_ITEM:Lnet/sf/saxon/s9api/ItemType;

    sget-object v2, Lnet/sf/saxon/s9api/OccurrenceIndicator;->ZERO_OR_MORE:Lnet/sf/saxon/s9api/OccurrenceIndicator;

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/s9api/SequenceType;-><init>(Lnet/sf/saxon/s9api/ItemType;Lnet/sf/saxon/s9api/OccurrenceIndicator;)V

    sput-object v0, Lnet/sf/saxon/s9api/SequenceType;->ANY:Lnet/sf/saxon/s9api/SequenceType;

    new-instance v0, Lnet/sf/saxon/s9api/SequenceType;

    sget-object v1, Lnet/sf/saxon/s9api/ItemType;->ERROR:Lnet/sf/saxon/s9api/ItemType;

    sget-object v2, Lnet/sf/saxon/s9api/OccurrenceIndicator;->ZERO:Lnet/sf/saxon/s9api/OccurrenceIndicator;

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/s9api/SequenceType;-><init>(Lnet/sf/saxon/s9api/ItemType;Lnet/sf/saxon/s9api/OccurrenceIndicator;)V

    sput-object v0, Lnet/sf/saxon/s9api/SequenceType;->EMPTY:Lnet/sf/saxon/s9api/SequenceType;

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/s9api/ItemType;Lnet/sf/saxon/s9api/OccurrenceIndicator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/s9api/SequenceType;->a:Lnet/sf/saxon/s9api/ItemType;

    iput-object p2, p0, Lnet/sf/saxon/s9api/SequenceType;->b:Lnet/sf/saxon/s9api/OccurrenceIndicator;

    return-void
.end method

.method public static fromUnderlyingSequenceType(Lnet/sf/saxon/s9api/Processor;Lnet/sf/saxon/value/SequenceType;)Lnet/sf/saxon/s9api/SequenceType;
    .locals 1

    new-instance v0, Lnet/sf/saxon/s9api/ItemTypeFactory;

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/ItemTypeFactory;-><init>(Lnet/sf/saxon/s9api/Processor;)V

    invoke-virtual {p1}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/s9api/ItemTypeFactory;->exposeItemType(Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/s9api/ItemType;

    move-result-object p0

    invoke-virtual {p1}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result p1

    invoke-static {p1}, Lnet/sf/saxon/s9api/OccurrenceIndicator;->getOccurrenceIndicator(I)Lnet/sf/saxon/s9api/OccurrenceIndicator;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/sf/saxon/s9api/SequenceType;->makeSequenceType(Lnet/sf/saxon/s9api/ItemType;Lnet/sf/saxon/s9api/OccurrenceIndicator;)Lnet/sf/saxon/s9api/SequenceType;

    move-result-object p0

    return-object p0
.end method

.method public static makeSequenceType(Lnet/sf/saxon/s9api/ItemType;Lnet/sf/saxon/s9api/OccurrenceIndicator;)Lnet/sf/saxon/s9api/SequenceType;
    .locals 1

    new-instance v0, Lnet/sf/saxon/s9api/SequenceType;

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/s9api/SequenceType;-><init>(Lnet/sf/saxon/s9api/ItemType;Lnet/sf/saxon/s9api/OccurrenceIndicator;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lnet/sf/saxon/s9api/SequenceType;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/s9api/SequenceType;

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/SequenceType;->getOccurrenceIndicator()Lnet/sf/saxon/s9api/OccurrenceIndicator;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/SequenceType;->getOccurrenceIndicator()Lnet/sf/saxon/s9api/OccurrenceIndicator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/SequenceType;->getItemType()Lnet/sf/saxon/s9api/ItemType;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/SequenceType;->getItemType()Lnet/sf/saxon/s9api/ItemType;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/s9api/ItemType;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getItemType()Lnet/sf/saxon/s9api/ItemType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/SequenceType;->a:Lnet/sf/saxon/s9api/ItemType;

    return-object p0
.end method

.method public getOccurrenceIndicator()Lnet/sf/saxon/s9api/OccurrenceIndicator;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/SequenceType;->b:Lnet/sf/saxon/s9api/OccurrenceIndicator;

    return-object p0
.end method

.method public getUnderlyingSequenceType()Lnet/sf/saxon/value/SequenceType;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/s9api/SequenceType;->a:Lnet/sf/saxon/s9api/ItemType;

    invoke-virtual {v0}, Lnet/sf/saxon/s9api/ItemType;->getUnderlyingItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    iget-object p0, p0, Lnet/sf/saxon/s9api/SequenceType;->b:Lnet/sf/saxon/s9api/OccurrenceIndicator;

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/OccurrenceIndicator;->getCardinality()I

    move-result p0

    invoke-static {v0, p0}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/SequenceType;->getItemType()Lnet/sf/saxon/s9api/ItemType;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/s9api/ItemType;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/SequenceType;->getOccurrenceIndicator()Lnet/sf/saxon/s9api/OccurrenceIndicator;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    shl-int/lit8 p0, p0, 0x11

    xor-int/2addr p0, v0

    return p0
.end method
