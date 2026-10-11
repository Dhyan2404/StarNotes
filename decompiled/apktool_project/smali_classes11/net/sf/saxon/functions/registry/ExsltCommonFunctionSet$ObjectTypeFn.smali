.class public Lnet/sf/saxon/functions/registry/ExsltCommonFunctionSet$ObjectTypeFn;
.super Lnet/sf/saxon/functions/SystemFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/functions/registry/ExsltCommonFunctionSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ObjectTypeFn"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/SystemFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object p0

    const/4 p1, 0x0

    aget-object p1, p2, p1

    invoke-interface {p1}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p1

    invoke-static {p1, p0}, Lnet/sf/saxon/om/SequenceTool;->getItemType(Lnet/sf/saxon/om/Sequence;Lnet/sf/saxon/type/TypeHierarchy;)Lnet/sf/saxon/type/ItemType;

    move-result-object p1

    invoke-static {}, Lnet/sf/saxon/pattern/AnyNodeTest;->getInstance()Lnet/sf/saxon/pattern/AnyNodeTest;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/type/TypeHierarchy;->isSubType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p0, "node-set"

    invoke-static {p0}, Lnet/sf/saxon/value/StringValue;->bmp(Ljava/lang/String;)Lnet/sf/saxon/value/StringValue;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p2, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/type/TypeHierarchy;->isSubType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p0, "string"

    invoke-static {p0}, Lnet/sf/saxon/value/StringValue;->bmp(Ljava/lang/String;)Lnet/sf/saxon/value/StringValue;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p1}, Lnet/sf/saxon/type/NumericType;->isNumericType(Lnet/sf/saxon/type/ItemType;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p0, "number"

    invoke-static {p0}, Lnet/sf/saxon/value/StringValue;->bmp(Ljava/lang/String;)Lnet/sf/saxon/value/StringValue;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object p2, Lnet/sf/saxon/type/BuiltInAtomicType;->BOOLEAN:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/type/TypeHierarchy;->isSubType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "boolean"

    invoke-static {p0}, Lnet/sf/saxon/value/StringValue;->bmp(Ljava/lang/String;)Lnet/sf/saxon/value/StringValue;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Lnet/sf/saxon/value/StringValue;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;)V

    return-object p0
.end method
