.class public Lnet/sf/saxon/expr/Calculator$f;
.super Lnet/sf/saxon/expr/Calculator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/expr/Calculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnet/sf/saxon/expr/Calculator;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lnet/sf/saxon/expr/Calculator$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lnet/sf/saxon/expr/Calculator$f;-><init>()V

    return-void
.end method


# virtual methods
.method public compute(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/AtomicValue;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    check-cast p1, Lnet/sf/saxon/value/DurationValue;

    check-cast p2, Lnet/sf/saxon/value/DurationValue;

    invoke-virtual {p1, p2}, Lnet/sf/saxon/value/DurationValue;->divide(Lnet/sf/saxon/value/DurationValue;)Lnet/sf/saxon/value/BigDecimalValue;

    move-result-object p0

    return-object p0
.end method

.method public getResultType(Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/type/AtomicType;)Lnet/sf/saxon/type/AtomicType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->DECIMAL:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0
.end method
