.class public Lnet/sf/saxon/query/XQueryParser;
.super Lnet/sf/saxon/expr/parser/XPathParser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/query/XQueryParser$c;,
        Lnet/sf/saxon/query/XQueryParser$b;,
        Lnet/sf/saxon/query/XQueryParser$Unescaper;,
        Lnet/sf/saxon/query/XQueryParser$d;
    }
.end annotation


# static fields
.field public static final C:Ljava/util/regex/Pattern;

.field public static final synthetic D:Z = false

.field public static final SAXON_MEMO_FUNCTION:Lnet/sf/saxon/om/StructuredQName;

.field public static final XQUERY10:Ljava/lang/String; = "1.0"

.field public static final XQUERY30:Ljava/lang/String; = "3.0"

.field public static final XQUERY31:Ljava/lang/String; = "3.1"

.field public static final XQUERY40:Ljava/lang/String; = "4.0"


# instance fields
.field public final A:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lnet/sf/saxon/om/StructuredQName;",
            ">;"
        }
    .end annotation
.end field

.field public B:Ljava/util/Properties;

.field protected executable:Lnet/sf/saxon/expr/instruct/Executable;

.field public g:Z

.field public h:Z

.field public i:I

.field public final importedModules:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public j:Lnet/sf/saxon/trans/XPathException;

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z

.field public u:Z

.field public v:Z

.field public w:Z

.field public final x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/query/XQueryParser$c;",
            ">;"
        }
    .end annotation
.end field

.field public final z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/query/XQueryParser$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "^[A-Za-z]([A-Za-z0-9._\\x2D])*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/query/XQueryParser;->C:Ljava/util/regex/Pattern;

    new-instance v0, Lnet/sf/saxon/om/StructuredQName;

    const-string v1, "http://saxon.sf.net/"

    const-string v2, "memo-function"

    const-string v3, "saxon"

    invoke-direct {v0, v3, v1, v2}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/query/XQueryParser;->SAXON_MEMO_FUNCTION:Lnet/sf/saxon/om/StructuredQName;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Lnet/sf/saxon/expr/parser/XPathParser;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/query/XQueryParser;->g:Z

    iput-boolean v0, p0, Lnet/sf/saxon/query/XQueryParser;->h:Z

    iput v0, p0, Lnet/sf/saxon/query/XQueryParser;->i:I

    const/4 v1, 0x0

    iput-object v1, p0, Lnet/sf/saxon/query/XQueryParser;->j:Lnet/sf/saxon/trans/XPathException;

    iput-boolean v0, p0, Lnet/sf/saxon/query/XQueryParser;->k:Z

    iput-boolean v0, p0, Lnet/sf/saxon/query/XQueryParser;->l:Z

    iput-boolean v0, p0, Lnet/sf/saxon/query/XQueryParser;->m:Z

    iput-boolean v0, p0, Lnet/sf/saxon/query/XQueryParser;->n:Z

    iput-boolean v0, p0, Lnet/sf/saxon/query/XQueryParser;->o:Z

    iput-boolean v0, p0, Lnet/sf/saxon/query/XQueryParser;->p:Z

    iput-boolean v0, p0, Lnet/sf/saxon/query/XQueryParser;->q:Z

    iput-boolean v0, p0, Lnet/sf/saxon/query/XQueryParser;->r:Z

    iput-boolean v0, p0, Lnet/sf/saxon/query/XQueryParser;->s:Z

    iput-boolean v0, p0, Lnet/sf/saxon/query/XQueryParser;->u:Z

    iput-boolean v0, p0, Lnet/sf/saxon/query/XQueryParser;->v:Z

    iput-boolean v0, p0, Lnet/sf/saxon/query/XQueryParser;->w:Z

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/query/XQueryParser;->importedModules:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/query/XQueryParser;->x:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/query/XQueryParser;->y:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/query/XQueryParser;->z:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/query/XQueryParser;->A:Ljava/util/Set;

    iput p1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->languageVersion:I

    sget-object v0, Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;->XQUERY:Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->setLanguage(Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;I)V

    return-void
.end method

.method public static N(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_0

    return-object p0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/16 v4, 0xa

    if-ge v2, v3, :cond_1

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v4, :cond_1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static O(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v2, 0x2028

    const/16 v3, 0x85

    if-gez v1, :cond_0

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_0

    return-object p0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_5

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-eq v5, v0, :cond_2

    if-eq v5, v3, :cond_1

    if-eq v5, v2, :cond_1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_4

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v6, :cond_3

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v3, :cond_4

    :cond_3
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v4, v5

    goto :goto_1

    :cond_4
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static containsLoopingClause(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/flwor/Clause;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/flwor/Clause;

    invoke-static {v0}, Lnet/sf/saxon/expr/flwor/FLWORExpression;->isLoopingClause(Lnet/sf/saxon/expr/flwor/Clause;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static makeStringJoin(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/expr/Expression;
    .locals 4

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/Atomizer;->makeAtomizer(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/RoleDiagnostic;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    sget-object v2, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/expr/AtomicSequenceConverter;

    invoke-direct {v0, p0, v1}, Lnet/sf/saxon/expr/AtomicSequenceConverter;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/PlainType;)V

    invoke-interface {p1}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-virtual {v0, p0, v3}, Lnet/sf/saxon/expr/AtomicSequenceConverter;->allocateConverterStatically(Lnet/sf/saxon/Configuration;Z)V

    move-object p0, v0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v0

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_1

    return-object p0

    :cond_1
    new-instance v0, Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    invoke-direct {v0, p1}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;-><init>(Lnet/sf/saxon/expr/StaticContext;)V

    const/4 p1, 0x2

    new-array p1, p1, [Lnet/sf/saxon/expr/Expression;

    aput-object p0, p1, v3

    new-instance v1, Lnet/sf/saxon/expr/StringLiteral;

    sget-object v2, Lnet/sf/saxon/value/StringValue;->SINGLE_SPACE:Lnet/sf/saxon/value/StringValue;

    invoke-direct {v1, v2}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Lnet/sf/saxon/value/StringValue;)V

    const/4 v2, 0x1

    aput-object v1, p1, v2

    const-string v1, "string-join"

    invoke-static {v1, v0, p1}, Lnet/sf/saxon/functions/SystemFunction;->makeCall(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object p1
.end method

.method public static stringify(Lnet/sf/saxon/expr/Expression;ZLnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/expr/Expression;
    .locals 2

    instance-of v0, p0, Lnet/sf/saxon/expr/StringLiteral;

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocalRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-interface {p2}, Lnet/sf/saxon/expr/StaticContext;->makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p2

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    :cond_1
    const/4 p2, 0x0

    invoke-static {p0, p2}, Lnet/sf/saxon/expr/Atomizer;->makeAtomizer(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/RoleDiagnostic;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    new-instance p2, Lnet/sf/saxon/expr/AtomicSequenceConverter;

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-direct {p2, p0, v0}, Lnet/sf/saxon/expr/AtomicSequenceConverter;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/PlainType;)V

    invoke-virtual {p2}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p0

    const/4 v0, 0x2

    new-array v0, v0, [Lnet/sf/saxon/expr/Expression;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    new-instance p2, Lnet/sf/saxon/expr/StringLiteral;

    sget-object v1, Lnet/sf/saxon/value/StringValue;->SINGLE_SPACE:Lnet/sf/saxon/value/StringValue;

    invoke-direct {p2, v1}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Lnet/sf/saxon/value/StringValue;)V

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string p2, "string-join"

    invoke-static {p2, p0, v0}, Lnet/sf/saxon/functions/SystemFunction;->makeCall(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    if-eqz p1, :cond_2

    move-object p1, p0

    check-cast p1, Lnet/sf/saxon/expr/SystemFunctionCall;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/SystemFunctionCall;->getTargetFunction()Lnet/sf/saxon/functions/SystemFunction;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/functions/StringJoin;

    invoke-virtual {p1, v1}, Lnet/sf/saxon/functions/StringJoin;->setReturnEmptyIfEmpty(Z)V

    :cond_2
    return-object p0
.end method


# virtual methods
.method public final A0()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "import schema"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/query/XQueryParser;->ensureSchemaAware(Ljava/lang/String;)V

    new-instance v0, Lnet/sf/saxon/query/XQueryParser$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/sf/saxon/query/XQueryParser$c;-><init>(Lnet/sf/saxon/query/XQueryParser$a;)V

    iput-object v1, v0, Lnet/sf/saxon/query/XQueryParser$c;->a:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v0, Lnet/sf/saxon/query/XQueryParser$c;->b:Ljava/util/List;

    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v2, v2, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenStartOffset:I

    iput v2, v0, Lnet/sf/saxon/query/XQueryParser$c;->c:I

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    const-string v2, "namespace"

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->isKeyword(Ljava/lang/String;)Z

    move-result v3

    const-string v4, ""

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->N0()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v3, "default"

    invoke-virtual {p0, v3}, Lnet/sf/saxon/expr/parser/XPathParser;->isKeyword(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    const-string v1, "element"

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->isKeyword(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "In \'import schema\', expected \'element namespace\'"

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->isKeyword(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "In \'import schema\', expected keyword \'namespace\'"

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    move-object v1, v4

    :cond_3
    :goto_0
    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v3, v2, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v5, 0xca

    if-ne v3, v5, :cond_5

    iget-object v2, v2, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lnet/sf/saxon/query/XQueryParser;->uriLiteral(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lnet/sf/saxon/query/XQueryParser;->H(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v0, Lnet/sf/saxon/query/XQueryParser$c;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    const-string v2, "at"

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->isKeyword(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0, v5}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    iget-object v2, v0, Lnet/sf/saxon/query/XQueryParser$c;->b:Ljava/util/List;

    iget-object v3, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v3, v3, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lnet/sf/saxon/query/XQueryParser;->uriLiteral(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    :goto_1
    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v2, v2, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_6

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0, v5}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    iget-object v2, v0, Lnet/sf/saxon/query/XQueryParser$c;->b:Ljava/util/List;

    iget-object v3, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v3, v3, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lnet/sf/saxon/query/XQueryParser;->uriLiteral(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v2, v2, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v3, 0x95

    if-eq v2, v3, :cond_6

    const-string v2, "After the target namespace URI, expected \'at\' or \';\'"

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const-string v2, "After \'import schema\', expected \'namespace\', \'default\', or a string-literal"

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_6
    :goto_2
    if-eqz v1, :cond_a

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    check-cast v1, Lnet/sf/saxon/query/QueryModule;

    iget-object v2, v0, Lnet/sf/saxon/query/XQueryParser$c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lnet/sf/saxon/query/QueryModule;->setDefaultElementNamespace(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    iget-object v2, v0, Lnet/sf/saxon/query/XQueryParser$c;->a:Ljava/lang/String;

    if-eqz v2, :cond_8

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    const-string v2, "A prefix cannot be bound to the null namespace"

    const-string v3, "XQST0057"

    invoke-virtual {p0, v2, v3}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    check-cast v2, Lnet/sf/saxon/query/QueryModule;

    iget-object v3, v0, Lnet/sf/saxon/query/XQueryParser$c;->a:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lnet/sf/saxon/query/QueryModule;->declarePrologNamespace(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->makeLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    invoke-virtual {p0, v1}, Lnet/sf/saxon/query/XQueryParser;->P0(Lnet/sf/saxon/trans/XPathException;)V

    :cond_a
    :goto_3
    iget-object v1, p0, Lnet/sf/saxon/query/XQueryParser;->y:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/query/XQueryParser$c;

    iget-object v2, v2, Lnet/sf/saxon/query/XQueryParser$c;->a:Ljava/lang/String;

    iget-object v3, v0, Lnet/sf/saxon/query/XQueryParser$c;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Schema namespace \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lnet/sf/saxon/query/XQueryParser$c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' is imported more than once"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "XQST0058"

    invoke-virtual {p0, v1, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    iget-object p0, p0, Lnet/sf/saxon/query/XQueryParser;->y:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final B0()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/sf/saxon/value/SequenceType;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseSequenceType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/parser/Tokenizer;->treatCurrentAsOperator()V

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v1, v1, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    goto :goto_0

    :cond_0
    const/16 v1, 0x19

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    return-object v0
.end method

.method public final C(Ljava/util/List;Ljava/lang/String;II)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/Expression;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    if-ge p3, p4, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    sub-int v1, p4, p3

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_0
    if-ge p3, p4, :cond_6

    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x9

    const/16 v3, 0x20

    if-eq v1, v2, :cond_4

    const/16 v2, 0xa

    if-eq v1, v2, :cond_4

    const/16 v4, 0xd

    if-eq v1, v4, :cond_3

    const/16 v2, 0x26

    if-eq v1, v2, :cond_1

    const/16 v2, 0x3c

    if-eq v1, v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    const-string v1, "The < character must not appear in attribute content"

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    const/16 v1, 0x3b

    invoke-virtual {p2, v1, p3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-gez v1, :cond_2

    const-string v1, "No closing \';\' found for entity or character reference"

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p2, p3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    new-instance v2, Lnet/sf/saxon/query/XQueryParser$Unescaper;

    iget-object v3, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v3}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/Configuration;->getValidCharacterChecker()Lnet/sf/saxon/z/IntPredicateProxy;

    move-result-object v3

    invoke-direct {v2, v3}, Lnet/sf/saxon/query/XQueryParser$Unescaper;-><init>(Lnet/sf/saxon/z/IntPredicateProxy;)V

    invoke-virtual {v2, p3}, Lnet/sf/saxon/query/XQueryParser$Unescaper;->analyzeEntityReference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    move p3, v1

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p3, 0x1

    if-ge v1, p4, :cond_5

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v2, :cond_5

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_6
    new-instance p0, Lnet/sf/saxon/expr/StringLiteral;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public final C0()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/sf/saxon/query/XQueryParser$d;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    new-instance v1, Lnet/sf/saxon/query/XQueryParser$d;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lnet/sf/saxon/query/XQueryParser$d;-><init>(Lnet/sf/saxon/query/XQueryParser$a;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExprSingle()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    iput-object v2, v1, Lnet/sf/saxon/query/XQueryParser$d;->a:Lnet/sf/saxon/expr/Expression;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lnet/sf/saxon/query/XQueryParser$d;->b:Z

    iget-object v3, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    check-cast v3, Lnet/sf/saxon/query/QueryModule;

    invoke-virtual {v3}, Lnet/sf/saxon/query/QueryModule;->isEmptyLeast()Z

    move-result v3

    iput-boolean v3, v1, Lnet/sf/saxon/query/XQueryParser$d;->c:Z

    iget-object v3, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v3}, Lnet/sf/saxon/expr/StaticContext;->getDefaultCollationName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lnet/sf/saxon/query/XQueryParser$d;->d:Ljava/lang/String;

    const-string v3, "ascending"

    invoke-virtual {p0, v3}, Lnet/sf/saxon/expr/parser/XPathParser;->isKeyword(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    goto :goto_1

    :cond_0
    const-string v3, "descending"

    invoke-virtual {p0, v3}, Lnet/sf/saxon/expr/parser/XPathParser;->isKeyword(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iput-boolean v4, v1, Lnet/sf/saxon/query/XQueryParser$d;->b:Z

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    :cond_1
    :goto_1
    const-string v3, "empty"

    invoke-virtual {p0, v3}, Lnet/sf/saxon/expr/parser/XPathParser;->isKeyword(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    const-string v3, "greatest"

    invoke-virtual {p0, v3}, Lnet/sf/saxon/expr/parser/XPathParser;->isKeyword(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iput-boolean v4, v1, Lnet/sf/saxon/query/XQueryParser$d;->c:Z

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    goto :goto_2

    :cond_2
    const-string v3, "least"

    invoke-virtual {p0, v3}, Lnet/sf/saxon/expr/parser/XPathParser;->isKeyword(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iput-boolean v2, v1, Lnet/sf/saxon/query/XQueryParser$d;->c:Z

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    goto :goto_2

    :cond_3
    const-string v2, "\'empty\' must be followed by \'greatest\' or \'least\'"

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_4
    :goto_2
    const-string v2, "collation"

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->isKeyword(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->readCollationName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lnet/sf/saxon/query/XQueryParser$d;->d:Ljava/lang/String;

    :cond_5
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v1, v1, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_6

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    goto/16 :goto_0

    :cond_6
    return-object v0
.end method

.method public final D(Lnet/sf/saxon/query/XQueryParser$c;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p1, Lnet/sf/saxon/query/XQueryParser$c;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    :try_start_0
    iget-object v2, p1, Lnet/sf/saxon/query/XQueryParser$c;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v3}, Lnet/sf/saxon/expr/StaticContext;->getStaticBaseURI()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/sf/saxon/functions/ResolveURI;->makeAbsolute(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    iget-object v3, p1, Lnet/sf/saxon/query/XQueryParser$c;->b:Ljava/util/List;

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lnet/sf/saxon/query/XQueryParser$c;->b:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "XQST0046"

    iget v4, p1, Lnet/sf/saxon/query/XQueryParser$c;->c:I

    invoke-virtual {p0, v2, v3, v4}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    check-cast v1, Lnet/sf/saxon/query/QueryModule;

    invoke-virtual {v1}, Lnet/sf/saxon/query/QueryModule;->getUserQueryContext()Lnet/sf/saxon/query/StaticQueryContext;

    move-result-object v1

    iget-object v2, p1, Lnet/sf/saxon/query/XQueryParser$c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lnet/sf/saxon/query/StaticQueryContext;->getCompiledLibrary(Ljava/lang/String;)Lnet/sf/saxon/query/QueryLibrary;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v3, p0, Lnet/sf/saxon/query/XQueryParser;->executable:Lnet/sf/saxon/expr/instruct/Executable;

    invoke-virtual {v3, v1}, Lnet/sf/saxon/expr/instruct/Executable;->addQueryLibraryModule(Lnet/sf/saxon/query/QueryModule;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    check-cast v3, Lnet/sf/saxon/query/QueryModule;

    invoke-virtual {v1, v3}, Lnet/sf/saxon/query/QueryLibrary;->link(Lnet/sf/saxon/query/QueryModule;)V

    goto :goto_3

    :cond_1
    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v1}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    sget-object v3, Lnet/sf/saxon/lib/Feature;->XQUERY_MULTIPLE_MODULE_IMPORTS:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {v1, v3}, Lnet/sf/saxon/Configuration;->getBooleanProperty(Lnet/sf/saxon/lib/Feature;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lnet/sf/saxon/query/XQueryParser;->executable:Lnet/sf/saxon/expr/instruct/Executable;

    iget-object v3, p1, Lnet/sf/saxon/query/XQueryParser$c;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lnet/sf/saxon/expr/instruct/Executable;->getQueryLibraryModules(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    return-void

    :cond_2
    iget-object v1, p1, Lnet/sf/saxon/query/XQueryParser$c;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_2
    if-ltz v1, :cond_4

    iget-object v3, p0, Lnet/sf/saxon/query/XQueryParser;->executable:Lnet/sf/saxon/expr/instruct/Executable;

    iget-object v4, p1, Lnet/sf/saxon/query/XQueryParser$c;->b:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lnet/sf/saxon/expr/instruct/Executable;->isQueryLocationHintProcessed(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p1, Lnet/sf/saxon/query/XQueryParser$c;->b:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_4
    :goto_3
    iget-object v1, p1, Lnet/sf/saxon/query/XQueryParser$c;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lnet/sf/saxon/query/XQueryParser;->executable:Lnet/sf/saxon/expr/instruct/Executable;

    iget-object v3, p1, Lnet/sf/saxon/query/XQueryParser$c;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lnet/sf/saxon/expr/instruct/Executable;->getQueryLibraryModules(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    return-void

    :cond_5
    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    check-cast v1, Lnet/sf/saxon/query/QueryModule;

    invoke-virtual {v1}, Lnet/sf/saxon/query/QueryModule;->getUserQueryContext()Lnet/sf/saxon/query/StaticQueryContext;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/query/StaticQueryContext;->getModuleURIResolver()Lnet/sf/saxon/lib/ModuleURIResolver;

    move-result-object v1

    iget-object v3, p1, Lnet/sf/saxon/query/XQueryParser$c;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v4, v3, [Ljava/lang/String;

    move v5, v0

    :goto_4
    if-ge v5, v3, :cond_6

    iget-object v6, p1, Lnet/sf/saxon/query/XQueryParser$c;->b:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_6
    if-eqz v1, :cond_7

    :try_start_1
    iget-object v5, p1, Lnet/sf/saxon/query/XQueryParser$c;->a:Ljava/lang/String;

    iget-object v6, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v6}, Lnet/sf/saxon/expr/StaticContext;->getStaticBaseURI()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6, v4}, Lnet/sf/saxon/lib/ModuleURIResolver;->resolve(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljavax/xml/transform/stream/StreamSource;

    move-result-object v1
    :try_end_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to resolve URI of imported module: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "XQST0059"

    iget v6, p1, Lnet/sf/saxon/query/XQueryParser$c;->c:I

    invoke-virtual {p0, v1, v5, v6}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_7
    const/4 v1, 0x0

    :goto_5
    if-nez v1, :cond_8

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v1}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->getStandardModuleURIResolver()Lnet/sf/saxon/lib/ModuleURIResolver;

    move-result-object v1

    iget-object v5, p1, Lnet/sf/saxon/query/XQueryParser$c;->a:Ljava/lang/String;

    iget-object v6, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v6}, Lnet/sf/saxon/expr/StaticContext;->getStaticBaseURI()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6, v4}, Lnet/sf/saxon/lib/ModuleURIResolver;->resolve(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljavax/xml/transform/stream/StreamSource;

    move-result-object v1

    :cond_8
    iget-object v5, p1, Lnet/sf/saxon/query/XQueryParser$c;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lnet/sf/saxon/query/XQueryParser;->executable:Lnet/sf/saxon/expr/instruct/Executable;

    invoke-virtual {v7, v6}, Lnet/sf/saxon/expr/instruct/Executable;->addQueryLocationHintProcessed(Ljava/lang/String;)V

    goto :goto_6

    :cond_9
    move v5, v0

    :goto_7
    array-length v6, v1

    if-ge v5, v6, :cond_11

    aget-object v6, v1, v5

    invoke-virtual {v6}, Ljavax/xml/transform/stream/StreamSource;->getSystemId()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_b

    if-ge v5, v3, :cond_a

    aget-object v7, v4, v5

    goto :goto_8

    :cond_a
    iget-object v7, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v7}, Lnet/sf/saxon/expr/StaticContext;->getStaticBaseURI()Ljava/lang/String;

    move-result-object v7

    :goto_8
    invoke-virtual {v6, v7}, Ljavax/xml/transform/stream/StreamSource;->setSystemId(Ljava/lang/String;)V

    :cond_b
    iget-object v8, p0, Lnet/sf/saxon/query/XQueryParser;->executable:Lnet/sf/saxon/expr/instruct/Executable;

    iget-object v9, p1, Lnet/sf/saxon/query/XQueryParser$c;->a:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lnet/sf/saxon/expr/instruct/Executable;->getQueryLibraryModules(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_d

    if-ge v5, v3, :cond_d

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnet/sf/saxon/query/QueryModule;

    invoke-virtual {v9}, Lnet/sf/saxon/query/QueryModule;->getLocationURI()Ljava/net/URI;

    move-result-object v9

    if-eqz v9, :cond_c

    invoke-virtual {v9}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p1, Lnet/sf/saxon/query/XQueryParser$c;->b:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    move v8, v2

    goto :goto_9

    :cond_d
    move v8, v0

    :goto_9
    if-eqz v8, :cond_e

    goto :goto_c

    :cond_e
    :try_start_2
    iget-object v8, p0, Lnet/sf/saxon/expr/parser/XPathParser;->charChecker:Lnet/sf/saxon/z/IntPredicateProxy;

    invoke-static {v6, v8}, Lnet/sf/saxon/query/QueryReader;->readSourceQuery(Ljavax/xml/transform/stream/StreamSource;Lnet/sf/saxon/z/IntPredicateProxy;)Ljava/lang/String;

    move-result-object v8
    :try_end_2
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    invoke-virtual {v6}, Ljavax/xml/transform/stream/StreamSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    if-eqz v9, :cond_f

    invoke-virtual {v6}, Ljavax/xml/transform/stream/StreamSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    goto :goto_a

    :cond_f
    invoke-virtual {v6}, Ljavax/xml/transform/stream/StreamSource;->getReader()Ljava/io/Reader;

    move-result-object v9

    if-eqz v9, :cond_10

    invoke-virtual {v6}, Ljavax/xml/transform/stream/StreamSource;->getReader()Ljava/io/Reader;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/Reader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_10
    :goto_a
    :try_start_4
    iget-object v6, p0, Lnet/sf/saxon/query/XQueryParser;->executable:Lnet/sf/saxon/expr/instruct/Executable;

    iget-object v9, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    check-cast v9, Lnet/sf/saxon/query/QueryModule;

    iget-object v10, p1, Lnet/sf/saxon/query/XQueryParser$c;->a:Ljava/lang/String;

    invoke-static {v7, v6, v9, v8, v10}, Lnet/sf/saxon/query/QueryModule;->makeQueryModule(Ljava/lang/String;Lnet/sf/saxon/expr/instruct/Executable;Lnet/sf/saxon/query/QueryModule;Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/query/QueryModule;

    goto :goto_b

    :catch_2
    new-instance v6, Lnet/sf/saxon/trans/XPathException;

    const-string v7, "Failure while closing file for imported query module"

    invoke-direct {v6, v7}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_4
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    move-exception v6

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->makeLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v7

    invoke-virtual {v6, v7}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {p0, v6}, Lnet/sf/saxon/query/XQueryParser;->P0(Lnet/sf/saxon/trans/XPathException;)V

    :goto_b
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_7

    :cond_11
    :goto_c
    return-void
.end method

.method public final D0(I)Lnet/sf/saxon/expr/Expression;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v1, 0xd7

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->allowXPath31Syntax:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->lookAhead()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lnet/sf/saxon/query/XQueryParser;->stringify(Lnet/sf/saxon/expr/Expression;ZLnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    new-instance v1, Lnet/sf/saxon/expr/instruct/ValueOf;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3, v2}, Lnet/sf/saxon/expr/instruct/ValueOf;-><init>(Lnet/sf/saxon/expr/Expression;ZZ)V

    invoke-virtual {p0, v1, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;I)V

    const/4 p1, 0x0

    invoke-virtual {p0, v1, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->makeTracer(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public final E(Lnet/sf/saxon/query/XQueryParser$c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v0}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p1, Lnet/sf/saxon/query/XQueryParser$c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->isSchemaAvailable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p1, Lnet/sf/saxon/query/XQueryParser$c;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->makePipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v2}, Lnet/sf/saxon/expr/StaticContext;->getStaticBaseURI()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lnet/sf/saxon/query/XQueryParser$c;->b:Ljava/util/List;

    iget-object v4, p1, Lnet/sf/saxon/query/XQueryParser$c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lnet/sf/saxon/Configuration;->readMultipleSchemas(Lnet/sf/saxon/event/PipelineConfiguration;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    iget-object v1, p0, Lnet/sf/saxon/query/XQueryParser;->x:Ljava/util/List;

    iget-object v2, p1, Lnet/sf/saxon/query/XQueryParser$c;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lnet/sf/saxon/type/SchemaException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in schema "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lnet/sf/saxon/query/XQueryParser$c;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "XQST0059"

    iget v3, p1, Lnet/sf/saxon/query/XQueryParser$c;->c:I

    invoke-virtual {p0, v1, v2, v3}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    :cond_0
    iget-object v1, p1, Lnet/sf/saxon/query/XQueryParser$c;->a:Ljava/lang/String;

    const-string v2, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Lnet/sf/saxon/query/XQueryParser$c;->a:Ljava/lang/String;

    const-string v2, "http://www.w3.org/2005/xpath-functions"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Lnet/sf/saxon/query/XQueryParser$c;->a:Ljava/lang/String;

    const-string v2, "http://www.w3.org/2001/XMLSchema-instance"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to locate requested schema "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lnet/sf/saxon/query/XQueryParser$c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "XQST0059"

    iget v3, p1, Lnet/sf/saxon/query/XQueryParser$c;->c:I

    invoke-virtual {p0, v1, v2, v3}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v1, p1, Lnet/sf/saxon/query/XQueryParser$c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->addSchemaForBuiltInNamespace(Ljava/lang/String;)V

    :cond_3
    :goto_1
    iget-object p0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    move-object v1, p0

    check-cast v1, Lnet/sf/saxon/query/QueryModule;

    iget-object v2, p1, Lnet/sf/saxon/query/XQueryParser$c;->a:Ljava/lang/String;

    invoke-interface {p0}, Lnet/sf/saxon/expr/StaticContext;->getStaticBaseURI()Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Lnet/sf/saxon/query/XQueryParser$c;->b:Ljava/util/List;

    invoke-virtual {v1, v2, p0, p1}, Lnet/sf/saxon/query/QueryModule;->addImportedSchema(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final E0(Lnet/sf/saxon/expr/flwor/FLWORExpression;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/expr/flwor/FLWORExpression;",
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/flwor/Clause;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/expr/flwor/DiagnosticClause;

    invoke-direct {v0}, Lnet/sf/saxon/expr/flwor/DiagnosticClause;-><init>()V

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v1, v1, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenStartOffset:I

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/flwor/Clause;I)V

    invoke-static {p2}, Lnet/sf/saxon/query/XQueryParser;->containsLoopingClause(Ljava/util/List;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/flwor/Clause;->setRepeated(Z)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lnet/sf/saxon/expr/flwor/DiagnosticClause;->initSequence(Lnet/sf/saxon/expr/flwor/FLWORExpression;Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method

.method public final F(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid serialization property ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->warning(Ljava/lang/String;)V

    return-void
.end method

.method public final F0(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/expr/LetExpression;)Lnet/sf/saxon/expr/Expression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->makeLetExpression()Lnet/sf/saxon/expr/LetExpression;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/Assignation;->setRequiredType(Lnet/sf/saxon/value/SequenceType;)V

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Assignation;->setVariableQName(Lnet/sf/saxon/om/StructuredQName;)V

    new-instance p1, Lnet/sf/saxon/expr/LocalVariableReference;

    invoke-direct {p1, p2}, Lnet/sf/saxon/expr/LocalVariableReference;-><init>(Lnet/sf/saxon/expr/LocalBinding;)V

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Assignation;->setSequence(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->declareRangeVariable(Lnet/sf/saxon/expr/LocalBinding;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExprSingle()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->undeclareRangeVariable()V

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Assignation;->setAction(Lnet/sf/saxon/expr/Expression;)V

    return-object v0
.end method

.method public final G(Lnet/sf/saxon/expr/flwor/FLWORExpression;Lnet/sf/saxon/expr/flwor/ForClause;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean p1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->allowXPath30Syntax:Z

    if-nez p1, :cond_0

    const-string p1, "The \'allowing empty\' option requires XQuery 3.0"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2}, Lnet/sf/saxon/expr/flwor/ForClause;->getRangeVariable()Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getRequiredType()Lnet/sf/saxon/value/SequenceType;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result p1

    invoke-static {p1}, Lnet/sf/saxon/value/Cardinality;->allowsZero(I)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "When \'allowing empty\' is specified, the occurrence indicator on the range variable type should be \'?\'"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->warning(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final G0(Lnet/sf/saxon/query/AnnotationList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenStartOffset:I

    new-instance v1, Lnet/sf/saxon/expr/instruct/GlobalVariable;

    invoke-direct {v1}, Lnet/sf/saxon/expr/instruct/GlobalVariable;-><init>()V

    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v2}, Lnet/sf/saxon/expr/StaticContext;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/sf/saxon/expr/instruct/Actor;->setPackageData(Lnet/sf/saxon/expr/PackageData;)V

    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/parser/Tokenizer;->getLineNumber()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lnet/sf/saxon/expr/instruct/Actor;->setLineNumber(I)V

    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/parser/Tokenizer;->getColumnNumber()I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lnet/sf/saxon/expr/instruct/Actor;->setColumnNumber(I)V

    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v2}, Lnet/sf/saxon/expr/StaticContext;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/sf/saxon/expr/instruct/Actor;->setSystemId(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    sget-object v2, Lnet/sf/saxon/query/Annotation;->PRIVATE:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p1, v2}, Lnet/sf/saxon/query/AnnotationList;->includes(Lnet/sf/saxon/om/StructuredQName;)Z

    move-result p1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->setPrivate(Z)V

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    const/16 p1, 0x15

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    iget-object p1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {p1, v3}, Lnet/sf/saxon/expr/parser/Tokenizer;->setState(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    const/16 p1, 0xc9

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v2, v2, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Lnet/sf/saxon/expr/parser/XPathParser;->makeStructuredQName(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v3

    invoke-virtual {v1, v3}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->setVariableQName(Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {v3}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    check-cast v5, Lnet/sf/saxon/query/QueryModule;

    invoke-virtual {v5}, Lnet/sf/saxon/query/QueryModule;->getModuleNamespace()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "A variable declared in a library module must be in the module namespace"

    const-string v6, "XQST0048"

    invoke-virtual {p0, v5, v6, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    sget-object v0, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    iget-object v5, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v6, v5, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v7, 0x47

    if-ne v6, v7, :cond_2

    const/4 v0, 0x2

    invoke-virtual {v5, v0}, Lnet/sf/saxon/expr/parser/Tokenizer;->setState(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseSequenceType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    :cond_2
    invoke-virtual {v1, v0}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->setRequiredType(Lnet/sf/saxon/value/SequenceType;)V

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v5, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/4 v6, 0x0

    const/16 v7, 0x3a

    if-ne v5, v7, :cond_3

    invoke-virtual {v0, v6}, Lnet/sf/saxon/expr/parser/Tokenizer;->setState(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExprSingle()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p0, p1, v3}, Lnet/sf/saxon/expr/parser/XPathParser;->makeTracer(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/instruct/Actor;->setBody(Lnet/sf/saxon/expr/Expression;)V

    goto :goto_0

    :cond_3
    if-ne v5, p1, :cond_6

    const-string p1, "external"

    iget-object v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    new-instance p1, Lnet/sf/saxon/expr/instruct/GlobalParam;

    invoke-direct {p1}, Lnet/sf/saxon/expr/instruct/GlobalParam;-><init>()V

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v0}, Lnet/sf/saxon/expr/StaticContext;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/sf/saxon/expr/instruct/Actor;->setPackageData(Lnet/sf/saxon/expr/PackageData;)V

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/Actor;->getLineNumber()I

    move-result v0

    invoke-virtual {p1, v0}, Lnet/sf/saxon/expr/instruct/Actor;->setLineNumber(I)V

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/Actor;->getColumnNumber()I

    move-result v0

    invoke-virtual {p1, v0}, Lnet/sf/saxon/expr/instruct/Actor;->setColumnNumber(I)V

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/Actor;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/sf/saxon/expr/instruct/Actor;->setSystemId(Ljava/lang/String;)V

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->setVariableQName(Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->getRequiredType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->setRequiredType(Lnet/sf/saxon/value/SequenceType;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    if-ne v1, v7, :cond_4

    invoke-virtual {v0, v6}, Lnet/sf/saxon/expr/parser/Tokenizer;->setState(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExprSingle()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lnet/sf/saxon/expr/parser/XPathParser;->makeTracer(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/sf/saxon/expr/instruct/Actor;->setBody(Lnet/sf/saxon/expr/Expression;)V

    :cond_4
    move-object v1, p1

    goto :goto_0

    :cond_5
    const-string p1, "Variable must either be initialized or be declared as external"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string p1, "Expected \':=\' or \'external\' in variable declaration"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    move-object v0, p1

    check-cast v0, Lnet/sf/saxon/query/QueryModule;

    invoke-interface {p1}, Lnet/sf/saxon/expr/StaticContext;->makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/instruct/Actor;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/Actor;->getBody()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/Actor;->getBody()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-static {v3, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->setDeepRetainedStaticContext(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    :cond_7
    invoke-virtual {v0}, Lnet/sf/saxon/query/QueryModule;->getModuleNamespace()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {v0}, Lnet/sf/saxon/query/QueryModule;->getModuleNamespace()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Variable "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not defined in the module namespace"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_8
    :try_start_0
    invoke-virtual {v0, v1}, Lnet/sf/saxon/query/QueryModule;->declareVariable(Lnet/sf/saxon/expr/instruct/GlobalVariable;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p1, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Lnet/sf/saxon/om/StructuredQName;I)V

    :goto_1
    return-void
.end method

.method public final H(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lnet/sf/saxon/om/NameChecker;->isValidNCName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The namespace prefix "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not a valid NCName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_0
    const-string v0, ""

    if-nez p1, :cond_1

    move-object p1, v0

    :cond_1
    if-nez p2, :cond_2

    move-object p2, v0

    :cond_2
    const-string v0, "xmlns"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "XQST0070"

    if-eqz v0, :cond_3

    const-string v0, "The namespace prefix \'xmlns\' cannot be redeclared"

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v0, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "The xmlns namespace URI is reserved"

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v0, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "xml"

    if-eqz v2, :cond_5

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "The XML namespace cannot be bound to any prefix other than \'xml\'"

    invoke-virtual {p0, v2, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "The prefix \'xml\' cannot be bound to any namespace other than http://www.w3.org/XML/1998/namespace"

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public final H0()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v1, 0x58

    const-string v2, "XQST0087"

    const-string v3, "Encoding name contains invalid characters"

    const/16 v4, 0x95

    const/16 v5, 0xca

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0, v5}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/query/XQueryParser;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3.0"

    const-string v6, "3.1"

    const-string v7, "1.0"

    const-string v8, "4.0"

    filled-new-array {v7, v1, v6, v8}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid XQuery version "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "XQST0031"

    invoke-virtual {p0, v1, v6}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->allowXPath40Syntax:Z

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    const-string v1, "encoding"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0, v5}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    sget-object v0, Lnet/sf/saxon/query/XQueryParser;->C:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v1, v1, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lnet/sf/saxon/query/XQueryParser;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, v3, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    :cond_3
    invoke-virtual {p0, v4}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    goto :goto_0

    :cond_4
    const/16 v1, 0x59

    if-ne v0, v1, :cond_6

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0, v5}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    sget-object v0, Lnet/sf/saxon/query/XQueryParser;->C:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v1, v1, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0, v3, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0, v4}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    :cond_6
    :goto_0
    return-void
.end method

.method public final I(CC)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    if-eq p1, p2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, "\', found "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string p1, "end of input"

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final I0(Lnet/sf/saxon/expr/flwor/FLWORExpression;Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/expr/flwor/FLWORExpression;",
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/flwor/Clause;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/expr/flwor/WindowClause;

    invoke-direct {v0}, Lnet/sf/saxon/expr/flwor/WindowClause;-><init>()V

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v1, v1, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenStartOffset:I

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/flwor/Clause;I)V

    invoke-static {p2}, Lnet/sf/saxon/query/XQueryParser;->containsLoopingClause(Ljava/util/List;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/flwor/Clause;->setRepeated(Z)V

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v1, v1, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v2, 0x4a

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/flwor/WindowClause;->setIsSlidingWindow(Z)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    const-string v1, "window"

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->isKeyword(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "after \'sliding\' or \'tumbling\', expected \'window\', but found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->currentTokenDisplay()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->O0()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    sget-object v2, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    iget-object v5, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v5, v5, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v6, 0x47

    if-ne v5, v6, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseSequenceType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v2

    :cond_2
    new-instance v5, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    invoke-direct {v5, v1, v2}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;-><init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/value/SequenceType;)V

    invoke-virtual {v0, v4, v5}, Lnet/sf/saxon/expr/flwor/WindowClause;->setVariableBinding(ILnet/sf/saxon/expr/flwor/LocalVariableBinding;)V

    sget-object v1, Lnet/sf/saxon/value/SequenceType;->SINGLE_ITEM:Lnet/sf/saxon/value/SequenceType;

    sget-object v2, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_ITEM:Lnet/sf/saxon/value/SequenceType;

    const/16 v6, 0x1f

    invoke-virtual {p0, v6}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExprSingle()Lnet/sf/saxon/expr/Expression;

    move-result-object v6

    invoke-virtual {v0, p1, v6}, Lnet/sf/saxon/expr/flwor/WindowClause;->initSequence(Lnet/sf/saxon/expr/flwor/FLWORExpression;Lnet/sf/saxon/expr/Expression;)V

    const-string v6, "start"

    invoke-virtual {p0, v6}, Lnet/sf/saxon/expr/parser/XPathParser;->isKeyword(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "in window clause, expected \'start\', but found "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->currentTokenDisplay()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_3
    iget-object v6, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {v6, v3}, Lnet/sf/saxon/expr/parser/Tokenizer;->setState(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    iget-object v6, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v6, v6, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v7, 0x15

    if-ne v6, v7, :cond_4

    new-instance v6, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->O0()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v8

    invoke-direct {v6, v8, v1}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;-><init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/value/SequenceType;)V

    invoke-virtual {v0, v3, v6}, Lnet/sf/saxon/expr/flwor/WindowClause;->setVariableBinding(ILnet/sf/saxon/expr/flwor/LocalVariableBinding;)V

    invoke-virtual {p0, v6}, Lnet/sf/saxon/expr/parser/XPathParser;->declareRangeVariable(Lnet/sf/saxon/expr/LocalBinding;)V

    :cond_4
    const-string v6, "at"

    invoke-virtual {p0, v6}, Lnet/sf/saxon/expr/parser/XPathParser;->isKeyword(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    new-instance v8, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->O0()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v9

    sget-object v10, Lnet/sf/saxon/value/SequenceType;->SINGLE_INTEGER:Lnet/sf/saxon/value/SequenceType;

    invoke-direct {v8, v9, v10}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;-><init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/value/SequenceType;)V

    const/4 v9, 0x2

    invoke-virtual {v0, v9, v8}, Lnet/sf/saxon/expr/flwor/WindowClause;->setVariableBinding(ILnet/sf/saxon/expr/flwor/LocalVariableBinding;)V

    invoke-virtual {p0, v8}, Lnet/sf/saxon/expr/parser/XPathParser;->declareRangeVariable(Lnet/sf/saxon/expr/LocalBinding;)V

    :cond_5
    const-string v8, "previous"

    invoke-virtual {p0, v8}, Lnet/sf/saxon/expr/parser/XPathParser;->isKeyword(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    new-instance v9, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->O0()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v10

    invoke-direct {v9, v10, v2}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;-><init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/value/SequenceType;)V

    const/4 v10, 0x3

    invoke-virtual {v0, v10, v9}, Lnet/sf/saxon/expr/flwor/WindowClause;->setVariableBinding(ILnet/sf/saxon/expr/flwor/LocalVariableBinding;)V

    invoke-virtual {p0, v9}, Lnet/sf/saxon/expr/parser/XPathParser;->declareRangeVariable(Lnet/sf/saxon/expr/LocalBinding;)V

    :cond_6
    const-string v9, "next"

    invoke-virtual {p0, v9}, Lnet/sf/saxon/expr/parser/XPathParser;->isKeyword(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    new-instance v10, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->O0()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v11

    invoke-direct {v10, v11, v2}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;-><init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/value/SequenceType;)V

    const/4 v11, 0x4

    invoke-virtual {v0, v11, v10}, Lnet/sf/saxon/expr/flwor/WindowClause;->setVariableBinding(ILnet/sf/saxon/expr/flwor/LocalVariableBinding;)V

    invoke-virtual {p0, v10}, Lnet/sf/saxon/expr/parser/XPathParser;->declareRangeVariable(Lnet/sf/saxon/expr/LocalBinding;)V

    :cond_7
    const-string v10, "when"

    invoke-virtual {p0, v10}, Lnet/sf/saxon/expr/parser/XPathParser;->isKeyword(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_8

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Expected \'when\' condition for window start, but found "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->currentTokenDisplay()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_8
    iget-object v11, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {v11, v4}, Lnet/sf/saxon/expr/parser/Tokenizer;->setState(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExprSingle()Lnet/sf/saxon/expr/Expression;

    move-result-object v11

    invoke-virtual {v0, p1, v11}, Lnet/sf/saxon/expr/flwor/WindowClause;->initStartCondition(Lnet/sf/saxon/expr/flwor/FLWORExpression;Lnet/sf/saxon/expr/Expression;)V

    const-string v11, "only"

    invoke-virtual {p0, v11}, Lnet/sf/saxon/expr/parser/XPathParser;->isKeyword(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-virtual {v0, v4}, Lnet/sf/saxon/expr/flwor/WindowClause;->setIncludeUnclosedWindows(Z)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    :cond_9
    const-string v11, "end"

    invoke-virtual {p0, v11}, Lnet/sf/saxon/expr/parser/XPathParser;->isKeyword(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f

    iget-object v11, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {v11, v3}, Lnet/sf/saxon/expr/parser/Tokenizer;->setState(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    iget-object v3, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v3, v3, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    if-ne v3, v7, :cond_a

    new-instance v3, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->O0()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v7

    invoke-direct {v3, v7, v1}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;-><init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/value/SequenceType;)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Lnet/sf/saxon/expr/flwor/WindowClause;->setVariableBinding(ILnet/sf/saxon/expr/flwor/LocalVariableBinding;)V

    invoke-virtual {p0, v3}, Lnet/sf/saxon/expr/parser/XPathParser;->declareRangeVariable(Lnet/sf/saxon/expr/LocalBinding;)V

    :cond_a
    invoke-virtual {p0, v6}, Lnet/sf/saxon/expr/parser/XPathParser;->isKeyword(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    new-instance v1, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->O0()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v3

    sget-object v6, Lnet/sf/saxon/value/SequenceType;->SINGLE_INTEGER:Lnet/sf/saxon/value/SequenceType;

    invoke-direct {v1, v3, v6}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;-><init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/value/SequenceType;)V

    const/4 v3, 0x6

    invoke-virtual {v0, v3, v1}, Lnet/sf/saxon/expr/flwor/WindowClause;->setVariableBinding(ILnet/sf/saxon/expr/flwor/LocalVariableBinding;)V

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->declareRangeVariable(Lnet/sf/saxon/expr/LocalBinding;)V

    :cond_b
    invoke-virtual {p0, v8}, Lnet/sf/saxon/expr/parser/XPathParser;->isKeyword(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    new-instance v1, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->O0()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;-><init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/value/SequenceType;)V

    const/4 v3, 0x7

    invoke-virtual {v0, v3, v1}, Lnet/sf/saxon/expr/flwor/WindowClause;->setVariableBinding(ILnet/sf/saxon/expr/flwor/LocalVariableBinding;)V

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->declareRangeVariable(Lnet/sf/saxon/expr/LocalBinding;)V

    :cond_c
    invoke-virtual {p0, v9}, Lnet/sf/saxon/expr/parser/XPathParser;->isKeyword(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    new-instance v1, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->O0()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;-><init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/value/SequenceType;)V

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Lnet/sf/saxon/expr/flwor/WindowClause;->setVariableBinding(ILnet/sf/saxon/expr/flwor/LocalVariableBinding;)V

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->declareRangeVariable(Lnet/sf/saxon/expr/LocalBinding;)V

    :cond_d
    invoke-virtual {p0, v10}, Lnet/sf/saxon/expr/parser/XPathParser;->isKeyword(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected \'when\' condition for window end, but found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->currentTokenDisplay()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_e
    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {v1, v4}, Lnet/sf/saxon/expr/parser/Tokenizer;->setState(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExprSingle()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lnet/sf/saxon/expr/flwor/WindowClause;->initEndCondition(Lnet/sf/saxon/expr/flwor/FLWORExpression;Lnet/sf/saxon/expr/Expression;)V

    goto :goto_1

    :cond_f
    invoke-virtual {v0}, Lnet/sf/saxon/expr/flwor/WindowClause;->isSlidingWindow()Z

    move-result p1

    if-eqz p1, :cond_10

    const-string p1, "A sliding window requires an end condition"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_10
    :goto_1
    invoke-virtual {p0, v5}, Lnet/sf/saxon/expr/parser/XPathParser;->declareRangeVariable(Lnet/sf/saxon/expr/LocalBinding;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final J(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/sf/saxon/om/StructuredQName;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/flwor/Clause;",
            ">;",
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/LocalVariableReference;",
            ">;",
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/flwor/LocalVariableBinding;",
            ">;",
            "Lnet/sf/saxon/om/StructuredQName;",
            ")Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    :goto_0
    const/4 v1, 0x0

    if-ltz p0, :cond_2

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/flwor/Clause;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/flwor/Clause;->getRangeVariables()[Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v2

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    invoke-virtual {v4}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v5

    invoke-virtual {p4, v5}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Lnet/sf/saxon/expr/LocalVariableReference;

    invoke-direct {p0, v4}, Lnet/sf/saxon/expr/LocalVariableReference;-><init>(Lnet/sf/saxon/expr/LocalBinding;)V

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final J0()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "http://www.w3.org/2005/xpath-functions/collation/codepoint"

    const-string v1, "Default collation name \'"

    iget-boolean v2, p0, Lnet/sf/saxon/query/XQueryParser;->w:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lnet/sf/saxon/query/XQueryParser;->w:Z

    iget-boolean v2, p0, Lnet/sf/saxon/query/XQueryParser;->o:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v2}, Lnet/sf/saxon/expr/StaticContext;->getDefaultCollationName()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URI;->isAbsolute()Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/net/URI;

    iget-object v5, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v5}, Lnet/sf/saxon/expr/StaticContext;->getStaticBaseURI()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' is not a valid URI"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "XQST0046"

    invoke-virtual {p0, v2, v3}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    :cond_1
    :goto_0
    iget-object v3, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v3}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v3

    invoke-virtual {v3, v2}, Lnet/sf/saxon/Configuration;->getCollation(Ljava/lang/String;)Lnet/sf/saxon/lib/StringCollator;

    move-result-object v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' is not a recognized collation"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "XQST0038"

    invoke-virtual {p0, v1, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    check-cast v1, Lnet/sf/saxon/query/QueryModule;

    invoke-virtual {v1, v0}, Lnet/sf/saxon/query/QueryModule;->setDefaultCollationName(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lnet/sf/saxon/query/XQueryParser;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/query/XQueryParser$c;

    :try_start_1
    invoke-virtual {p0, v1}, Lnet/sf/saxon/query/XQueryParser;->E(Lnet/sf/saxon/query/XQueryParser$c;)V
    :try_end_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Lnet/sf/saxon/trans/XPathException;->hasBeenReported()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    iget v0, v1, Lnet/sf/saxon/query/XQueryParser$c;->c:I

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->makeLocation(I)Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {v2, p0}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    throw v2

    :cond_5
    iget-object v0, p0, Lnet/sf/saxon/query/XQueryParser;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/query/XQueryParser$c;

    :try_start_2
    invoke-virtual {p0, v1}, Lnet/sf/saxon/query/XQueryParser;->D(Lnet/sf/saxon/query/XQueryParser$c;)V
    :try_end_2
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Lnet/sf/saxon/trans/XPathException;->hasBeenReported()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_3

    :cond_6
    iget v0, v1, Lnet/sf/saxon/query/XQueryParser$c;->c:I

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->makeLocation(I)Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {v2, p0}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    throw v2

    :cond_7
    return-void
.end method

.method public final K(Ljava/lang/String;ICZ)Lnet/sf/saxon/expr/Expression;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->makeLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    :goto_0
    const/4 v3, 0x1

    if-ge p2, v2, :cond_c

    invoke-virtual {p1, p3, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-ltz v4, :cond_b

    const-string v5, "{"

    invoke-virtual {p1, v5, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "{{"

    invoke-virtual {p1, v6, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "}"

    invoke-virtual {p1, v7, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    const-string v8, "}}"

    invoke-virtual {p1, v8, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    if-ltz v5, :cond_0

    if-ge v4, v5, :cond_1

    :cond_0
    if-ltz v7, :cond_9

    if-ge v4, v7, :cond_1

    goto/16 :goto_1

    :cond_1
    if-ltz v7, :cond_4

    if-ltz v5, :cond_2

    if-ge v7, v5, :cond_4

    :cond_2
    if-ne v7, v8, :cond_3

    add-int/lit8 v3, v7, 0x1

    invoke-virtual {p0, v1, p1, p2, v3}, Lnet/sf/saxon/query/XQueryParser;->C(Ljava/util/List;Ljava/lang/String;II)V

    add-int/lit8 p2, v7, 0x2

    goto :goto_0

    :cond_3
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Closing curly brace in attribute value template \""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" must be doubled"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lnet/sf/saxon/trans/XPathException;->setIsStaticError(Z)V

    throw p0

    :cond_4
    if-ltz v6, :cond_5

    if-ne v6, v5, :cond_5

    add-int/lit8 v3, v6, 0x1

    invoke-virtual {p0, v1, p1, p2, v3}, Lnet/sf/saxon/query/XQueryParser;->C(Ljava/util/List;Ljava/lang/String;II)V

    add-int/lit8 p2, v6, 0x2

    goto :goto_0

    :cond_5
    if-ltz v5, :cond_8

    if-le v5, p2, :cond_6

    invoke-virtual {p0, v1, p1, p2, v5}, Lnet/sf/saxon/query/XQueryParser;->C(Ljava/util/List;Ljava/lang/String;II)V

    :cond_6
    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->M()Lnet/sf/saxon/query/XQueryParser;

    move-result-object p2

    iget-object v4, p0, Lnet/sf/saxon/query/XQueryParser;->executable:Lnet/sf/saxon/expr/instruct/Executable;

    iput-object v4, p2, Lnet/sf/saxon/query/XQueryParser;->executable:Lnet/sf/saxon/expr/instruct/Executable;

    iget-boolean v4, p0, Lnet/sf/saxon/expr/parser/XPathParser;->allowXPath31Syntax:Z

    invoke-virtual {p2, v4}, Lnet/sf/saxon/expr/parser/XPathParser;->setAllowAbsentExpression(Z)V

    invoke-virtual {p2, p4}, Lnet/sf/saxon/expr/parser/XPathParser;->setScanOnly(Z)V

    iget-object v4, p0, Lnet/sf/saxon/expr/parser/XPathParser;->rangeVariables:Lnet/sf/saxon/tree/util/IndexedStack;

    invoke-virtual {p2, v4}, Lnet/sf/saxon/expr/parser/XPathParser;->setRangeVariableStack(Lnet/sf/saxon/tree/util/IndexedStack;)V

    iget v4, p0, Lnet/sf/saxon/expr/parser/XPathParser;->catchDepth:I

    invoke-virtual {p2, v4}, Lnet/sf/saxon/expr/parser/XPathParser;->setCatchDepth(I)V

    add-int/lit8 v5, v5, 0x1

    const/16 v4, 0xd7

    iget-object v6, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-virtual {p2, p1, v5, v4, v6}, Lnet/sf/saxon/expr/parser/XPathParser;->parse(Ljava/lang/String;IILnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    if-nez p4, :cond_7

    invoke-virtual {v4}, Lnet/sf/saxon/expr/Expression;->simplify()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    :cond_7
    invoke-virtual {p2}, Lnet/sf/saxon/expr/parser/XPathParser;->getTokenizer()Lnet/sf/saxon/expr/parser/Tokenizer;

    move-result-object p2

    iget p2, p2, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenStartOffset:I

    add-int/2addr p2, v3

    iget-object v3, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-static {v4, v3}, Lnet/sf/saxon/query/XQueryParser;->makeStringJoin(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Internal error parsing direct attribute constructor"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    :goto_1
    invoke-virtual {p0, v1, p1, p2, v4}, Lnet/sf/saxon/query/XQueryParser;->C(Ljava/util/List;Ljava/lang/String;II)V

    add-int/lit8 p2, v4, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge p2, v5, :cond_a

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-ne p2, p3, :cond_a

    new-instance p2, Lnet/sf/saxon/expr/StringLiteral;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v3}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, v4, 0x2

    goto/16 :goto_0

    :cond_a
    move p2, v4

    goto :goto_2

    :cond_b
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Attribute constructor is not properly terminated"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lnet/sf/saxon/trans/XPathException;->setIsStaticError(Z)V

    throw p0

    :cond_c
    :goto_2
    if-eqz p4, :cond_d

    int-to-long p0, p2

    invoke-static {p0, p1}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/expr/Literal;

    move-result-object p0

    return-object p0

    :cond_d
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_e

    new-instance p0, Lnet/sf/saxon/expr/StringLiteral;

    sget-object p1, Lnet/sf/saxon/value/StringValue;->EMPTY_STRING:Lnet/sf/saxon/value/StringValue;

    invoke-direct {p0, p1}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Lnet/sf/saxon/value/StringValue;)V

    return-object p0

    :cond_e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v3, :cond_f

    const/4 p0, 0x0

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/Expression;

    return-object p0

    :cond_f
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lnet/sf/saxon/expr/Expression;

    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lnet/sf/saxon/expr/Expression;

    new-instance p2, Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-direct {p2, p0}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;-><init>(Lnet/sf/saxon/expr/StaticContext;)V

    const-string p0, "concat"

    invoke-static {p0, p2, p1}, Lnet/sf/saxon/functions/SystemFunction;->makeCall(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/Expression;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    return-object p0
.end method

.method public final K0(Ljava/lang/StringBuilder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/parser/Tokenizer;->nextChar()C

    move-result v0

    const/16 v1, 0x43

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/query/XQueryParser;->I(CC)V

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/parser/Tokenizer;->nextChar()C

    move-result v0

    const/16 v1, 0x44

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/query/XQueryParser;->I(CC)V

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/parser/Tokenizer;->nextChar()C

    move-result v0

    const/16 v1, 0x41

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/query/XQueryParser;->I(CC)V

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/parser/Tokenizer;->nextChar()C

    move-result v0

    const/16 v2, 0x54

    invoke-virtual {p0, v0, v2}, Lnet/sf/saxon/query/XQueryParser;->I(CC)V

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/parser/Tokenizer;->nextChar()C

    move-result v0

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/query/XQueryParser;->I(CC)V

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/parser/Tokenizer;->nextChar()C

    move-result v0

    const/16 v1, 0x5b

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/query/XQueryParser;->I(CC)V

    :goto_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "]]>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/parser/Tokenizer;->nextChar()C

    move-result v0

    if-nez v0, :cond_0

    const-string v1, "No closing \']]>\' found for CDATA section"

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x3

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void
.end method

.method public final L(Ljava/lang/String;IC)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    :goto_0
    if-ge p2, p0, :cond_1

    invoke-virtual {p1, p3, p2}, Ljava/lang/String;->indexOf(II)I

    move-result p2

    if-ltz p2, :cond_0

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p3, :cond_1

    add-int/lit8 p2, p2, 0x2

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Namespace declaration is not properly terminated"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setIsStaticError(Z)V

    throw p0

    :cond_1
    return p2
.end method

.method public final L0(Ljava/lang/String;Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/Expression;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    move v3, v0

    :goto_1
    iget-object v4, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {v4}, Lnet/sf/saxon/expr/parser/Tokenizer;->nextChar()C

    move-result v4

    const/16 v5, 0x3c

    const/4 v6, 0x1

    if-ne v4, v5, :cond_2

    iget-object v7, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {v7}, Lnet/sf/saxon/expr/parser/Tokenizer;->nextChar()C

    move-result v7

    const/16 v8, 0x21

    if-ne v7, v8, :cond_1

    iget-object v7, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {v7}, Lnet/sf/saxon/expr/parser/Tokenizer;->nextChar()C

    move-result v7

    const/16 v8, 0x5b

    if-ne v7, v8, :cond_0

    invoke-virtual {p0, v2}, Lnet/sf/saxon/query/XQueryParser;->K0(Ljava/lang/StringBuilder;)V

    goto :goto_2

    :cond_0
    iget-object v7, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {v7}, Lnet/sf/saxon/expr/parser/Tokenizer;->unreadChar()V

    iget-object v7, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {v7}, Lnet/sf/saxon/expr/parser/Tokenizer;->unreadChar()V

    goto :goto_3

    :cond_1
    iget-object v7, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {v7}, Lnet/sf/saxon/expr/parser/Tokenizer;->unreadChar()V

    goto :goto_3

    :cond_2
    const/16 v7, 0x26

    if-ne v4, v7, :cond_3

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->M0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    move v3, v6

    goto :goto_1

    :cond_3
    const/16 v7, 0x7d

    if-ne v4, v7, :cond_5

    iget-object v4, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {v4}, Lnet/sf/saxon/expr/parser/Tokenizer;->nextChar()C

    move-result v4

    if-eq v4, v7, :cond_4

    const-string v5, "\'}\' must be written as \'}}\' within element content"

    invoke-virtual {p0, v5}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    const/16 v7, 0x7b

    if-ne v4, v7, :cond_10

    iget-object v4, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {v4}, Lnet/sf/saxon/expr/parser/Tokenizer;->nextChar()C

    move-result v4

    if-eq v4, v7, :cond_f

    move v4, v7

    :goto_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7

    iget-object v7, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    check-cast v7, Lnet/sf/saxon/query/QueryModule;

    invoke-virtual {v7}, Lnet/sf/saxon/query/QueryModule;->isPreserveBoundarySpace()Z

    move-result v7

    or-int/2addr v3, v7

    if-nez v3, :cond_6

    invoke-static {v2}, Lnet/sf/saxon/str/StringView;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v3

    invoke-static {v3}, Lnet/sf/saxon/value/Whitespace;->isAllWhite(Lnet/sf/saxon/str/UnicodeString;)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_6
    new-instance v1, Lnet/sf/saxon/expr/instruct/ValueOf;

    new-instance v3, Lnet/sf/saxon/expr/StringLiteral;

    new-instance v7, Lnet/sf/saxon/value/StringValue;

    invoke-direct {v7, v2}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v7}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Lnet/sf/saxon/value/StringValue;)V

    invoke-direct {v1, v3, v0, v0}, Lnet/sf/saxon/expr/instruct/ValueOf;-><init>(Lnet/sf/saxon/expr/Expression;ZZ)V

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v0

    :cond_7
    if-ne v4, v5, :cond_b

    invoke-virtual {p0, v6}, Lnet/sf/saxon/query/XQueryParser;->y0(Z)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    instance-of v3, v2, Lnet/sf/saxon/expr/StringLiteral;

    if-eqz v3, :cond_a

    check-cast v2, Lnet/sf/saxon/expr/StringLiteral;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/StringLiteral;->getString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lnet/sf/saxon/value/Whitespace;->isWhite(I)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "End tag contains whitespace before the name"

    invoke-virtual {p0, v3}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_8
    invoke-static {v2}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    return-void

    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "End tag </"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> does not match start tag <"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3e

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "XQST0118"

    invoke-virtual {p0, v2, v3}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_b
    if-eqz v1, :cond_c

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v6

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/Expression;

    sget-object v2, Lnet/sf/saxon/type/UType;->ANY:Lnet/sf/saxon/type/UType;

    invoke-virtual {v1, v2}, Lnet/sf/saxon/expr/Expression;->getStaticUType(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object v1

    sget-object v2, Lnet/sf/saxon/type/UType;->ANY_NODE:Lnet/sf/saxon/type/UType;

    invoke-virtual {v2, v1}, Lnet/sf/saxon/type/UType;->subsumes(Lnet/sf/saxon/type/UType;)Z

    move-result v1

    if-nez v1, :cond_c

    new-instance v1, Lnet/sf/saxon/expr/instruct/ValueOf;

    new-instance v2, Lnet/sf/saxon/expr/StringLiteral;

    sget-object v3, Lnet/sf/saxon/value/StringValue;->EMPTY_STRING:Lnet/sf/saxon/value/StringValue;

    invoke-direct {v2, v3}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Lnet/sf/saxon/value/StringValue;)V

    invoke-direct {v1, v2, v0, v0}, Lnet/sf/saxon/expr/instruct/ValueOf;-><init>(Lnet/sf/saxon/expr/Expression;ZZ)V

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/parser/Tokenizer;->unreadChar()V

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {v1, v0}, Lnet/sf/saxon/expr/parser/Tokenizer;->setState(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->lookAhead()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v1, v1, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v2, 0xd7

    if-ne v1, v2, :cond_d

    iget-boolean v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->allowXPath31Syntax:Z

    if-eqz v1, :cond_d

    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_d
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v8

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    check-cast v1, Lnet/sf/saxon/query/QueryModule;

    invoke-virtual {v1}, Lnet/sf/saxon/query/QueryModule;->isPreserveNamespaces()Z

    move-result v1

    if-nez v1, :cond_e

    new-instance v1, Lnet/sf/saxon/expr/instruct/CopyOf;

    const/4 v9, 0x0

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lnet/sf/saxon/expr/instruct/CopyOf;-><init>(Lnet/sf/saxon/expr/Expression;ZILnet/sf/saxon/type/SchemaType;Z)V

    move-object v8, v1

    :cond_e
    invoke-interface {p2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    :goto_4
    move v1, v6

    goto/16 :goto_0

    :cond_f
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_10
    if-nez v4, :cond_11

    const-string v4, "Reached end of input while reading XQuery element content"

    invoke-virtual {p0, v4}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_11
    iget-object v5, p0, Lnet/sf/saxon/expr/parser/XPathParser;->charChecker:Lnet/sf/saxon/z/IntPredicateProxy;

    invoke-interface {v5, v4}, Lnet/sf/saxon/z/IntPredicateProxy;->test(I)Z

    move-result v5

    if-nez v5, :cond_12

    invoke-static {v4}, Lnet/sf/saxon/serialize/charcode/UTF16CharacterSet;->isSurrogate(I)Z

    move-result v5

    if-nez v5, :cond_12

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Character code "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v6, " is not a valid XML character"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_12
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1
.end method

.method public final M()Lnet/sf/saxon/query/XQueryParser;
    .locals 3

    new-instance v0, Lnet/sf/saxon/query/XQueryParser;

    iget v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->languageVersion:I

    invoke-direct {v0, v1}, Lnet/sf/saxon/query/XQueryParser;-><init>(I)V

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->language:Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;

    iget v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->languageVersion:I

    invoke-virtual {v0, v1, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->setLanguage(Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;I)V

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->parserExtension:Lnet/sf/saxon/expr/parser/ParserExtension;

    invoke-virtual {v0, p0}, Lnet/sf/saxon/expr/parser/XPathParser;->setParserExtension(Lnet/sf/saxon/expr/parser/ParserExtension;)V

    return-object v0
.end method

.method public final M0()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_0
    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/parser/Tokenizer;->nextChar()C

    move-result v1

    const/16 v2, 0x3b

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lnet/sf/saxon/query/XQueryParser$Unescaper;

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {p0}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getValidCharacterChecker()Lnet/sf/saxon/z/IntPredicateProxy;

    move-result-object p0

    invoke-direct {v1, p0}, Lnet/sf/saxon/query/XQueryParser$Unescaper;-><init>(Lnet/sf/saxon/z/IntPredicateProxy;)V

    invoke-virtual {v1, v0}, Lnet/sf/saxon/query/XQueryParser$Unescaper;->analyzeEntityReference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-nez v1, :cond_1

    const-string v0, "No closing \';\' found for entity or character reference"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    const-string p0, ""

    return-object p0

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public final N0()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/parser/Tokenizer;->setState(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    const/16 v0, 0xc9

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    return-object v0
.end method

.method public final O0()Lnet/sf/saxon/om/StructuredQName;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    const/16 v0, 0xc9

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->makeStructuredQName(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    return-object p0
.end method

.method public final P()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/query/XQueryParser;->s:Z

    if-eqz v0, :cond_0

    const-string v0, "Base URI Declaration may only appear once"

    const-string v1, "XQST0032"

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/query/XQueryParser;->s:Z

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    const/16 v0, 0xca

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/query/XQueryParser;->uriLiteral(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URI;->isAbsolute()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v1}, Lnet/sf/saxon/expr/StaticContext;->getStaticBaseURI()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/sf/saxon/functions/ResolveURI;->makeAbsolute(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    check-cast v1, Lnet/sf/saxon/query/QueryModule;

    invoke-virtual {v1, v0}, Lnet/sf/saxon/query/QueryModule;->setBaseURI(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    check-cast v1, Lnet/sf/saxon/query/QueryModule;

    invoke-virtual {v1, v0}, Lnet/sf/saxon/query/QueryModule;->setBaseURI(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    return-void
.end method

.method public final P0(Lnet/sf/saxon/trans/XPathException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/query/XQueryParser;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sf/saxon/query/XQueryParser;->i:I

    iget-object v0, p0, Lnet/sf/saxon/query/XQueryParser;->j:Lnet/sf/saxon/trans/XPathException;

    if-nez v0, :cond_0

    iput-object p1, p0, Lnet/sf/saxon/query/XQueryParser;->j:Lnet/sf/saxon/trans/XPathException;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    check-cast p0, Lnet/sf/saxon/query/QueryModule;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/query/QueryModule;->reportStaticError(Lnet/sf/saxon/trans/XPathException;)V

    throw p1
.end method

.method public final Q()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/query/XQueryParser;->l:Z

    if-eqz v0, :cond_0

    const-string v0, "\'declare boundary-space\' appears more than once"

    const-string v1, "XQST0068"

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/query/XQueryParser;->l:Z

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    const/16 v1, 0xc9

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v1, v1, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    const-string v2, "preserve"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    check-cast v1, Lnet/sf/saxon/query/QueryModule;

    invoke-virtual {v1, v0}, Lnet/sf/saxon/query/QueryModule;->setPreserveBoundarySpace(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    const-string v1, "strip"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    check-cast v0, Lnet/sf/saxon/query/QueryModule;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/sf/saxon/query/QueryModule;->setPreserveBoundarySpace(Z)V

    goto :goto_0

    :cond_2
    const-string v0, "boundary-space must be \'preserve\' or \'strip\'"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    return-void
.end method

.method public final Q0(Ljava/util/List;Lnet/sf/saxon/Configuration;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lnet/sf/saxon/Configuration;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Lnet/sf/saxon/Configuration;->sealNamespace(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final R()Lnet/sf/saxon/expr/Expression;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/parser/Tokenizer;->nextChar()C

    move-result v0

    const/16 v1, 0x2d

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/query/XQueryParser;->I(CC)V

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "--"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/parser/Tokenizer;->nextChar()C

    move-result v1

    if-nez v1, :cond_0

    const-string v2, "Reached end of input while reading XML comment constructor"

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/parser/Tokenizer;->nextChar()C

    move-result v1

    const/16 v2, 0x3e

    if-eq v1, v2, :cond_2

    const-string v1, "\'--\' is not permitted in an XML comment"

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lnet/sf/saxon/expr/instruct/Comment;

    invoke-direct {v1}, Lnet/sf/saxon/expr/instruct/Comment;-><init>()V

    new-instance v2, Lnet/sf/saxon/expr/StringLiteral;

    new-instance v3, Lnet/sf/saxon/value/StringValue;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Lnet/sf/saxon/value/StringValue;)V

    invoke-virtual {v1, v2}, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;->setSelect(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;)V

    return-object v1
.end method

.method public final R0(Ljava/lang/String;)V
    .locals 11

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const-string v1, "no equals sign"

    invoke-virtual {p0, v1}, Lnet/sf/saxon/query/XQueryParser;->F(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const-string v1, "starts with \'="

    invoke-virtual {p0, v1}, Lnet/sf/saxon/query/XQueryParser;->F(Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const-string v3, ""

    if-ne v0, v2, :cond_2

    move-object v7, v3

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move-object v7, p1

    :goto_1
    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->getExecutable()Lnet/sf/saxon/expr/instruct/Executable;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/Executable;->getPrimarySerializationProperties()Lnet/sf/saxon/serialize/SerializationProperties;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/serialize/SerializationProperties;->getProperties()Ljava/util/Properties;

    move-result-object v4

    :try_start_0
    invoke-virtual {p0, v1, v3}, Lnet/sf/saxon/expr/parser/XPathParser;->makeStructuredQName(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {p1}, Lnet/sf/saxon/expr/StaticContext;->getNamespaceResolver()Lnet/sf/saxon/om/NamespaceResolver;

    move-result-object v8

    const/4 v9, 0x0

    iget-object p1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {p1}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v10

    invoke-static/range {v4 .. v10}, Lnet/sf/saxon/expr/instruct/ResultDocument;->setSerializationProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/om/NamespaceResolver;ZLnet/sf/saxon/Configuration;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/query/XQueryParser;->F(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public final S(I)Lnet/sf/saxon/expr/Expression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v1, 0xd7

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->allowXPath31Syntax:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->lookAhead()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    new-instance v1, Lnet/sf/saxon/expr/instruct/Comment;

    invoke-direct {v1}, Lnet/sf/saxon/expr/instruct/Comment;-><init>()V

    invoke-virtual {p0, v0, v1, p1}, Lnet/sf/saxon/query/XQueryParser;->makeSimpleContent(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;I)V

    const/4 p1, 0x0

    invoke-virtual {p0, v1, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->makeTracer(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public final S0(C)C
    .locals 1

    :goto_0
    const/16 v0, 0x20

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    return p1

    :cond_1
    :goto_1
    iget-object p1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/Tokenizer;->nextChar()C

    move-result p1

    goto :goto_0
.end method

.method public final T(I)Lnet/sf/saxon/expr/Expression;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    const/16 v0, 0xd7

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->lookAhead()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    const/16 v2, 0x3b

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lnet/sf/saxon/expr/parser/Tokenizer;->setState(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v2, v2, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/4 v7, 0x0

    if-eq v2, v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    move-object v8, v2

    goto :goto_0

    :cond_0
    move-object v8, v7

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->lookAhead()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    instance-of v0, v1, Lnet/sf/saxon/expr/Literal;

    if-eqz v0, :cond_7

    move-object v0, v1

    check-cast v0, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v0

    instance-of v2, v0, Lnet/sf/saxon/value/StringValue;

    const/4 v4, 0x4

    if-eqz v2, :cond_6

    instance-of v2, v0, Lnet/sf/saxon/value/AnyURIValue;

    if-nez v2, :cond_6

    check-cast v0, Lnet/sf/saxon/value/StringValue;

    invoke-interface {v0}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "xmlns"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "xmlns:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v1, "Cannot create a namespace using an attribute constructor"

    const-string v2, "XQDY0044"

    invoke-virtual {p0, v1, v2, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->getQNameParser()Lnet/sf/saxon/om/QNameParser;

    move-result-object v1

    invoke-virtual {v1, v7}, Lnet/sf/saxon/om/QNameParser;->withUnescaper(Lnet/sf/saxon/query/XQueryParser$Unescaper;)Lnet/sf/saxon/om/QNameParser;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->setQNameParser(Lnet/sf/saxon/om/QNameParser;)V

    invoke-virtual {p0, v0, v3}, Lnet/sf/saxon/expr/parser/XPathParser;->makeNodeName(Ljava/lang/String;Z)Lnet/sf/saxon/om/NodeName;

    move-result-object v2

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->setQNameParser(Lnet/sf/saxon/om/QNameParser;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v2}, Lnet/sf/saxon/om/NodeName;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ""

    invoke-interface {v2, v0}, Lnet/sf/saxon/om/NodeName;->hasURI(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lnet/sf/saxon/om/FingerprintedQName;

    invoke-interface {v2}, Lnet/sf/saxon/om/NodeName;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lnet/sf/saxon/om/NodeName;->getFingerprint()I

    move-result v2

    const-string v5, "_"

    invoke-direct {v0, v5, v1, v3, v2}, Lnet/sf/saxon/om/FingerprintedQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v2, v0

    :cond_3
    new-instance v0, Lnet/sf/saxon/expr/instruct/FixedAttribute;

    invoke-direct {v0, v2, v4, v7}, Lnet/sf/saxon/expr/instruct/FixedAttribute;-><init>(Lnet/sf/saxon/om/NodeName;ILnet/sf/saxon/type/SimpleType;)V

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/AttributeCreator;->setRejectDuplicates()V

    invoke-virtual {p0, v8, v0, p1}, Lnet/sf/saxon/query/XQueryParser;->makeSimpleContent(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;I)V

    invoke-virtual {p0, v0, v7}, Lnet/sf/saxon/expr/parser/XPathParser;->makeTracer(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->makeLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    const-string v3, "XPST0008"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "XQDY0074"

    if-nez v3, :cond_4

    const-string v3, "XPST0081"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "XPST0003"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid QName in attribute constructor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance p0, Lnet/sf/saxon/expr/ErrorExpression;

    invoke-direct {p0}, Lnet/sf/saxon/expr/ErrorExpression;-><init>()V

    return-object p0

    :cond_4
    invoke-virtual {v1, v4}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    :cond_5
    throw v1

    :cond_6
    instance-of v2, v0, Lnet/sf/saxon/value/QNameValue;

    if-eqz v2, :cond_7

    check-cast v0, Lnet/sf/saxon/value/QNameValue;

    new-instance v1, Lnet/sf/saxon/om/FingerprintedQName;

    invoke-virtual {v0}, Lnet/sf/saxon/value/QualifiedNameValue;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lnet/sf/saxon/value/QualifiedNameValue;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lnet/sf/saxon/value/QualifiedNameValue;->getLocalName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lnet/sf/saxon/om/FingerprintedQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v0}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v0

    invoke-interface {v1, v0}, Lnet/sf/saxon/om/NodeName;->obtainFingerprint(Lnet/sf/saxon/om/NamePool;)I

    new-instance v0, Lnet/sf/saxon/expr/instruct/FixedAttribute;

    invoke-direct {v0, v1, v4, v7}, Lnet/sf/saxon/expr/instruct/FixedAttribute;-><init>(Lnet/sf/saxon/om/NodeName;ILnet/sf/saxon/type/SimpleType;)V

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/AttributeCreator;->setRejectDuplicates()V

    invoke-virtual {p0, v8, v0, p1}, Lnet/sf/saxon/query/XQueryParser;->makeSimpleContent(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;I)V

    invoke-virtual {p0, v0, v7}, Lnet/sf/saxon/expr/parser/XPathParser;->makeTracer(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_7
    new-instance v9, Lnet/sf/saxon/expr/instruct/ComputedAttribute;

    const/4 v2, 0x0

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v0}, Lnet/sf/saxon/expr/StaticContext;->getNamespaceResolver()Lnet/sf/saxon/om/NamespaceResolver;

    move-result-object v3

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lnet/sf/saxon/expr/instruct/ComputedAttribute;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/om/NamespaceResolver;ILnet/sf/saxon/type/SimpleType;Z)V

    invoke-virtual {v9}, Lnet/sf/saxon/expr/instruct/ComputedAttribute;->setRejectDuplicates()V

    invoke-virtual {p0, v8, v9, p1}, Lnet/sf/saxon/query/XQueryParser;->makeSimpleContent(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;I)V

    invoke-virtual {p0, v9, v7}, Lnet/sf/saxon/expr/parser/XPathParser;->makeTracer(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public final U(I)Lnet/sf/saxon/expr/Expression;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    const/16 v0, 0xd7

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->lookAhead()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    const/16 v3, 0x3b

    invoke-virtual {p0, v3}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    iget-object v3, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lnet/sf/saxon/expr/parser/Tokenizer;->setState(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    iget-object v3, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v3, v3, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/4 v10, 0x0

    if-eq v3, v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    instance-of v6, v3, Lnet/sf/saxon/expr/instruct/ElementCreator;

    if-eqz v6, :cond_0

    move-object v6, v3

    check-cast v6, Lnet/sf/saxon/expr/instruct/ElementCreator;

    invoke-virtual {v6}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object v7

    if-nez v7, :cond_0

    const/4 v7, 0x3

    invoke-virtual {v6, v7, v10}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->setValidationAction(ILnet/sf/saxon/type/SchemaType;)V

    :cond_0
    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    move-object v0, v3

    goto :goto_0

    :cond_1
    move-object v0, v10

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->lookAhead()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    instance-of v3, v4, Lnet/sf/saxon/expr/Literal;

    if-eqz v3, :cond_9

    check-cast v4, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {v4}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v3

    instance-of v4, v3, Lnet/sf/saxon/value/StringValue;

    if-eqz v4, :cond_5

    instance-of v4, v3, Lnet/sf/saxon/value/AnyURIValue;

    if-nez v4, :cond_5

    check-cast v3, Lnet/sf/saxon/value/StringValue;

    invoke-interface {v3}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v3

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->getQNameParser()Lnet/sf/saxon/om/QNameParser;

    move-result-object v4

    invoke-virtual {v4, v10}, Lnet/sf/saxon/om/QNameParser;->withUnescaper(Lnet/sf/saxon/query/XQueryParser$Unescaper;)Lnet/sf/saxon/om/QNameParser;

    move-result-object v6

    invoke-virtual {p0, v6}, Lnet/sf/saxon/expr/parser/XPathParser;->setQNameParser(Lnet/sf/saxon/om/QNameParser;)V

    const/4 v6, 0x1

    invoke-virtual {p0, v3, v6}, Lnet/sf/saxon/expr/parser/XPathParser;->makeNodeName(Ljava/lang/String;Z)Lnet/sf/saxon/om/NodeName;

    move-result-object v6

    invoke-virtual {p0, v4}, Lnet/sf/saxon/expr/parser/XPathParser;->setQNameParser(Lnet/sf/saxon/om/QNameParser;)V

    iget-object v4, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v4}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v4

    invoke-interface {v6, v4}, Lnet/sf/saxon/om/NodeName;->obtainFingerprint(Lnet/sf/saxon/om/NamePool;)I
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeLocalPart()Ljava/lang/String;

    move-result-object v4

    const-string v6, "XPST0008"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "XQDY0074"

    if-nez v6, :cond_3

    const-string v6, "XPST0081"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    const-string v6, "XPST0003"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid QName in element constructor: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v7, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lnet/sf/saxon/expr/ErrorExpression;

    invoke-direct {v0}, Lnet/sf/saxon/expr/ErrorExpression;-><init>()V

    return-object v0

    :cond_3
    :goto_1
    invoke-virtual {v0, v7}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->makeLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    invoke-virtual {v0, v5}, Lnet/sf/saxon/trans/XPathException;->setIsStaticError(Z)V

    new-instance v1, Lnet/sf/saxon/expr/ErrorExpression;

    new-instance v2, Lnet/sf/saxon/trans/XmlProcessingException;

    invoke-direct {v2, v0}, Lnet/sf/saxon/trans/XmlProcessingException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    invoke-direct {v1, v2}, Lnet/sf/saxon/expr/ErrorExpression;-><init>(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    return-object v1

    :cond_5
    instance-of v4, v3, Lnet/sf/saxon/value/QualifiedNameValue;

    if-eqz v4, :cond_8

    check-cast v3, Lnet/sf/saxon/value/QualifiedNameValue;

    invoke-virtual {v3}, Lnet/sf/saxon/value/QualifiedNameValue;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lnet/sf/saxon/om/FingerprintedQName;

    const-string v5, ""

    invoke-virtual {v3}, Lnet/sf/saxon/value/QualifiedNameValue;->getLocalName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v5, v4, v3}, Lnet/sf/saxon/om/FingerprintedQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v3}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v3

    invoke-interface {v6, v3}, Lnet/sf/saxon/om/NodeName;->obtainFingerprint(Lnet/sf/saxon/om/NamePool;)I

    :goto_2
    new-instance v3, Lnet/sf/saxon/expr/instruct/FixedElement;

    iget-object v4, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    check-cast v4, Lnet/sf/saxon/query/QueryModule;

    invoke-virtual {v4}, Lnet/sf/saxon/query/QueryModule;->a()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v9

    iget-object v4, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    check-cast v4, Lnet/sf/saxon/query/QueryModule;

    invoke-virtual {v4}, Lnet/sf/saxon/query/QueryModule;->isInheritNamespaces()Z

    move-result v10

    const/4 v11, 0x1

    const/4 v12, 0x0

    iget-object v4, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    check-cast v4, Lnet/sf/saxon/query/QueryModule;

    invoke-virtual {v4}, Lnet/sf/saxon/query/QueryModule;->getConstructionMode()I

    move-result v13

    move-object v7, v3

    move-object v8, v6

    invoke-direct/range {v7 .. v13}, Lnet/sf/saxon/expr/instruct/FixedElement;-><init>(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/om/NamespaceMap;ZZLnet/sf/saxon/type/SchemaType;I)V

    if-nez v0, :cond_6

    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object v0

    :cond_6
    move-object v8, v0

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    check-cast v0, Lnet/sf/saxon/query/QueryModule;

    invoke-virtual {v0}, Lnet/sf/saxon/query/QueryModule;->isPreserveNamespaces()Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Lnet/sf/saxon/expr/instruct/CopyOf;

    const/4 v9, 0x0

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lnet/sf/saxon/expr/instruct/CopyOf;-><init>(Lnet/sf/saxon/expr/Expression;ZILnet/sf/saxon/type/SchemaType;Z)V

    move-object v8, v0

    :cond_7
    invoke-virtual {v3, v8}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->setContentExpression(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0, v3, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;I)V

    invoke-interface {v6}, Lnet/sf/saxon/om/NodeName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->makeTracer(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    return-object v0

    :cond_8
    const-string v0, "Element name must be either a string or a QName"

    const-string v3, "XPTY0004"

    invoke-virtual {p0, v0, v3, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lnet/sf/saxon/expr/ErrorExpression;

    invoke-direct {v0}, Lnet/sf/saxon/expr/ErrorExpression;-><init>()V

    return-object v0

    :cond_9
    new-instance v3, Lnet/sf/saxon/tree/util/NamespaceResolverWithDefault;

    iget-object v5, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v5}, Lnet/sf/saxon/expr/StaticContext;->getNamespaceResolver()Lnet/sf/saxon/om/NamespaceResolver;

    move-result-object v5

    iget-object v6, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v6}, Lnet/sf/saxon/expr/StaticContext;->getDefaultElementNamespace()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lnet/sf/saxon/tree/util/NamespaceResolverWithDefault;-><init>(Lnet/sf/saxon/om/NamespaceResolver;Ljava/lang/String;)V

    new-instance v11, Lnet/sf/saxon/expr/instruct/ComputedElement;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v3, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    check-cast v3, Lnet/sf/saxon/query/QueryModule;

    invoke-virtual {v3}, Lnet/sf/saxon/query/QueryModule;->getConstructionMode()I

    move-result v7

    iget-object v3, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    check-cast v3, Lnet/sf/saxon/query/QueryModule;

    invoke-virtual {v3}, Lnet/sf/saxon/query/QueryModule;->isInheritNamespaces()Z

    move-result v8

    const/4 v9, 0x1

    move-object v3, v11

    invoke-direct/range {v3 .. v9}, Lnet/sf/saxon/expr/instruct/ComputedElement;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/SchemaType;IZZ)V

    invoke-virtual {p0, v11}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;)V

    if-nez v0, :cond_a

    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object v0

    :cond_a
    move-object v4, v0

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    check-cast v0, Lnet/sf/saxon/query/QueryModule;

    invoke-virtual {v0}, Lnet/sf/saxon/query/QueryModule;->isPreserveNamespaces()Z

    move-result v0

    if-nez v0, :cond_b

    new-instance v0, Lnet/sf/saxon/expr/instruct/CopyOf;

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lnet/sf/saxon/expr/instruct/CopyOf;-><init>(Lnet/sf/saxon/expr/Expression;ZILnet/sf/saxon/type/SchemaType;Z)V

    move-object v4, v0

    :cond_b
    invoke-virtual {v11, v4}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->setContentExpression(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0, v11, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;I)V

    invoke-virtual {p0, v11, v10}, Lnet/sf/saxon/expr/parser/XPathParser;->makeTracer(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final V()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/query/XQueryParser;->p:Z

    if-eqz v0, :cond_0

    const-string v0, "declare construction appears more than once"

    const-string v1, "XQST0067"

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/query/XQueryParser;->p:Z

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    const/16 v0, 0xc9

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    const-string v1, "preserve"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    const-string v1, "strip"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "construction mode must be \'preserve\' or \'strip\'"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :goto_0
    move v0, v1

    :goto_1
    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    check-cast v1, Lnet/sf/saxon/query/QueryModule;

    invoke-virtual {v1, v0}, Lnet/sf/saxon/query/QueryModule;->setConstructionMode(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    return-void
.end method

.method public final W()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenStartOffset:I

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    const-string v1, "item"

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->isKeyword(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "After \'declare context\', expected \'item\'"

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_0
    iget-boolean v1, p0, Lnet/sf/saxon/query/XQueryParser;->u:Z

    if-eqz v1, :cond_1

    const-string v1, "More than one context item declaration found"

    const-string v2, "XQST0099"

    invoke-virtual {p0, v1, v2, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/query/XQueryParser;->u:Z

    new-instance v1, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;

    invoke-direct {v1}, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;->setAbsentFocus(Z)V

    iget-object v3, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {v3, v0}, Lnet/sf/saxon/expr/parser/Tokenizer;->setState(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v3

    iget-object v4, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v5, v4, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v6, 0x47

    if-ne v5, v6, :cond_2

    const/4 v3, 0x2

    invoke-virtual {v4, v3}, Lnet/sf/saxon/expr/parser/Tokenizer;->setState(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v3

    :cond_2
    invoke-virtual {v1, v3}, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;->addRequiredItemType(Lnet/sf/saxon/type/ItemType;)V

    iget-object v4, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v5, v4, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const-string v6, "XQST0113"

    const-string v7, "The context item must not be initialized in a library module"

    const/16 v8, 0x4000

    const-string v9, "context item declaration"

    const/16 v10, 0xd

    const/16 v11, 0x3a

    if-ne v5, v11, :cond_4

    iget-object v4, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    check-cast v4, Lnet/sf/saxon/query/QueryModule;

    invoke-virtual {v4}, Lnet/sf/saxon/query/QueryModule;->isMainModule()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0, v7, v6}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v4, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {v4, v2}, Lnet/sf/saxon/expr/parser/Tokenizer;->setState(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExprSingle()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    iget-object v5, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v5}, Lnet/sf/saxon/expr/StaticContext;->makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    new-instance v5, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    invoke-direct {v5, v10, v9, v2}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    invoke-static {v4, v8, v5}, Lnet/sf/saxon/expr/CardinalityChecker;->makeCardinalityChecker(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/parser/RoleDiagnostic;)Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    iget-object v5, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-static {v5}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->make(Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/expr/parser/ExpressionVisitor;

    move-result-object v5

    invoke-virtual {v4}, Lnet/sf/saxon/expr/Expression;->simplify()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    iget-object v6, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v6}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v6

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Lnet/sf/saxon/Configuration;->makeContextItemStaticInfo(Lnet/sf/saxon/type/ItemType;Z)Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    move-result-object v0

    iget-object v6, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v6}, Lnet/sf/saxon/expr/StaticContext;->makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v6

    invoke-virtual {v4, v6}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    invoke-virtual {v4, v5, v0}, Lnet/sf/saxon/expr/Expression;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;->setDefaultValue(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v1, v2}, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;->setExternal(Z)V

    goto :goto_0

    :cond_4
    const/16 v12, 0xc9

    if-ne v5, v12, :cond_6

    const-string v5, "external"

    iget-object v4, v4, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v1, v2}, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;->setAbsentFocus(Z)V

    invoke-virtual {v1, v0}, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;->setExternal(Z)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    if-ne v0, v11, :cond_7

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    check-cast v0, Lnet/sf/saxon/query/QueryModule;

    invoke-virtual {v0}, Lnet/sf/saxon/query/QueryModule;->isMainModule()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0, v7, v6}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {v0, v2}, Lnet/sf/saxon/expr/parser/Tokenizer;->setState(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExprSingle()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    new-instance v4, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    invoke-direct {v4, v10, v9, v2}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    invoke-static {v0, v8, v4}, Lnet/sf/saxon/expr/CardinalityChecker;->makeCardinalityChecker(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/parser/RoleDiagnostic;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v2}, Lnet/sf/saxon/expr/StaticContext;->makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    invoke-virtual {v1, v0}, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;->setDefaultValue(Lnet/sf/saxon/expr/Expression;)V

    goto :goto_0

    :cond_6
    const-string v0, "Expected \':=\' or \'external\' in context item declaration"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_7
    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->getExecutable()Lnet/sf/saxon/expr/instruct/Executable;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/Executable;->getGlobalContextRequirement()Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/Executable;->getGlobalContextRequirement()Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;->getDefaultValue()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    if-nez v2, :cond_8

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;->getDefaultValue()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;->getDefaultValue()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;->setDefaultValue(Lnet/sf/saxon/expr/Expression;)V

    :cond_8
    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;->getRequiredItemTypes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/type/ItemType;

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v4

    if-eq v2, v4, :cond_9

    iget-object v4, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v4}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object v2

    sget-object v4, Lnet/sf/saxon/type/Affinity;->DISJOINT:Lnet/sf/saxon/type/Affinity;

    if-ne v2, v4, :cond_9

    const-string v2, "Different modules specify incompatible requirements for the type of the initial context item"

    const-string v4, "XPTY0004"

    invoke-virtual {p0, v2, v4}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_a
    invoke-virtual {v0, v3}, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;->addRequiredItemType(Lnet/sf/saxon/type/ItemType;)V

    goto :goto_2

    :cond_b
    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/instruct/Executable;->setGlobalContextRequirement(Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;)V

    :goto_2
    return-void
.end method

.method public final X()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/query/XQueryParser;->k:Z

    if-eqz v0, :cond_0

    const-string v0, "declare copy-namespaces appears more than once"

    const-string v1, "XQST0055"

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/query/XQueryParser;->k:Z

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    const/16 v1, 0xc9

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v2, v2, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    const-string v3, "preserve"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    check-cast v2, Lnet/sf/saxon/query/QueryModule;

    invoke-virtual {v2, v0}, Lnet/sf/saxon/query/QueryModule;->setPreserveNamespaces(Z)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v2, v2, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    const-string v4, "no-preserve"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    check-cast v2, Lnet/sf/saxon/query/QueryModule;

    invoke-virtual {v2, v3}, Lnet/sf/saxon/query/QueryModule;->setPreserveNamespaces(Z)V

    goto :goto_0

    :cond_2
    const-string v2, "copy-namespaces must be followed by \'preserve\' or \'no-preserve\'"

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v1, v1, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    const-string v2, "inherit"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    check-cast v1, Lnet/sf/saxon/query/QueryModule;

    invoke-virtual {v1, v0}, Lnet/sf/saxon/query/QueryModule;->setInheritNamespaces(Z)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    const-string v1, "no-inherit"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    check-cast v0, Lnet/sf/saxon/query/QueryModule;

    invoke-virtual {v0, v3}, Lnet/sf/saxon/query/QueryModule;->setInheritNamespaces(Z)V

    goto :goto_1

    :cond_4
    const-string v0, "After the comma in the copy-namespaces declaration, expected \'inherit\' or \'no-inherit\'"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    return-void
.end method

.method public final Y(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/flwor/Clause;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/expr/flwor/CountClause;

    invoke-direct {v0}, Lnet/sf/saxon/expr/flwor/CountClause;-><init>()V

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v1, v1, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenStartOffset:I

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/flwor/Clause;I)V

    invoke-static {p1}, Lnet/sf/saxon/query/XQueryParser;->containsLoopingClause(Ljava/util/List;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/flwor/Clause;->setRepeated(Z)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    const/16 p1, 0x15

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    const/16 p1, 0xc9

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    iget-object p1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object p1, p1, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->makeStructuredQName(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    sget-object v1, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    new-instance v2, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    invoke-direct {v2, p1, v1}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;-><init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/value/SequenceType;)V

    invoke-virtual {v0, v2}, Lnet/sf/saxon/expr/flwor/CountClause;->setRangeVariable(Lnet/sf/saxon/expr/flwor/LocalVariableBinding;)V

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->declareRangeVariable(Lnet/sf/saxon/expr/LocalBinding;)V

    return-void
.end method

.method public final Z()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    const/16 v0, 0xc9

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->makeStructuredQName(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v1}, Lnet/sf/saxon/expr/StaticContext;->getDecimalFormatManager()Lnet/sf/saxon/trans/DecimalFormatManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/sf/saxon/trans/DecimalFormatManager;->getNamedDecimalFormat(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/trans/DecimalSymbols;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate declaration of decimal-format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "XQST0111"

    invoke-virtual {p0, v1, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/query/XQueryParser;->a0(Lnet/sf/saxon/om/StructuredQName;)V

    return-void
.end method

.method public final a0(Lnet/sf/saxon/om/StructuredQName;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenStartOffset:I

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v1}, Lnet/sf/saxon/expr/StaticContext;->getDecimalFormatManager()Lnet/sf/saxon/trans/DecimalFormatManager;

    move-result-object v1

    if-nez p1, :cond_0

    invoke-virtual {v1}, Lnet/sf/saxon/trans/DecimalFormatManager;->getDefaultDecimalFormat()Lnet/sf/saxon/trans/DecimalSymbols;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1}, Lnet/sf/saxon/trans/DecimalFormatManager;->obtainNamedDecimalFormat(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/trans/DecimalSymbols;

    move-result-object v1

    :goto_0
    sget-object v2, Lnet/sf/saxon/s9api/HostLanguage;->XQUERY:Lnet/sf/saxon/s9api/HostLanguage;

    const/16 v3, 0x1f

    invoke-virtual {v1, v2, v3}, Lnet/sf/saxon/trans/DecimalSymbols;->setHostLanguage(Lnet/sf/saxon/s9api/HostLanguage;I)V

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    :goto_1
    iget-object v4, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v5, v4, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v6, 0x95

    if-eq v5, v6, :cond_d

    iget v5, v4, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenStartOffset:I

    iget-object v4, v4, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Property name "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is defined more than once"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "XQST0114"

    invoke-virtual {p0, v6, v7, v5}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    const/4 v6, 0x6

    invoke-virtual {p0, v6}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    const/16 v7, 0xca

    invoke-virtual {p0, v7}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    iget-object v7, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v7, v7, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lnet/sf/saxon/query/XQueryParser;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v9, -0x1

    sparse-switch v8, :sswitch_data_0

    :goto_2
    move v6, v9

    goto/16 :goto_3

    :sswitch_0
    const-string v6, "zero-digit"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_2

    :cond_2
    move v6, v3

    goto/16 :goto_3

    :sswitch_1
    const-string v6, "minus-sign"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_2

    :cond_3
    const/16 v6, 0x9

    goto/16 :goto_3

    :sswitch_2
    const-string v6, "exponent-separator"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_2

    :cond_4
    const/16 v6, 0x8

    goto :goto_3

    :sswitch_3
    const-string v6, "grouping-separator"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_2

    :cond_5
    const/4 v6, 0x7

    goto :goto_3

    :sswitch_4
    const-string v8, "infinity"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    goto :goto_2

    :sswitch_5
    const-string v6, "digit"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_2

    :cond_6
    const/4 v6, 0x5

    goto :goto_3

    :sswitch_6
    const-string v6, "NaN"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_2

    :cond_7
    const/4 v6, 0x4

    goto :goto_3

    :sswitch_7
    const-string v6, "percent"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_2

    :cond_8
    const/4 v6, 0x3

    goto :goto_3

    :sswitch_8
    const-string v6, "per-mille"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    goto :goto_2

    :cond_9
    const/4 v6, 0x2

    goto :goto_3

    :sswitch_9
    const-string v6, "pattern-separator"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    goto :goto_2

    :cond_a
    const/4 v6, 0x1

    goto :goto_3

    :sswitch_a
    const-string v6, "decimal-separator"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    goto :goto_2

    :cond_b
    const/4 v6, 0x0

    :cond_c
    :goto_3
    packed-switch v6, :pswitch_data_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown decimal-format property: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "XPST0003"

    invoke-virtual {p0, v4, v6, v5}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    :pswitch_0
    :try_start_0
    invoke-virtual {v1, v7}, Lnet/sf/saxon/trans/DecimalSymbols;->setZeroDigit(Ljava/lang/String;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception p0

    const-string p1, "XQST0097"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    invoke-virtual {v1, v7}, Lnet/sf/saxon/trans/DecimalSymbols;->setMinusSign(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {v1, v7}, Lnet/sf/saxon/trans/DecimalSymbols;->setExponentSeparator(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {v1, v7}, Lnet/sf/saxon/trans/DecimalSymbols;->setGroupingSeparator(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {v1, v7}, Lnet/sf/saxon/trans/DecimalSymbols;->setInfinity(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual {v1, v7}, Lnet/sf/saxon/trans/DecimalSymbols;->setDigit(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {v1, v7}, Lnet/sf/saxon/trans/DecimalSymbols;->setNaN(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {v1, v7}, Lnet/sf/saxon/trans/DecimalSymbols;->setPercent(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {v1, v7}, Lnet/sf/saxon/trans/DecimalSymbols;->setPerMille(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {v1, v7}, Lnet/sf/saxon/trans/DecimalSymbols;->setPatternSeparator(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {v1, v7}, Lnet/sf/saxon/trans/DecimalSymbols;->setDecimalSeparator(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_d
    :try_start_1
    invoke-virtual {v1, p1}, Lnet/sf/saxon/trans/DecimalSymbols;->checkConsistency(Lnet/sf/saxon/om/StructuredQName;)V
    :try_end_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "XQST0098"

    invoke-virtual {p0, p1, v1, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7a805897 -> :sswitch_a
        -0x543a8318 -> :sswitch_9
        -0x44b6e4e7 -> :sswitch_8
        -0x28779bbb -> :sswitch_7
        0x130db -> :sswitch_6
        0x5b2792d -> :sswitch_5
        0xa526a28 -> :sswitch_4
        0x152e3a9b -> :sswitch_3
        0x48487147 -> :sswitch_2
        0x6a3e5cfa -> :sswitch_1
        0x6e95edc8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public atStartOfRelativePath()Z
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v1, 0xd9

    if-eq v0, v1, :cond_1

    invoke-super {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->atStartOfRelativePath()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final b0()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/query/XQueryParser;->o:Z

    if-eqz v0, :cond_0

    const-string v0, "default collation appears more than once"

    const-string v1, "XQST0038"

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/query/XQueryParser;->o:Z

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    const/16 v0, 0xca

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/query/XQueryParser;->uriLiteral(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    check-cast v1, Lnet/sf/saxon/query/QueryModule;

    invoke-virtual {v1, v0}, Lnet/sf/saxon/query/QueryModule;->setDefaultCollationName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    return-void
.end method

.method public final c0()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/query/XQueryParser;->v:Z

    if-eqz v0, :cond_0

    const-string v0, "Duplicate declaration of default decimal-format"

    const-string v1, "XQST0111"

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/query/XQueryParser;->v:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/query/XQueryParser;->a0(Lnet/sf/saxon/om/StructuredQName;)V

    return-void
.end method

.method public customizeTokenizer(Lnet/sf/saxon/expr/parser/Tokenizer;)V
    .locals 0

    const/4 p0, 0x1

    iput-boolean p0, p1, Lnet/sf/saxon/expr/parser/Tokenizer;->isXQuery:Z

    return-void
.end method

.method public final d0()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/query/XQueryParser;->r:Z

    if-eqz v0, :cond_0

    const-string v0, "default element namespace appears more than once"

    const-string v1, "XQST0066"

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/query/XQueryParser;->r:Z

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    const/16 v0, 0xc9

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    const-string v1, "namespace"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "After \'declare default element\', expected \'namespace\'"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    const/16 v0, 0xca

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/query/XQueryParser;->uriLiteral(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const-string v1, "Reserved namespace used as default element/type namespace"

    const-string v2, "XQST0070"

    invoke-virtual {p0, v1, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    check-cast v1, Lnet/sf/saxon/query/QueryModule;

    invoke-virtual {v1, v0}, Lnet/sf/saxon/query/QueryModule;->setDefaultElementNamespace(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    return-void
.end method

.method public final e0()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/query/XQueryParser;->q:Z

    if-eqz v0, :cond_0

    const-string v0, "default function namespace appears more than once"

    const-string v1, "XQST0066"

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/query/XQueryParser;->q:Z

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    const/16 v0, 0xc9

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    const-string v1, "namespace"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "After \'declare default function\', expected \'namespace\'"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    const/16 v0, 0xca

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/query/XQueryParser;->uriLiteral(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const-string v1, "Reserved namespace used as default element/type namespace"

    const-string v2, "XQST0070"

    invoke-virtual {p0, v1, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    check-cast v1, Lnet/sf/saxon/query/QueryModule;

    invoke-virtual {v1, v0}, Lnet/sf/saxon/query/QueryModule;->setDefaultFunctionNamespace(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    return-void
.end method

.method public ensureSchemaAware(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v0}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->isLicensedFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v0}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, p1, v2}, Lnet/sf/saxon/Configuration;->checkLicensedFeature(ILjava/lang/String;I)V

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->getExecutable()Lnet/sf/saxon/expr/instruct/Executable;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lnet/sf/saxon/expr/instruct/Executable;->setSchemaAware(Z)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->getStaticContext()Lnet/sf/saxon/expr/StaticContext;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/expr/StaticContext;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object p0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/PackageData;->setSchemaAware(Z)V

    return-void

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "This Saxon version and license does not allow use of \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "XQST0009"

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method public final f0()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/query/XQueryParser;->n:Z

    if-eqz v0, :cond_0

    const-string v0, "empty ordering declaration appears more than once"

    const-string v1, "XQST0069"

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/query/XQueryParser;->n:Z

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    const-string v1, "empty"

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->isKeyword(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "After \'declare default order\', expected keyword \'empty\'"

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    const-string v1, "least"

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->isKeyword(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    check-cast v1, Lnet/sf/saxon/query/QueryModule;

    invoke-virtual {v1, v0}, Lnet/sf/saxon/query/QueryModule;->setEmptyLeast(Z)V

    goto :goto_0

    :cond_2
    const-string v0, "greatest"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->isKeyword(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    check-cast v0, Lnet/sf/saxon/query/QueryModule;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/sf/saxon/query/QueryModule;->setEmptyLeast(Z)V

    goto :goto_0

    :cond_3
    const-string v0, "After \'declare default order empty\', expected keyword \'least\' or \'greatest\'"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    return-void
.end method

.method public final g0(Z)Lnet/sf/saxon/expr/Expression;
    .locals 35
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    move-object/from16 v1, p0

    iget-object v0, v1, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v0}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v0

    iget-object v2, v1, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v2, v2, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x40

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_0
    iget-object v5, v1, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {v5}, Lnet/sf/saxon/expr/parser/Tokenizer;->nextChar()C

    move-result v5

    const/16 v6, 0x9

    const/16 v7, 0xd

    const/16 v8, 0x20

    const/16 v9, 0x3e

    const/16 v10, 0x2f

    const/16 v11, 0xa

    if-eq v5, v8, :cond_2

    if-eq v5, v11, :cond_2

    if-eq v5, v7, :cond_2

    if-eq v5, v6, :cond_2

    if-eq v5, v10, :cond_2

    if-ne v5, v9, :cond_0

    goto :goto_1

    :cond_0
    if-nez v5, :cond_1

    const-string v6, "Found end of input while reading element name in XQuery element constructor"

    invoke-virtual {v1, v6}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_3

    const-string v13, "Expected element name after \'<\'"

    invoke-virtual {v1, v13}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_3
    new-instance v13, Ljava/util/LinkedHashMap;

    invoke-direct {v13, v11}, Ljava/util/LinkedHashMap;-><init>(I)V

    const/4 v14, 0x0

    move v15, v14

    move/from16 v16, v15

    :goto_2
    invoke-virtual {v1, v5}, Lnet/sf/saxon/query/XQueryParser;->S0(C)C

    move-result v5

    const-string v17, ""

    const-string v6, "xmlns:"

    const-string v7, "Invalid attribute name "

    const-string v11, "xmlns"

    const-string v8, "XPST0003"

    if-eq v5, v10, :cond_24

    if-ne v5, v9, :cond_4

    goto/16 :goto_12

    :cond_4
    const-string v9, "End of input encountered within element start tag"

    if-nez v5, :cond_5

    invoke-virtual {v1, v9}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_5
    iget-object v10, v1, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v10, v10, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    sub-int/2addr v10, v3

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {v5}, Lnet/sf/saxon/expr/parser/Tokenizer;->nextChar()C

    move-result v5

    const/16 v14, 0x3d

    const/16 v3, 0x20

    if-eq v5, v3, :cond_7

    const/16 v3, 0xa

    if-eq v5, v3, :cond_7

    const/16 v3, 0xd

    if-eq v5, v3, :cond_7

    const/16 v3, 0x9

    if-eq v5, v3, :cond_7

    if-eq v5, v14, :cond_7

    if-nez v5, :cond_6

    goto :goto_4

    :cond_6
    const/4 v3, 0x1

    const/4 v14, 0x0

    goto :goto_3

    :cond_7
    :goto_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnet/sf/saxon/str/StringTool;->codePoints(Ljava/lang/CharSequence;)Lnet/sf/saxon/z/IntIterator;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lnet/sf/saxon/om/NameChecker;->isQName(Lnet/sf/saxon/z/IntIterator;)Z

    move-result v25

    if-nez v25, :cond_8

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x2

    invoke-static {v3, v7}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v1, v5}, Lnet/sf/saxon/query/XQueryParser;->S0(C)C

    move-result v5

    const/16 v7, 0x3d

    invoke-virtual {v1, v5, v7}, Lnet/sf/saxon/query/XQueryParser;->I(CC)V

    iget-object v5, v1, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {v5}, Lnet/sf/saxon/expr/parser/Tokenizer;->nextChar()C

    move-result v5

    invoke-virtual {v1, v5}, Lnet/sf/saxon/query/XQueryParser;->S0(C)C

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v1, v9}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    goto :goto_5

    :cond_a
    const/4 v6, 0x0

    goto :goto_6

    :cond_b
    :goto_5
    const/4 v6, 0x1

    :goto_6
    if-eqz v6, :cond_c

    iget-object v7, v1, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v9, v7, Lnet/sf/saxon/expr/parser/Tokenizer;->input:Ljava/lang/String;

    iget v7, v7, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    invoke-virtual {v1, v9, v7, v5}, Lnet/sf/saxon/query/XQueryParser;->L(Ljava/lang/String;IC)I

    move-result v7

    const/4 v15, 0x1

    goto :goto_7

    :cond_c
    :try_start_0
    iget-object v7, v1, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v9, v7, Lnet/sf/saxon/expr/parser/Tokenizer;->input:Ljava/lang/String;

    iget v7, v7, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    const/4 v14, 0x1

    invoke-virtual {v1, v9, v7, v5, v14}, Lnet/sf/saxon/query/XQueryParser;->K(Ljava/lang/String;ICZ)Lnet/sf/saxon/expr/Expression;

    move-result-object v7
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    check-cast v7, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {v7}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v7

    check-cast v7, Lnet/sf/saxon/value/Int64Value;

    move v9, v15

    invoke-virtual {v7}, Lnet/sf/saxon/value/Int64Value;->longValue()J

    move-result-wide v14

    long-to-int v7, v14

    move v15, v9

    :goto_7
    iget-object v9, v1, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v9, v9, Lnet/sf/saxon/expr/parser/Tokenizer;->input:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v7, v9, :cond_d

    const-string v9, "Reached end of input while processing attributes in start tag"

    invoke-virtual {v1, v9}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_d
    iget-object v9, v1, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v14, v9, Lnet/sf/saxon/expr/parser/Tokenizer;->input:Ljava/lang/String;

    iget v9, v9, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    const/16 v21, 0x1

    add-int/lit8 v9, v9, -0x1

    move-object/from16 v21, v4

    add-int/lit8 v4, v7, 0x1

    invoke-virtual {v14, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    iget-object v14, v1, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    move/from16 v25, v15

    iget-object v15, v14, Lnet/sf/saxon/expr/parser/Tokenizer;->input:Ljava/lang/String;

    iget v14, v14, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    invoke-virtual {v15, v14, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    move-object v14, v9

    :goto_8
    const/16 v15, 0xa

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v26

    if-ltz v26, :cond_e

    iget-object v15, v1, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    move-object/from16 v27, v0

    iget v0, v15, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    const/16 v24, 0x1

    add-int/lit8 v0, v0, -0x1

    add-int v0, v0, v26

    invoke-virtual {v15, v0}, Lnet/sf/saxon/expr/parser/Tokenizer;->incrementLineNumber(I)V

    add-int/lit8 v0, v26, 0x1

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, v27

    goto :goto_8

    :cond_e
    move-object/from16 v27, v0

    iget-object v0, v1, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iput v4, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    if-eqz v6, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    move/from16 v28, v2

    const/4 v4, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v26, 0x0

    :goto_9
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v4, v2, :cond_14

    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_f

    xor-int/lit8 v26, v26, 0x1

    if-eqz v26, :cond_f

    move/from16 v29, v5

    :goto_a
    move-object/from16 v30, v7

    goto :goto_c

    :cond_f
    move/from16 v29, v5

    const/16 v5, 0x7b

    if-ne v2, v5, :cond_11

    xor-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_10

    goto :goto_a

    :cond_10
    move-object/from16 v30, v7

    goto :goto_b

    :cond_11
    if-eqz v14, :cond_10

    const-string v5, "Namespace must not contain an unescaped opening brace"

    move-object/from16 v30, v7

    const-string v7, "XQST0022"

    invoke-virtual {v1, v5, v7}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b
    const/16 v5, 0x7d

    if-ne v2, v5, :cond_12

    xor-int/lit8 v15, v15, 0x1

    if-eqz v15, :cond_13

    goto :goto_c

    :cond_12
    if-eqz v15, :cond_13

    const-string v5, "Namespace must not contain an unescaped closing brace"

    invoke-virtual {v1, v5, v8}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_c
    add-int/lit8 v4, v4, 0x1

    move/from16 v5, v29

    move-object/from16 v7, v30

    goto :goto_9

    :cond_14
    if-eqz v14, :cond_15

    const-string v2, "Namespace must not contain an unescaped opening brace"

    const-string v4, "XQST0022"

    invoke-virtual {v1, v2, v4}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    if-eqz v15, :cond_16

    const-string v2, "Namespace must not contain an unescaped closing brace"

    invoke-virtual {v1, v2, v8}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/sf/saxon/query/XQueryParser;->uriLiteral(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lnet/sf/saxon/lib/StandardURIChecker;->getInstance()Lnet/sf/saxon/lib/StandardURIChecker;

    move-result-object v2

    invoke-virtual {v2, v0}, Lnet/sf/saxon/lib/StandardURIChecker;->isValidURI(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_17

    const-string v2, "Namespace must be a valid URI value"

    const-string v4, "XQST0046"

    invoke-virtual {v1, v2, v4}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "http://www.w3.org/XML/1998/namespace"

    const-string v5, "XQST0070"

    if-eqz v2, :cond_19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const-string v2, "Cannot have the XML namespace as the default namespace"

    invoke-virtual {v1, v2, v5}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    move-object/from16 v2, v17

    goto :goto_e

    :cond_19
    const/4 v2, 0x6

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v7, "xml"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1a

    const-string v4, "Cannot bind the prefix \'xml\' to a namespace other than the XML namespace"

    invoke-virtual {v1, v4, v5}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_1a
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    const-string v4, "xml"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    const-string v4, "Cannot bind a prefix other than \'xml\' to the XML namespace"

    invoke-virtual {v1, v4, v5}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_1b
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    const-string v4, "Cannot use xmlns as a namespace prefix"

    invoke-virtual {v1, v4, v5}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    :goto_d
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1d

    iget-object v4, v1, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v4}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Lnet/sf/saxon/Configuration;->getXMLVersion()I

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_1d

    const-string v4, "Namespace URI must not be empty"

    const-string v5, "XQST0085"

    invoke-virtual {v1, v4, v5}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
    :goto_e
    move/from16 v14, v16

    add-int/lit8 v16, v14, 0x1

    iget-object v4, v1, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    check-cast v4, Lnet/sf/saxon/query/QueryModule;

    invoke-virtual {v4, v2, v0}, Lnet/sf/saxon/query/QueryModule;->declareActiveNamespace(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :cond_1e
    move/from16 v28, v2

    move/from16 v14, v16

    :goto_f
    invoke-virtual {v13, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_20

    if-eqz v6, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate namespace declaration "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "XQST0071"

    invoke-virtual {v1, v0, v2, v10}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_10

    :cond_1f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate attribute name "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "XQST0040"

    invoke-virtual {v1, v0, v2, v10}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_20
    :goto_10
    new-instance v0, Lnet/sf/saxon/query/XQueryParser$b;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lnet/sf/saxon/query/XQueryParser$b;-><init>(Lnet/sf/saxon/query/XQueryParser$a;)V

    iput-object v9, v0, Lnet/sf/saxon/query/XQueryParser$b;->a:Ljava/lang/String;

    iput v10, v0, Lnet/sf/saxon/query/XQueryParser$b;->b:I

    invoke-virtual {v13, v3, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/parser/Tokenizer;->nextChar()C

    move-result v5

    const/16 v0, 0x20

    if-eq v5, v0, :cond_21

    const/16 v2, 0xa

    if-eq v5, v2, :cond_21

    const/16 v2, 0xd

    const/16 v3, 0x9

    if-eq v5, v2, :cond_22

    if-eq v5, v3, :cond_22

    const/16 v4, 0x2f

    if-eq v5, v4, :cond_22

    const/16 v4, 0x3e

    if-eq v5, v4, :cond_22

    const-string v4, "There must be whitespace after every attribute except the last"

    invoke-virtual {v1, v4}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    goto :goto_11

    :cond_21
    const/16 v2, 0xd

    const/16 v3, 0x9

    :cond_22
    :goto_11
    move v8, v0

    move v7, v2

    move v6, v3

    move-object/from16 v4, v21

    move/from16 v15, v25

    move-object/from16 v0, v27

    move/from16 v2, v28

    const/4 v3, 0x1

    const/16 v9, 0x3e

    const/16 v10, 0x2f

    const/16 v11, 0xa

    const/4 v14, 0x0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lnet/sf/saxon/trans/XPathException;->hasBeenReported()Z

    move-result v2

    if-nez v2, :cond_23

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_23
    throw v0

    :cond_24
    :goto_12
    move-object/from16 v27, v0

    move/from16 v28, v2

    move v9, v15

    move/from16 v14, v16

    iget-boolean v0, v1, Lnet/sf/saxon/expr/parser/XPathParser;->scanOnly:Z

    const-string v2, "XPST0081"

    const/16 v3, 0x97

    if-eqz v0, :cond_25

    invoke-static {v3}, Lnet/sf/saxon/om/StandardNames;->getStructuredQName(I)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    move/from16 v18, v14

    move/from16 v10, v28

    goto :goto_16

    :cond_25
    :try_start_1
    invoke-static {v12}, Lnet/sf/saxon/om/NameChecker;->getQNameParts(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v4, v1, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    check-cast v4, Lnet/sf/saxon/query/QueryModule;

    const/4 v10, 0x0

    aget-object v15, v0, v10

    invoke-virtual {v4, v15}, Lnet/sf/saxon/query/QueryModule;->checkURIForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Lnet/sf/saxon/om/QNameException; {:try_start_1 .. :try_end_1} :catch_3

    if-nez v4, :cond_26

    :try_start_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Undeclared prefix in element name "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v15, 0x1

    invoke-static {v12, v15}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catch Lnet/sf/saxon/om/QNameException; {:try_start_2 .. :try_end_2} :catch_1

    move/from16 v10, v28

    :try_start_3
    invoke-virtual {v1, v3, v2, v10}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_13

    :catch_1
    move/from16 v10, v28

    goto :goto_14

    :cond_26
    move/from16 v10, v28

    :goto_13
    new-instance v3, Lnet/sf/saxon/om/StructuredQName;
    :try_end_3
    .catch Lnet/sf/saxon/om/QNameException; {:try_start_3 .. :try_end_3} :catch_2

    move/from16 v18, v14

    const/4 v15, 0x0

    :try_start_4
    aget-object v14, v0, v15

    const/4 v15, 0x1

    aget-object v0, v0, v15

    invoke-direct {v3, v14, v4, v0}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lnet/sf/saxon/om/QNameException; {:try_start_4 .. :try_end_4} :catch_4

    move-object v0, v3

    goto :goto_16

    :catch_2
    :goto_14
    move/from16 v18, v14

    goto :goto_15

    :catch_3
    move/from16 v18, v14

    move/from16 v10, v28

    :catch_4
    :goto_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid element name "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    invoke-static {v12, v3}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v8, v10}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v0, 0x97

    invoke-static {v0}, Lnet/sf/saxon/om/StandardNames;->getStructuredQName(I)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    :goto_16
    iget-object v3, v1, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    check-cast v3, Lnet/sf/saxon/query/QueryModule;

    invoke-virtual {v3}, Lnet/sf/saxon/query/QueryModule;->getConstructionMode()I

    move-result v3

    new-instance v4, Lnet/sf/saxon/om/FingerprintedQName;

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getPrefix()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object v15

    move/from16 v16, v9

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v19, v12

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object v12

    move/from16 v22, v5

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v25, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v12, v5}, Lnet/sf/saxon/om/NamePool;->allocateFingerprint(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-direct {v4, v14, v15, v9, v5}, Lnet/sf/saxon/om/FingerprintedQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v5, Lnet/sf/saxon/expr/instruct/FixedElement;

    iget-object v9, v1, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    check-cast v9, Lnet/sf/saxon/query/QueryModule;

    invoke-virtual {v9}, Lnet/sf/saxon/query/QueryModule;->a()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v30

    iget-object v9, v1, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    check-cast v9, Lnet/sf/saxon/query/QueryModule;

    invoke-virtual {v9}, Lnet/sf/saxon/query/QueryModule;->isInheritNamespaces()Z

    move-result v31

    const/4 v9, 0x1

    xor-int/lit8 v32, p1, 0x1

    const/16 v33, 0x0

    move-object/from16 v28, v5

    move-object/from16 v29, v4

    move/from16 v34, v3

    invoke-direct/range {v28 .. v34}, Lnet/sf/saxon/expr/instruct/FixedElement;-><init>(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/om/NamespaceMap;ZZLnet/sf/saxon/type/SchemaType;I)V

    invoke-virtual {v1, v5, v10}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;I)V

    new-instance v4, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-direct {v4, v9}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v9, Lnet/sf/saxon/z/IntHashSet;

    invoke-virtual {v13}, Ljava/util/AbstractMap;->size()I

    move-result v10

    invoke-direct {v9, v10}, Lnet/sf/saxon/z/IntHashSet;-><init>(I)V

    invoke-virtual {v13}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_17
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lnet/sf/saxon/query/XQueryParser$b;

    iget-object v15, v12, Lnet/sf/saxon/query/XQueryParser$b;->a:Ljava/lang/String;

    iget v12, v12, Lnet/sf/saxon/query/XQueryParser$b;->b:I

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_2c

    invoke-virtual {v14, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_27

    goto/16 :goto_1e

    :cond_27
    iget-boolean v13, v1, Lnet/sf/saxon/expr/parser/XPathParser;->scanOnly:Z

    if-eqz v13, :cond_28

    goto/16 :goto_1e

    :cond_28
    :try_start_5
    invoke-static {v14}, Lnet/sf/saxon/om/NameChecker;->getQNameParts(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    const/16 v20, 0x0

    aget-object v26, v13, v20

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->isEmpty()Z

    move-result v20
    :try_end_5
    .catch Lnet/sf/saxon/om/QNameException; {:try_start_5 .. :try_end_5} :catch_8

    if-eqz v20, :cond_29

    move-object/from16 v20, v6

    move-object/from16 v26, v10

    move-object/from16 v6, v17

    goto :goto_18

    :cond_29
    move-object/from16 v20, v6

    :try_start_6
    iget-object v6, v1, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    check-cast v6, Lnet/sf/saxon/query/QueryModule;
    :try_end_6
    .catch Lnet/sf/saxon/om/QNameException; {:try_start_6 .. :try_end_6} :catch_7

    move-object/from16 v26, v10

    const/16 v23, 0x0

    :try_start_7
    aget-object v10, v13, v23

    invoke-virtual {v6, v10}, Lnet/sf/saxon/query/QueryModule;->checkURIForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_18
    if-nez v6, :cond_2a

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_7
    .catch Lnet/sf/saxon/om/QNameException; {:try_start_7 .. :try_end_7} :catch_6

    move-object/from16 v27, v11

    :try_start_8
    const-string v11, "Undeclared prefix in attribute name "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8
    .catch Lnet/sf/saxon/om/QNameException; {:try_start_8 .. :try_end_8} :catch_5

    move-object/from16 v28, v5

    const/4 v11, 0x2

    :try_start_9
    invoke-static {v14, v11}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v2, v12}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_19

    :catch_5
    move-object/from16 v28, v5

    goto :goto_1c

    :cond_2a
    move-object/from16 v28, v5

    move-object/from16 v27, v11

    :goto_19
    new-instance v5, Lnet/sf/saxon/om/FingerprintedQName;

    const/4 v10, 0x0

    aget-object v11, v13, v10

    const/4 v10, 0x1

    aget-object v13, v13, v10

    invoke-direct {v5, v11, v6, v13}, Lnet/sf/saxon/om/FingerprintedQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Lnet/sf/saxon/om/QNameException; {:try_start_9 .. :try_end_9} :catch_9

    :try_start_a
    invoke-interface {v5, v0}, Lnet/sf/saxon/om/NodeName;->obtainFingerprint(Lnet/sf/saxon/om/NamePool;)I

    move-result v6

    invoke-virtual {v9, v6}, Lnet/sf/saxon/z/IntHashSet;->contains(I)Z

    move-result v10

    if-eqz v10, :cond_2b

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Duplicate expanded attribute name "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "XQST0040"

    invoke-virtual {v1, v10, v11, v12}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_2b
    invoke-virtual {v9, v6}, Lnet/sf/saxon/z/IntHashSet;->add(I)Z
    :try_end_a
    .catch Lnet/sf/saxon/om/QNameException; {:try_start_a .. :try_end_a} :catch_a

    const/4 v10, 0x2

    goto :goto_1d

    :catch_6
    move-object/from16 v28, v5

    goto :goto_1b

    :catch_7
    move-object/from16 v28, v5

    goto :goto_1a

    :catch_8
    move-object/from16 v28, v5

    move-object/from16 v20, v6

    :goto_1a
    move-object/from16 v26, v10

    :goto_1b
    move-object/from16 v27, v11

    :catch_9
    :goto_1c
    const/4 v5, 0x0

    :catch_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x2

    invoke-static {v14, v10}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v8, v12}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_1d
    new-instance v6, Lnet/sf/saxon/expr/instruct/FixedAttribute;

    const/4 v11, 0x4

    const/4 v12, 0x0

    invoke-direct {v6, v5, v11, v12}, Lnet/sf/saxon/expr/instruct/FixedAttribute;-><init>(Lnet/sf/saxon/om/NodeName;ILnet/sf/saxon/type/SimpleType;)V

    invoke-virtual {v1, v6}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;)V

    const/4 v11, 0x0

    :try_start_b
    invoke-virtual {v15, v11}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/4 v14, 0x1

    invoke-virtual {v1, v15, v14, v13, v11}, Lnet/sf/saxon/query/XQueryParser;->K(Ljava/lang/String;ICZ)Lnet/sf/saxon/expr/Expression;

    move-result-object v13
    :try_end_b
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_b .. :try_end_b} :catch_b

    iget-object v14, v1, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v14}, Lnet/sf/saxon/expr/StaticContext;->makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v14

    invoke-virtual {v6, v14}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    invoke-virtual {v6, v13}, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;->setSelect(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v6}, Lnet/sf/saxon/expr/instruct/AttributeCreator;->setRejectDuplicates()V

    invoke-virtual {v1, v6}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;)V

    invoke-interface {v5}, Lnet/sf/saxon/om/NodeName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v5

    invoke-virtual {v1, v6, v5}, Lnet/sf/saxon/expr/parser/XPathParser;->makeTracer(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/expr/Expression;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    goto :goto_1f

    :catch_b
    move-exception v0

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lnet/sf/saxon/trans/XPathException;->setIsStaticError(Z)V

    throw v0

    :cond_2c
    :goto_1e
    move-object/from16 v28, v5

    move-object/from16 v20, v6

    move-object/from16 v26, v10

    move-object/from16 v27, v11

    const/4 v5, 0x1

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_1f
    move-object/from16 v6, v20

    move-object/from16 v10, v26

    move-object/from16 v11, v27

    move-object/from16 v5, v28

    goto/16 :goto_17

    :cond_2d
    move-object/from16 v28, v5

    move/from16 v6, v22

    const/4 v11, 0x0

    const/16 v13, 0x2f

    if-ne v6, v13, :cond_2e

    iget-object v0, v1, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/parser/Tokenizer;->nextChar()C

    move-result v0

    const/16 v2, 0x3e

    invoke-virtual {v1, v0, v2}, Lnet/sf/saxon/query/XQueryParser;->I(CC)V

    goto :goto_20

    :cond_2e
    move-object/from16 v0, v19

    invoke-virtual {v1, v0, v4}, Lnet/sf/saxon/query/XQueryParser;->L0(Ljava/lang/String;Ljava/util/List;)V

    :goto_20
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lnet/sf/saxon/expr/Expression;

    move v10, v11

    :goto_21
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-ge v10, v2, :cond_30

    const/4 v2, 0x4

    if-eq v3, v2, :cond_2f

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/sf/saxon/expr/Expression;

    invoke-virtual {v5, v3}, Lnet/sf/saxon/expr/Expression;->suppressValidation(I)V

    :cond_2f
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/sf/saxon/expr/Expression;

    aput-object v5, v0, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_21

    :cond_30
    new-instance v2, Lnet/sf/saxon/expr/instruct/Block;

    invoke-direct {v2, v0}, Lnet/sf/saxon/expr/instruct/Block;-><init>([Lnet/sf/saxon/expr/Expression;)V

    if-eqz v16, :cond_31

    iget-object v0, v1, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v0}, Lnet/sf/saxon/expr/StaticContext;->makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v0

    invoke-virtual {v2, v0}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    :cond_31
    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->setContentExpression(Lnet/sf/saxon/expr/Expression;)V

    move v14, v11

    move/from16 v2, v18

    :goto_22
    if-ge v14, v2, :cond_32

    iget-object v3, v1, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    check-cast v3, Lnet/sf/saxon/query/QueryModule;

    invoke-virtual {v3}, Lnet/sf/saxon/query/QueryModule;->undeclareNamespace()V

    add-int/lit8 v14, v14, 0x1

    goto :goto_22

    :cond_32
    move-object/from16 v3, v25

    invoke-virtual {v1, v0, v3}, Lnet/sf/saxon/expr/parser/XPathParser;->makeTracer(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method public getExecutable()Lnet/sf/saxon/expr/instruct/Executable;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/XQueryParser;->executable:Lnet/sf/saxon/expr/instruct/Executable;

    return-object p0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 0

    const-string p0, "XQuery"

    return-object p0
.end method

.method public final h0(I)Lnet/sf/saxon/expr/Expression;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v1, 0xd7

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->allowXPath31Syntax:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    :goto_0
    move-object v3, v0

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->lookAhead()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    new-instance v0, Lnet/sf/saxon/expr/instruct/DocumentInstr;

    const/4 v1, 0x0

    const/4 v8, 0x0

    invoke-direct {v0, v1, v8}, Lnet/sf/saxon/expr/instruct/DocumentInstr;-><init>(ZLnet/sf/saxon/str/UnicodeString;)V

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    check-cast v1, Lnet/sf/saxon/query/QueryModule;

    invoke-virtual {v1}, Lnet/sf/saxon/query/QueryModule;->isPreserveNamespaces()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lnet/sf/saxon/expr/instruct/CopyOf;

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lnet/sf/saxon/expr/instruct/CopyOf;-><init>(Lnet/sf/saxon/expr/Expression;ZILnet/sf/saxon/type/SchemaType;Z)V

    move-object v3, v1

    :cond_1
    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    check-cast v1, Lnet/sf/saxon/query/QueryModule;

    invoke-virtual {v1}, Lnet/sf/saxon/query/QueryModule;->getConstructionMode()I

    move-result v1

    invoke-virtual {v0, v1, v8}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->setValidationAction(ILnet/sf/saxon/type/SchemaType;)V

    invoke-virtual {v0, v3}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->setContentExpression(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;I)V

    return-object v0
.end method

.method public final i0(Lnet/sf/saxon/expr/flwor/FLWORExpression;Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/expr/flwor/FLWORExpression;",
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/flwor/Clause;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v1, 0x4b

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->allowXPath40Syntax:Z

    if-nez v1, :cond_1

    const-string v1, "The \'for member\' syntax requires XQuery 4.0 to be enabled"

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_1
    move v1, v3

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    iget-object v4, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v4, v4, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenStartOffset:I

    if-eqz v0, :cond_3

    new-instance v5, Lnet/sf/saxon/expr/flwor/ForMemberClause;

    invoke-direct {v5}, Lnet/sf/saxon/expr/flwor/ForMemberClause;-><init>()V

    goto :goto_1

    :cond_3
    new-instance v5, Lnet/sf/saxon/expr/flwor/ForClause;

    invoke-direct {v5}, Lnet/sf/saxon/expr/flwor/ForClause;-><init>()V

    :goto_1
    if-eqz v1, :cond_5

    invoke-static {p2}, Lnet/sf/saxon/query/XQueryParser;->containsLoopingClause(Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_2

    :cond_4
    move v6, v2

    goto :goto_3

    :cond_5
    :goto_2
    move v6, v3

    :goto_3
    invoke-virtual {v5, v6}, Lnet/sf/saxon/expr/flwor/Clause;->setRepeated(Z)V

    if-eqz v1, :cond_6

    move v1, v2

    :cond_6
    invoke-virtual {p0, v5, v4}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/flwor/Clause;I)V

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v4, 0x15

    invoke-virtual {p0, v4}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    const/16 v6, 0xc9

    invoke-virtual {p0, v6}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    iget-object v7, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v7, v7, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {p0, v7, v8}, Lnet/sf/saxon/expr/parser/XPathParser;->makeStructuredQName(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v7

    if-eqz v0, :cond_7

    sget-object v9, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    goto :goto_4

    :cond_7
    sget-object v9, Lnet/sf/saxon/value/SequenceType;->SINGLE_ITEM:Lnet/sf/saxon/value/SequenceType;

    :goto_4
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    iget-object v10, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v10, v10, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v11, 0x47

    if-ne v10, v11, :cond_8

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseSequenceType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v9

    move v10, v3

    goto :goto_5

    :cond_8
    move v10, v2

    :goto_5
    const-string v11, "allowing"

    invoke-virtual {p0, v11}, Lnet/sf/saxon/expr/parser/XPathParser;->isKeyword(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d

    if-eqz v0, :cond_9

    const-string v11, "\'allowing empty\' cannot appear in a \'for member\' clause"

    invoke-virtual {p0, v11}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v5, v3}, Lnet/sf/saxon/expr/flwor/ForClause;->setAllowingEmpty(Z)V

    if-nez v10, :cond_b

    if-eqz v0, :cond_a

    sget-object v9, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    goto :goto_6

    :cond_a
    sget-object v9, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_ITEM:Lnet/sf/saxon/value/SequenceType;

    :cond_b
    :goto_6
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    const-string v11, "empty"

    invoke-virtual {p0, v11}, Lnet/sf/saxon/expr/parser/XPathParser;->isKeyword(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_c

    const-string v11, "After \'allowing\', expected \'empty\'"

    invoke-virtual {p0, v11}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_c
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    move v11, v3

    goto :goto_7

    :cond_d
    move v11, v2

    :goto_7
    if-eqz v10, :cond_e

    if-nez v11, :cond_e

    if-nez v0, :cond_e

    invoke-virtual {v9}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result v10

    const/16 v12, 0x4000

    if-eq v10, v12, :cond_e

    const-string v10, "Occurrence indicator on singleton range variable has no effect"

    invoke-virtual {p0, v10}, Lnet/sf/saxon/expr/parser/XPathParser;->warning(Ljava/lang/String;)V

    invoke-virtual {v9}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object v9

    invoke-static {v9, v12}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object v9

    :cond_e
    new-instance v10, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    invoke-direct {v10, v7, v9}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;-><init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/value/SequenceType;)V

    invoke-virtual {v5, v10}, Lnet/sf/saxon/expr/flwor/ForClause;->setRangeVariable(Lnet/sf/saxon/expr/flwor/LocalVariableBinding;)V

    const-string v9, "at"

    invoke-virtual {p0, v9}, Lnet/sf/saxon/expr/parser/XPathParser;->isKeyword(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0, v4}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0, v6}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    iget-object v4, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v4, v4, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-virtual {p0, v4, v8}, Lnet/sf/saxon/expr/parser/XPathParser;->makeStructuredQName(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v4

    iget-boolean v6, p0, Lnet/sf/saxon/expr/parser/XPathParser;->scanOnly:Z

    if-nez v6, :cond_f

    invoke-virtual {v4, v7}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    const-string v6, "The two variables declared in a single \'for\' clause must have different names"

    const-string v7, "XQST0089"

    invoke-virtual {p0, v6, v7}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    new-instance v6, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    sget-object v7, Lnet/sf/saxon/value/SequenceType;->SINGLE_INTEGER:Lnet/sf/saxon/value/SequenceType;

    invoke-direct {v6, v4, v7}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;-><init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/value/SequenceType;)V

    invoke-virtual {v5, v6}, Lnet/sf/saxon/expr/flwor/ForClause;->setPositionVariable(Lnet/sf/saxon/expr/flwor/LocalVariableBinding;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    :cond_10
    const/16 v4, 0x1f

    invoke-virtual {p0, v4}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExprSingle()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    invoke-virtual {v5, p1, v4}, Lnet/sf/saxon/expr/flwor/ForClause;->initSequence(Lnet/sf/saxon/expr/flwor/FLWORExpression;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v5}, Lnet/sf/saxon/expr/flwor/ForClause;->getRangeVariable()Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v4

    invoke-virtual {p0, v4}, Lnet/sf/saxon/expr/parser/XPathParser;->declareRangeVariable(Lnet/sf/saxon/expr/LocalBinding;)V

    invoke-virtual {v5}, Lnet/sf/saxon/expr/flwor/ForClause;->getPositionVariable()Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v4

    if-eqz v4, :cond_11

    invoke-virtual {v5}, Lnet/sf/saxon/expr/flwor/ForClause;->getPositionVariable()Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v4

    invoke-virtual {p0, v4}, Lnet/sf/saxon/expr/parser/XPathParser;->declareRangeVariable(Lnet/sf/saxon/expr/LocalBinding;)V

    :cond_11
    if-eqz v11, :cond_12

    invoke-virtual {p0, p1, v5}, Lnet/sf/saxon/query/XQueryParser;->G(Lnet/sf/saxon/expr/flwor/FLWORExpression;Lnet/sf/saxon/expr/flwor/ForClause;)V

    :cond_12
    iget-object v4, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v4, v4, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/4 v5, 0x7

    if-eq v4, v5, :cond_2

    return-void
.end method

.method public isStreaming()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/query/XQueryParser;->h:Z

    return p0
.end method

.method public final j0(Lnet/sf/saxon/expr/flwor/FLWORExpression;Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/expr/flwor/FLWORExpression;",
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/flwor/Clause;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/expr/flwor/GroupByClause;

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v1}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/expr/flwor/GroupByClause;-><init>(Lnet/sf/saxon/Configuration;)V

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v1, v1, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenStartOffset:I

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/flwor/Clause;I)V

    invoke-static {p2}, Lnet/sf/saxon/query/XQueryParser;->containsLoopingClause(Ljava/util/List;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/flwor/Clause;->setRepeated(Z)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    :goto_0
    sget-object v3, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->O0()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v4

    iget-object v5, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v5, v5, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v6, 0x47

    const/16 v7, 0x3a

    if-ne v5, v6, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseSequenceType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v3

    iget-object v5, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v5, v5, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    if-eq v5, v7, :cond_0

    const-string v5, "In group by, if the type is declared then it must be followed by \':= value\'"

    invoke-virtual {p0, v5}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_0
    iget-object v5, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v5, v5, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/4 v6, 0x0

    if-ne v5, v7, :cond_1

    new-instance v5, Lnet/sf/saxon/expr/flwor/LetClause;

    invoke-direct {v5}, Lnet/sf/saxon/expr/flwor/LetClause;-><init>()V

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    new-instance v7, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    invoke-direct {v7, v4, v3}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;-><init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/value/SequenceType;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExprSingle()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    new-instance v8, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    const/16 v9, 0x14

    const-string v10, "grouping key"

    invoke-direct {v8, v9, v10, v6}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    invoke-static {v3, v8}, Lnet/sf/saxon/expr/Atomizer;->makeAtomizer(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/RoleDiagnostic;)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {v5, p1, v3}, Lnet/sf/saxon/expr/flwor/LetClause;->initSequence(Lnet/sf/saxon/expr/flwor/FLWORExpression;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v5, v7}, Lnet/sf/saxon/expr/flwor/LetClause;->setRangeVariable(Lnet/sf/saxon/expr/flwor/LocalVariableBinding;)V

    invoke-virtual {p0, v7}, Lnet/sf/saxon/expr/parser/XPathParser;->declareRangeVariable(Lnet/sf/saxon/expr/LocalBinding;)V

    :cond_1
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "collation"

    invoke-virtual {p0, v3}, Lnet/sf/saxon/expr/parser/XPathParser;->isKeyword(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    const/16 v3, 0xca

    invoke-virtual {p0, v3}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    iget-object v3, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v3, v3, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v3}, Lnet/sf/saxon/expr/StaticContext;->getDefaultCollationName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v3, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v3, v3, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    goto/16 :goto_0

    :cond_3
    new-instance v3, Lnet/sf/saxon/expr/flwor/TupleExpression;

    invoke-direct {v3}, Lnet/sf/saxon/expr/flwor/TupleExpression;-><init>()V

    new-instance v4, Lnet/sf/saxon/expr/flwor/TupleExpression;

    invoke-direct {v4}, Lnet/sf/saxon/expr/flwor/TupleExpression;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p0, p2, v5, v8, v9}, Lnet/sf/saxon/query/XQueryParser;->J(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/sf/saxon/om/StructuredQName;)Z

    move-result v10

    if-nez v10, :cond_4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "The grouping variable "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " must be the name of a variable bound earlier in the FLWOR expression"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "XQST0094"

    invoke-virtual {p0, v9, v10}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v3, v5}, Lnet/sf/saxon/expr/flwor/TupleExpression;->setVariables(Ljava/util/List;)V

    invoke-virtual {v0, p1, v3}, Lnet/sf/saxon/expr/flwor/GroupByClause;->initGroupingTupleExpression(Lnet/sf/saxon/expr/flwor/FLWORExpression;Lnet/sf/saxon/expr/flwor/TupleExpression;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_3
    if-ltz v3, :cond_8

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/sf/saxon/expr/flwor/Clause;

    invoke-virtual {v5}, Lnet/sf/saxon/expr/flwor/Clause;->getRangeVariables()[Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v5

    array-length v9, v5

    move v10, v6

    :goto_4
    if-ge v10, v9, :cond_7

    aget-object v11, v5, v10

    invoke-interface {v8, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v12, Lnet/sf/saxon/expr/LocalVariableReference;

    invoke-direct {v12, v11}, Lnet/sf/saxon/expr/LocalVariableReference;-><init>(Lnet/sf/saxon/expr/LocalBinding;)V

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_7
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    :cond_8
    invoke-virtual {v4, v7}, Lnet/sf/saxon/expr/flwor/TupleExpression;->setVariables(Ljava/util/List;)V

    invoke-virtual {v0, p1, v4}, Lnet/sf/saxon/expr/flwor/GroupByClause;->initRetainedTupleExpression(Lnet/sf/saxon/expr/flwor/FLWORExpression;Lnet/sf/saxon/expr/flwor/TupleExpression;)V

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr p1, v3

    new-array v3, p1, [Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v6

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    new-instance v9, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    invoke-virtual {v7}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v10

    invoke-virtual {v7}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getRequiredType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v7

    invoke-direct {v9, v10, v7}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;-><init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/value/SequenceType;)V

    aput-object v9, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_9
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    invoke-virtual {v4}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getRequiredType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v7

    invoke-virtual {v7}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object v7

    new-instance v9, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    invoke-virtual {v4}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v4

    const v10, 0xe000

    invoke-static {v7, v10}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object v7

    invoke-direct {v9, v4, v7}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;-><init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/value/SequenceType;)V

    aput-object v9, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_a
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    :goto_7
    if-ge v1, p1, :cond_b

    aget-object v4, v3, v1

    invoke-virtual {p0, v4}, Lnet/sf/saxon/expr/parser/XPathParser;->declareRangeVariable(Lnet/sf/saxon/expr/LocalBinding;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_b
    move p1, v6

    :goto_8
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_c

    aget-object v1, v3, p1

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->declareRangeVariable(Lnet/sf/saxon/expr/LocalBinding;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    :cond_c
    invoke-virtual {v0, v3}, Lnet/sf/saxon/expr/flwor/GroupByClause;->setVariableBindings([Lnet/sf/saxon/expr/flwor/LocalVariableBinding;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    new-array v1, p1, [Lnet/sf/saxon/expr/sort/GenericAtomicComparer;

    iget-object v3, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v3}, Lnet/sf/saxon/expr/StaticContext;->makeEarlyEvaluationContext()Lnet/sf/saxon/expr/XPathContext;

    move-result-object v3

    :goto_9
    if-ge v6, p1, :cond_d

    iget-object v4, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v4}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v4

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lnet/sf/saxon/Configuration;->getCollation(Ljava/lang/String;)Lnet/sf/saxon/lib/StringCollator;

    move-result-object v4

    sget-object v5, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {v5, v5, v4, v3}, Lnet/sf/saxon/expr/sort/GenericAtomicComparer;->makeAtomicComparer(Lnet/sf/saxon/type/BuiltInAtomicType;Lnet/sf/saxon/type/BuiltInAtomicType;Lnet/sf/saxon/lib/StringCollator;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/sort/AtomicComparer;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/expr/sort/GenericAtomicComparer;

    aput-object v4, v1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_d
    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/flwor/GroupByClause;->setComparers([Lnet/sf/saxon/expr/sort/GenericAtomicComparer;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final k0(Lnet/sf/saxon/expr/flwor/FLWORExpression;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/expr/flwor/FLWORExpression;",
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/flwor/Clause;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x1

    :cond_0
    new-instance v1, Lnet/sf/saxon/expr/flwor/LetClause;

    invoke-direct {v1}, Lnet/sf/saxon/expr/flwor/LetClause;-><init>()V

    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v2, v2, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenStartOffset:I

    invoke-virtual {p0, v1, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/flwor/Clause;I)V

    invoke-static {p2}, Lnet/sf/saxon/query/XQueryParser;->containsLoopingClause(Ljava/util/List;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lnet/sf/saxon/expr/flwor/Clause;->setRepeated(Z)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :cond_1
    const/16 v2, 0x15

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    const/16 v2, 0xc9

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v2, v2, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Lnet/sf/saxon/expr/parser/XPathParser;->makeStructuredQName(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v2

    sget-object v3, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    iget-object v4, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v4, v4, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v5, 0x47

    if-ne v4, v5, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseSequenceType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v3

    :cond_2
    new-instance v4, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    invoke-direct {v4, v2, v3}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;-><init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/value/SequenceType;)V

    const/16 v2, 0x3a

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExprSingle()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lnet/sf/saxon/expr/flwor/LetClause;->initSequence(Lnet/sf/saxon/expr/flwor/FLWORExpression;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v1, v4}, Lnet/sf/saxon/expr/flwor/LetClause;->setRangeVariable(Lnet/sf/saxon/expr/flwor/LocalVariableBinding;)V

    invoke-virtual {p0, v4}, Lnet/sf/saxon/expr/parser/XPathParser;->declareRangeVariable(Lnet/sf/saxon/expr/LocalBinding;)V

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v1, v1, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    return-void
.end method

.method public final l0()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    const/16 v0, 0xc9

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    const/16 v1, 0xca

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v1, v1, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lnet/sf/saxon/query/XQueryParser;->uriLiteral(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/query/XQueryParser;->H(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "Module namespace cannot be \"\""

    const-string v2, "XQST0088"

    invoke-virtual {p0, v1, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "http://saxon.fallback.namespace/"

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    const/16 v2, 0x95

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    :try_start_0
    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    check-cast v2, Lnet/sf/saxon/query/QueryModule;

    invoke-virtual {v2, v1}, Lnet/sf/saxon/query/QueryModule;->setModuleNamespace(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    check-cast v2, Lnet/sf/saxon/query/QueryModule;

    invoke-virtual {v2, v0, v1}, Lnet/sf/saxon/query/QueryModule;->declarePrologNamespace(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnet/sf/saxon/query/XQueryParser;->executable:Lnet/sf/saxon/expr/instruct/Executable;

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    check-cast v1, Lnet/sf/saxon/query/QueryModule;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/instruct/Executable;->addQueryLibraryModule(Lnet/sf/saxon/query/QueryModule;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->makeLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/query/XQueryParser;->P0(Lnet/sf/saxon/trans/XPathException;)V

    :goto_0
    return-void
.end method

.method public lookAhead()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/parser/Tokenizer;->lookAhead()V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final m0()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    check-cast v0, Lnet/sf/saxon/query/QueryModule;

    new-instance v1, Lnet/sf/saxon/query/XQueryParser$c;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lnet/sf/saxon/query/XQueryParser$c;-><init>(Lnet/sf/saxon/query/XQueryParser$a;)V

    iput-object v2, v1, Lnet/sf/saxon/query/XQueryParser$c;->a:Ljava/lang/String;

    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v1, Lnet/sf/saxon/query/XQueryParser$c;->b:Ljava/util/List;

    iget-object v3, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v3, v3, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenStartOffset:I

    iput v3, v1, Lnet/sf/saxon/query/XQueryParser$c;->c:I

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    iget-object v3, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v4, v3, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v5, 0xc9

    if-ne v4, v5, :cond_0

    iget-object v3, v3, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    const-string v4, "namespace"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->N0()Ljava/lang/String;

    move-result-object v2

    :cond_0
    iget-object v3, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v4, v3, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v5, 0xca

    if-ne v4, v5, :cond_4

    iget-object v3, v3, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lnet/sf/saxon/query/XQueryParser;->uriLiteral(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lnet/sf/saxon/query/XQueryParser;->H(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v1, Lnet/sf/saxon/query/XQueryParser$c;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "Imported module namespace cannot be \"\""

    const-string v4, "XQST0088"

    invoke-virtual {p0, v3, v4}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://saxon.fallback.namespace/line"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {v4}, Lnet/sf/saxon/expr/parser/Tokenizer;->getLineNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lnet/sf/saxon/query/XQueryParser$c;->a:Ljava/lang/String;

    :cond_1
    iget-object v3, p0, Lnet/sf/saxon/query/XQueryParser;->importedModules:Ljava/util/Set;

    iget-object v4, v1, Lnet/sf/saxon/query/XQueryParser$c;->a:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "Two \'import module\' declarations specify the same module namespace"

    const-string v4, "XQST0047"

    invoke-virtual {p0, v3, v4}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v3, p0, Lnet/sf/saxon/query/XQueryParser;->importedModules:Ljava/util/Set;

    iget-object v4, v1, Lnet/sf/saxon/query/XQueryParser$c;->a:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    check-cast v3, Lnet/sf/saxon/query/QueryModule;

    iget-object v4, v1, Lnet/sf/saxon/query/XQueryParser$c;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lnet/sf/saxon/query/QueryModule;->addImportedNamespace(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    const-string v3, "at"

    invoke-virtual {p0, v3}, Lnet/sf/saxon/expr/parser/XPathParser;->isKeyword(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_3
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0, v5}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    iget-object v3, v1, Lnet/sf/saxon/query/XQueryParser$c;->b:Ljava/util/List;

    iget-object v4, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v4, v4, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lnet/sf/saxon/query/XQueryParser;->uriLiteral(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    iget-object v3, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v3, v3, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/4 v4, 0x7

    if-eq v3, v4, :cond_3

    goto :goto_0

    :cond_4
    const-string v3, "After \'import module\', expected \'namespace\' or a string-literal"

    invoke-virtual {p0, v3}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_5
    :goto_0
    if-eqz v2, :cond_7

    :try_start_0
    iget-object v3, v1, Lnet/sf/saxon/query/XQueryParser$c;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lnet/sf/saxon/query/QueryModule;->getModuleNamespace()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v1, Lnet/sf/saxon/query/XQueryParser$c;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lnet/sf/saxon/query/QueryModule;->checkURIForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_6
    iget-object v3, v1, Lnet/sf/saxon/query/XQueryParser$c;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lnet/sf/saxon/query/QueryModule;->declarePrologNamespace(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->makeLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/query/XQueryParser;->P0(Lnet/sf/saxon/trans/XPathException;)V

    :cond_7
    :goto_1
    iget-object p0, p0, Lnet/sf/saxon/query/XQueryParser;->z:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public makeLetExpression()Lnet/sf/saxon/expr/LetExpression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    check-cast p0, Lnet/sf/saxon/query/QueryModule;

    invoke-virtual {p0}, Lnet/sf/saxon/query/QueryModule;->getUserQueryContext()Lnet/sf/saxon/query/StaticQueryContext;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/query/StaticQueryContext;->isCompileWithTracing()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lnet/sf/saxon/expr/EagerLetExpression;

    invoke-direct {p0}, Lnet/sf/saxon/expr/EagerLetExpression;-><init>()V

    return-object p0

    :cond_0
    new-instance p0, Lnet/sf/saxon/expr/LetExpression;

    invoke-direct {p0}, Lnet/sf/saxon/expr/LetExpression;-><init>()V

    return-object p0
.end method

.method public makeSimpleContent(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;I)V
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lnet/sf/saxon/expr/StringLiteral;

    sget-object v0, Lnet/sf/saxon/value/StringValue;->EMPTY_STRING:Lnet/sf/saxon/value/StringValue;

    invoke-direct {p1, v0}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Lnet/sf/saxon/value/StringValue;)V

    invoke-virtual {p2, p1}, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;->setSelect(Lnet/sf/saxon/expr/Expression;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-static {p1, v0, v1}, Lnet/sf/saxon/query/XQueryParser;->stringify(Lnet/sf/saxon/expr/Expression;ZLnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p2, p1}, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;->setSelect(Lnet/sf/saxon/expr/Expression;)V

    :goto_0
    invoke-virtual {p0, p2, p3}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;I)V

    return-void
.end method

.method public makeStringLiteral(Ljava/lang/String;)Lnet/sf/saxon/expr/Literal;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/16 v0, 0x26

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lnet/sf/saxon/expr/StringLiteral;

    invoke-direct {v0, p1}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lnet/sf/saxon/query/XQueryParser;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lnet/sf/saxon/expr/StringLiteral;

    invoke-static {p1}, Lnet/sf/saxon/value/StringValue;->makeStringValue(Ljava/lang/CharSequence;)Lnet/sf/saxon/value/StringValue;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Lnet/sf/saxon/value/StringValue;)V

    :goto_0
    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;)V

    return-object v0
.end method

.method public makeXQueryExpression(Ljava/lang/String;Lnet/sf/saxon/query/QueryModule;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/query/XQueryExpression;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "method"

    :try_start_0
    sget-object v1, Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;->XQUERY:Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;

    iget v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->languageVersion:I

    invoke-virtual {p0, v1, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->setLanguage(Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;I)V

    invoke-virtual {p3}, Lnet/sf/saxon/Configuration;->getXMLVersion()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lnet/sf/saxon/query/XQueryParser;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lnet/sf/saxon/query/XQueryParser;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p2}, Lnet/sf/saxon/query/QueryModule;->getExecutable()Lnet/sf/saxon/expr/instruct/Executable;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Lnet/sf/saxon/expr/instruct/Executable;

    invoke-direct {v1, p3}, Lnet/sf/saxon/expr/instruct/Executable;-><init>(Lnet/sf/saxon/Configuration;)V

    sget-object v2, Lnet/sf/saxon/s9api/HostLanguage;->XQUERY:Lnet/sf/saxon/s9api/HostLanguage;

    invoke-virtual {v1, v2}, Lnet/sf/saxon/expr/instruct/Executable;->setHostLanguage(Lnet/sf/saxon/s9api/HostLanguage;)V

    invoke-virtual {p2}, Lnet/sf/saxon/query/QueryModule;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/sf/saxon/expr/instruct/Executable;->setTopLevelPackage(Lnet/sf/saxon/expr/PackageData;)V

    invoke-virtual {p0, v1}, Lnet/sf/saxon/query/XQueryParser;->setExecutable(Lnet/sf/saxon/expr/instruct/Executable;)V

    :cond_1
    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/Executable;->getGlobalContextRequirement()Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Lnet/sf/saxon/query/QueryModule;->getRequiredContextItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;->addRequiredItemType(Lnet/sf/saxon/type/ItemType;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lnet/sf/saxon/query/QueryModule;->getRequiredContextItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Lnet/sf/saxon/query/QueryModule;->getRequiredContextItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v2

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v3

    if-eq v2, v3, :cond_3

    new-instance v2, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;

    invoke-direct {v2}, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;->setExternal(Z)V

    invoke-virtual {p2}, Lnet/sf/saxon/query/QueryModule;->getRequiredContextItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;->addRequiredItemType(Lnet/sf/saxon/type/ItemType;)V

    invoke-virtual {v1, v2}, Lnet/sf/saxon/expr/instruct/Executable;->setGlobalContextRequirement(Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;)V

    :cond_3
    :goto_1
    new-instance v2, Ljava/util/Properties;

    invoke-virtual {p3}, Lnet/sf/saxon/Configuration;->getDefaultSerializationProperties()Ljava/util/Properties;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    const-string v3, "xml"

    invoke-virtual {v2, v0, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_4
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0, v2}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    iput-object v0, p0, Lnet/sf/saxon/query/XQueryParser;->B:Ljava/util/Properties;

    new-instance v0, Ljava/util/Properties;

    iget-object v2, p0, Lnet/sf/saxon/query/XQueryParser;->B:Ljava/util/Properties;

    invoke-direct {v0, v2}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    invoke-virtual {v1, v0}, Lnet/sf/saxon/expr/instruct/Executable;->setDefaultOutputProperties(Ljava/util/Properties;)V

    new-instance v0, Lnet/sf/saxon/functions/FunctionLibraryList;

    invoke-direct {v0}, Lnet/sf/saxon/functions/FunctionLibraryList;-><init>()V

    new-instance v2, Lnet/sf/saxon/functions/ExecutableFunctionLibrary;

    invoke-direct {v2, p3}, Lnet/sf/saxon/functions/ExecutableFunctionLibrary;-><init>(Lnet/sf/saxon/Configuration;)V

    invoke-virtual {v0, v2}, Lnet/sf/saxon/functions/FunctionLibraryList;->addFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibrary;)I

    invoke-virtual {v1, v0}, Lnet/sf/saxon/expr/instruct/Executable;->setFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibraryList;)V

    invoke-virtual {p0, v1}, Lnet/sf/saxon/query/XQueryParser;->setExecutable(Lnet/sf/saxon/expr/instruct/Executable;)V

    invoke-virtual {p2}, Lnet/sf/saxon/query/QueryModule;->getCodeInjector()Lnet/sf/saxon/expr/parser/CodeInjector;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->setCodeInjector(Lnet/sf/saxon/expr/parser/CodeInjector;)V

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/query/XQueryParser;->z0(Ljava/lang/String;Lnet/sf/saxon/query/QueryModule;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iget-boolean v0, p0, Lnet/sf/saxon/query/XQueryParser;->h:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v0}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    const-string v2, "streaming"

    const/4 v3, -0x1

    const/4 v4, 0x4

    invoke-virtual {v0, v4, v2, v3}, Lnet/sf/saxon/Configuration;->checkLicensedFeature(ILjava/lang/String;I)V

    :cond_5
    invoke-virtual {v1, p2}, Lnet/sf/saxon/expr/instruct/Executable;->fixupQueryModules(Lnet/sf/saxon/query/QueryModule;)V

    iget-boolean v0, p0, Lnet/sf/saxon/query/XQueryParser;->h:Z

    invoke-virtual {p3, p1, p2, v0}, Lnet/sf/saxon/Configuration;->makeXQueryExpression(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/query/QueryModule;Z)Lnet/sf/saxon/query/XQueryExpression;

    move-result-object p1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/Executable;->getFunctionLibrary()Lnet/sf/saxon/functions/FunctionLibraryList;

    move-result-object v0

    new-instance v2, Lnet/sf/saxon/functions/FunctionLibraryList;

    invoke-direct {v2}, Lnet/sf/saxon/functions/FunctionLibraryList;-><init>()V

    invoke-virtual {p2}, Lnet/sf/saxon/query/QueryModule;->getBuiltInFunctionSet()Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/sf/saxon/functions/FunctionLibraryList;->addFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibrary;)I

    invoke-virtual {p3}, Lnet/sf/saxon/Configuration;->getBuiltInExtensionLibraryList()Lnet/sf/saxon/functions/FunctionLibraryList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/sf/saxon/functions/FunctionLibraryList;->addFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibrary;)I

    new-instance v3, Lnet/sf/saxon/functions/registry/ConstructorFunctionLibrary;

    invoke-direct {v3, p3}, Lnet/sf/saxon/functions/registry/ConstructorFunctionLibrary;-><init>(Lnet/sf/saxon/Configuration;)V

    invoke-virtual {v2, v3}, Lnet/sf/saxon/functions/FunctionLibraryList;->addFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibrary;)I

    invoke-virtual {p3}, Lnet/sf/saxon/Configuration;->getIntegratedFunctionLibrary()Lnet/sf/saxon/functions/IntegratedFunctionLibrary;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/sf/saxon/functions/FunctionLibraryList;->addFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibrary;)I

    invoke-virtual {p2}, Lnet/sf/saxon/query/QueryModule;->getGlobalFunctionLibrary()Lnet/sf/saxon/query/XQueryFunctionLibrary;

    move-result-object p2

    invoke-virtual {v2, p2}, Lnet/sf/saxon/functions/FunctionLibraryList;->addFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibrary;)I

    invoke-virtual {p3, v2}, Lnet/sf/saxon/Configuration;->addExtensionBinders(Lnet/sf/saxon/functions/FunctionLibraryList;)V

    invoke-virtual {v2, v0}, Lnet/sf/saxon/functions/FunctionLibraryList;->addFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibrary;)I

    invoke-virtual {v1, v2}, Lnet/sf/saxon/expr/instruct/Executable;->setFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibraryList;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lnet/sf/saxon/trans/XPathException;->hasBeenReported()Z

    move-result p2

    if-nez p2, :cond_6

    invoke-virtual {p0, p1}, Lnet/sf/saxon/query/XQueryParser;->P0(Lnet/sf/saxon/trans/XPathException;)V

    :cond_6
    throw p1
.end method

.method public final n0(I)Lnet/sf/saxon/expr/Expression;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    const-string v1, "xmlns"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    const-string v2, "xmlns:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "Cannot create a namespace declaration using an attribute constructor"

    :goto_1
    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v2, v2, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lnet/sf/saxon/expr/parser/XPathParser;->makeNodeName(Ljava/lang/String;Z)Lnet/sf/saxon/om/NodeName;

    move-result-object v2

    invoke-interface {v2}, Lnet/sf/saxon/om/NodeName;->getURI()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v2}, Lnet/sf/saxon/om/NodeName;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Lnet/sf/saxon/om/FingerprintedQName;

    invoke-interface {v2}, Lnet/sf/saxon/om/NodeName;->getURI()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    const-string v6, "_"

    invoke-direct {v4, v6, v5, v2}, Lnet/sf/saxon/om/FingerprintedQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v4

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    iget-object v4, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v4, v4, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v5, 0xd7

    if-eq v4, v5, :cond_3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    invoke-virtual {p0, v5}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    goto :goto_2

    :cond_3
    move-object v4, v1

    :goto_2
    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->lookAhead()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    if-nez v0, :cond_4

    new-instance v0, Lnet/sf/saxon/expr/instruct/FixedAttribute;

    const/4 v3, 0x4

    invoke-direct {v0, v2, v3, v1}, Lnet/sf/saxon/expr/instruct/FixedAttribute;-><init>(Lnet/sf/saxon/om/NodeName;ILnet/sf/saxon/type/SimpleType;)V

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/AttributeCreator;->setRejectDuplicates()V

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v1}, Lnet/sf/saxon/expr/StaticContext;->makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    invoke-virtual {p0, v4, v0, p1}, Lnet/sf/saxon/query/XQueryParser;->makeSimpleContent(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;I)V

    invoke-interface {v2}, Lnet/sf/saxon/om/NodeName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->makeTracer(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->warning(Ljava/lang/String;)V

    new-instance p0, Lnet/sf/saxon/expr/ErrorExpression;

    const-string p1, "XQDY0044"

    invoke-direct {p0, v0, p1, v3}, Lnet/sf/saxon/expr/ErrorExpression;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object p0
.end method

.method public final o0(I)Lnet/sf/saxon/expr/Expression;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->makeNodeName(Ljava/lang/String;Z)Lnet/sf/saxon/om/NodeName;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v1, v1, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v2, 0xd7

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->lookAhead()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    new-instance v9, Lnet/sf/saxon/expr/instruct/FixedElement;

    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    check-cast v2, Lnet/sf/saxon/query/QueryModule;

    invoke-virtual {v2}, Lnet/sf/saxon/query/QueryModule;->a()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v4

    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    check-cast v2, Lnet/sf/saxon/query/QueryModule;

    invoke-virtual {v2}, Lnet/sf/saxon/query/QueryModule;->isInheritNamespaces()Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    check-cast v2, Lnet/sf/saxon/query/QueryModule;

    invoke-virtual {v2}, Lnet/sf/saxon/query/QueryModule;->getConstructionMode()I

    move-result v8

    move-object v2, v9

    move-object v3, v0

    invoke-direct/range {v2 .. v8}, Lnet/sf/saxon/expr/instruct/FixedElement;-><init>(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/om/NamespaceMap;ZZLnet/sf/saxon/type/SchemaType;I)V

    invoke-virtual {p0, v9, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;I)V

    if-nez v1, :cond_1

    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object v1

    :cond_1
    move-object v3, v1

    iget-object p1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    check-cast p1, Lnet/sf/saxon/query/QueryModule;

    invoke-virtual {p1}, Lnet/sf/saxon/query/QueryModule;->isPreserveNamespaces()Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Lnet/sf/saxon/expr/instruct/CopyOf;

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lnet/sf/saxon/expr/instruct/CopyOf;-><init>(Lnet/sf/saxon/expr/Expression;ZILnet/sf/saxon/type/SchemaType;Z)V

    move-object v3, p1

    :cond_2
    invoke-virtual {v9, v3}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->setContentExpression(Lnet/sf/saxon/expr/Expression;)V

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    invoke-virtual {p0, v9, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->makeTracer(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public final p0(I)Lnet/sf/saxon/expr/Expression;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->allowXPath30Syntax:Z

    if-nez v0, :cond_0

    const-string v0, "Namespace node constructors require XQuery 3.0"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-static {v0}, Lnet/sf/saxon/om/NameChecker;->isValidNCName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid namespace prefix "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_1
    new-instance v1, Lnet/sf/saxon/expr/StringLiteral;

    invoke-direct {v1, v0}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v2, 0xd7

    const/4 v3, 0x0

    if-eq v0, v2, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    goto :goto_0

    :cond_2
    move-object v0, v3

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->lookAhead()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    new-instance v2, Lnet/sf/saxon/expr/instruct/NamespaceConstructor;

    invoke-direct {v2, v1}, Lnet/sf/saxon/expr/instruct/NamespaceConstructor;-><init>(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0, v0, v2, p1}, Lnet/sf/saxon/query/XQueryParser;->makeSimpleContent(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;I)V

    invoke-virtual {p0, v2, v3}, Lnet/sf/saxon/expr/parser/XPathParser;->makeTracer(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public parseAnnotationsList()Lnet/sf/saxon/query/AnnotationList;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lnet/sf/saxon/expr/parser/Tokenizer;->setState(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    const/16 v1, 0xc9

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnet/sf/saxon/expr/parser/Tokenizer;->setState(I)V

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v1, v1, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    const/16 v3, 0x3a

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const-string v3, "http://www.w3.org/2012/xquery"

    const-string v4, ""

    if-gez v1, :cond_1

    new-instance v1, Lnet/sf/saxon/om/StructuredQName;

    iget-object v5, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v5, v5, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-direct {v1, v4, v3, v5}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v3

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v1, v1, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-virtual {p0, v1, v4}, Lnet/sf/saxon/expr/parser/XPathParser;->makeStructuredQName(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object v5

    :goto_0
    new-instance v6, Lnet/sf/saxon/query/Annotation;

    invoke-direct {v6, v1}, Lnet/sf/saxon/query/Annotation;-><init>(Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v7, "XQST0045"

    if-eqz v3, :cond_3

    sget-object v3, Lnet/sf/saxon/query/Annotation;->PRIVATE:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {v1, v3}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lnet/sf/saxon/query/Annotation;->PUBLIC:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {v1, v3}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lnet/sf/saxon/query/Annotation;->UPDATING:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {v1, v3}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lnet/sf/saxon/query/Annotation;->SIMPLE:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {v1, v3}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognized variable or function annotation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v7}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-instance v1, Lnet/sf/saxon/value/Int64Value;

    int-to-long v3, v2

    invoke-direct {v1, v3, v4}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    invoke-virtual {v6, v1}, Lnet/sf/saxon/query/Annotation;->addAnnotationParameter(Lnet/sf/saxon/value/AtomicValue;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v5}, Lnet/sf/saxon/expr/parser/XPathParser;->isReservedInQuery(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "The annotation "

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v3, v3, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is in a reserved namespace"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v7}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v3, v3, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is in no namespace"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v7}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v1, v1, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/4 v3, 0x5

    if-ne v1, v3, :cond_c

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v1, v1, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v3, 0xcc

    if-ne v1, v3, :cond_6

    const-string v1, "Annotation parameter list cannot be empty"

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_6
    :goto_2
    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v1, v1, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v4, 0xca

    if-eq v1, v4, :cond_8

    const/16 v4, 0xd1

    if-eq v1, v4, :cond_7

    const-string v0, "Annotation parameter must be a literal"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_7
    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->parseNumericLiteral(Z)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/Literal;

    goto :goto_3

    :cond_8
    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->parseStringLiteral(Z)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/Literal;

    :goto_3
    invoke-virtual {v1}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v1

    instance-of v4, v1, Lnet/sf/saxon/value/StringValue;

    if-nez v4, :cond_a

    instance-of v4, v1, Lnet/sf/saxon/value/NumericValue;

    if-eqz v4, :cond_9

    goto :goto_4

    :cond_9
    const-string v1, "Annotation parameter must be a string or number"

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    :goto_4
    check-cast v1, Lnet/sf/saxon/value/AtomicValue;

    invoke-virtual {v6, v1}, Lnet/sf/saxon/query/Annotation;->addAnnotationParameter(Lnet/sf/saxon/value/AtomicValue;)V

    :goto_5
    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v1, v1, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    if-ne v1, v3, :cond_b

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    goto :goto_6

    :cond_b
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    goto :goto_2

    :cond_c
    :goto_6
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v1, v1, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v2, 0x6a

    if-eq v1, v2, :cond_0

    new-instance p0, Lnet/sf/saxon/query/AnnotationList;

    invoke-direct {p0, v0}, Lnet/sf/saxon/query/AnnotationList;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public parseConstructor()Lnet/sf/saxon/expr/Expression;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenStartOffset:I

    iget v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v3, 0xd9

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-eq v2, v3, :cond_b

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    invoke-virtual {p0, v1}, Lnet/sf/saxon/query/XQueryParser;->p0(I)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0, v1}, Lnet/sf/saxon/query/XQueryParser;->q0(I)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0, v1}, Lnet/sf/saxon/query/XQueryParser;->n0(I)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p0, v1}, Lnet/sf/saxon/query/XQueryParser;->o0(I)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :pswitch_4
    iget-object v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_0

    :goto_0
    move v4, v3

    goto/16 :goto_1

    :sswitch_0
    const-string v2, "namespace"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v4, 0x9

    goto/16 :goto_1

    :sswitch_1
    const-string v2, "comment"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v4, 0x8

    goto :goto_1

    :sswitch_2
    const-string v2, "document"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x7

    goto :goto_1

    :sswitch_3
    const-string v2, "unordered"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x6

    goto :goto_1

    :sswitch_4
    const-string v2, "attribute"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x5

    goto :goto_1

    :sswitch_5
    const-string v2, "text"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v4, 0x4

    goto :goto_1

    :sswitch_6
    const-string v2, "processing-instruction"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :sswitch_7
    const-string v2, "ordered"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v4, 0x2

    goto :goto_1

    :sswitch_8
    const-string v2, "validate"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v4, 0x1

    goto :goto_1

    :sswitch_9
    const-string v2, "element"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    move v4, v5

    :cond_9
    :goto_1
    packed-switch v4, :pswitch_data_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized node constructor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v1, v1, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_5
    invoke-virtual {p0, v1}, Lnet/sf/saxon/query/XQueryParser;->r0(I)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-virtual {p0, v1}, Lnet/sf/saxon/query/XQueryParser;->S(I)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-virtual {p0, v1}, Lnet/sf/saxon/query/XQueryParser;->h0(I)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-virtual {p0, v1}, Lnet/sf/saxon/query/XQueryParser;->T(I)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :pswitch_9
    invoke-virtual {p0, v1}, Lnet/sf/saxon/query/XQueryParser;->D0(I)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :pswitch_a
    invoke-virtual {p0, v1}, Lnet/sf/saxon/query/XQueryParser;->w0(I)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :pswitch_b
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v1, 0xd7

    if-ne v0, v1, :cond_a

    iget-boolean v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->allowXPath31Syntax:Z

    if-eqz v0, :cond_a

    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object v0

    goto :goto_2

    :cond_a
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    :goto_2
    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->lookAhead()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    return-object v0

    :pswitch_c
    const-string v0, "A validate expression is not allowed within a path expression"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :goto_3
    new-instance p0, Lnet/sf/saxon/expr/ErrorExpression;

    invoke-direct {p0}, Lnet/sf/saxon/expr/ErrorExpression;-><init>()V

    return-object p0

    :pswitch_d
    invoke-virtual {p0, v1}, Lnet/sf/saxon/query/XQueryParser;->U(I)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-virtual {p0, v5}, Lnet/sf/saxon/query/XQueryParser;->y0(Z)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->lookAhead()V

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {v1, v4}, Lnet/sf/saxon/expr/parser/Tokenizer;->setState(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x631ce104 -> :sswitch_9
        -0x54b6e6ea -> :sswitch_8
        -0x47f30793 -> :sswitch_7
        -0x27b7d72c -> :sswitch_6
        0x36452d -> :sswitch_5
        0xc7aa9c -> :sswitch_4
        0x1e14fbb4 -> :sswitch_3
        0x335cd11b -> :sswitch_2
        0x38a5ee5f -> :sswitch_1
        0x4aa3555b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_b
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public parseExtensionExpression()Lnet/sf/saxon/expr/Expression;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-static {v0}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const-string v4, " \t\r\n"

    if-ge v3, v1, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-gez v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :goto_1
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const-string v4, ""

    if-ge v3, v1, :cond_2

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v4

    :goto_2
    invoke-virtual {p0, v5, v4}, Lnet/sf/saxon/expr/parser/XPathParser;->makeStructuredQName(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    const-string v4, "http://saxon.sf.net/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "validate-type"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v1}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lnet/sf/saxon/Configuration;->isLicensedFeature(I)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v0, "Ignoring saxon:validate-type. To use this feature you need the Saxon-EE processor from http://www.saxonica.com/"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->warning(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    invoke-static {v0}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/str/StringTool;->codePoints(Ljava/lang/CharSequence;)Lnet/sf/saxon/z/IntIterator;

    move-result-object v1

    invoke-static {v1}, Lnet/sf/saxon/om/NameChecker;->isQName(Lnet/sf/saxon/z/IntIterator;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Schema type name expected in saxon:validate-type pragma: found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v1}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v2}, Lnet/sf/saxon/expr/StaticContext;->getDefaultElementNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->makeStructuredQName(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/sf/saxon/Configuration;->getSchemaType(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/type/SchemaType;

    move-result-object v1

    if-nez v1, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown schema type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_5
    const/4 v2, 0x1

    goto :goto_4

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignored pragma "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (unrecognized Saxon pragma)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->warning(Ljava/lang/String;)V

    :cond_7
    :goto_3
    const/4 v1, 0x0

    :goto_4
    move-object v7, v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v1, 0xda

    if-ne v0, v1, :cond_8

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->parseExtensionExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    :goto_5
    move-object v4, v0

    goto :goto_6

    :cond_8
    const/16 v0, 0x3b

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v3, 0xd7

    if-ne v1, v3, :cond_9

    invoke-virtual {v0}, Lnet/sf/saxon/expr/parser/Tokenizer;->lookAhead()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    const-string v0, "Unrecognized pragma, with no fallback expression"

    const-string v1, "XQST0079"

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v3}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/parser/Tokenizer;->lookAhead()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    goto :goto_5

    :goto_6
    if-eqz v2, :cond_d

    instance-of v0, v4, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;

    const/16 v1, 0x8

    if-eqz v0, :cond_a

    move-object p0, v4

    check-cast p0, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;

    invoke-virtual {p0, v1, v7}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->setValidationAction(ILnet/sf/saxon/type/SchemaType;)V

    return-object v4

    :cond_a
    instance-of v0, v4, Lnet/sf/saxon/expr/instruct/AttributeCreator;

    if-eqz v0, :cond_c

    instance-of v0, v7, Lnet/sf/saxon/type/SimpleType;

    if-nez v0, :cond_b

    const-string v0, "The type used for validating an attribute must be a simple type"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_b
    move-object p0, v4

    check-cast p0, Lnet/sf/saxon/expr/instruct/AttributeCreator;

    check-cast v7, Lnet/sf/saxon/type/SimpleType;

    invoke-virtual {p0, v7}, Lnet/sf/saxon/expr/instruct/AttributeCreator;->setSchemaType(Lnet/sf/saxon/type/SimpleType;)V

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/instruct/AttributeCreator;->setValidationAction(I)V

    return-object v4

    :cond_c
    new-instance v0, Lnet/sf/saxon/expr/instruct/CopyOf;

    const/4 v5, 0x1

    const/16 v6, 0x8

    const/4 v8, 0x1

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lnet/sf/saxon/expr/instruct/CopyOf;-><init>(Lnet/sf/saxon/expr/Expression;ZILnet/sf/saxon/type/SchemaType;Z)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->makeLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/expr/Expression;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    return-object v0

    :cond_d
    return-object v4
.end method

.method public parseFLWORExpression()Lnet/sf/saxon/expr/Expression;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Lnet/sf/saxon/expr/flwor/FLWORExpression;

    invoke-direct {v1}, Lnet/sf/saxon/expr/flwor/FLWORExpression;-><init>()V

    iget-object v2, v0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v2, v2, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenStartOffset:I

    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    iget-object v4, v0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v5, v4, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenStartOffset:I

    iget v4, v4, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v6, 0xd3

    const/4 v7, 0x1

    if-eq v4, v6, :cond_15

    const/16 v6, 0x4b

    if-ne v4, v6, :cond_0

    goto/16 :goto_9

    :cond_0
    const/16 v6, 0xd8

    if-ne v4, v6, :cond_1

    invoke-virtual {v0, v1, v3}, Lnet/sf/saxon/query/XQueryParser;->k0(Lnet/sf/saxon/expr/flwor/FLWORExpression;Ljava/util/List;)V

    goto/16 :goto_a

    :cond_1
    const/16 v6, 0xdc

    if-ne v4, v6, :cond_2

    invoke-virtual {v0, v3}, Lnet/sf/saxon/query/XQueryParser;->Y(Ljava/util/List;)V

    goto/16 :goto_a

    :cond_2
    const/16 v6, 0x48

    if-ne v4, v6, :cond_3

    invoke-virtual {v0, v1, v3}, Lnet/sf/saxon/query/XQueryParser;->j0(Lnet/sf/saxon/expr/flwor/FLWORExpression;Ljava/util/List;)V

    goto/16 :goto_a

    :cond_3
    const/16 v6, 0x49

    if-eq v4, v6, :cond_14

    const/16 v6, 0x4a

    if-ne v4, v6, :cond_4

    goto/16 :goto_8

    :cond_4
    const/16 v6, 0x1c

    if-eq v4, v6, :cond_13

    const-string v4, "where"

    invoke-virtual {v0, v4}, Lnet/sf/saxon/expr/parser/XPathParser;->isKeyword(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto/16 :goto_7

    :cond_5
    const-string v4, "trace"

    invoke-virtual {v0, v4}, Lnet/sf/saxon/expr/parser/XPathParser;->isKeyword(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v0, v1, v3}, Lnet/sf/saxon/query/XQueryParser;->E0(Lnet/sf/saxon/expr/flwor/FLWORExpression;Ljava/util/List;)V

    goto/16 :goto_a

    :cond_6
    const-string v4, "stable"

    invoke-virtual {v0, v4}, Lnet/sf/saxon/expr/parser/XPathParser;->isKeyword(Ljava/lang/String;)Z

    move-result v6

    const-string v8, "order"

    const/4 v9, 0x0

    if-nez v6, :cond_a

    invoke-virtual {v0, v8}, Lnet/sf/saxon/expr/parser/XPathParser;->isKeyword(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_3

    :cond_7
    iget-object v4, v0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v4, v4, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenStartOffset:I

    const/16 v4, 0x19

    invoke-virtual {v0, v4}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    iget-object v4, v0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {v4, v9}, Lnet/sf/saxon/expr/parser/Tokenizer;->setState(I)V

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExprSingle()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lnet/sf/saxon/expr/parser/XPathParser;->makeTracer(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v7

    :goto_1
    if-ltz v5, :cond_9

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/sf/saxon/expr/flwor/Clause;

    move v7, v9

    :goto_2
    invoke-virtual {v6}, Lnet/sf/saxon/expr/flwor/Clause;->getRangeVariables()[Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v8

    array-length v8, v8

    if-ge v7, v8, :cond_8

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/parser/XPathParser;->undeclareRangeVariable()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_8
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_9
    invoke-virtual {v1, v3, v4}, Lnet/sf/saxon/expr/flwor/FLWORExpression;->init(Ljava/util/List;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v0, v1, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;I)V

    return-object v1

    :cond_a
    :goto_3
    invoke-virtual {v0, v4}, Lnet/sf/saxon/expr/parser/XPathParser;->isKeyword(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {v0, v8}, Lnet/sf/saxon/expr/parser/XPathParser;->isKeyword(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "\'stable\' must be followed by \'order by\'"

    invoke-virtual {v0, v4}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_b
    new-instance v4, Lnet/sf/saxon/expr/flwor/TupleExpression;

    invoke-direct {v4}, Lnet/sf/saxon/expr/flwor/TupleExpression;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lnet/sf/saxon/expr/flwor/Clause;

    invoke-virtual {v10}, Lnet/sf/saxon/expr/flwor/Clause;->getRangeVariables()[Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v10

    array-length v11, v10

    move v12, v9

    :goto_4
    if-ge v12, v11, :cond_c

    aget-object v13, v10, v12

    new-instance v14, Lnet/sf/saxon/expr/LocalVariableReference;

    invoke-direct {v14, v13}, Lnet/sf/saxon/expr/LocalVariableReference;-><init>(Lnet/sf/saxon/expr/LocalBinding;)V

    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_d
    invoke-virtual {v4, v6}, Lnet/sf/saxon/expr/flwor/TupleExpression;->setVariables(Ljava/util/List;)V

    iget-object v6, v0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {v6, v7}, Lnet/sf/saxon/expr/parser/Tokenizer;->setState(I)V

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    iget-object v6, v0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v6, v6, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v8, 0x52

    if-eq v6, v8, :cond_e

    const-string v6, "by"

    invoke-virtual {v0, v6}, Lnet/sf/saxon/expr/parser/XPathParser;->isKeyword(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_e

    const-string v6, "\'order\' must be followed by \'by\'"

    invoke-virtual {v0, v6}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_e
    iget-object v6, v0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {v6, v9}, Lnet/sf/saxon/expr/parser/Tokenizer;->setState(I)V

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/query/XQueryParser;->C0()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    new-array v10, v8, [Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    move v11, v9

    :goto_5
    if-ge v11, v8, :cond_12

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lnet/sf/saxon/query/XQueryParser$d;

    new-instance v13, Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    invoke-direct {v13}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;-><init>()V

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lnet/sf/saxon/query/XQueryParser$d;

    iget-object v14, v14, Lnet/sf/saxon/query/XQueryParser$d;->a:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {v13, v14, v9}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->setSortKey(Lnet/sf/saxon/expr/Expression;Z)V

    iget-boolean v14, v12, Lnet/sf/saxon/query/XQueryParser$d;->b:Z

    if-eqz v14, :cond_f

    const-string v14, "ascending"

    goto :goto_6

    :cond_f
    const-string v14, "descending"

    :goto_6
    new-instance v15, Lnet/sf/saxon/expr/StringLiteral;

    invoke-static {v14}, Lnet/sf/saxon/str/BMPString;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v14

    invoke-direct {v15, v14}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    invoke-virtual {v13, v15}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->setOrder(Lnet/sf/saxon/expr/Expression;)V

    iget-boolean v14, v12, Lnet/sf/saxon/query/XQueryParser$d;->c:Z

    invoke-virtual {v13, v14}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->setEmptyLeast(Z)V

    iget-object v14, v12, Lnet/sf/saxon/query/XQueryParser$d;->d:Ljava/lang/String;

    if-eqz v14, :cond_11

    iget-object v14, v0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v14}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v14

    iget-object v15, v12, Lnet/sf/saxon/query/XQueryParser$d;->d:Ljava/lang/String;

    invoke-virtual {v14, v15}, Lnet/sf/saxon/Configuration;->getCollation(Ljava/lang/String;)Lnet/sf/saxon/lib/StringCollator;

    move-result-object v14

    if-nez v14, :cond_10

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown collation \'"

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v12, Lnet/sf/saxon/query/XQueryParser$d;->d:Ljava/lang/String;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x27

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v12, "XQST0076"

    invoke-virtual {v0, v9, v12}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    invoke-virtual {v13, v14}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->setCollation(Lnet/sf/saxon/lib/StringCollator;)V

    :cond_11
    aput-object v13, v10, v11

    add-int/lit8 v11, v11, 0x1

    const/4 v9, 0x0

    goto :goto_5

    :cond_12
    new-instance v6, Lnet/sf/saxon/expr/flwor/OrderByClause;

    invoke-direct {v6, v1, v10, v4}, Lnet/sf/saxon/expr/flwor/OrderByClause;-><init>(Lnet/sf/saxon/expr/flwor/FLWORExpression;[Lnet/sf/saxon/expr/sort/SortKeyDefinition;Lnet/sf/saxon/expr/flwor/TupleExpression;)V

    invoke-static {v3}, Lnet/sf/saxon/query/XQueryParser;->containsLoopingClause(Ljava/util/List;)Z

    move-result v4

    invoke-virtual {v6, v4}, Lnet/sf/saxon/expr/flwor/Clause;->setRepeated(Z)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_13
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExprSingle()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    new-instance v6, Lnet/sf/saxon/expr/flwor/WhereClause;

    invoke-direct {v6, v1, v4}, Lnet/sf/saxon/expr/flwor/WhereClause;-><init>(Lnet/sf/saxon/expr/flwor/FLWORExpression;Lnet/sf/saxon/expr/Expression;)V

    iget-object v4, v0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v4, v4, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenStartOffset:I

    invoke-virtual {v0, v6, v4}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/flwor/Clause;I)V

    invoke-static {v3}, Lnet/sf/saxon/query/XQueryParser;->containsLoopingClause(Ljava/util/List;)Z

    move-result v4

    invoke-virtual {v6, v4}, Lnet/sf/saxon/expr/flwor/WhereClause;->setRepeated(Z)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_14
    :goto_8
    invoke-virtual {v0, v1, v3}, Lnet/sf/saxon/query/XQueryParser;->I0(Lnet/sf/saxon/expr/flwor/FLWORExpression;Ljava/util/List;)V

    goto :goto_a

    :cond_15
    :goto_9
    invoke-virtual {v0, v1, v3}, Lnet/sf/saxon/query/XQueryParser;->i0(Lnet/sf/saxon/expr/flwor/FLWORExpression;Ljava/util/List;)V

    :goto_a
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v7

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/expr/flwor/Clause;

    invoke-virtual {v0, v4, v5}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/flwor/Clause;I)V

    goto/16 :goto_0
.end method

.method public parseFunctionDeclaration(Lnet/sf/saxon/query/AnnotationList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    sget-object v0, Lnet/sf/saxon/query/XQueryParser;->SAXON_MEMO_FUNCTION:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/query/AnnotationList;->includes(Lnet/sf/saxon/om/StructuredQName;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v0}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getEditionCode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "HE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "saxon:memo-function option is ignored under Saxon-HE"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->warning(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lnet/sf/saxon/query/XQueryParser;->g:Z

    :cond_1
    :goto_0
    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenStartOffset:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lnet/sf/saxon/expr/parser/Tokenizer;->setState(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const-string v4, ""

    if-gez v0, :cond_2

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v0}, Lnet/sf/saxon/expr/StaticContext;->getDefaultFunctionNamespace()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Lnet/sf/saxon/om/StructuredQName;

    iget-object v6, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v6, v6, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-direct {v5, v4, v0, v6}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-virtual {p0, v0, v4}, Lnet/sf/saxon/expr/parser/XPathParser;->makeStructuredQName(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v5

    invoke-virtual {v5}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "The function must be in a namespace"

    const-string v7, "XQST0060"

    invoke-virtual {p0, v6, v7}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v6, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    check-cast v6, Lnet/sf/saxon/query/QueryModule;

    invoke-virtual {v6}, Lnet/sf/saxon/query/QueryModule;->getModuleNamespace()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "A function in a library module must be in the module namespace"

    const-string v7, "XQST0048"

    invoke-virtual {p0, v6, v7}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->isReservedInQuery(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The function name "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v6, v6, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is in a reserved namespace"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "XQST0045"

    invoke-virtual {p0, v0, v6}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    new-instance v0, Lnet/sf/saxon/query/XQueryFunction;

    invoke-direct {v0}, Lnet/sf/saxon/query/XQueryFunction;-><init>()V

    invoke-virtual {v0, v5}, Lnet/sf/saxon/query/XQueryFunction;->setFunctionName(Lnet/sf/saxon/om/StructuredQName;)V

    sget-object v5, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v0, v5}, Lnet/sf/saxon/query/XQueryFunction;->setResultType(Lnet/sf/saxon/value/SequenceType;)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lnet/sf/saxon/query/XQueryFunction;->setBody(Lnet/sf/saxon/expr/Expression;)V

    iget-object v6, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v6}, Lnet/sf/saxon/expr/StaticContext;->getContainingLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v6

    iget-object v7, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {v7, v2}, Lnet/sf/saxon/expr/parser/Tokenizer;->getLineNumber(I)I

    move-result v7

    iget-object v8, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {v8, v2}, Lnet/sf/saxon/expr/parser/Tokenizer;->getColumnNumber(I)I

    move-result v2

    invoke-virtual {p0, v6, v7, v2, v5}, Lnet/sf/saxon/expr/parser/XPathParser;->makeNestedLocation(Lnet/sf/saxon/s9api/Location;IILjava/lang/String;)Lnet/sf/saxon/s9api/Location;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/sf/saxon/query/XQueryFunction;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    check-cast v2, Lnet/sf/saxon/query/QueryModule;

    invoke-virtual {v0, v2}, Lnet/sf/saxon/query/XQueryFunction;->setStaticContext(Lnet/sf/saxon/query/QueryModule;)V

    iget-boolean v2, p0, Lnet/sf/saxon/query/XQueryParser;->g:Z

    invoke-virtual {v0, v2}, Lnet/sf/saxon/query/XQueryFunction;->setMemoFunction(Z)V

    sget-object v2, Lnet/sf/saxon/query/Annotation;->UPDATING:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p1, v2}, Lnet/sf/saxon/query/AnnotationList;->includes(Lnet/sf/saxon/om/StructuredQName;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lnet/sf/saxon/query/XQueryFunction;->setUpdating(Z)V

    invoke-virtual {v0, p1}, Lnet/sf/saxon/query/XQueryFunction;->setAnnotations(Lnet/sf/saxon/query/AnnotationList;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    new-instance p1, Ljava/util/HashSet;

    const/16 v2, 0x8

    invoke-direct {p1, v2}, Ljava/util/HashSet;-><init>(I)V

    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v2, v2, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v5, 0x47

    const/16 v6, 0xcc

    if-eq v2, v6, :cond_a

    :goto_2
    const/16 v2, 0x15

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    const/16 v2, 0xc9

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v2, v2, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-virtual {p0, v2, v4}, Lnet/sf/saxon/expr/parser/XPathParser;->makeStructuredQName(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Duplicate parameter name "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v8, v8, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    const/4 v9, 0x5

    invoke-static {v8, v9}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "XQST0039"

    invoke-virtual {p0, v7, v8}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v7, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    iget-object v8, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v8, v8, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    if-ne v8, v5, :cond_7

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseSequenceType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v7

    :cond_7
    new-instance v8, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;

    invoke-direct {v8}, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;-><init>()V

    invoke-virtual {v8, v7}, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;->setRequiredType(Lnet/sf/saxon/value/SequenceType;)V

    invoke-virtual {v8, v2}, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;->setVariableQName(Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {v0, v8}, Lnet/sf/saxon/query/XQueryFunction;->addArgument(Lnet/sf/saxon/expr/instruct/UserFunctionParameter;)V

    invoke-virtual {p0, v8}, Lnet/sf/saxon/expr/parser/XPathParser;->declareRangeVariable(Lnet/sf/saxon/expr/LocalBinding;)V

    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v2, v2, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    if-ne v2, v6, :cond_8

    goto :goto_3

    :cond_8
    const/4 v7, 0x7

    if-ne v2, v7, :cond_9

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    goto :goto_2

    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected \',\' or \')\' after function argument, found \'"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lnet/sf/saxon/expr/parser/Token;->tokens:[Ljava/lang/String;

    iget-object v8, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v8, v8, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    aget-object v7, v7, v8

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x27

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_a
    :goto_3
    iget-object p1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {p1, v1}, Lnet/sf/saxon/expr/parser/Tokenizer;->setState(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    iget-object p1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget p1, p1, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    if-ne p1, v5, :cond_c

    invoke-virtual {v0}, Lnet/sf/saxon/query/XQueryFunction;->isUpdating()Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p1, "Cannot specify a return type for an updating function"

    const-string v2, "XUST0028"

    invoke-virtual {p0, p1, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    iget-object p1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lnet/sf/saxon/expr/parser/Tokenizer;->setState(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseSequenceType()Lnet/sf/saxon/value/SequenceType;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/sf/saxon/query/XQueryFunction;->setResultType(Lnet/sf/saxon/value/SequenceType;)V

    :cond_c
    const-string p1, "external"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->isKeyword(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_5

    :cond_d
    const/16 p1, 0x3b

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    iget-object p1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {p1, v3}, Lnet/sf/saxon/expr/parser/Tokenizer;->setState(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    iget-object p1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget p1, p1, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v1, 0xd7

    if-ne p1, v1, :cond_e

    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object p1

    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v2}, Lnet/sf/saxon/expr/StaticContext;->makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v2

    invoke-virtual {p1, v2}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v0, p1}, Lnet/sf/saxon/query/XQueryFunction;->setBody(Lnet/sf/saxon/expr/Expression;)V

    goto :goto_4

    :cond_e
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/sf/saxon/query/XQueryFunction;->setBody(Lnet/sf/saxon/expr/Expression;)V

    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v2}, Lnet/sf/saxon/expr/StaticContext;->makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v2

    invoke-static {p1, v2}, Lnet/sf/saxon/expr/parser/ExpressionTool;->setDeepRetainedStaticContext(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    :goto_4
    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->lookAhead()V

    move v1, v3

    :goto_5
    invoke-virtual {v0}, Lnet/sf/saxon/query/XQueryFunction;->getParameterDefinitions()[Lnet/sf/saxon/expr/instruct/UserFunctionParameter;

    move-result-object p1

    array-length v2, p1

    move v4, v3

    :goto_6
    if-ge v4, v2, :cond_f

    aget-object v5, p1, v4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->undeclareRangeVariable()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_f
    iget-object p1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {p1, v3}, Lnet/sf/saxon/expr/parser/Tokenizer;->setState(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    iget-object p1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    check-cast p1, Lnet/sf/saxon/query/QueryModule;

    if-eqz v1, :cond_10

    iget-object p1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->parserExtension:Lnet/sf/saxon/expr/parser/ParserExtension;

    invoke-virtual {p1, p0, v0}, Lnet/sf/saxon/expr/parser/ParserExtension;->handleExternalFunctionDeclaration(Lnet/sf/saxon/query/XQueryParser;Lnet/sf/saxon/query/XQueryFunction;)V

    goto :goto_7

    :cond_10
    :try_start_0
    invoke-virtual {p1, v0}, Lnet/sf/saxon/query/QueryModule;->declareFunction(Lnet/sf/saxon/query/XQueryFunction;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p1, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Lnet/sf/saxon/om/StructuredQName;I)V

    :goto_7
    iput-boolean v3, p0, Lnet/sf/saxon/query/XQueryParser;->g:Z

    return-void
.end method

.method public final parseLibraryModule(Ljava/lang/String;Lnet/sf/saxon/query/QueryModule;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iput-object p2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-virtual {p2}, Lnet/sf/saxon/query/QueryModule;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getValidCharacterChecker()Lnet/sf/saxon/z/IntPredicateProxy;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->charChecker:Lnet/sf/saxon/z/IntPredicateProxy;

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getXMLVersion()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lnet/sf/saxon/query/XQueryParser;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lnet/sf/saxon/query/XQueryParser;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p2}, Lnet/sf/saxon/query/QueryModule;->getExecutable()Lnet/sf/saxon/expr/instruct/Executable;

    move-result-object v1

    if-eqz v1, :cond_8

    iput-object v1, p0, Lnet/sf/saxon/query/XQueryParser;->executable:Lnet/sf/saxon/expr/instruct/Executable;

    new-instance v1, Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-direct {v1}, Lnet/sf/saxon/expr/parser/Tokenizer;-><init>()V

    iput-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->languageVersion:I

    iput v2, v1, Lnet/sf/saxon/expr/parser/Tokenizer;->languageLevel:I

    const/4 v2, 0x1

    iput-boolean v2, v1, Lnet/sf/saxon/expr/parser/Tokenizer;->isXQuery:Z

    new-instance v1, Lnet/sf/saxon/om/QNameParser;

    invoke-virtual {p2}, Lnet/sf/saxon/query/QueryModule;->getLiveNamespaceResolver()Lnet/sf/saxon/om/NamespaceResolver;

    move-result-object v3

    invoke-direct {v1, v3}, Lnet/sf/saxon/om/QNameParser;-><init>(Lnet/sf/saxon/om/NamespaceResolver;)V

    invoke-virtual {v1, v2}, Lnet/sf/saxon/om/QNameParser;->withAcceptEQName(Z)Lnet/sf/saxon/om/QNameParser;

    move-result-object v1

    new-instance v3, Lnet/sf/saxon/query/XQueryParser$Unescaper;

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getValidCharacterChecker()Lnet/sf/saxon/z/IntPredicateProxy;

    move-result-object v0

    invoke-direct {v3, v0}, Lnet/sf/saxon/query/XQueryParser$Unescaper;-><init>(Lnet/sf/saxon/z/IntPredicateProxy;)V

    invoke-virtual {v1, v3}, Lnet/sf/saxon/om/QNameParser;->withUnescaper(Lnet/sf/saxon/query/XQueryParser$Unescaper;)Lnet/sf/saxon/om/QNameParser;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->setQNameParser(Lnet/sf/saxon/om/QNameParser;)V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    const/4 v3, -0x1

    invoke-virtual {v1, p1, v0, v3}, Lnet/sf/saxon/expr/parser/Tokenizer;->tokenize(Ljava/lang/String;II)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->H0()V

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-boolean v3, p0, Lnet/sf/saxon/expr/parser/XPathParser;->allowXPath40Syntax:Z

    if-nez v3, :cond_2

    invoke-virtual {p2}, Lnet/sf/saxon/query/QueryModule;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v3

    sget-object v4, Lnet/sf/saxon/lib/Feature;->ALLOW_SYNTAX_EXTENSIONS:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {v3, v4}, Lnet/sf/saxon/Configuration;->getBooleanProperty(Lnet/sf/saxon/lib/Feature;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    move v2, v0

    :cond_2
    :goto_2
    iput-boolean v2, v1, Lnet/sf/saxon/expr/parser/Tokenizer;->allowSaxonExtensions:Z

    iput-boolean v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->allowXPath40Syntax:Z

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v1, 0x65

    if-eq v0, v1, :cond_5

    const-string v1, "The file imported for module "

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lnet/sf/saxon/query/QueryModule;->getModuleNamespace()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_3

    const-string p1, " is empty"

    goto :goto_3

    :cond_3
    const-string p1, " has no significant content"

    :goto_3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lnet/sf/saxon/query/QueryModule;->getModuleNamespace()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not a valid XQuery library module. The content starts: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget p2, p2, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenStartOffset:I

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/sf/saxon/str/StringView;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-static {p1}, Lnet/sf/saxon/trans/Err;->truncate30(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_5
    :goto_4
    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->l0()V

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->x0()V

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->J0()V

    iget-object p1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget p1, p1, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    if-eqz p1, :cond_6

    const-string p1, "Unrecognized content found after the variable and function declarations in a library module"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_6
    iget p1, p0, Lnet/sf/saxon/query/XQueryParser;->i:I

    if-nez p1, :cond_7

    return-void

    :cond_7
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    const-string p2, "Static errors were reported in the imported library module"

    invoke-direct {p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lnet/sf/saxon/query/XQueryParser;->j:Lnet/sf/saxon/trans/XPathException;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->setErrorCodeQName(Lnet/sf/saxon/om/StructuredQName;)V

    throw p1

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Query library module has no associated Executable"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public parseOutputDeclaration(Lnet/sf/saxon/om/StructuredQName;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    check-cast v0, Lnet/sf/saxon/query/QueryModule;

    invoke-virtual {v0}, Lnet/sf/saxon/query/QueryModule;->isMainModule()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Output declarations must not appear in a library module"

    const-string v1, "XQST0108"

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lnet/sf/saxon/query/XQueryParser;->A:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Duplicate output declaration ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XQST0110"

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/query/XQueryParser;->A:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    const-string p1, "parameter-document"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "use-character-maps"

    if-nez p1, :cond_3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->getExecutable()Lnet/sf/saxon/expr/instruct/Executable;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/Executable;->getPrimarySerializationProperties()Lnet/sf/saxon/serialize/SerializationProperties;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/serialize/SerializationProperties;->getProperties()Ljava/util/Properties;

    move-result-object v2

    const-string v3, ""

    iget-object p1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {p1}, Lnet/sf/saxon/expr/StaticContext;->getNamespaceResolver()Lnet/sf/saxon/om/NamespaceResolver;

    move-result-object v6

    const/4 v7, 0x0

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {p0}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v8

    move-object v5, p2

    invoke-static/range {v2 .. v8}, Lnet/sf/saxon/expr/instruct/ResultDocument;->setSerializationProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/om/NamespaceResolver;ZLnet/sf/saxon/Configuration;)V

    goto/16 :goto_0

    :cond_2
    const-string p1, "Output declaration use-character-maps cannot appear except in a parameter file"

    const-string p2, "XQST0109"

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    iget-object p1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {p1}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    new-instance v1, Lnet/sf/saxon/lib/ResourceRequest;

    invoke-direct {v1}, Lnet/sf/saxon/lib/ResourceRequest;-><init>()V

    iput-object p2, v1, Lnet/sf/saxon/lib/ResourceRequest;->relativeUri:Ljava/lang/String;

    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v2}, Lnet/sf/saxon/expr/StaticContext;->getStaticBaseURI()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lnet/sf/saxon/lib/ResourceRequest;->baseUri:Ljava/lang/String;

    :try_start_0
    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v2}, Lnet/sf/saxon/expr/StaticContext;->getStaticBaseURI()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lnet/sf/saxon/functions/ResolveURI;->makeAbsolute(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object p2

    invoke-virtual {p2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v1, Lnet/sf/saxon/lib/ResourceRequest;->uri:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, "http://www.w3.org/2010/xslt-xquery-serialization"

    iput-object p2, v1, Lnet/sf/saxon/lib/ResourceRequest;->nature:Ljava/lang/String;

    const-string p2, "serialization"

    iput-object p2, v1, Lnet/sf/saxon/lib/ResourceRequest;->purpose:Ljava/lang/String;

    const/4 p2, 0x2

    new-array v2, p2, [Lnet/sf/saxon/lib/ResourceResolver;

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getResourceResolver()Lnet/sf/saxon/lib/ResourceResolver;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Lnet/sf/saxon/lib/DirectResourceResolver;

    invoke-direct {v3, p1}, Lnet/sf/saxon/lib/DirectResourceResolver;-><init>(Lnet/sf/saxon/Configuration;)V

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lnet/sf/saxon/lib/ResourceRequest;->resolve([Lnet/sf/saxon/lib/ResourceResolver;)Ljavax/xml/transform/Source;

    move-result-object v1

    new-instance v2, Lnet/sf/saxon/lib/ParseOptions;

    invoke-direct {v2}, Lnet/sf/saxon/lib/ParseOptions;-><init>()V

    invoke-virtual {v2, p2}, Lnet/sf/saxon/lib/ParseOptions;->setSchemaValidationMode(I)V

    const/4 p2, 0x4

    invoke-virtual {v2, p2}, Lnet/sf/saxon/lib/ParseOptions;->setDTDValidationMode(I)V

    invoke-virtual {p1, v1}, Lnet/sf/saxon/Configuration;->buildDocumentTree(Ljavax/xml/transform/Source;)Lnet/sf/saxon/om/TreeInfo;

    move-result-object p1

    new-instance p2, Lnet/sf/saxon/serialize/SerializationParamsHandler;

    iget-object v1, p0, Lnet/sf/saxon/query/XQueryParser;->B:Ljava/util/Properties;

    invoke-direct {p2, v1}, Lnet/sf/saxon/serialize/SerializationParamsHandler;-><init>(Ljava/util/Properties;)V

    invoke-interface {p1}, Lnet/sf/saxon/om/TreeInfo;->getRootNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    invoke-virtual {p2, p1}, Lnet/sf/saxon/serialize/SerializationParamsHandler;->setSerializationParams(Lnet/sf/saxon/om/NodeInfo;)V

    invoke-virtual {p2}, Lnet/sf/saxon/serialize/SerializationParamsHandler;->getCharacterMap()Lnet/sf/saxon/serialize/CharacterMap;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance p2, Lnet/sf/saxon/serialize/CharacterMapIndex;

    invoke-direct {p2}, Lnet/sf/saxon/serialize/CharacterMapIndex;-><init>()V

    invoke-virtual {p1}, Lnet/sf/saxon/serialize/CharacterMap;->getName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {p2, v1, p1}, Lnet/sf/saxon/serialize/CharacterMapIndex;->putCharacterMap(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/serialize/CharacterMap;)V

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->getExecutable()Lnet/sf/saxon/expr/instruct/Executable;

    move-result-object v1

    invoke-virtual {v1, p2}, Lnet/sf/saxon/expr/instruct/Executable;->setCharacterMapIndex(Lnet/sf/saxon/serialize/CharacterMapIndex;)V

    iget-object p0, p0, Lnet/sf/saxon/query/XQueryParser;->B:Ljava/util/Properties;

    invoke-virtual {p1}, Lnet/sf/saxon/serialize/CharacterMap;->getName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getClarkName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_4
    :goto_0
    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Lnet/sf/saxon/trans/XPathException;->makeXPathException(Ljava/lang/Exception;)Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    throw p0
.end method

.method public parseRevalidationDeclaration()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "declare revalidation is allowed only in XQuery Update"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    return-void
.end method

.method public parseStringConstructor()Lnet/sf/saxon/expr/Expression;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenStartOffset:I

    iget-boolean v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->allowXPath31Syntax:Z

    if-eqz v1, :cond_9

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lnet/sf/saxon/expr/StringLiteral;

    iget-object v3, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v3, v3, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-direct {v2, v3}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/parser/Tokenizer;->next()V

    :cond_0
    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v2, v2, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v3, 0xd7

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v5

    :goto_0
    const/4 v6, 0x2

    if-eqz v2, :cond_2

    new-instance v2, Lnet/sf/saxon/expr/StringLiteral;

    sget-object v7, Lnet/sf/saxon/value/StringValue;->EMPTY_STRING:Lnet/sf/saxon/value/StringValue;

    invoke-direct {v2, v7}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Lnet/sf/saxon/value/StringValue;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    iget-object v7, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v7}, Lnet/sf/saxon/expr/StaticContext;->makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v7

    new-array v8, v6, [Lnet/sf/saxon/expr/Expression;

    aput-object v2, v8, v5

    new-instance v2, Lnet/sf/saxon/expr/StringLiteral;

    const-string v9, " "

    invoke-direct {v2, v9}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Ljava/lang/String;)V

    aput-object v2, v8, v4

    const-string v2, "string-join"

    invoke-static {v2, v7, v8}, Lnet/sf/saxon/functions/SystemFunction;->makeCall(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v2, v2, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    if-eq v2, v3, :cond_3

    const-string v2, "Expected \'}\' after enclosed expression in string constructor"

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v7, 0x100

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v7, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {v7}, Lnet/sf/saxon/expr/parser/Tokenizer;->nextChar()C

    move-result v7

    const/16 v8, 0x60

    if-eq v7, v8, :cond_4

    const-string v7, "Expected \'}`\' after enclosed expression in string constructor"

    invoke-virtual {p0, v7}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_4
    move v7, v5

    move v9, v7

    :goto_2
    iget-object v10, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {v10}, Lnet/sf/saxon/expr/parser/Tokenizer;->nextChar()C

    move-result v10

    if-nez v10, :cond_5

    const-string v11, "Reached end of input while reading string constructor"

    invoke-virtual {p0, v11}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_5
    if-ne v7, v8, :cond_6

    const/16 v11, 0x7b

    if-ne v10, v11, :cond_6

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    sub-int/2addr v10, v4

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    new-instance v10, Lnet/sf/saxon/expr/StringLiteral;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v10, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {v10}, Lnet/sf/saxon/expr/parser/Tokenizer;->lookAhead()V

    iget-object v10, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {v10}, Lnet/sf/saxon/expr/parser/Tokenizer;->next()V

    iget-object v10, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v10, v10, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    if-ne v10, v3, :cond_7

    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_2

    :cond_6
    const/16 v11, 0x5d

    if-ne v9, v11, :cond_8

    if-ne v7, v8, :cond_8

    if-ne v10, v8, :cond_8

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    new-instance v3, Lnet/sf/saxon/expr/StringLiteral;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/parser/Tokenizer;->lookAhead()V

    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/parser/Tokenizer;->next()V

    move v4, v5

    :cond_7
    if-nez v4, :cond_0

    new-array v2, v5, [Lnet/sf/saxon/expr/Expression;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lnet/sf/saxon/expr/Expression;

    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v2}, Lnet/sf/saxon/expr/StaticContext;->makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v2

    const-string v3, "concat"

    invoke-static {v3, v2, v1}, Lnet/sf/saxon/functions/SystemFunction;->makeCall(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;I)V

    return-object v1

    :cond_8
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v9, v7

    move v7, v10

    goto/16 :goto_2

    :cond_9
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string v0, "String constructor expressions require XQuery 3.1"

    invoke-direct {p0, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public parseSwitchExpression()Lnet/sf/saxon/expr/Expression;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenStartOffset:I

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    const/16 v1, 0xcc

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->makeLetExpression()Lnet/sf/saxon/expr/LetExpression;

    move-result-object v2

    sget-object v4, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_ATOMIC:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v2, v4}, Lnet/sf/saxon/expr/Assignation;->setRequiredType(Lnet/sf/saxon/value/SequenceType;)V

    new-instance v4, Lnet/sf/saxon/om/StructuredQName;

    const-string v5, "http://saxon.sf.net/"

    const-string v6, "zz_switchVar"

    const-string v7, "zz"

    invoke-direct {v4, v7, v5, v6}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lnet/sf/saxon/expr/Assignation;->setVariableQName(Lnet/sf/saxon/om/StructuredQName;)V

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lnet/sf/saxon/expr/Atomizer;->makeAtomizer(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/RoleDiagnostic;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v2, v0}, Lnet/sf/saxon/expr/Assignation;->setSequence(Lnet/sf/saxon/expr/Expression;)V

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v5, 0x4

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/16 v5, 0x43

    invoke-virtual {p0, v5}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExprSingle()Lnet/sf/saxon/expr/Expression;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v6, v6, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    if-eq v6, v5, :cond_1

    const/16 v6, 0x19

    invoke-virtual {p0, v6}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExprSingle()Lnet/sf/saxon/expr/Expression;

    move-result-object v7

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_3

    new-instance v10, Lnet/sf/saxon/expr/EquivalenceComparison;

    new-instance v11, Lnet/sf/saxon/expr/LocalVariableReference;

    invoke-direct {v11, v2}, Lnet/sf/saxon/expr/LocalVariableReference;-><init>(Lnet/sf/saxon/expr/LocalBinding;)V

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lnet/sf/saxon/expr/Expression;

    const/16 v13, 0x32

    invoke-direct {v10, v11, v13, v12}, Lnet/sf/saxon/expr/EquivalenceComparison;-><init>(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/Expression;)V

    if-nez v9, :cond_2

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance v11, Lnet/sf/saxon/expr/OrExpression;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-interface {v1, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lnet/sf/saxon/expr/Expression;

    invoke-direct {v11, v12, v10}, Lnet/sf/saxon/expr/OrExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    if-eq v0, v5, :cond_0

    const/16 v0, 0xd4

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0, v6}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExprSingle()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    sget-object v5, Lnet/sf/saxon/value/BooleanValue;->TRUE:Lnet/sf/saxon/value/BooleanValue;

    invoke-static {v5}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/expr/Literal;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lnet/sf/saxon/expr/instruct/Choose;

    new-array v5, v8, [Lnet/sf/saxon/expr/Expression;

    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lnet/sf/saxon/expr/Expression;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lnet/sf/saxon/expr/Expression;

    invoke-interface {v3, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lnet/sf/saxon/expr/Expression;

    invoke-direct {v0, v5, v1}, Lnet/sf/saxon/expr/instruct/Choose;-><init>([Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v2, v0}, Lnet/sf/saxon/expr/Assignation;->setAction(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0, v2, v4}, Lnet/sf/saxon/expr/parser/XPathParser;->makeTracer(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public parseTryCatchExpression()Lnet/sf/saxon/expr/Expression;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->allowXPath30Syntax:Z

    if-nez v0, :cond_0

    const-string v0, "try/catch requires XQuery 3.0"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenStartOffset:I

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v1, v1, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v2, 0xd7

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->allowXPath31Syntax:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    :goto_0
    new-instance v3, Lnet/sf/saxon/expr/TryCatch;

    invoke-direct {v3, v1}, Lnet/sf/saxon/expr/TryCatch;-><init>(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0, v3, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;I)V

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->lookAhead()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v4, v1

    :goto_1
    const-string v5, "catch"

    invoke-virtual {p0, v5}, Lnet/sf/saxon/expr/parser/XPathParser;->isKeyword(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v0}, Ljava/util/List;->clear()V

    move v4, v1

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    iget-object v5, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v6, v5, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    iget v5, v5, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v7, 0x11

    const/4 v8, 0x1

    if-eq v5, v7, :cond_9

    const/16 v7, 0x3c

    if-eq v5, v7, :cond_8

    const/16 v9, 0x46

    const/16 v10, 0xc9

    if-eq v5, v9, :cond_5

    if-eq v5, v10, :cond_4

    const/16 v7, 0xcf

    if-eq v5, v7, :cond_9

    const/16 v7, 0xd0

    if-eq v5, v7, :cond_3

    const-string v0, "Unrecognized name test"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_3
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0, v8, v6}, Lnet/sf/saxon/expr/parser/XPathParser;->makeNamespaceTest(SLjava/lang/String;)Lnet/sf/saxon/pattern/NamespaceTest;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0, v8, v6}, Lnet/sf/saxon/expr/parser/XPathParser;->makeQNameTest(SLjava/lang/String;)Lnet/sf/saxon/pattern/QNameTest;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    iget-object v5, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v6, v5, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    iget v5, v5, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    if-ne v5, v10, :cond_6

    goto :goto_2

    :cond_6
    if-ne v5, v7, :cond_7

    move v4, v8

    goto :goto_2

    :cond_7
    const-string v5, "Expected name after \'*:\'"

    invoke-virtual {p0, v5}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0, v8, v6}, Lnet/sf/saxon/expr/parser/XPathParser;->makeLocalNameTest(SLjava/lang/String;)Lnet/sf/saxon/pattern/LocalNameTest;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0, v8, v6}, Lnet/sf/saxon/expr/parser/XPathParser;->makeQNameTest(SLjava/lang/String;)Lnet/sf/saxon/pattern/QNameTest;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v8

    goto :goto_3

    :cond_9
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-static {}, Lnet/sf/saxon/pattern/AnyNodeTest;->getInstance()Lnet/sf/saxon/pattern/AnyNodeTest;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    iget-object v5, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v6, v5, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    if-ne v6, v8, :cond_a

    iget-object v5, v5, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    const-string v6, "union"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_a
    if-nez v4, :cond_b

    const/16 v4, 0x3b

    invoke-virtual {p0, v4}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    :cond_b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v8, :cond_c

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/pattern/QNameTest;

    goto :goto_4

    :cond_c
    new-instance v4, Lnet/sf/saxon/pattern/UnionQNameTest;

    invoke-direct {v4, v0}, Lnet/sf/saxon/pattern/UnionQNameTest;-><init>(Ljava/util/List;)V

    :goto_4
    iget v5, p0, Lnet/sf/saxon/expr/parser/XPathParser;->catchDepth:I

    add-int/2addr v5, v8

    iput v5, p0, Lnet/sf/saxon/expr/parser/XPathParser;->catchDepth:I

    iget-object v5, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v5, v5, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    if-ne v5, v2, :cond_d

    iget-boolean v5, p0, Lnet/sf/saxon/expr/parser/XPathParser;->allowXPath31Syntax:Z

    if-eqz v5, :cond_d

    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object v5

    goto :goto_5

    :cond_d
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v5

    :goto_5
    invoke-virtual {v3, v4, v5}, Lnet/sf/saxon/expr/TryCatch;->addCatchExpression(Lnet/sf/saxon/pattern/QNameTest;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->lookAhead()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    iget v4, p0, Lnet/sf/saxon/expr/parser/XPathParser;->catchDepth:I

    sub-int/2addr v4, v8

    iput v4, p0, Lnet/sf/saxon/expr/parser/XPathParser;->catchDepth:I

    move v4, v8

    goto/16 :goto_1

    :cond_e
    if-nez v4, :cond_f

    const-string v0, "After try{}, expected \'catch\'"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_f
    return-object v3
.end method

.method public parseTypeAliasDeclaration()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->parserExtension:Lnet/sf/saxon/expr/parser/ParserExtension;

    invoke-virtual {v0, p0}, Lnet/sf/saxon/expr/parser/ParserExtension;->parseTypeAliasDeclaration(Lnet/sf/saxon/query/XQueryParser;)V

    return-void
.end method

.method public parseTypeswitchExpression()Lnet/sf/saxon/expr/Expression;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenStartOffset:I

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/16 v2, 0xcc

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->makeLetExpression()Lnet/sf/saxon/expr/LetExpression;

    move-result-object v2

    sget-object v4, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v2, v4}, Lnet/sf/saxon/expr/Assignation;->setRequiredType(Lnet/sf/saxon/value/SequenceType;)V

    new-instance v4, Lnet/sf/saxon/om/StructuredQName;

    const-string v5, "http://saxon.sf.net/"

    const-string v6, "zz_typeswitchVar"

    const-string v7, "zz"

    invoke-direct {v4, v7, v5, v6}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lnet/sf/saxon/expr/Assignation;->setVariableQName(Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {v2, v0}, Lnet/sf/saxon/expr/Assignation;->setSequence(Lnet/sf/saxon/expr/Expression;)V

    :goto_0
    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v4, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v5, 0x43

    const-string v6, ""

    const/16 v7, 0xc9

    const/16 v8, 0x15

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-ne v4, v5, :cond_2

    iget v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenStartOffset:I

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const-string v4, "type"

    if-ne v0, v8, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0, v7}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-virtual {p0, v0, v6}, Lnet/sf/saxon/expr/parser/XPathParser;->makeStructuredQName(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    const/16 v5, 0x47

    invoke-virtual {p0, v5}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->B0()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p0, v0, v2}, Lnet/sf/saxon/query/XQueryParser;->F0(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/expr/LetExpression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v6

    invoke-virtual {p0, v6, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->makeTracer(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v6, v0, Lnet/sf/saxon/expr/instruct/TraceExpression;

    if-eqz v6, :cond_1

    move-object v6, v0

    check-cast v6, Lnet/sf/saxon/expr/instruct/TraceExpression;

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v7}, Lnet/sf/saxon/value/SequenceType;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Lnet/sf/saxon/expr/instruct/TraceExpression;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->B0()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExprSingle()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v0, v10}, Lnet/sf/saxon/expr/parser/XPathParser;->makeTracer(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v6, v0, Lnet/sf/saxon/expr/instruct/TraceExpression;

    if-eqz v6, :cond_1

    move-object v6, v0

    check-cast v6, Lnet/sf/saxon/expr/instruct/TraceExpression;

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v7}, Lnet/sf/saxon/value/SequenceType;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Lnet/sf/saxon/expr/instruct/TraceExpression;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_1
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "At least one case clause is required in a typeswitch"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_3
    const/16 v0, 0xd4

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenStartOffset:I

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v4, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v5, 0x19

    if-ne v4, v8, :cond_4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0, v7}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-virtual {p0, v0, v6}, Lnet/sf/saxon/expr/parser/XPathParser;->makeStructuredQName(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0, v5}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0, v0, v2}, Lnet/sf/saxon/query/XQueryParser;->F0(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/expr/LetExpression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    invoke-virtual {p0, v4, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->makeTracer(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lnet/sf/saxon/expr/parser/Tokenizer;->treatCurrentAsOperator()V

    invoke-virtual {p0, v5}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExprSingle()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v0, v10}, Lnet/sf/saxon/expr/parser/XPathParser;->makeTracer(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    :goto_3
    if-ltz v4, :cond_6

    new-instance v6, Lnet/sf/saxon/expr/LocalVariableReference;

    invoke-direct {v6, v2}, Lnet/sf/saxon/expr/LocalVariableReference;-><init>(Lnet/sf/saxon/expr/LocalBinding;)V

    invoke-virtual {p0, v6}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;)V

    new-instance v7, Lnet/sf/saxon/expr/InstanceOfExpression;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnet/sf/saxon/value/SequenceType;

    invoke-direct {v7, v6, v8}, Lnet/sf/saxon/expr/InstanceOfExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;)V

    move v8, v5

    :goto_4
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v8, v11, :cond_5

    new-instance v11, Lnet/sf/saxon/expr/OrExpression;

    new-instance v12, Lnet/sf/saxon/expr/InstanceOfExpression;

    new-instance v13, Lnet/sf/saxon/expr/parser/RebindingMap;

    invoke-direct {v13}, Lnet/sf/saxon/expr/parser/RebindingMap;-><init>()V

    invoke-virtual {v6, v13}, Lnet/sf/saxon/expr/LocalVariableReference;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v13

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lnet/sf/saxon/value/SequenceType;

    invoke-direct {v12, v13, v14}, Lnet/sf/saxon/expr/InstanceOfExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;)V

    invoke-direct {v11, v7, v12}, Lnet/sf/saxon/expr/OrExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    add-int/lit8 v8, v8, 0x1

    move-object v7, v11

    goto :goto_4

    :cond_5
    invoke-virtual {p0, v7}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;)V

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/sf/saxon/expr/Expression;

    invoke-static {v7, v6, v0}, Lnet/sf/saxon/expr/instruct/Choose;->makeConditional(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    :cond_6
    invoke-virtual {v2, v0}, Lnet/sf/saxon/expr/Assignation;->setAction(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0, v2, v10}, Lnet/sf/saxon/expr/parser/XPathParser;->makeTracer(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public parseValidateExpression()Lnet/sf/saxon/expr/Expression;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenStartOffset:I

    const-string v0, "validate expression"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/query/XQueryParser;->ensureSchemaAware(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v2, 0x8

    const/16 v3, 0x3c

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v1, v3, :cond_2

    const/4 v0, 0x0

    packed-switch v1, :pswitch_data_0

    :goto_0
    move v9, v4

    :goto_1
    move-object v10, v5

    goto/16 :goto_2

    :pswitch_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0, v3}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-static {v0}, Lnet/sf/saxon/str/StringTool;->codePoints(Ljava/lang/CharSequence;)Lnet/sf/saxon/z/IntIterator;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/om/NameChecker;->isQName(Lnet/sf/saxon/z/IntIterator;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Schema type name expected after \'validate type"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v0}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v1, v1, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    iget-object v3, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v3}, Lnet/sf/saxon/expr/StaticContext;->getDefaultElementNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lnet/sf/saxon/expr/parser/XPathParser;->makeStructuredQName(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->getSchemaType(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/type/SchemaType;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown schema type "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v3, v3, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "XQST0104"

    invoke-virtual {p0, v1, v3}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object v10, v0

    move v9, v2

    move v0, v4

    goto :goto_2

    :pswitch_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    const/4 v1, 0x2

    move v9, v1

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    const-string v1, "validate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v4

    move v9, v0

    goto :goto_1

    :goto_2
    if-nez v0, :cond_3

    const/16 v0, 0x3b

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    :cond_3
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v7

    instance-of v0, v7, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;

    if-eqz v0, :cond_5

    move-object v0, v7

    check-cast v0, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;

    if-ne v9, v2, :cond_4

    goto :goto_3

    :cond_4
    move-object v10, v5

    :goto_3
    invoke-virtual {v0, v9, v10}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->setValidationAction(ILnet/sf/saxon/type/SchemaType;)V

    goto :goto_4

    :cond_5
    new-instance v0, Lnet/sf/saxon/expr/instruct/CopyOf;

    const/4 v8, 0x1

    const/4 v11, 0x1

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lnet/sf/saxon/expr/instruct/CopyOf;-><init>(Lnet/sf/saxon/expr/Expression;ZILnet/sf/saxon/type/SchemaType;Z)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v0, v4}, Lnet/sf/saxon/expr/instruct/CopyOf;->setRequireDocumentOrElement(Z)V

    move-object v7, v0

    :goto_4
    const/16 v0, 0xd7

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/parser/Tokenizer;->lookAhead()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0, v7, v5}, Lnet/sf/saxon/expr/parser/XPathParser;->makeTracer(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_6
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "shouldn\'t be parsing a validate expression"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final q0(I)Lnet/sf/saxon/expr/Expression;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    const-string v1, "xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "A processing instruction must not be named \'xml\' in any combination of upper and lower case"

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-static {v0}, Lnet/sf/saxon/om/NameChecker;->isValidNCName(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid processing instruction name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_1
    new-instance v3, Lnet/sf/saxon/expr/StringLiteral;

    invoke-direct {v3, v0}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v4, 0xd7

    if-eq v0, v4, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v4}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->lookAhead()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    if-nez v1, :cond_3

    new-instance v1, Lnet/sf/saxon/expr/instruct/ProcessingInstruction;

    invoke-direct {v1, v3}, Lnet/sf/saxon/expr/instruct/ProcessingInstruction;-><init>(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0, v0, v1, p1}, Lnet/sf/saxon/query/XQueryParser;->makeSimpleContent(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;I)V

    invoke-virtual {p0, v1, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->makeTracer(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->warning(Ljava/lang/String;)V

    new-instance p0, Lnet/sf/saxon/expr/ErrorExpression;

    const-string p1, "XQDY0064"

    const/4 v0, 0x0

    invoke-direct {p0, v1, p1, v0}, Lnet/sf/saxon/expr/ErrorExpression;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object p0
.end method

.method public final r0(I)Lnet/sf/saxon/expr/Expression;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->allowXPath30Syntax:Z

    if-nez v0, :cond_0

    const-string v0, "Namespace node constructors require XQuery 3.0"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    const/16 v1, 0xd7

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->lookAhead()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    const/16 v2, 0x3b

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lnet/sf/saxon/expr/parser/Tokenizer;->setState(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v2, v2, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/4 v3, 0x0

    if-eq v2, v1, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->lookAhead()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    new-instance v1, Lnet/sf/saxon/expr/instruct/NamespaceConstructor;

    invoke-direct {v1, v0}, Lnet/sf/saxon/expr/instruct/NamespaceConstructor;-><init>(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0, v2, v1, p1}, Lnet/sf/saxon/query/XQueryParser;->makeSimpleContent(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;I)V

    invoke-virtual {p0, v1, v3}, Lnet/sf/saxon/expr/parser/XPathParser;->makeTracer(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public readCollationName()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    const/16 v0, 0xca

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/query/XQueryParser;->uriLiteral(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URI;->isAbsolute()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/net/URI;

    iget-object v3, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v3}, Lnet/sf/saxon/expr/StaticContext;->getStaticBaseURI()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Collation name \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' is not a valid URI"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XQST0046"

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "http://www.w3.org/2005/xpath-functions/collation/codepoint"

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    return-object v0
.end method

.method public final s0()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    const/16 v0, 0xc9

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-static {v0}, Lnet/sf/saxon/om/NameChecker;->isValidNCName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid namespace prefix "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    const/16 v1, 0xca

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v1, v1, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lnet/sf/saxon/query/XQueryParser;->uriLiteral(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/query/XQueryParser;->H(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "xml"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Namespace prefix \'xml\' cannot be declared"

    const-string v3, "XQST0070"

    invoke-virtual {p0, v2, v3}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :try_start_0
    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    check-cast v2, Lnet/sf/saxon/query/QueryModule;

    invoke-virtual {v2, v0, v1}, Lnet/sf/saxon/query/QueryModule;->declarePrologNamespace(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->makeLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/query/XQueryParser;->P0(Lnet/sf/saxon/trans/XPathException;)V

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    return-void
.end method

.method public setExecutable(Lnet/sf/saxon/expr/instruct/Executable;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/query/XQueryParser;->executable:Lnet/sf/saxon/expr/instruct/Executable;

    return-void
.end method

.method public setStreaming(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/query/XQueryParser;->h:Z

    return-void
.end method

.method public final t0()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    const/16 v0, 0xc9

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    const-string v1, "http://www.w3.org/2012/xquery"

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->makeStructuredQName(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "The QName identifying an option declaration must be prefixed"

    const-string v1, "XPST0081"

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    const/16 v2, 0xca

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v2, v2, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lnet/sf/saxon/query/XQueryParser;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http://www.w3.org/2010/xslt-xquery-serialization"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v0, v2}, Lnet/sf/saxon/query/XQueryParser;->parseOutputDeclaration(Lnet/sf/saxon/om/StructuredQName;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    const-string v3, "http://saxon.sf.net/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "allow-cycles"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v6, 0x2

    goto :goto_0

    :sswitch_1
    const-string v3, "memo-function"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    move v6, v4

    goto :goto_0

    :sswitch_2
    const-string v3, "output"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    move v6, v5

    :goto_0
    packed-switch v6, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Saxon option declaration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->warning(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_0
    const-string v0, "Value of saxon:allow-cycles is ignored"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->warning(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "Value of saxon:memo-function must be \'true\' or \'false\'"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->warning(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iput-boolean v5, p0, Lnet/sf/saxon/query/XQueryParser;->g:Z

    goto :goto_1

    :cond_6
    iput-boolean v4, p0, Lnet/sf/saxon/query/XQueryParser;->g:Z

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v0}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getEditionCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "saxon:memo-function option is ignored under Saxon-HE"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->warning(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, v2}, Lnet/sf/saxon/query/XQueryParser;->R0(Ljava/lang/String;)V

    :cond_7
    :goto_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3beee6ff -> :sswitch_2
        0x4a6f230b -> :sswitch_1
        0x595eb751 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public testPermittedAxis(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lnet/sf/saxon/expr/parser/XPathParser;->testPermittedAxis(ILjava/lang/String;)V

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->language:Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;

    sget-object v0, Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;->XQUERY:Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;

    if-ne p1, v0, :cond_0

    const-string p1, "The namespace axis is not available in XQuery"

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final u0()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/query/XQueryParser;->m:Z

    if-eqz v0, :cond_0

    const-string v0, "ordering mode declaration appears more than once"

    const-string v1, "XQST0065"

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/query/XQueryParser;->m:Z

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    const/16 v0, 0xc9

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    const-string v1, "ordered"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    const-string v1, "unordered"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "ordering mode must be \'ordered\' or \'unordered\'"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    return-void
.end method

.method public unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/query/XQueryParser$Unescaper;

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {p0}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getValidCharacterChecker()Lnet/sf/saxon/z/IntPredicateProxy;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/query/XQueryParser$Unescaper;-><init>(Lnet/sf/saxon/z/IntPredicateProxy;)V

    invoke-virtual {v0, p1}, Lnet/sf/saxon/query/XQueryParser$Unescaper;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public uriLiteral(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/query/XQueryParser;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/value/Whitespace;->collapse(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final v0()Lnet/sf/saxon/expr/Expression;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, -0x1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "?>"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v3, " \t\r\n"

    if-nez v2, :cond_2

    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/parser/Tokenizer;->nextChar()C

    move-result v2

    if-nez v2, :cond_0

    const-string v4, "Found end of input while reading processing instruction constructor"

    invoke-virtual {p0, v4}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_0
    if-gez v1, :cond_1

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    if-gez v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-ge v1, v4, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v2

    :goto_2
    invoke-static {v0}, Lnet/sf/saxon/om/NameChecker;->isValidNCName(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid processing instruction name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_5
    const-string v2, "xml"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "A processing instruction must not be named \'xml\' in any combination of upper and lower case"

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_6
    new-instance v2, Lnet/sf/saxon/expr/instruct/ProcessingInstruction;

    new-instance v3, Lnet/sf/saxon/expr/StringLiteral;

    invoke-direct {v3, v0}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lnet/sf/saxon/expr/instruct/ProcessingInstruction;-><init>(Lnet/sf/saxon/expr/Expression;)V

    new-instance v0, Lnet/sf/saxon/expr/StringLiteral;

    invoke-direct {v0, v1}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;->setSelect(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;)V

    return-object v2
.end method

.method public final w0(I)Lnet/sf/saxon/expr/Expression;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    const/16 v1, 0xd7

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->lookAhead()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    const/16 v2, 0x3b

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lnet/sf/saxon/expr/parser/Tokenizer;->setState(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v2, v2, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/4 v3, 0x0

    if-eq v2, v1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->lookAhead()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    new-instance v1, Lnet/sf/saxon/expr/instruct/ProcessingInstruction;

    invoke-direct {v1, v0}, Lnet/sf/saxon/expr/instruct/ProcessingInstruction;-><init>(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0, v2, v1, p1}, Lnet/sf/saxon/query/XQueryParser;->makeSimpleContent(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;I)V

    invoke-virtual {p0, v1, v3}, Lnet/sf/saxon/expr/parser/XPathParser;->makeTracer(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public final x0()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x1

    move v1, v0

    move v2, v1

    :goto_0
    const/16 v3, 0x95

    :try_start_0
    iget-object v4, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v4, v4, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v5, 0x65

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    check-cast v4, Lnet/sf/saxon/query/QueryModule;

    invoke-virtual {v4}, Lnet/sf/saxon/query/QueryModule;->getModuleNamespace()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v4, "Module declaration must not be used in a main module"

    invoke-virtual {p0, v4}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v4, "Module declaration appears more than once"

    invoke-virtual {p0, v4}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :goto_1
    if-nez v1, :cond_1

    const-string v4, "Module declaration must precede other declarations in the query prolog"

    invoke-virtual {p0, v4}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x0

    iget-object v4, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v4, v4, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_20

    const-string v5, "function"

    const-string v6, "Namespace declarations cannot follow variables, functions, or options"

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    packed-switch v4, :pswitch_data_2

    return-void

    :pswitch_0
    :try_start_1
    const-string v4, "declare type"

    invoke-virtual {p0, v4}, Lnet/sf/saxon/expr/parser/XPathParser;->checkSyntaxExtensions(Ljava/lang/String;)V

    if-eqz v2, :cond_2

    iget-object v4, p0, Lnet/sf/saxon/query/XQueryParser;->x:Ljava/util/List;

    iget-object v5, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v5}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lnet/sf/saxon/query/XQueryParser;->Q0(Ljava/util/List;Lnet/sf/saxon/Configuration;)V

    move v2, v1

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->parseTypeAliasDeclaration()V

    goto/16 :goto_4

    :pswitch_1
    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->J0()V

    if-eqz v2, :cond_3

    iget-object v4, p0, Lnet/sf/saxon/query/XQueryParser;->x:Ljava/util/List;

    iget-object v6, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v6}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v6

    invoke-virtual {p0, v4, v6}, Lnet/sf/saxon/query/XQueryParser;->Q0(Ljava/util/List;Lnet/sf/saxon/Configuration;)V

    move v2, v1

    :cond_3
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    const/16 v4, 0x6a

    invoke-virtual {p0, v4}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->parseAnnotationsList()Lnet/sf/saxon/query/AnnotationList;

    move-result-object v4

    invoke-virtual {p0, v5}, Lnet/sf/saxon/expr/parser/XPathParser;->isKeyword(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v5}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v5

    const-string v6, "DF"

    invoke-virtual {v4, v5, v6}, Lnet/sf/saxon/query/AnnotationList;->check(Lnet/sf/saxon/Configuration;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lnet/sf/saxon/query/XQueryParser;->parseFunctionDeclaration(Lnet/sf/saxon/query/AnnotationList;)V

    goto/16 :goto_4

    :cond_4
    const-string v5, "variable"

    invoke-virtual {p0, v5}, Lnet/sf/saxon/expr/parser/XPathParser;->isKeyword(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v5}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v5

    const-string v6, "DV"

    invoke-virtual {v4, v5, v6}, Lnet/sf/saxon/query/AnnotationList;->check(Lnet/sf/saxon/Configuration;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lnet/sf/saxon/query/XQueryParser;->G0(Lnet/sf/saxon/query/AnnotationList;)V

    goto/16 :goto_4

    :cond_5
    const-string v4, "Annotations can appear only in \'declare variable\' and \'declare function\'"

    invoke-virtual {p0, v4}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0, v5}, Lnet/sf/saxon/expr/parser/XPathParser;->isKeyword(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "expected \'function\' after \'declare updating"

    invoke-virtual {p0, v4}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_6
    if-eqz v2, :cond_7

    iget-object v4, p0, Lnet/sf/saxon/query/XQueryParser;->x:Ljava/util/List;

    iget-object v5, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v5}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lnet/sf/saxon/query/XQueryParser;->Q0(Ljava/util/List;Lnet/sf/saxon/Configuration;)V

    move v2, v1

    :cond_7
    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->J0()V

    iget-object v4, p0, Lnet/sf/saxon/expr/parser/XPathParser;->parserExtension:Lnet/sf/saxon/expr/parser/ParserExtension;

    invoke-virtual {v4, p0}, Lnet/sf/saxon/expr/parser/ParserExtension;->parseUpdatingFunctionDeclaration(Lnet/sf/saxon/query/XQueryParser;)V

    goto/16 :goto_4

    :pswitch_3
    if-nez v2, :cond_8

    const-string v4, "\'declare revalidation\' must appear earlier in the query prolog"

    invoke-virtual {p0, v4}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_8
    iget-object v4, p0, Lnet/sf/saxon/expr/parser/XPathParser;->parserExtension:Lnet/sf/saxon/expr/parser/ParserExtension;

    invoke-virtual {v4, p0}, Lnet/sf/saxon/expr/parser/ParserExtension;->parseRevalidationDeclaration(Lnet/sf/saxon/query/XQueryParser;)V

    goto/16 :goto_4

    :pswitch_4
    if-eqz v2, :cond_9

    iget-object v4, p0, Lnet/sf/saxon/query/XQueryParser;->x:Ljava/util/List;

    iget-object v5, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v5}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lnet/sf/saxon/query/XQueryParser;->Q0(Ljava/util/List;Lnet/sf/saxon/Configuration;)V

    move v2, v1

    :cond_9
    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->t0()V

    goto/16 :goto_4

    :pswitch_5
    if-nez v2, :cond_a

    const-string v4, "\'declare copy-namespaces\' must appear earlier in the query prolog"

    invoke-virtual {p0, v4}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->X()V

    goto/16 :goto_4

    :pswitch_6
    if-nez v2, :cond_b

    const-string v4, "\'declare ordering\' must appear earlier in the query prolog"

    invoke-virtual {p0, v4}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->u0()V

    goto/16 :goto_4

    :pswitch_7
    if-eqz v2, :cond_c

    iget-object v4, p0, Lnet/sf/saxon/query/XQueryParser;->x:Ljava/util/List;

    iget-object v5, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v5}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lnet/sf/saxon/query/XQueryParser;->Q0(Ljava/util/List;Lnet/sf/saxon/Configuration;)V

    move v2, v1

    :cond_c
    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->J0()V

    sget-object v4, Lnet/sf/saxon/query/AnnotationList;->EMPTY:Lnet/sf/saxon/query/AnnotationList;

    invoke-virtual {p0, v4}, Lnet/sf/saxon/query/XQueryParser;->parseFunctionDeclaration(Lnet/sf/saxon/query/AnnotationList;)V

    goto/16 :goto_4

    :pswitch_8
    if-eqz v2, :cond_d

    iget-object v4, p0, Lnet/sf/saxon/query/XQueryParser;->x:Ljava/util/List;

    iget-object v5, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v5}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lnet/sf/saxon/query/XQueryParser;->Q0(Ljava/util/List;Lnet/sf/saxon/Configuration;)V

    move v2, v1

    :cond_d
    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->J0()V

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->W()V

    goto/16 :goto_4

    :pswitch_9
    if-eqz v2, :cond_e

    iget-object v4, p0, Lnet/sf/saxon/query/XQueryParser;->x:Ljava/util/List;

    iget-object v5, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v5}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lnet/sf/saxon/query/XQueryParser;->Q0(Ljava/util/List;Lnet/sf/saxon/Configuration;)V

    move v2, v1

    :cond_e
    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->J0()V

    sget-object v4, Lnet/sf/saxon/query/AnnotationList;->EMPTY:Lnet/sf/saxon/query/AnnotationList;

    invoke-virtual {p0, v4}, Lnet/sf/saxon/query/XQueryParser;->G0(Lnet/sf/saxon/query/AnnotationList;)V

    goto/16 :goto_4

    :pswitch_a
    if-nez v2, :cond_f

    const-string v4, "Import module must appear earlier in the prolog"

    invoke-virtual {p0, v4}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_f
    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->m0()V

    goto/16 :goto_4

    :pswitch_b
    if-nez v2, :cond_10

    const-string v4, "Import schema must appear earlier in the prolog"

    invoke-virtual {p0, v4}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_10
    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->A0()V

    goto/16 :goto_4

    :pswitch_c
    if-nez v2, :cond_11

    const-string v4, "\'declare decimal-format\' must appear earlier in the query prolog"

    invoke-virtual {p0, v4}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_11
    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->Z()V

    goto/16 :goto_4

    :pswitch_d
    if-nez v2, :cond_12

    const-string v4, "\'declare boundary-space\' must appear earlier in the query prolog"

    invoke-virtual {p0, v4}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_12
    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->Q()V

    goto/16 :goto_4

    :pswitch_e
    if-nez v2, :cond_13

    const-string v4, "\'declare base-uri\' must appear earlier in the query prolog"

    invoke-virtual {p0, v4}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_13
    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->P()V

    goto/16 :goto_4

    :pswitch_f
    if-nez v2, :cond_14

    const-string v4, "\'declare construction\' must appear earlier in the query prolog"

    invoke-virtual {p0, v4}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_14
    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->V()V

    goto/16 :goto_4

    :pswitch_10
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    const/16 v4, 0xc9

    invoke-virtual {p0, v4}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    iget-object v4, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v4, v4, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    sparse-switch v7, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v5, "collation"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    move v4, v10

    goto :goto_3

    :sswitch_1
    const-string v5, "decimal-format"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    move v4, v8

    goto :goto_3

    :sswitch_2
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    move v4, v0

    goto :goto_3

    :sswitch_3
    const-string v5, "order"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    move v4, v9

    goto :goto_3

    :sswitch_4
    const-string v5, "element"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    move v4, v1

    goto :goto_3

    :cond_15
    :goto_2
    const/4 v4, -0x1

    :goto_3
    if-eqz v4, :cond_1d

    if-eq v4, v0, :cond_1b

    if-eq v4, v10, :cond_19

    if-eq v4, v9, :cond_17

    if-eq v4, v8, :cond_16

    const-string v4, "After \'declare default\', expected \'element\', \'function\', or \'collation\'"

    invoke-virtual {p0, v4}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    goto :goto_4

    :cond_16
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->c0()V

    goto :goto_4

    :cond_17
    if-nez v2, :cond_18

    const-string v4, "Order declarations must appear earlier in the prolog"

    invoke-virtual {p0, v4}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_18
    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->f0()V

    goto :goto_4

    :cond_19
    if-nez v2, :cond_1a

    const-string v4, "Collation declarations must appear earlier in the prolog"

    invoke-virtual {p0, v4}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_1a
    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->b0()V

    goto :goto_4

    :cond_1b
    if-nez v2, :cond_1c

    invoke-virtual {p0, v6}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_1c
    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->e0()V

    goto :goto_4

    :cond_1d
    if-nez v2, :cond_1e

    invoke-virtual {p0, v6}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_1e
    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->d0()V

    goto :goto_4

    :pswitch_11
    if-nez v2, :cond_1f

    invoke-virtual {p0, v6}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_1f
    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->s0()V

    goto :goto_4

    :cond_20
    iget-object v4, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    check-cast v4, Lnet/sf/saxon/query/QueryModule;

    invoke-virtual {v4}, Lnet/sf/saxon/query/QueryModule;->getModuleNamespace()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_21

    const-string v4, "The main module must contain a query expression after any declarations in the prolog"

    invoke-virtual {p0, v4}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :goto_4
    invoke-virtual {p0, v3}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V
    :try_end_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_21
    return-void

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Lnet/sf/saxon/trans/XPathException;->getLocator()Lnet/sf/saxon/s9api/Location;

    move-result-object v5

    if-nez v5, :cond_22

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->makeLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    :cond_22
    invoke-virtual {v4}, Lnet/sf/saxon/trans/XPathException;->hasBeenReported()Z

    move-result v5

    if-nez v5, :cond_24

    iget v5, p0, Lnet/sf/saxon/query/XQueryParser;->i:I

    add-int/2addr v5, v0

    iput v5, p0, Lnet/sf/saxon/query/XQueryParser;->i:I

    iget-object v5, p0, Lnet/sf/saxon/query/XQueryParser;->j:Lnet/sf/saxon/trans/XPathException;

    if-nez v5, :cond_23

    iput-object v4, p0, Lnet/sf/saxon/query/XQueryParser;->j:Lnet/sf/saxon/trans/XPathException;

    :cond_23
    invoke-virtual {p0, v4}, Lnet/sf/saxon/query/XQueryParser;->P0(Lnet/sf/saxon/trans/XPathException;)V

    :cond_24
    :goto_5
    iget-object v4, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v4, v4, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    if-eq v4, v3, :cond_27

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    iget-object v4, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v5, v4, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    if-nez v5, :cond_25

    return-void

    :cond_25
    const/16 v6, 0xd7

    if-ne v5, v6, :cond_26

    invoke-virtual {v4}, Lnet/sf/saxon/expr/parser/Tokenizer;->lookAhead()V

    goto :goto_5

    :cond_26
    const/16 v4, 0xd9

    if-ne v5, v4, :cond_24

    invoke-virtual {p0, v0}, Lnet/sf/saxon/query/XQueryParser;->y0(Z)Lnet/sf/saxon/expr/Expression;

    goto :goto_5

    :cond_27
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x5a
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6b
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7a
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x631ce104 -> :sswitch_4
        0x651874e -> :sswitch_3
        0x524f73d8 -> :sswitch_2
        0x64df21f3 -> :sswitch_1
        0x7012ff89 -> :sswitch_0
    .end sparse-switch
.end method

.method public final y0(Z)Lnet/sf/saxon/expr/Expression;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    invoke-virtual {v0}, Lnet/sf/saxon/expr/parser/Tokenizer;->nextChar()C

    move-result v0

    if-eqz v0, :cond_8

    const/16 v2, 0x21

    if-eq v0, v2, :cond_5

    const/16 v2, 0x2f

    if-eq v0, v2, :cond_1

    const/16 v2, 0x3f

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/parser/Tokenizer;->unreadChar()V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/query/XQueryParser;->g0(Z)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->v0()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x10

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_0
    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/parser/Tokenizer;->nextChar()C

    move-result v0

    const/16 v1, 0x3e

    if-ne v0, v1, :cond_2

    new-instance p0, Lnet/sf/saxon/expr/StringLiteral;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_2
    if-nez v0, :cond_3

    const-string v1, "Expected \'>\' after \'/\'; found end of input"

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    const-string p1, "Unmatched XML end tag"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    new-instance p0, Lnet/sf/saxon/expr/ErrorExpression;

    invoke-direct {p0}, Lnet/sf/saxon/expr/ErrorExpression;-><init>()V

    return-object p0

    :cond_5
    iget-object p1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/Tokenizer;->nextChar()C

    move-result p1

    const/16 v0, 0x2d

    if-ne p1, v0, :cond_6

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->R()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    :goto_1
    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;I)V

    return-object p1

    :cond_6
    const/16 v0, 0x5b

    const/4 v1, 0x0

    if-ne p1, v0, :cond_7

    const-string p1, "A CDATA section is allowed only in element content"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    return-object v1

    :cond_7
    const-string p1, "Expected \'--\' or \'[CDATA[\' after \'<!\'"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    return-object v1

    :cond_8
    const-string p1, "End of input encountered while parsing direct constructor"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    new-instance p0, Lnet/sf/saxon/expr/ErrorExpression;

    invoke-direct {p0}, Lnet/sf/saxon/expr/ErrorExpression;-><init>()V

    return-object p0
.end method

.method public final z0(Ljava/lang/String;Lnet/sf/saxon/query/QueryModule;)Lnet/sf/saxon/expr/Expression;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Lnet/sf/saxon/expr/StaticContext;

    iput-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-virtual {p2}, Lnet/sf/saxon/query/QueryModule;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getValidCharacterChecker()Lnet/sf/saxon/z/IntPredicateProxy;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->charChecker:Lnet/sf/saxon/z/IntPredicateProxy;

    sget-object v0, Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;->XQUERY:Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;

    iput-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->language:Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;

    new-instance v0, Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-direct {v0}, Lnet/sf/saxon/expr/parser/Tokenizer;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->languageVersion:I

    iput v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->languageLevel:I

    const/4 v1, 0x1

    iput-boolean v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->isXQuery:Z

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, -0x1

    invoke-virtual {v0, p1, v2, v3}, Lnet/sf/saxon/expr/parser/Tokenizer;->tokenize(Ljava/lang/String;II)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->H0()V

    iget-object p1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-boolean v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->allowXPath40Syntax:Z

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lnet/sf/saxon/query/QueryModule;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    sget-object v3, Lnet/sf/saxon/lib/Feature;->ALLOW_SYNTAX_EXTENSIONS:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {v0, v3}, Lnet/sf/saxon/Configuration;->getBooleanProperty(Lnet/sf/saxon/lib/Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    iput-boolean v2, p1, Lnet/sf/saxon/expr/parser/Tokenizer;->allowSaxonExtensions:Z

    iput-boolean v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->allowXPath40Syntax:Z

    new-instance p1, Lnet/sf/saxon/om/QNameParser;

    invoke-virtual {p2}, Lnet/sf/saxon/query/QueryModule;->getLiveNamespaceResolver()Lnet/sf/saxon/om/NamespaceResolver;

    move-result-object v0

    invoke-direct {p1, v0}, Lnet/sf/saxon/om/QNameParser;-><init>(Lnet/sf/saxon/om/NamespaceResolver;)V

    invoke-virtual {p1, v1}, Lnet/sf/saxon/om/QNameParser;->withAcceptEQName(Z)Lnet/sf/saxon/om/QNameParser;

    move-result-object p1

    new-instance v0, Lnet/sf/saxon/query/XQueryParser$Unescaper;

    invoke-virtual {p2}, Lnet/sf/saxon/query/QueryModule;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/Configuration;->getValidCharacterChecker()Lnet/sf/saxon/z/IntPredicateProxy;

    move-result-object v2

    invoke-direct {v0, v2}, Lnet/sf/saxon/query/XQueryParser$Unescaper;-><init>(Lnet/sf/saxon/z/IntPredicateProxy;)V

    invoke-virtual {p1, v0}, Lnet/sf/saxon/om/QNameParser;->withUnescaper(Lnet/sf/saxon/query/XQueryParser$Unescaper;)Lnet/sf/saxon/om/QNameParser;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->setQNameParser(Lnet/sf/saxon/om/QNameParser;)V

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->x0()V

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryParser;->J0()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->makeTracer(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected token "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->currentTokenDisplay()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " beyond end of query"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p2}, Lnet/sf/saxon/query/QueryModule;->makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p2

    invoke-static {p1, p2}, Lnet/sf/saxon/expr/parser/ExpressionTool;->setDeepRetainedStaticContext(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    iget p2, p0, Lnet/sf/saxon/query/XQueryParser;->i:I

    if-nez p2, :cond_3

    return-object p1

    :cond_3
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    const-string p2, "One or more static errors were reported during query analysis"

    invoke-direct {p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lnet/sf/saxon/trans/XPathException;->setHasBeenReported(Z)V

    iget-object p0, p0, Lnet/sf/saxon/query/XQueryParser;->j:Lnet/sf/saxon/trans/XPathException;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->setErrorCodeQName(Lnet/sf/saxon/om/StructuredQName;)V

    throw p1
.end method
