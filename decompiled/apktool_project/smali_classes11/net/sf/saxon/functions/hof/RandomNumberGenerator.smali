.class public Lnet/sf/saxon/functions/hof/RandomNumberGenerator;
.super Lnet/sf/saxon/functions/SystemFunction;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/Callable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/functions/hof/RandomNumberGenerator$a;,
        Lnet/sf/saxon/functions/hof/RandomNumberGenerator$b;
    }
.end annotation


# static fields
.field public static final RETURN_TYPE:Lnet/sf/saxon/ma/map/MapType;

.field public static final h:Lnet/sf/saxon/type/FunctionItemType;

.field public static final i:Lnet/sf/saxon/type/FunctionItemType;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lnet/sf/saxon/ma/map/MapType;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    sget-object v2, Lnet/sf/saxon/value/SequenceType;->SINGLE_ITEM:Lnet/sf/saxon/value/SequenceType;

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/ma/map/MapType;-><init>(Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/value/SequenceType;)V

    sput-object v0, Lnet/sf/saxon/functions/hof/RandomNumberGenerator;->RETURN_TYPE:Lnet/sf/saxon/ma/map/MapType;

    new-instance v1, Lnet/sf/saxon/type/SpecificFunctionType;

    const/4 v2, 0x0

    new-array v2, v2, [Lnet/sf/saxon/value/SequenceType;

    const/16 v3, 0x4000

    invoke-static {v0, v3}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lnet/sf/saxon/type/SpecificFunctionType;-><init>([Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/value/SequenceType;)V

    sput-object v1, Lnet/sf/saxon/functions/hof/RandomNumberGenerator;->h:Lnet/sf/saxon/type/FunctionItemType;

    new-instance v0, Lnet/sf/saxon/type/SpecificFunctionType;

    sget-object v1, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    filled-new-array {v1}, [Lnet/sf/saxon/value/SequenceType;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lnet/sf/saxon/type/SpecificFunctionType;-><init>([Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/value/SequenceType;)V

    sput-object v0, Lnet/sf/saxon/functions/hof/RandomNumberGenerator;->i:Lnet/sf/saxon/type/FunctionItemType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/SystemFunction;-><init>()V

    return-void
.end method

.method public static synthetic a(JLnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/ma/map/MapItem;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lnet/sf/saxon/functions/hof/RandomNumberGenerator;->b(JLnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/ma/map/MapItem;

    move-result-object p0

    return-object p0
.end method

.method public static b(JLnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/ma/map/MapItem;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance p2, Ljava/util/Random;

    invoke-direct {p2, p0, p1}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {p2}, Ljava/util/Random;->nextDouble()D

    move-result-wide p0

    invoke-virtual {p2}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    new-instance p2, Lnet/sf/saxon/ma/map/DictionaryMap;

    invoke-direct {p2}, Lnet/sf/saxon/ma/map/DictionaryMap;-><init>()V

    new-instance v2, Lnet/sf/saxon/value/DoubleValue;

    invoke-direct {v2, p0, p1}, Lnet/sf/saxon/value/DoubleValue;-><init>(D)V

    const-string p0, "number"

    invoke-virtual {p2, p0, v2}, Lnet/sf/saxon/ma/map/DictionaryMap;->initialPut(Ljava/lang/String;Lnet/sf/saxon/om/GroundedValue;)V

    new-instance p0, Lnet/sf/saxon/functions/CallableFunction;

    new-instance p1, Lnet/sf/saxon/functions/hof/RandomNumberGenerator$a;

    invoke-direct {p1, v0, v1}, Lnet/sf/saxon/functions/hof/RandomNumberGenerator$a;-><init>(J)V

    sget-object v2, Lnet/sf/saxon/functions/hof/RandomNumberGenerator;->h:Lnet/sf/saxon/type/FunctionItemType;

    const/4 v3, 0x0

    invoke-direct {p0, v3, p1, v2}, Lnet/sf/saxon/functions/CallableFunction;-><init>(ILnet/sf/saxon/expr/Callable;Lnet/sf/saxon/type/FunctionItemType;)V

    const-string p1, "next"

    invoke-virtual {p2, p1, p0}, Lnet/sf/saxon/ma/map/DictionaryMap;->initialPut(Ljava/lang/String;Lnet/sf/saxon/om/GroundedValue;)V

    new-instance p0, Lnet/sf/saxon/functions/CallableFunction;

    new-instance p1, Lnet/sf/saxon/functions/hof/RandomNumberGenerator$b;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p1, v0}, Lnet/sf/saxon/functions/hof/RandomNumberGenerator$b;-><init>(Ljava/lang/Long;)V

    sget-object v0, Lnet/sf/saxon/functions/hof/RandomNumberGenerator;->i:Lnet/sf/saxon/type/FunctionItemType;

    const/4 v1, 0x1

    invoke-direct {p0, v1, p1, v0}, Lnet/sf/saxon/functions/CallableFunction;-><init>(ILnet/sf/saxon/expr/Callable;Lnet/sf/saxon/type/FunctionItemType;)V

    const-string p1, "permute"

    invoke-virtual {p2, p1, p0}, Lnet/sf/saxon/ma/map/DictionaryMap;->initialPut(Ljava/lang/String;Lnet/sf/saxon/om/GroundedValue;)V

    return-object p2
.end method


# virtual methods
.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    array-length p0, p2

    if-nez p0, :cond_0

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getCurrentDateTime()Lnet/sf/saxon/value/DateTimeValue;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/value/DateTimeValue;->randomSeed()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    aget-object p0, p2, p0

    invoke-interface {p0}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/value/AtomicValue;

    if-nez p0, :cond_1

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getCurrentDateTime()Lnet/sf/saxon/value/DateTimeValue;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/value/DateTimeValue;->randomSeed()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/value/AtomicValue;->hashCode()I

    move-result p0

    int-to-long v0, p0

    :goto_0
    invoke-static {v0, v1, p1}, Lnet/sf/saxon/functions/hof/RandomNumberGenerator;->b(JLnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/ma/map/MapItem;

    move-result-object p0

    return-object p0
.end method
