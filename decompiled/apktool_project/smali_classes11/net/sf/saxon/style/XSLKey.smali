.class public Lnet/sf/saxon/style/XSLKey;
.super Lnet/sf/saxon/style/StyleElement;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/style/StylesheetComponent;


# static fields
.field public static final Q:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lnet/sf/saxon/expr/Expression;",
            ">;"
        }
    .end annotation
.end field

.field public static final synthetic Z:Z


# instance fields
.field public J:Z

.field public O:Lnet/sf/saxon/trans/KeyDefinition;

.field public u:Lnet/sf/saxon/pattern/Pattern;

.field public v:Lnet/sf/saxon/expr/Expression;

.field public w:Ljava/lang/String;

.field public x:Lnet/sf/saxon/om/StructuredQName;

.field public y:Lnet/sf/saxon/expr/instruct/SlotManager;

.field public z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/rqo;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/rqo;-><init>()V

    sput-object v0, Lnet/sf/saxon/style/XSLKey;->Q:Ljava/util/function/Predicate;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/style/StyleElement;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/style/XSLKey;->J:Z

    return-void
.end method

.method public static synthetic Z(Lnet/sf/saxon/expr/Expression;)Z
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/style/XSLKey;->a0(Lnet/sf/saxon/expr/Expression;)Z

    move-result p0

    return p0
.end method

.method public static synthetic a0(Lnet/sf/saxon/expr/Expression;)Z
    .locals 1

    instance-of v0, p0, Lnet/sf/saxon/expr/GlobalVariableReference;

    if-nez v0, :cond_1

    instance-of v0, p0, Lnet/sf/saxon/expr/UserFunctionCall;

    if-nez v0, :cond_1

    instance-of v0, p0, Lnet/sf/saxon/expr/instruct/CallTemplate;

    if-nez v0, :cond_1

    instance-of p0, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates;

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


# virtual methods
.method public checkCompatibility(Lnet/sf/saxon/expr/Component;)V
    .locals 0

    return-void
.end method

.method public compileDeclaration(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getStaticContext()Lnet/sf/saxon/style/ExpressionContext;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/style/XSLKey;->w:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getBaseURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lnet/sf/saxon/style/StyleElement;->w(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/lib/StringCollator;

    move-result-object v1

    const-string v3, "XTSE1210"

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The collation name "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lnet/sf/saxon/style/XSLKey;->w:Ljava/lang/String;

    const/4 v5, 0x7

    invoke-static {v4, v5}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not recognized"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lnet/sf/saxon/expr/sort/CodepointCollator;->getInstance()Lnet/sf/saxon/expr/sort/CodepointCollator;

    move-result-object v1

    :cond_0
    instance-of v4, v1, Lnet/sf/saxon/expr/sort/CodepointCollator;

    if-eqz v4, :cond_1

    iput-object v2, p0, Lnet/sf/saxon/style/XSLKey;->w:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v4, Lnet/sf/saxon/Version;->platform:Lnet/sf/saxon/Platform;

    invoke-interface {v4, v1}, Lnet/sf/saxon/Platform;->canReturnCollationKeys(Lnet/sf/saxon/lib/StringCollator;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "The collation used for xsl:key must be capable of generating collation keys"

    invoke-virtual {p0, v4, v3}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object v10, v1

    goto :goto_1

    :cond_3
    :goto_0
    move-object v10, v2

    :goto_1
    iget-object v1, p0, Lnet/sf/saxon/style/XSLKey;->v:Lnet/sf/saxon/expr/Expression;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_4

    invoke-virtual {p0, p1, p2, v3}, Lnet/sf/saxon/style/StyleElement;->compileSequenceConstructor(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;Z)Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    :try_start_0
    invoke-static {p2, v2}, Lnet/sf/saxon/expr/Atomizer;->makeAtomizer(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/RoleDiagnostic;)Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    iput-object p2, p0, Lnet/sf/saxon/style/XSLKey;->v:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p2}, Lnet/sf/saxon/expr/Expression;->simplify()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    iput-object p2, p0, Lnet/sf/saxon/style/XSLKey;->v:Lnet/sf/saxon/expr/Expression;
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    invoke-virtual {p0, p2}, Lnet/sf/saxon/style/StyleElement;->compileError(Lnet/sf/saxon/trans/XPathException;)V

    :goto_2
    :try_start_1
    new-instance p2, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    const-string v1, "xsl:key/use"

    const/4 v2, 0x4

    invoke-direct {p2, v2, v1, v4}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v4}, Lnet/sf/saxon/Configuration;->getTypeChecker(Z)Lnet/sf/saxon/expr/parser/TypeChecker;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/style/XSLKey;->v:Lnet/sf/saxon/expr/Expression;

    sget-object v5, Lnet/sf/saxon/value/SequenceType;->ATOMIC_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->makeExpressionVisitor()Lnet/sf/saxon/expr/parser/ExpressionVisitor;

    move-result-object v6

    invoke-virtual {v1, v2, v5, p2, v6}, Lnet/sf/saxon/expr/parser/TypeChecker;->staticTypeCheck(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    iput-object p2, p0, Lnet/sf/saxon/style/XSLKey;->v:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->makeExpressionVisitor()Lnet/sf/saxon/expr/parser/ExpressionVisitor;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/style/XSLKey;->u:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {v2}, Lnet/sf/saxon/pattern/Pattern;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Lnet/sf/saxon/Configuration;->makeContextItemStaticInfo(Lnet/sf/saxon/type/ItemType;Z)Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lnet/sf/saxon/expr/Expression;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    iput-object p2, p0, Lnet/sf/saxon/style/XSLKey;->v:Lnet/sf/saxon/expr/Expression;
    :try_end_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p2

    invoke-virtual {p0, p2}, Lnet/sf/saxon/style/StyleElement;->compileError(Lnet/sf/saxon/trans/XPathException;)V

    :cond_4
    :goto_3
    iget-object p2, p0, Lnet/sf/saxon/style/XSLKey;->v:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p2}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p2

    invoke-static {}, Lnet/sf/saxon/type/ErrorType;->getInstance()Lnet/sf/saxon/type/ErrorType;

    move-result-object v1

    if-ne p2, v1, :cond_5

    sget-object p2, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    :cond_5
    invoke-interface {p2}, Lnet/sf/saxon/type/ItemType;->getPrimitiveItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->Y()Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {p2, v1}, Lnet/sf/saxon/type/BuiltInAtomicType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    sget-object v2, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {p2, v2}, Lnet/sf/saxon/type/BuiltInAtomicType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    new-instance p2, Lnet/sf/saxon/expr/AtomicSequenceConverter;

    iget-object v2, p0, Lnet/sf/saxon/style/XSLKey;->v:Lnet/sf/saxon/expr/Expression;

    invoke-direct {p2, v2, v1}, Lnet/sf/saxon/expr/AtomicSequenceConverter;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/PlainType;)V

    iput-object p2, p0, Lnet/sf/saxon/style/XSLKey;->v:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p2, v0, v4}, Lnet/sf/saxon/expr/AtomicSequenceConverter;->allocateConverter(Lnet/sf/saxon/Configuration;Z)Lnet/sf/saxon/type/Converter;

    move-object p2, v1

    :cond_6
    iget-object v0, p0, Lnet/sf/saxon/style/XSLKey;->u:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {v0}, Lnet/sf/saxon/pattern/Pattern;->getDependencies()I

    move-result v0

    and-int/2addr v0, v3

    if-eqz v0, :cond_7

    move v0, v3

    goto :goto_4

    :cond_7
    move v0, v4

    :goto_4
    iget-object v1, p0, Lnet/sf/saxon/style/XSLKey;->u:Lnet/sf/saxon/pattern/Pattern;

    iget-object v2, p0, Lnet/sf/saxon/style/XSLKey;->y:Lnet/sf/saxon/expr/instruct/SlotManager;

    invoke-virtual {v1, v2, v0}, Lnet/sf/saxon/pattern/Pattern;->allocateSlots(Lnet/sf/saxon/expr/instruct/SlotManager;I)I

    iget-object v0, p0, Lnet/sf/saxon/style/XSLKey;->v:Lnet/sf/saxon/expr/Expression;

    sget-object v1, Lnet/sf/saxon/style/XSLKey;->Q:Ljava/util/function/Predicate;

    invoke-static {v0, v4, v1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->contains(Lnet/sf/saxon/expr/Expression;ZLjava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lnet/sf/saxon/style/XSLKey;->u:Lnet/sf/saxon/pattern/Pattern;

    invoke-static {v0, v4, v1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->contains(Lnet/sf/saxon/expr/Expression;ZLjava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_5

    :cond_8
    move v0, v4

    goto :goto_6

    :cond_9
    :goto_5
    move v0, v3

    :goto_6
    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getCompilation()Lnet/sf/saxon/style/Compilation;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/style/Compilation;->getPrincipalStylesheetModule()Lnet/sf/saxon/style/PrincipalStylesheetModule;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getKeyManager()Lnet/sf/saxon/trans/KeyManager;

    move-result-object v1

    new-instance v6, Lnet/sf/saxon/trans/SymbolicName;

    const/16 v2, 0xa9

    iget-object v5, p0, Lnet/sf/saxon/style/XSLKey;->x:Lnet/sf/saxon/om/StructuredQName;

    invoke-direct {v6, v2, v5}, Lnet/sf/saxon/trans/SymbolicName;-><init>(ILnet/sf/saxon/om/StructuredQName;)V

    new-instance v2, Lnet/sf/saxon/trans/KeyDefinition;

    iget-object v7, p0, Lnet/sf/saxon/style/XSLKey;->u:Lnet/sf/saxon/pattern/Pattern;

    iget-object v8, p0, Lnet/sf/saxon/style/XSLKey;->v:Lnet/sf/saxon/expr/Expression;

    iget-object v9, p0, Lnet/sf/saxon/style/XSLKey;->w:Ljava/lang/String;

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lnet/sf/saxon/trans/KeyDefinition;-><init>(Lnet/sf/saxon/trans/SymbolicName;Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/expr/Expression;Ljava/lang/String;Lnet/sf/saxon/lib/StringCollator;)V

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getCompilation()Lnet/sf/saxon/style/Compilation;

    move-result-object v5

    invoke-virtual {v5}, Lnet/sf/saxon/style/Compilation;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v5

    invoke-virtual {v2, v5}, Lnet/sf/saxon/expr/instruct/Actor;->setPackageData(Lnet/sf/saxon/expr/PackageData;)V

    iget-boolean v5, p0, Lnet/sf/saxon/style/XSLKey;->z:Z

    invoke-virtual {v2, v5}, Lnet/sf/saxon/trans/KeyDefinition;->setRangeKey(Z)V

    invoke-virtual {v2, p2}, Lnet/sf/saxon/trans/KeyDefinition;->setIndexedItemType(Lnet/sf/saxon/type/BuiltInAtomicType;)V

    iget-object p2, p0, Lnet/sf/saxon/style/XSLKey;->y:Lnet/sf/saxon/expr/instruct/SlotManager;

    invoke-virtual {v2, p2}, Lnet/sf/saxon/trans/KeyDefinition;->setStackFrameMap(Lnet/sf/saxon/expr/instruct/SlotManager;)V

    invoke-virtual {v2, p0}, Lnet/sf/saxon/trans/KeyDefinition;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->Y()Z

    move-result p2

    invoke-virtual {v2, p2}, Lnet/sf/saxon/trans/KeyDefinition;->setBackwardsCompatible(Z)V

    iget-boolean p2, p0, Lnet/sf/saxon/style/XSLKey;->J:Z

    invoke-virtual {v2, p2}, Lnet/sf/saxon/trans/KeyDefinition;->setComposite(Z)V

    invoke-virtual {v2, p0}, Lnet/sf/saxon/expr/instruct/Actor;->obtainDeclaringComponent(Lnet/sf/saxon/style/StyleElement;)Lnet/sf/saxon/expr/Component;

    :try_start_2
    iget-object p2, p0, Lnet/sf/saxon/style/XSLKey;->x:Lnet/sf/saxon/om/StructuredQName;

    if-nez v0, :cond_a

    goto :goto_7

    :cond_a
    move v3, v4

    :goto_7
    invoke-virtual {p1}, Lnet/sf/saxon/style/Compilation;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {v1, p2, v2, v3, p1}, Lnet/sf/saxon/trans/KeyManager;->addKeyDefinition(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/trans/KeyDefinition;ZLnet/sf/saxon/Configuration;)V
    :try_end_2
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_8

    :catch_2
    move-exception p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/StyleElement;->compileError(Lnet/sf/saxon/trans/XPathException;)V

    :goto_8
    iput-object v2, p0, Lnet/sf/saxon/style/XSLKey;->O:Lnet/sf/saxon/trans/KeyDefinition;

    return-void
.end method

.method public generateByteCode(Lnet/sf/saxon/expr/parser/Optimizer;)V
    .locals 0

    return-void
.end method

.method public getActor()Lnet/sf/saxon/expr/instruct/Actor;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getKeyName()Lnet/sf/saxon/om/StructuredQName;
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getObjectName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    const-string v1, "name"

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/tree/linked/ElementImpl;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lnet/sf/saxon/style/StyleElement;->makeQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/StyleElement;->setObjectName(Lnet/sf/saxon/om/StructuredQName;)V

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getObjectName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    return-object p0
.end method

.method public getSlotManager()Lnet/sf/saxon/expr/instruct/SlotManager;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/XSLKey;->y:Lnet/sf/saxon/expr/instruct/SlotManager;

    return-object p0
.end method

.method public getSymbolicName()Lnet/sf/saxon/trans/SymbolicName;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public index(Lnet/sf/saxon/style/ComponentDeclaration;Lnet/sf/saxon/style/PrincipalStylesheetModule;)V
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLKey;->getKeyName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getKeyManager()Lnet/sf/saxon/trans/KeyManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/KeyManager;->preRegisterKeyDefinition(Lnet/sf/saxon/om/StructuredQName;)V

    :cond_0
    return-void
.end method

.method public isDeclaration()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public mayContainSequenceConstructor()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public optimize(Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->makeExpressionVisitor()Lnet/sf/saxon/expr/parser/ExpressionVisitor;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/style/XSLKey;->u:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {v1}, Lnet/sf/saxon/pattern/Pattern;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lnet/sf/saxon/Configuration;->makeContextItemStaticInfo(Lnet/sf/saxon/type/ItemType;Z)Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/style/XSLKey;->O:Lnet/sf/saxon/trans/KeyDefinition;

    invoke-virtual {v1}, Lnet/sf/saxon/trans/KeyDefinition;->getUse()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lnet/sf/saxon/expr/Expression;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/StyleElement;->m(Lnet/sf/saxon/expr/Expression;)V

    iget-object p0, p0, Lnet/sf/saxon/style/XSLKey;->O:Lnet/sf/saxon/trans/KeyDefinition;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/instruct/Actor;->setBody(Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method

.method public prepareAttributes()V
    .locals 13

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->attributes()Lnet/sf/saxon/om/AttributeMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "match"

    const-string v6, "name"

    if-eqz v4, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v4}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v7

    invoke-virtual {v4}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7}, Lnet/sf/saxon/om/NodeName;->getURI()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v9

    const-string v11, "composite"

    const/4 v12, -0x1

    sparse-switch v9, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v5, "collation"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v12, 0x4

    goto :goto_1

    :sswitch_1
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v12, 0x3

    goto :goto_1

    :sswitch_2
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v12, 0x2

    goto :goto_1

    :sswitch_3
    const-string v5, "use"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v12, 0x1

    goto :goto_1

    :sswitch_4
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    const/4 v12, 0x0

    :goto_1
    packed-switch v12, :pswitch_data_0

    invoke-virtual {p0, v7}, Lnet/sf/saxon/style/StyleElement;->checkUnknownAttribute(Lnet/sf/saxon/om/NodeName;)V

    goto :goto_0

    :pswitch_0
    invoke-static {v8}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnet/sf/saxon/style/XSLKey;->w:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    move-object v3, v8

    goto :goto_0

    :pswitch_2
    invoke-static {v8}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, v8, v4}, Lnet/sf/saxon/style/StyleElement;->makeExpression(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    iput-object v4, p0, Lnet/sf/saxon/style/XSLKey;->v:Lnet/sf/saxon/expr/Expression;

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p0, v11, v8}, Lnet/sf/saxon/style/StyleElement;->processBooleanAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lnet/sf/saxon/style/XSLKey;->J:Z

    goto/16 :goto_0

    :cond_5
    const-string v4, "range-key"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "http://saxon.sf.net/"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    sget-object v5, Lnet/sf/saxon/Version;->platform:Lnet/sf/saxon/Platform;

    invoke-interface {v5}, Lnet/sf/saxon/Platform;->isDotNet()Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "saxon:range-key is not supported in SaxonCS"

    invoke-virtual {p0, v5}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p0, v4, v8}, Lnet/sf/saxon/style/StyleElement;->processBooleanAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lnet/sf/saxon/style/XSLKey;->z:Z

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0, v7}, Lnet/sf/saxon/style/StyleElement;->checkUnknownAttribute(Lnet/sf/saxon/om/NodeName;)V

    goto/16 :goto_0

    :cond_8
    if-nez v2, :cond_9

    invoke-virtual {p0, v6}, Lnet/sf/saxon/style/StyleElement;->reportAbsence(Ljava/lang/String;)V

    const-string v2, "_dummy_key_name"

    :cond_9
    invoke-virtual {p0, v2, v1, v6}, Lnet/sf/saxon/style/StyleElement;->makeQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLKey;->x:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/StyleElement;->setObjectName(Lnet/sf/saxon/om/StructuredQName;)V

    if-nez v3, :cond_a

    invoke-virtual {p0, v5}, Lnet/sf/saxon/style/StyleElement;->reportAbsence(Ljava/lang/String;)V

    const-string v3, "*"

    :cond_a
    invoke-virtual {p0, v3, v5}, Lnet/sf/saxon/style/StyleElement;->L(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLKey;->u:Lnet/sf/saxon/pattern/Pattern;

    if-nez v0, :cond_b

    new-instance v0, Lnet/sf/saxon/pattern/NodeTestPattern;

    invoke-static {}, Lnet/sf/saxon/type/ErrorType;->getInstance()Lnet/sf/saxon/type/ErrorType;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/pattern/NodeTestPattern;-><init>(Lnet/sf/saxon/pattern/NodeTest;)V

    iput-object v0, p0, Lnet/sf/saxon/style/XSLKey;->u:Lnet/sf/saxon/pattern/Pattern;

    :cond_b
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x536e8d79 -> :sswitch_4
        0x1c587 -> :sswitch_3
        0x337a8b -> :sswitch_2
        0x62dd9c5 -> :sswitch_1
        0x7012ff89 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public validate(Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->makeSlotManager()Lnet/sf/saxon/expr/instruct/SlotManager;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLKey;->y:Lnet/sf/saxon/expr/instruct/SlotManager;

    const-string v0, "XTSE0010"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/style/StyleElement;->checkTopLevel(Ljava/lang/String;Z)V

    iget-object v0, p0, Lnet/sf/saxon/style/XSLKey;->v:Lnet/sf/saxon/expr/Expression;

    const-string v2, "XTSE1205"

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->hasChildNodes()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "An xsl:key element with a @use attribute must be empty"

    invoke-virtual {p0, v0, v2}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    new-instance v0, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    const-string v2, "xsl:key/use"

    const/4 v3, 0x4

    invoke-direct {v0, v3, v2, v1}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    invoke-virtual {p1, v1}, Lnet/sf/saxon/Configuration;->getTypeChecker(Z)Lnet/sf/saxon/expr/parser/TypeChecker;

    move-result-object v2

    iget-object v3, p0, Lnet/sf/saxon/style/XSLKey;->v:Lnet/sf/saxon/expr/Expression;

    sget-object v4, Lnet/sf/saxon/value/SequenceType;->ATOMIC_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->makeExpressionVisitor()Lnet/sf/saxon/expr/parser/ExpressionVisitor;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v0, v5}, Lnet/sf/saxon/expr/parser/TypeChecker;->staticTypeCheck(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLKey;->v:Lnet/sf/saxon/expr/Expression;
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/StyleElement;->compileError(Lnet/sf/saxon/trans/XPathException;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->hasChildNodes()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "An xsl:key element must either have a @use attribute or have content"

    invoke-virtual {p0, v0, v2}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    const-string v0, "use"

    iget-object v2, p0, Lnet/sf/saxon/style/XSLKey;->v:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, v0, v2}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLKey;->v:Lnet/sf/saxon/expr/Expression;

    const-string v0, "match"

    iget-object v2, p0, Lnet/sf/saxon/style/XSLKey;->u:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {p0, v0, v2}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/pattern/Pattern;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLKey;->u:Lnet/sf/saxon/pattern/Pattern;

    iget-object v0, p0, Lnet/sf/saxon/style/XSLKey;->v:Lnet/sf/saxon/expr/Expression;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->makeExpressionVisitor()Lnet/sf/saxon/expr/parser/ExpressionVisitor;

    move-result-object v2

    iget-object v3, p0, Lnet/sf/saxon/style/XSLKey;->u:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {v3}, Lnet/sf/saxon/pattern/Pattern;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v3

    invoke-virtual {p1, v3, v1}, Lnet/sf/saxon/Configuration;->makeContextItemStaticInfo(Lnet/sf/saxon/type/ItemType;Z)Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lnet/sf/saxon/expr/Expression;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLKey;->v:Lnet/sf/saxon/expr/Expression;

    :cond_3
    iget-object p1, p0, Lnet/sf/saxon/style/XSLKey;->w:Ljava/lang/String;

    if-eqz p1, :cond_4

    :try_start_1
    new-instance p1, Ljava/net/URI;

    iget-object v0, p0, Lnet/sf/saxon/style/XSLKey;->w:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URI;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/net/URI;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getBaseURI()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLKey;->w:Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Collation name \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lnet/sf/saxon/style/XSLKey;->w:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' is not a valid URI"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getDefaultCollationName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLKey;->w:Ljava/lang/String;

    :cond_5
    :goto_1
    return-void
.end method
