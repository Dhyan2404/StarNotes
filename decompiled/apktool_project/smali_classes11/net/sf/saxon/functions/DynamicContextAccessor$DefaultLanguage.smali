.class public Lnet/sf/saxon/functions/DynamicContextAccessor$DefaultLanguage;
.super Lnet/sf/saxon/functions/DynamicContextAccessor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/functions/DynamicContextAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultLanguage"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/DynamicContextAccessor;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lnet/sf/saxon/functions/DynamicContextAccessor;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    return-object p0
.end method

.method public evaluate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/AtomicValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getDefaultLanguage()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/value/StringValue;

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->LANGUAGE:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-direct {p1, p0, v0}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;Lnet/sf/saxon/type/AtomicType;)V

    return-object p1
.end method
