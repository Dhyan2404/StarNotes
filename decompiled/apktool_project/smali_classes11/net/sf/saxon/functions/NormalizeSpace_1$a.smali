.class public Lnet/sf/saxon/functions/NormalizeSpace_1$a;
.super Lnet/sf/saxon/expr/SystemFunctionCall;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sf/saxon/functions/NormalizeSpace_1;->makeFunctionCall([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic p:Lnet/sf/saxon/functions/NormalizeSpace_1;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/functions/NormalizeSpace_1;Lnet/sf/saxon/functions/SystemFunction;[Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/functions/NormalizeSpace_1$a;->p:Lnet/sf/saxon/functions/NormalizeSpace_1;

    invoke-direct {p0, p2, p3}, Lnet/sf/saxon/expr/SystemFunctionCall;-><init>(Lnet/sf/saxon/functions/SystemFunction;[Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method


# virtual methods
.method public effectiveBooleanValue(Lnet/sf/saxon/expr/XPathContext;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/FunctionCall;->getArg(I)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/value/AtomicValue;

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/value/Whitespace;->isAllWhite(Lnet/sf/saxon/str/UnicodeString;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
