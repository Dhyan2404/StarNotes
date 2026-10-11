.class public abstract Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/functions/FunctionLibrary;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;
    }
.end annotation


# static fields
.field protected static final ABS:I = 0x2000000

.field public static final AS_ARG0:I = 0x1

.field public static final AS_PRIM_ARG0:I = 0x2

.field public static final BASE:I = 0x8

.field public static final CARD0:I = 0x8000

.field public static final CDOC:I = 0x4000

.field public static final CITEM:I = 0x4

.field public static final CTRL:I = 0x20000

.field public static final DCOLL:I = 0x20

.field public static final DEPENDS_ON_STATIC_CONTEXT:I = 0x38

.field public static final DLANG:I = 0x40

.field public static EMPTY:Lnet/sf/saxon/om/Sequence; = null

.field public static final FILTER:I = 0x100

.field public static final FOCUS:I = 0x5804

.field protected static final INS:I = 0x1000000

.field public static final LAST:I = 0x1000

.field public static final LATE:I = 0x200

.field protected static final NAV:I = 0x8000000

.field public static final NEW:I = 0x10000

.field public static final NS:I = 0x10

.field public static final ONE:I = 0x4000

.field public static final OPT:I = 0x6000

.field public static final PLUS:I = 0xc000

.field public static final POSN:I = 0x800

.field public static final SEQV:I = 0x40000

.field public static final SIDE:I = 0x2000

.field public static final STAR:I = 0xe000

.field protected static final TRA:I = 0x4000000

.field public static final UO:I = 0x400


# instance fields
.field public final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lnet/sf/saxon/value/EmptySequence;->getInstance()Lnet/sf/saxon/value/EmptySequence;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->b:Ljava/util/HashMap;

    return-void
.end method

.method public static b(I)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "zero arguments"

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-string p0, "one argument"

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " arguments"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Class;)Lnet/sf/saxon/functions/SystemFunction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lnet/sf/saxon/functions/SystemFunction;",
            ">;)",
            "Lnet/sf/saxon/functions/SystemFunction;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/functions/SystemFunction;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p2, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to instantiate system function "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " - "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method public bind(Lnet/sf/saxon/trans/SymbolicName$F;[Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/StaticContext;Ljava/util/List;)Lnet/sf/saxon/expr/Expression;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/trans/SymbolicName$F;",
            "[",
            "Lnet/sf/saxon/expr/Expression;",
            "Lnet/sf/saxon/expr/StaticContext;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lnet/sf/saxon/expr/Expression;"
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/trans/SymbolicName;->getComponentName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/trans/SymbolicName$F;->getArity()I

    move-result p1

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->getFunctionDetails(Ljava/lang/String;I)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/sf/saxon/om/StructuredQName;->hasURI(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    if-eqz p1, :cond_7

    iget v0, p1, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->properties:I

    const/high16 v3, 0x40000

    and-int/2addr v0, v3

    if-eqz v0, :cond_6

    invoke-interface {p3}, Lnet/sf/saxon/expr/StaticContext;->getXPathVersion()I

    move-result v0

    const/16 v3, 0x28

    const/4 v4, 0x0

    if-ge v0, v3, :cond_3

    const-string v0, "concat"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    array-length v3, p2

    const/4 v5, 0x2

    if-ge v3, v5, :cond_0

    const-string p0, "concat() prior to XPath 4.0 requires at least two arguments"

    invoke-interface {p4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v2

    :cond_0
    array-length v3, p2

    new-array v3, v3, [Lnet/sf/saxon/expr/Expression;

    move v5, v4

    :goto_0
    array-length v6, p2

    if-ge v5, v6, :cond_2

    aget-object v6, p2, v5

    instance-of v7, v6, Lnet/sf/saxon/expr/StringLiteral;

    if-eqz v7, :cond_1

    aput-object v6, v3, v5

    goto :goto_1

    :cond_1
    new-instance v6, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    invoke-direct {v6, v4, v0, v5}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    aget-object v7, p2, v5

    const/16 v8, 0x6000

    invoke-static {v7, v8, v6}, Lnet/sf/saxon/expr/CardinalityChecker;->makeCardinalityChecker(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/parser/RoleDiagnostic;)Lnet/sf/saxon/expr/Expression;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-interface {p3}, Lnet/sf/saxon/expr/StaticContext;->makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v7

    invoke-virtual {v6, v7}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    move-object p2, v3

    :cond_3
    iget p1, p1, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arity:I

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sf/saxon/expr/Expression;

    array-length v3, p2

    if-le p1, v3, :cond_4

    add-int/lit8 p1, p1, -0x1

    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object p2

    aput-object p2, v0, p1

    goto :goto_2

    :cond_4
    array-length v3, p2

    if-ge p1, v3, :cond_5

    new-instance v3, Lnet/sf/saxon/expr/instruct/Block;

    add-int/lit8 p1, p1, -0x1

    array-length v5, p2

    invoke-static {p2, p1, v5}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lnet/sf/saxon/expr/Expression;

    invoke-direct {v3, v5}, Lnet/sf/saxon/expr/instruct/Block;-><init>([Lnet/sf/saxon/expr/Expression;)V

    aget-object p2, p2, v4

    invoke-static {p2, v3}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    aput-object v3, v0, p1

    :cond_5
    :goto_2
    move-object p2, v0

    :cond_6
    new-instance p1, Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    invoke-direct {p1, p3}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;-><init>(Lnet/sf/saxon/expr/StaticContext;)V

    :try_start_0
    array-length p3, p2

    invoke-virtual {p0, v1, p3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->makeFunction(Ljava/lang/String;I)Lnet/sf/saxon/functions/SystemFunction;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/functions/SystemFunction;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    invoke-virtual {p0, p2}, Lnet/sf/saxon/functions/SystemFunction;->makeFunctionCall([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    return-object v2
.end method

.method public copy()Lnet/sf/saxon/functions/FunctionLibrary;
    .locals 0

    return-object p0
.end method

.method public getConventionalPrefix()Ljava/lang/String;
    .locals 0

    const-string p0, "fn"

    return-object p0
.end method

.method public getFunctionDetails(Ljava/lang/String;I)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    const/4 p2, 0x0

    :goto_0
    const/16 v1, 0x14

    if-ge p2, v1, :cond_1

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->getFunctionDetails(Ljava/lang/String;I)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    if-eqz v2, :cond_3

    return-object v2

    :cond_3
    iget-object v2, p0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->b:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, p1, v4}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v1, :cond_4

    if-lt p2, v2, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->a:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    return-object p0

    :cond_4
    return-object v0
.end method

.method public getFunctionItem(Lnet/sf/saxon/trans/SymbolicName$F;Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/om/Function;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/trans/SymbolicName;->getComponentName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/trans/SymbolicName$F;->getArity()I

    move-result p1

    invoke-virtual {p0}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/om/StructuredQName;->hasURI(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->getFunctionDetails(Ljava/lang/String;I)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Lnet/sf/saxon/expr/StaticContext;->makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v1

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->makeFunction(Ljava/lang/String;I)Lnet/sf/saxon/functions/SystemFunction;

    move-result-object p0

    invoke-interface {p2}, Lnet/sf/saxon/expr/StaticContext;->getXPathVersion()I

    move-result p2

    const/16 v0, 0x28

    if-ge p2, v0, :cond_0

    instance-of p2, p0, Lnet/sf/saxon/functions/Concat;

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    if-ge p1, p2, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p0, v1}, Lnet/sf/saxon/functions/SystemFunction;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    return-object p0

    :cond_1
    return-object v2
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 0

    const-string p0, "http://www.w3.org/2005/xpath-functions"

    return-object p0
.end method

.method public final importFunctionSet(Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;)V
    .locals 2

    invoke-virtual {p1}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->a:Ljava/util/HashMap;

    iget-object v1, p1, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object p0, p0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->b:Ljava/util/HashMap;

    iget-object p1, p1, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->b:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->getNamespace()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isAvailable(Lnet/sf/saxon/trans/SymbolicName$F;I)Z
    .locals 3

    invoke-virtual {p1}, Lnet/sf/saxon/trans/SymbolicName;->getComponentName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/om/StructuredQName;->hasURI(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/trans/SymbolicName$F;->getArity()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->getFunctionDetails(Ljava/lang/String;I)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object p0

    if-nez p0, :cond_1

    return v2

    :cond_1
    iget p0, p0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->properties:I

    const/high16 v0, 0x40000

    and-int/2addr p0, v0

    if-eqz p0, :cond_2

    const/16 p0, 0x28

    if-ge p2, p0, :cond_2

    invoke-virtual {p1}, Lnet/sf/saxon/trans/SymbolicName;->getComponentName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    const-string p2, "concat"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lnet/sf/saxon/trans/SymbolicName$F;->getArity()I

    move-result p0

    const/4 p1, 0x2

    if-ge p0, p1, :cond_2

    return v2

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public makeFunction(Ljava/lang/String;I)Lnet/sf/saxon/functions/SystemFunction;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->getFunctionDetails(Ljava/lang/String;I)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->getNamespace()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://www.w3.org/2005/xpath-functions"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "System function "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Function Q{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->getFunctionDetails(Ljava/lang/String;I)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object p0

    const/4 p1, 0x1

    const-string v1, "XPST0017"

    if-nez p0, :cond_1

    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "() does not exist or is not available in this environment"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setIsStaticError(Z)V

    throw p0

    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "() cannot be called with "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->b(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setIsStaticError(Z)V

    throw p0

    :cond_2
    iget-object v1, v0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->implementationClass:Ljava/lang/Class;

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->a(Ljava/lang/String;Ljava/lang/Class;)Lnet/sf/saxon/functions/SystemFunction;

    move-result-object p0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/functions/SystemFunction;->setDetails(Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;)V

    invoke-virtual {p0, p2}, Lnet/sf/saxon/functions/SystemFunction;->setArity(I)V

    return-object p0
.end method

.method public register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class<",
            "+",
            "Lnet/sf/saxon/functions/SystemFunction;",
            ">;",
            "Lnet/sf/saxon/type/ItemType;",
            "II)",
            "Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;"
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    invoke-direct {v0}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;-><init>()V

    new-instance v1, Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p0}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->getConventionalPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->name:Lnet/sf/saxon/om/StructuredQName;

    iput p2, v0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arity:I

    iput-object p3, v0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->implementationClass:Ljava/lang/Class;

    iput-object p0, v0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->functionSet:Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;

    iput-object p4, v0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->itemType:Lnet/sf/saxon/type/ItemType;

    iput p5, v0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->cardinality:I

    iput p6, v0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->properties:I

    const/4 p3, -0x1

    const/4 p4, 0x1

    if-ne p2, p3, :cond_0

    new-array p3, p4, [Lnet/sf/saxon/value/SequenceType;

    iput-object p3, v0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->argumentTypes:[Lnet/sf/saxon/value/SequenceType;

    new-array p3, p4, [Lnet/sf/saxon/value/AtomicValue;

    iput-object p3, v0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->resultIfEmpty:[Lnet/sf/saxon/om/Sequence;

    new-array p3, p4, [Lnet/sf/saxon/expr/OperandUsage;

    iput-object p3, v0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->usage:[Lnet/sf/saxon/expr/OperandUsage;

    goto :goto_0

    :cond_0
    new-array p3, p2, [Lnet/sf/saxon/value/SequenceType;

    iput-object p3, v0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->argumentTypes:[Lnet/sf/saxon/value/SequenceType;

    new-array p3, p2, [Lnet/sf/saxon/om/Sequence;

    iput-object p3, v0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->resultIfEmpty:[Lnet/sf/saxon/om/Sequence;

    new-array p3, p2, [Lnet/sf/saxon/expr/OperandUsage;

    iput-object p3, v0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->usage:[Lnet/sf/saxon/expr/OperandUsage;

    :goto_0
    iget-object p3, p0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->a:Ljava/util/HashMap;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 p3, 0x40000

    and-int/2addr p3, p6

    if-eqz p3, :cond_1

    iget-object p0, p0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->b:Ljava/util/HashMap;

    sub-int/2addr p2, p4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public registerReducedArityVariants(Ljava/lang/String;II)V
    .locals 4

    iget-object v0, p0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    :goto_0
    if-gt p2, p3, :cond_1

    new-instance v0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    invoke-direct {v0}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;-><init>()V

    iget-object v1, p1, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->name:Lnet/sf/saxon/om/StructuredQName;

    iput-object v1, v0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->name:Lnet/sf/saxon/om/StructuredQName;

    iput p2, v0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arity:I

    iget-object v1, p1, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->implementationClass:Ljava/lang/Class;

    iput-object v1, v0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->implementationClass:Ljava/lang/Class;

    iget-object v1, p1, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->itemType:Lnet/sf/saxon/type/ItemType;

    iput-object v1, v0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->itemType:Lnet/sf/saxon/type/ItemType;

    iget v1, p1, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->cardinality:I

    iput v1, v0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->cardinality:I

    iget v1, p1, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->properties:I

    iput v1, v0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->properties:I

    new-array v1, p2, [Lnet/sf/saxon/value/SequenceType;

    iput-object v1, v0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->argumentTypes:[Lnet/sf/saxon/value/SequenceType;

    new-array v1, p2, [Lnet/sf/saxon/om/Sequence;

    iput-object v1, v0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->resultIfEmpty:[Lnet/sf/saxon/om/Sequence;

    new-array v1, p2, [Lnet/sf/saxon/expr/OperandUsage;

    iput-object v1, v0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->usage:[Lnet/sf/saxon/expr/OperandUsage;

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p2, :cond_0

    iget-object v2, v0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->argumentTypes:[Lnet/sf/saxon/value/SequenceType;

    iget-object v3, p1, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->argumentTypes:[Lnet/sf/saxon/value/SequenceType;

    aget-object v3, v3, v1

    aput-object v3, v2, v1

    iget-object v2, v0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->resultIfEmpty:[Lnet/sf/saxon/om/Sequence;

    iget-object v3, p1, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->resultIfEmpty:[Lnet/sf/saxon/om/Sequence;

    aget-object v3, v3, v1

    aput-object v3, v2, v1

    iget-object v2, v0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->usage:[Lnet/sf/saxon/expr/OperandUsage;

    iget-object v3, p1, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->usage:[Lnet/sf/saxon/expr/OperandUsage;

    aget-object v3, v3, v1

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->a:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->name:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {v3}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
