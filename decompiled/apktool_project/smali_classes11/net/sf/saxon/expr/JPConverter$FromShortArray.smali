.class public Lnet/sf/saxon/expr/JPConverter$FromShortArray;
.super Lnet/sf/saxon/expr/JPConverter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/expr/JPConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FromShortArray"
.end annotation


# static fields
.field public static final INSTANCE:Lnet/sf/saxon/expr/JPConverter$FromShortArray;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/expr/JPConverter$FromShortArray;

    invoke-direct {v0}, Lnet/sf/saxon/expr/JPConverter$FromShortArray;-><init>()V

    sput-object v0, Lnet/sf/saxon/expr/JPConverter$FromShortArray;->INSTANCE:Lnet/sf/saxon/expr/JPConverter$FromShortArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/expr/JPConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Ljava/lang/Object;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/GroundedValue;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    check-cast p1, [S

    array-length p0, p1

    new-array p2, p0, [Lnet/sf/saxon/om/Item;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    aget-short v1, p1, v0

    int-to-long v1, v1

    sget-object v3, Lnet/sf/saxon/type/BuiltInAtomicType;->SHORT:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {v1, v2, v3}, Lnet/sf/saxon/value/Int64Value;->makeDerived(JLnet/sf/saxon/type/AtomicType;)Lnet/sf/saxon/value/Int64Value;

    move-result-object v1

    aput-object v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/value/SequenceExtent$Of;

    invoke-direct {p0, p2}, Lnet/sf/saxon/value/SequenceExtent$Of;-><init>([Lnet/sf/saxon/om/Item;)V

    return-object p0
.end method

.method public getCardinality()I
    .locals 0

    const p0, 0xe000

    return p0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->SHORT:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0
.end method
