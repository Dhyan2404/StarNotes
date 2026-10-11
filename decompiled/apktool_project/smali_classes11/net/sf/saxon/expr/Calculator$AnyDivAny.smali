.class public Lnet/sf/saxon/expr/Calculator$AnyDivAny;
.super Lnet/sf/saxon/expr/Calculator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/expr/Calculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnyDivAny"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/expr/Calculator;-><init>()V

    return-void
.end method


# virtual methods
.method public compute(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/AtomicValue;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->getItemType()Lnet/sf/saxon/type/AtomicType;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/type/ItemType;->getPrimitiveType()I

    move-result p0

    invoke-virtual {p2}, Lnet/sf/saxon/value/AtomicValue;->getItemType()Lnet/sf/saxon/type/AtomicType;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/type/ItemType;->getPrimitiveType()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lnet/sf/saxon/expr/Calculator;->getCalculator(IIIZ)Lnet/sf/saxon/expr/Calculator;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/expr/Calculator;->compute(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsuitable types for div operation ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lnet/sf/saxon/type/Type;->displayTypeName(Lnet/sf/saxon/om/Item;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lnet/sf/saxon/type/Type;->displayTypeName(Lnet/sf/saxon/om/Item;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "XPTY0004"

    invoke-direct {p0, p1, p2, p3}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)V

    throw p0
.end method

.method public getResultType(Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/type/AtomicType;)Lnet/sf/saxon/type/AtomicType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0
.end method
