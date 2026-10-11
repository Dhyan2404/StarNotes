.class public final Lnet/sf/saxon/style/XSLTemplate;
.super Lnet/sf/saxon/style/StyleElement;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/style/StylesheetComponent;


# instance fields
.field public A0:Lnet/sf/saxon/type/ItemType;

.field public B0:Z

.field public C0:Z

.field public D0:Z

.field public E0:Z

.field public J:[Lnet/sf/saxon/om/StructuredQName;

.field public O:Ljava/lang/String;

.field public Q:Lnet/sf/saxon/pattern/Pattern;

.field public Z:Z

.field public k0:D

.field public q0:Lnet/sf/saxon/expr/instruct/SlotManager;

.field public t0:Lnet/sf/saxon/expr/instruct/NamedTemplate;

.field public u:Ljava/lang/String;

.field public final u0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/sf/saxon/om/StructuredQName;",
            "Lnet/sf/saxon/expr/instruct/TemplateRule;",
            ">;"
        }
    .end annotation
.end field

.field public v:Ljava/lang/String;

.field public v0:Lnet/sf/saxon/value/SequenceType;

.field public w:Ljava/lang/String;

.field public w0:Z

.field public x:Ljava/lang/String;

.field public x0:Z

.field public y:Ljava/lang/String;

.field public y0:Z

.field public z:Ljava/lang/String;

.field public z0:Lnet/sf/saxon/trans/Visibility;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lnet/sf/saxon/style/StyleElement;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLTemplate;->u:Ljava/lang/String;

    iput-object v0, p0, Lnet/sf/saxon/style/XSLTemplate;->v:Ljava/lang/String;

    iput-object v0, p0, Lnet/sf/saxon/style/XSLTemplate;->w:Ljava/lang/String;

    iput-object v0, p0, Lnet/sf/saxon/style/XSLTemplate;->x:Ljava/lang/String;

    iput-object v0, p0, Lnet/sf/saxon/style/XSLTemplate;->y:Ljava/lang/String;

    iput-object v0, p0, Lnet/sf/saxon/style/XSLTemplate;->z:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/style/XSLTemplate;->u0:Ljava/util/Map;

    sget-object v0, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    iput-object v0, p0, Lnet/sf/saxon/style/XSLTemplate;->v0:Lnet/sf/saxon/value/SequenceType;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/style/XSLTemplate;->w0:Z

    iput-boolean v0, p0, Lnet/sf/saxon/style/XSLTemplate;->x0:Z

    iput-boolean v0, p0, Lnet/sf/saxon/style/XSLTemplate;->y0:Z

    sget-object v1, Lnet/sf/saxon/trans/Visibility;->PRIVATE:Lnet/sf/saxon/trans/Visibility;

    iput-object v1, p0, Lnet/sf/saxon/style/XSLTemplate;->z0:Lnet/sf/saxon/trans/Visibility;

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/style/XSLTemplate;->A0:Lnet/sf/saxon/type/ItemType;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/sf/saxon/style/XSLTemplate;->B0:Z

    iput-boolean v0, p0, Lnet/sf/saxon/style/XSLTemplate;->C0:Z

    iput-boolean v0, p0, Lnet/sf/saxon/style/XSLTemplate;->D0:Z

    return-void
.end method


# virtual methods
.method public final Z(Lnet/sf/saxon/style/Compilation;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/style/Compilation;->getErrorCount()I

    move-result p1

    if-gtz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Errors were reported during JIT compilation of template rule with match=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/sf/saxon/style/XSLTemplate;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SXST0001"

    invoke-direct {p1, v0, v1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->setHasBeenReported(Z)V

    throw p1
.end method

.method public final a0(Lnet/sf/saxon/expr/Expression;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lnet/sf/saxon/Configuration;->checkStrictStreamability(Lnet/sf/saxon/style/XSLTemplate;Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method

.method public allocatePatternSlotNumbers()V
    .locals 11

    iget-object v0, p0, Lnet/sf/saxon/style/XSLTemplate;->Q:Lnet/sf/saxon/pattern/Pattern;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lnet/sf/saxon/style/XSLTemplate;->u0:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/instruct/TemplateRule;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/TemplateRule;->getRules()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/trans/rules/Rule;

    invoke-virtual {v2}, Lnet/sf/saxon/trans/rules/Rule;->getPattern()Lnet/sf/saxon/pattern/Pattern;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/pattern/Pattern;->getDependencies()I

    move-result v3

    const/4 v4, 0x1

    and-int/2addr v3, v4

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    move v3, v5

    :goto_1
    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLTemplate;->getSlotManager()Lnet/sf/saxon/expr/instruct/SlotManager;

    move-result-object v6

    invoke-virtual {v2, v6, v3}, Lnet/sf/saxon/pattern/Pattern;->allocateSlots(Lnet/sf/saxon/expr/instruct/SlotManager;I)I

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Lnet/sf/saxon/pattern/Pattern;->getDependencies()I

    move-result v2

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_3

    move v3, v4

    :cond_3
    if-lez v3, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getCompilation()Lnet/sf/saxon/style/Compilation;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/style/Compilation;->getPrincipalStylesheetModule()Lnet/sf/saxon/style/PrincipalStylesheetModule;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getRuleManager()Lnet/sf/saxon/trans/rules/RuleManager;

    move-result-object v2

    iget-object v6, p0, Lnet/sf/saxon/style/XSLTemplate;->J:[Lnet/sf/saxon/om/StructuredQName;

    array-length v7, v6

    move v8, v5

    :goto_2
    if-ge v8, v7, :cond_5

    aget-object v9, v6, v8

    sget-object v10, Lnet/sf/saxon/trans/Mode;->OMNI_MODE:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {v9, v10}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v2, v9, v4}, Lnet/sf/saxon/trans/rules/RuleManager;->obtainMode(Lnet/sf/saxon/om/StructuredQName;Z)Lnet/sf/saxon/trans/Mode;

    move-result-object v9

    invoke-virtual {v9}, Lnet/sf/saxon/trans/Mode;->getActivePart()Lnet/sf/saxon/trans/SimpleMode;

    move-result-object v9

    invoke-virtual {v9, v3}, Lnet/sf/saxon/trans/SimpleMode;->allocatePatternSlots(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_5
    move v4, v5

    :goto_3
    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lnet/sf/saxon/trans/rules/RuleManager;->getAllNamedModes()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/sf/saxon/trans/Mode;

    invoke-virtual {v5}, Lnet/sf/saxon/trans/Mode;->getActivePart()Lnet/sf/saxon/trans/SimpleMode;

    move-result-object v5

    invoke-virtual {v5, v3}, Lnet/sf/saxon/trans/SimpleMode;->allocatePatternSlots(I)V

    goto :goto_4

    :cond_6
    invoke-virtual {v2}, Lnet/sf/saxon/trans/rules/RuleManager;->getUnnamedMode()Lnet/sf/saxon/trans/SimpleMode;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/trans/SimpleMode;->getActivePart()Lnet/sf/saxon/trans/SimpleMode;

    move-result-object v2

    invoke-virtual {v2, v3}, Lnet/sf/saxon/trans/SimpleMode;->allocatePatternSlots(I)V

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public final b0(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p2}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p1

    iget-object p3, p0, Lnet/sf/saxon/style/XSLTemplate;->t0:Lnet/sf/saxon/expr/instruct/NamedTemplate;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v0

    invoke-virtual {p3, v0}, Lnet/sf/saxon/expr/instruct/Actor;->setPackageData(Lnet/sf/saxon/expr/PackageData;)V

    iget-object p3, p0, Lnet/sf/saxon/style/XSLTemplate;->t0:Lnet/sf/saxon/expr/instruct/NamedTemplate;

    invoke-virtual {p3, p2}, Lnet/sf/saxon/expr/instruct/NamedTemplate;->setBody(Lnet/sf/saxon/expr/Expression;)V

    iget-object p3, p0, Lnet/sf/saxon/style/XSLTemplate;->t0:Lnet/sf/saxon/expr/instruct/NamedTemplate;

    iget-object v0, p0, Lnet/sf/saxon/style/XSLTemplate;->q0:Lnet/sf/saxon/expr/instruct/SlotManager;

    invoke-virtual {p3, v0}, Lnet/sf/saxon/expr/instruct/Actor;->setStackFrameMap(Lnet/sf/saxon/expr/instruct/SlotManager;)V

    iget-object p3, p0, Lnet/sf/saxon/style/XSLTemplate;->t0:Lnet/sf/saxon/expr/instruct/NamedTemplate;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lnet/sf/saxon/expr/instruct/Actor;->setSystemId(Ljava/lang/String;)V

    iget-object p3, p0, Lnet/sf/saxon/style/XSLTemplate;->t0:Lnet/sf/saxon/expr/instruct/NamedTemplate;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->getLineNumber()I

    move-result v0

    invoke-virtual {p3, v0}, Lnet/sf/saxon/expr/instruct/Actor;->setLineNumber(I)V

    iget-object p3, p0, Lnet/sf/saxon/style/XSLTemplate;->t0:Lnet/sf/saxon/expr/instruct/NamedTemplate;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->getColumnNumber()I

    move-result v0

    invoke-virtual {p3, v0}, Lnet/sf/saxon/expr/instruct/Actor;->setColumnNumber(I)V

    iget-object p3, p0, Lnet/sf/saxon/style/XSLTemplate;->t0:Lnet/sf/saxon/expr/instruct/NamedTemplate;

    iget-boolean v0, p0, Lnet/sf/saxon/style/XSLTemplate;->x0:Z

    invoke-virtual {p3, v0}, Lnet/sf/saxon/expr/instruct/NamedTemplate;->setHasRequiredParams(Z)V

    iget-object p3, p0, Lnet/sf/saxon/style/XSLTemplate;->t0:Lnet/sf/saxon/expr/instruct/NamedTemplate;

    iget-object v0, p0, Lnet/sf/saxon/style/XSLTemplate;->v0:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {p3, v0}, Lnet/sf/saxon/expr/instruct/NamedTemplate;->setRequiredType(Lnet/sf/saxon/value/SequenceType;)V

    iget-object p3, p0, Lnet/sf/saxon/style/XSLTemplate;->t0:Lnet/sf/saxon/expr/instruct/NamedTemplate;

    iget-object v0, p0, Lnet/sf/saxon/style/XSLTemplate;->A0:Lnet/sf/saxon/type/ItemType;

    iget-boolean v1, p0, Lnet/sf/saxon/style/XSLTemplate;->B0:Z

    iget-boolean v2, p0, Lnet/sf/saxon/style/XSLTemplate;->C0:Z

    invoke-virtual {p3, v0, v1, v2}, Lnet/sf/saxon/expr/instruct/NamedTemplate;->setContextItemRequirements(Lnet/sf/saxon/type/ItemType;ZZ)V

    iget-object p3, p0, Lnet/sf/saxon/style/XSLTemplate;->t0:Lnet/sf/saxon/expr/instruct/NamedTemplate;

    invoke-virtual {p3, p1}, Lnet/sf/saxon/expr/instruct/Actor;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    iget-object p1, p0, Lnet/sf/saxon/style/XSLTemplate;->t0:Lnet/sf/saxon/expr/instruct/NamedTemplate;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getDeclaredVisibility()Lnet/sf/saxon/trans/Visibility;

    move-result-object p3

    invoke-virtual {p1, p3}, Lnet/sf/saxon/expr/instruct/Actor;->setDeclaredVisibility(Lnet/sf/saxon/trans/Visibility;)V

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->C()Lnet/sf/saxon/expr/Component;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/XSLTemplate;->checkCompatibility(Lnet/sf/saxon/expr/Component;)V

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    iget-object p3, p0, Lnet/sf/saxon/style/XSLTemplate;->A0:Lnet/sf/saxon/type/ItemType;

    iget-boolean v0, p0, Lnet/sf/saxon/style/XSLTemplate;->B0:Z

    invoke-virtual {p1, p3, v0}, Lnet/sf/saxon/Configuration;->makeContextItemStaticInfo(Lnet/sf/saxon/type/ItemType;Z)Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lnet/sf/saxon/style/XSLTemplate;->d0(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iget-object p2, p0, Lnet/sf/saxon/style/XSLTemplate;->t0:Lnet/sf/saxon/expr/instruct/NamedTemplate;

    invoke-virtual {p2, p1}, Lnet/sf/saxon/expr/instruct/NamedTemplate;->setBody(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getCompilation()Lnet/sf/saxon/style/Compilation;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/style/Compilation;->getCompilerInfo()Lnet/sf/saxon/trans/CompilerInfo;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/trans/CompilerInfo;->getCodeInjector()Lnet/sf/saxon/expr/parser/CodeInjector;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getCompilation()Lnet/sf/saxon/style/Compilation;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/style/Compilation;->getCompilerInfo()Lnet/sf/saxon/trans/CompilerInfo;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/trans/CompilerInfo;->getCodeInjector()Lnet/sf/saxon/expr/parser/CodeInjector;

    move-result-object p1

    iget-object p0, p0, Lnet/sf/saxon/style/XSLTemplate;->t0:Lnet/sf/saxon/expr/instruct/NamedTemplate;

    invoke-interface {p1, p0}, Lnet/sf/saxon/expr/parser/CodeInjector;->process(Lnet/sf/saxon/trace/TraceableComponent;)V

    :cond_1
    return-void
.end method

.method public final c0(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/style/XSLTemplate;->J:[Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLTemplate;->isOmniMode()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lnet/sf/saxon/trans/Mode;->UNNAMED_MODE_NAME:Lnet/sf/saxon/om/StructuredQName;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getCompilation()Lnet/sf/saxon/style/Compilation;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/style/Compilation;->getPrincipalStylesheetModule()Lnet/sf/saxon/style/PrincipalStylesheetModule;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getRuleManager()Lnet/sf/saxon/trans/rules/RuleManager;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/trans/rules/RuleManager;->getAllNamedModes()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/trans/Mode;

    invoke-virtual {v3}, Lnet/sf/saxon/trans/Mode;->getModeName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-array v1, v2, [Lnet/sf/saxon/om/StructuredQName;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sf/saxon/om/StructuredQName;

    :cond_1
    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    iget-object v4, p0, Lnet/sf/saxon/style/XSLTemplate;->u0:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/expr/instruct/TemplateRule;

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Lnet/sf/saxon/Configuration;->makeTemplateRule()Lnet/sf/saxon/expr/instruct/TemplateRule;

    move-result-object v4

    :cond_2
    invoke-virtual {v4, p1, p2, v3}, Lnet/sf/saxon/expr/instruct/TemplateRule;->prepareInitializer(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;Lnet/sf/saxon/om/StructuredQName;)V

    iget-object v5, p0, Lnet/sf/saxon/style/XSLTemplate;->u0:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v3

    invoke-virtual {v4, v3}, Lnet/sf/saxon/expr/instruct/TemplateRule;->setPackageData(Lnet/sf/saxon/expr/PackageData;)V

    const/4 v3, 0x0

    invoke-virtual {p0, v4, v3}, Lnet/sf/saxon/style/XSLTemplate;->e0(Lnet/sf/saxon/expr/instruct/TemplateRule;Lnet/sf/saxon/expr/Expression;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public checkCompatibility(Lnet/sf/saxon/expr/Component;)V
    .locals 7

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/expr/instruct/NamedTemplate;

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLTemplate;->getSymbolicName()Lnet/sf/saxon/trans/SymbolicName;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/NamedTemplate;->getSymbolicName()Lnet/sf/saxon/trans/SymbolicName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/trans/SymbolicName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lnet/sf/saxon/style/XSLTemplate;->v0:Lnet/sf/saxon/value/SequenceType;

    if-nez v0, :cond_0

    sget-object v0, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/NamedTemplate;->getRequiredType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/value/SequenceType;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "XTSE3070"

    if-nez v0, :cond_1

    const-string p1, "The overriding template has a different required type from the overridden template"

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/style/XSLTemplate;->A0:Lnet/sf/saxon/type/ItemType;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/NamedTemplate;->getRequiredContextItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lnet/sf/saxon/style/XSLTemplate;->B0:Z

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/NamedTemplate;->isMayOmitContextItem()Z

    move-result v2

    if-ne v0, v2, :cond_f

    iget-boolean v0, p0, Lnet/sf/saxon/style/XSLTemplate;->C0:Z

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/NamedTemplate;->isAbsentFocus()Z

    move-result v2

    if-eq v0, v2, :cond_2

    goto/16 :goto_6

    :cond_2
    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/NamedTemplate;->getLocalParamDetails()Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/instruct/NamedTemplate$LocalParamInfo;

    iget-object v3, v2, Lnet/sf/saxon/expr/instruct/NamedTemplate$LocalParamInfo;->name:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p0, v3}, Lnet/sf/saxon/style/XSLTemplate;->getParam(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/style/XSLLocalParam;

    move-result-object v3

    if-nez v3, :cond_4

    iget-boolean p1, v2, Lnet/sf/saxon/expr/instruct/NamedTemplate$LocalParamInfo;->isTunnel:Z

    if-nez p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The overridden template declares a parameter "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lnet/sf/saxon/expr/instruct/NamedTemplate$LocalParamInfo;->name:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " which is not declared in the overriding template"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    invoke-virtual {v3}, Lnet/sf/saxon/style/XSLLocalParam;->getRequiredType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v4

    iget-object v5, v2, Lnet/sf/saxon/expr/instruct/NamedTemplate$LocalParamInfo;->requiredType:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v4, v5}, Lnet/sf/saxon/value/SequenceType;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "The parameter "

    if-nez v4, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v2, Lnet/sf/saxon/expr/instruct/NamedTemplate$LocalParamInfo;->name:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has a different required type in the overridden template"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0, v1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    invoke-virtual {v3}, Lnet/sf/saxon/style/XSLLocalParam;->isRequiredParam()Z

    move-result v4

    iget-boolean v6, v2, Lnet/sf/saxon/expr/instruct/NamedTemplate$LocalParamInfo;->isRequired:Z

    if-eq v4, v6, :cond_8

    iget-boolean v4, v2, Lnet/sf/saxon/expr/instruct/NamedTemplate$LocalParamInfo;->isTunnel:Z

    if-nez v4, :cond_8

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v2, Lnet/sf/saxon/expr/instruct/NamedTemplate$LocalParamInfo;->name:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lnet/sf/saxon/style/XSLLocalParam;->isRequiredParam()Z

    move-result p1

    const-string v0, "required"

    const-string v4, "optional"

    if-eqz p1, :cond_6

    move-object p1, v0

    goto :goto_1

    :cond_6
    move-object p1, v4

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in the overriding template, but "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, v2, Lnet/sf/saxon/expr/instruct/NamedTemplate$LocalParamInfo;->isRequired:Z

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    move-object v0, v4

    :goto_2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in the overridden template"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0, v1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_8
    invoke-virtual {v3}, Lnet/sf/saxon/style/XSLLocalParam;->isTunnelParam()Z

    move-result v4

    iget-boolean v6, v2, Lnet/sf/saxon/expr/instruct/NamedTemplate$LocalParamInfo;->isTunnel:Z

    if-eq v4, v6, :cond_b

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v2, Lnet/sf/saxon/expr/instruct/NamedTemplate$LocalParamInfo;->name:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is a "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lnet/sf/saxon/style/XSLLocalParam;->isTunnelParam()Z

    move-result p1

    const-string v0, "tunnel"

    const-string v4, "non-tunnel"

    if-eqz p1, :cond_9

    move-object p1, v0

    goto :goto_3

    :cond_9
    move-object p1, v4

    :goto_3
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " parameter in the overriding template, but "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, v2, Lnet/sf/saxon/expr/instruct/NamedTemplate$LocalParamInfo;->isTunnel:Z

    if-eqz p1, :cond_a

    goto :goto_4

    :cond_a
    move-object v0, v4

    :goto_4
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " parameter in the overridden template"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0, v1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_b
    iget-object v2, v2, Lnet/sf/saxon/expr/instruct/NamedTemplate$LocalParamInfo;->name:Lnet/sf/saxon/om/StructuredQName;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_c
    new-instance p1, Lcom/sunia/HTREnginev2/w2n;

    const-class v2, Lnet/sf/saxon/style/XSLLocalParam;

    invoke-direct {p1, v2}, Lcom/sunia/HTREnginev2/w2n;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, p1}, Lnet/sf/saxon/om/NodeInfo;->children(Lnet/sf/saxon/pattern/NodePredicate;)Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/om/NodeInfo;

    check-cast p1, Lnet/sf/saxon/style/XSLLocalParam;

    invoke-virtual {p1}, Lnet/sf/saxon/style/XSLGeneralVariable;->getObjectName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {p1}, Lnet/sf/saxon/style/XSLLocalParam;->isRequiredParam()Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "An overriding template cannot introduce a required parameter that is not declared in the overridden template"

    invoke-virtual {p1, v2, v1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_e
    return-void

    :cond_f
    :goto_6
    const-string p1, "The required context item for the overriding template differs from that of the overridden template"

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public compileDeclaration(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/XSLTemplate;->isDeferredCompilation(Lnet/sf/saxon/style/Compilation;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/style/XSLTemplate;->c0(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/style/Compilation;->getCompilerInfo()Lnet/sf/saxon/trans/CompilerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/trans/CompilerInfo;->getOptimizerOptions()Lnet/sf/saxon/expr/parser/OptimizerOptions;

    move-result-object v0

    const/16 v1, 0x4000

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/parser/OptimizerOptions;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLTemplate;->markTailCalls()Z

    move-result v0

    iput-boolean v0, p0, Lnet/sf/saxon/style/XSLTemplate;->y0:Z

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lnet/sf/saxon/style/StyleElement;->compileSequenceConstructor(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;Z)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->restoreParentPointers()V

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v1

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    :cond_2
    iget-object v1, p0, Lnet/sf/saxon/style/XSLTemplate;->Q:Lnet/sf/saxon/pattern/Pattern;

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lnet/sf/saxon/style/Compilation;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    sget-object v2, Lnet/sf/saxon/lib/Feature;->STRICT_STREAMABILITY:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {v1, v2}, Lnet/sf/saxon/Configuration;->getBooleanProperty(Lnet/sf/saxon/lib/Feature;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLTemplate;->isWithinDeclaredStreamableConstruct()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/XSLTemplate;->a0(Lnet/sf/saxon/expr/Expression;)V

    :cond_3
    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLTemplate;->getTemplateName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, p1, v0, p2}, Lnet/sf/saxon/style/XSLTemplate;->b0(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/style/ComponentDeclaration;)V

    :cond_4
    iget-object v1, p0, Lnet/sf/saxon/style/XSLTemplate;->Q:Lnet/sf/saxon/pattern/Pattern;

    if-eqz v1, :cond_5

    invoke-virtual {p0, p1, v0, p2}, Lnet/sf/saxon/style/XSLTemplate;->compileTemplateRule(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/style/ComponentDeclaration;)V

    :cond_5
    return-void
.end method

.method public compileTemplateRule(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 4

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p3

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLTemplate;->getTemplateName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lnet/sf/saxon/expr/parser/RebindingMap;

    invoke-direct {v0}, Lnet/sf/saxon/expr/parser/RebindingMap;-><init>()V

    invoke-virtual {p2, v0}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/style/XSLTemplate;->Q:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {v0}, Lnet/sf/saxon/pattern/Pattern;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    invoke-static {}, Lnet/sf/saxon/type/ErrorType;->getInstance()Lnet/sf/saxon/type/ErrorType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v0

    :cond_1
    iget-boolean v1, p0, Lnet/sf/saxon/style/XSLTemplate;->B0:Z

    invoke-virtual {p3, v0, v1}, Lnet/sf/saxon/Configuration;->makeContextItemStaticInfo(Lnet/sf/saxon/type/ItemType;Z)Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lnet/sf/saxon/style/XSLTemplate;->d0(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    iget-object p3, p0, Lnet/sf/saxon/style/XSLTemplate;->u0:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v0, 0x1

    :cond_2
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/om/StructuredQName;

    sget-object v3, Lnet/sf/saxon/trans/Mode;->OMNI_MODE:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {v2, v3}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/instruct/TemplateRule;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnet/sf/saxon/style/XSLTemplate;->Q:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {v1, v0}, Lnet/sf/saxon/expr/instruct/TemplateRule;->setMatchPattern(Lnet/sf/saxon/pattern/Pattern;)V

    invoke-virtual {v1, p2}, Lnet/sf/saxon/expr/instruct/TemplateRule;->setBody(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p1}, Lnet/sf/saxon/style/Compilation;->getCompilerInfo()Lnet/sf/saxon/trans/CompilerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/trans/CompilerInfo;->getCodeInjector()Lnet/sf/saxon/expr/parser/CodeInjector;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lnet/sf/saxon/style/Compilation;->getCompilerInfo()Lnet/sf/saxon/trans/CompilerInfo;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/trans/CompilerInfo;->getCodeInjector()Lnet/sf/saxon/expr/parser/CodeInjector;

    move-result-object p2

    invoke-interface {p2, v1}, Lnet/sf/saxon/expr/parser/CodeInjector;->process(Lnet/sf/saxon/trace/TraceableComponent;)V

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/TemplateRule;->getBody()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/TemplateRule;->getBody()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    if-nez v2, :cond_5

    new-instance v2, Lnet/sf/saxon/expr/parser/RebindingMap;

    invoke-direct {v2}, Lnet/sf/saxon/expr/parser/RebindingMap;-><init>()V

    invoke-virtual {p2, v2}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/TemplateRule;->getBody()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    :goto_1
    invoke-virtual {p0, v1, p2}, Lnet/sf/saxon/style/XSLTemplate;->e0(Lnet/sf/saxon/expr/instruct/TemplateRule;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/TemplateRule;->updateSlaveCopies()V

    goto :goto_0

    :cond_6
    return-void
.end method

.method public final d0(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 6

    :try_start_0
    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->simplify()Lnet/sf/saxon/expr/Expression;

    move-result-object v0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lnet/sf/saxon/trans/XPathException;->isReportableStatically()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/StyleElement;->compileError(Lnet/sf/saxon/trans/XPathException;)V

    move-object v0, p1

    goto :goto_0

    :cond_0
    new-instance v1, Lnet/sf/saxon/expr/ErrorExpression;

    new-instance v2, Lnet/sf/saxon/trans/XmlProcessingException;

    invoke-direct {v2, v0}, Lnet/sf/saxon/trans/XmlProcessingException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    invoke-direct {v1, v2}, Lnet/sf/saxon/expr/ErrorExpression;-><init>(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    invoke-static {p1, v1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    move-object v0, v1

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/style/XSLTemplate;->z0:Lnet/sf/saxon/trans/Visibility;

    sget-object v3, Lnet/sf/saxon/trans/Visibility;->ABSTRACT:Lnet/sf/saxon/trans/Visibility;

    if-eq v2, v3, :cond_2

    :try_start_1
    iget-object v2, p0, Lnet/sf/saxon/style/XSLTemplate;->v0:Lnet/sf/saxon/value/SequenceType;

    if-eqz v2, :cond_2

    sget-object v3, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    if-eq v2, v3, :cond_2

    new-instance v2, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    iget-object v3, p0, Lnet/sf/saxon/style/XSLTemplate;->O:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x7

    invoke-direct {v2, v5, v3, v4}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    const-string v3, "XTTE0505"

    invoke-virtual {v2, v3}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lnet/sf/saxon/Configuration;->getTypeChecker(Z)Lnet/sf/saxon/expr/parser/TypeChecker;

    move-result-object v1

    iget-object v3, p0, Lnet/sf/saxon/style/XSLTemplate;->v0:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->makeExpressionVisitor()Lnet/sf/saxon/expr/parser/ExpressionVisitor;

    move-result-object v4

    invoke-virtual {v1, v0, v3, v2, v4}, Lnet/sf/saxon/expr/parser/TypeChecker;->staticTypeCheck(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1
    :try_end_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, p1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lnet/sf/saxon/trans/XPathException;->isReportableStatically()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/StyleElement;->compileError(Lnet/sf/saxon/trans/XPathException;)V

    :cond_1
    new-instance v1, Lnet/sf/saxon/expr/ErrorExpression;

    new-instance v2, Lnet/sf/saxon/trans/XmlProcessingException;

    invoke-direct {v2, v0}, Lnet/sf/saxon/trans/XmlProcessingException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    invoke-direct {v1, v2}, Lnet/sf/saxon/expr/ErrorExpression;-><init>(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    invoke-static {p1, v1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    move-object v0, v1

    :cond_2
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->makeExpressionVisitor()Lnet/sf/saxon/expr/parser/ExpressionVisitor;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Expression;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0
    :try_end_2
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/StyleElement;->compileError(Lnet/sf/saxon/trans/XPathException;)V

    :goto_2
    return-object v0
.end method

.method public final e0(Lnet/sf/saxon/expr/instruct/TemplateRule;Lnet/sf/saxon/expr/Expression;)V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/style/XSLTemplate;->Q:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/expr/instruct/TemplateRule;->setMatchPattern(Lnet/sf/saxon/pattern/Pattern;)V

    invoke-virtual {p1, p2}, Lnet/sf/saxon/expr/instruct/TemplateRule;->setBody(Lnet/sf/saxon/expr/Expression;)V

    iget-object p2, p0, Lnet/sf/saxon/style/XSLTemplate;->q0:Lnet/sf/saxon/expr/instruct/SlotManager;

    invoke-virtual {p1, p2}, Lnet/sf/saxon/expr/instruct/TemplateRule;->setStackFrameMap(Lnet/sf/saxon/expr/instruct/SlotManager;)V

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->getSystemId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/sf/saxon/expr/instruct/TemplateRule;->setSystemId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->getLineNumber()I

    move-result p2

    invoke-virtual {p1, p2}, Lnet/sf/saxon/expr/instruct/TemplateRule;->setLineNumber(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->getColumnNumber()I

    move-result p2

    invoke-virtual {p1, p2}, Lnet/sf/saxon/expr/instruct/TemplateRule;->setColumnNumber(I)V

    iget-boolean p2, p0, Lnet/sf/saxon/style/XSLTemplate;->x0:Z

    invoke-virtual {p1, p2}, Lnet/sf/saxon/expr/instruct/TemplateRule;->setHasRequiredParams(Z)V

    iget-object p2, p0, Lnet/sf/saxon/style/XSLTemplate;->v0:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {p1, p2}, Lnet/sf/saxon/expr/instruct/TemplateRule;->setRequiredType(Lnet/sf/saxon/value/SequenceType;)V

    iget-object p2, p0, Lnet/sf/saxon/style/XSLTemplate;->A0:Lnet/sf/saxon/type/ItemType;

    iget-boolean p0, p0, Lnet/sf/saxon/style/XSLTemplate;->C0:Z

    invoke-virtual {p1, p2, p0}, Lnet/sf/saxon/expr/instruct/TemplateRule;->setContextItemRequirements(Lnet/sf/saxon/type/ItemType;Z)V

    return-void
.end method

.method public generateByteCode(Lnet/sf/saxon/expr/parser/Optimizer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic getActor()Lnet/sf/saxon/expr/instruct/Actor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLTemplate;->getActor()Lnet/sf/saxon/expr/instruct/NamedTemplate;

    move-result-object p0

    return-object p0
.end method

.method public getActor()Lnet/sf/saxon/expr/instruct/NamedTemplate;
    .locals 0

    .line 2
    iget-object p0, p0, Lnet/sf/saxon/style/XSLTemplate;->t0:Lnet/sf/saxon/expr/instruct/NamedTemplate;

    return-object p0
.end method

.method public getApplicableModes()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lnet/sf/saxon/trans/Mode;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLTemplate;->getModeNames()[Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getPrincipalStylesheetModule()Lnet/sf/saxon/style/PrincipalStylesheetModule;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getRuleManager()Lnet/sf/saxon/trans/rules/RuleManager;

    move-result-object p0

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    sget-object v6, Lnet/sf/saxon/trans/Mode;->OMNI_MODE:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {v5, v6}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/trans/rules/RuleManager;->getUnnamedMode()Lnet/sf/saxon/trans/SimpleMode;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lnet/sf/saxon/trans/rules/RuleManager;->getAllNamedModes()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v5, v3}, Lnet/sf/saxon/trans/rules/RuleManager;->obtainMode(Lnet/sf/saxon/om/StructuredQName;Z)Lnet/sf/saxon/trans/Mode;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public getCompiledNamedTemplate()Lnet/sf/saxon/expr/instruct/NamedTemplate;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/XSLTemplate;->t0:Lnet/sf/saxon/expr/instruct/NamedTemplate;

    return-object p0
.end method

.method public getContextItemTypeForTemplateRule()Lnet/sf/saxon/type/ItemType;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/style/XSLTemplate;->Q:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {v1}, Lnet/sf/saxon/pattern/Pattern;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    invoke-static {}, Lnet/sf/saxon/type/ErrorType;->getInstance()Lnet/sf/saxon/type/ErrorType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v1

    :cond_0
    iget-object v2, p0, Lnet/sf/saxon/style/XSLTemplate;->A0:Lnet/sf/saxon/type/ItemType;

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v3

    if-eq v2, v3, :cond_3

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v0

    iget-object v2, p0, Lnet/sf/saxon/style/XSLTemplate;->A0:Lnet/sf/saxon/type/ItemType;

    invoke-virtual {v0, v1, v2}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object v0

    sget-object v2, Lnet/sf/saxon/style/XSLTemplate$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lnet/sf/saxon/style/XSLTemplate;->A0:Lnet/sf/saxon/type/ItemType;

    goto :goto_0

    :cond_2
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "The declared context item type is inconsistent with the match pattern"

    const-string v3, "XPTY0004"

    invoke-direct {v0, v1, v3, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {v0, v2}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    throw v0

    :cond_3
    :goto_0
    return-object v1
.end method

.method public getMatch()Lnet/sf/saxon/pattern/Pattern;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/XSLTemplate;->Q:Lnet/sf/saxon/pattern/Pattern;

    return-object p0
.end method

.method public getModeNames()[Lnet/sf/saxon/om/StructuredQName;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/style/XSLTemplate;->J:[Lnet/sf/saxon/om/StructuredQName;

    if-nez v0, :cond_8

    iget-object v0, p0, Lnet/sf/saxon/style/XSLTemplate;->v:Ljava/lang/String;

    const-string v1, "#default"

    const-string v2, "mode"

    if-nez v0, :cond_0

    invoke-virtual {p0, v2}, Lnet/sf/saxon/style/StyleElement;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLTemplate;->v:Ljava/lang/String;

    if-nez v0, :cond_0

    iput-object v1, p0, Lnet/sf/saxon/style/XSLTemplate;->v:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/style/XSLTemplate;->v:Ljava/lang/String;

    invoke-static {v0}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "[ \t\n\r]+"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    new-array v3, v3, [Lnet/sf/saxon/om/StructuredQName;

    iput-object v3, p0, Lnet/sf/saxon/style/XSLTemplate;->J:[Lnet/sf/saxon/om/StructuredQName;

    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_0
    const-string v8, "XTSE0550"

    const/4 v9, 0x1

    if-ge v5, v3, :cond_7

    aget-object v10, v0, v5

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->y()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v9

    if-nez v9, :cond_4

    sget-object v9, Lnet/sf/saxon/trans/Mode;->UNNAMED_MODE_NAME:Lnet/sf/saxon/om/StructuredQName;

    goto :goto_1

    :cond_1
    const-string v11, "#unnamed"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    sget-object v9, Lnet/sf/saxon/trans/Mode;->UNNAMED_MODE_NAME:Lnet/sf/saxon/om/StructuredQName;

    goto :goto_1

    :cond_2
    const-string v11, "#all"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    sget-object v6, Lnet/sf/saxon/trans/Mode;->OMNI_MODE:Lnet/sf/saxon/om/StructuredQName;

    move v14, v9

    move-object v9, v6

    move v6, v14

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v10, v8, v2}, Lnet/sf/saxon/style/StyleElement;->makeQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v9

    :cond_4
    :goto_1
    move v11, v4

    :goto_2
    if-ge v11, v7, :cond_6

    iget-object v12, p0, Lnet/sf/saxon/style/XSLTemplate;->J:[Lnet/sf/saxon/om/StructuredQName;

    aget-object v12, v12, v11

    invoke-virtual {v12, v9}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "In the list of modes, the value "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " is duplicated"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12, v8}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_6
    iget-object v8, p0, Lnet/sf/saxon/style/XSLTemplate;->J:[Lnet/sf/saxon/om/StructuredQName;

    add-int/lit8 v10, v7, 0x1

    aput-object v9, v8, v7

    add-int/lit8 v5, v5, 0x1

    move v7, v10

    goto :goto_0

    :cond_7
    if-eqz v6, :cond_8

    if-le v7, v9, :cond_8

    const-string v0, "mode=\'#all\' cannot be combined with other modes"

    invoke-virtual {p0, v0, v8}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    iget-object p0, p0, Lnet/sf/saxon/style/XSLTemplate;->J:[Lnet/sf/saxon/om/StructuredQName;

    return-object p0
.end method

.method public getParam(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/style/XSLLocalParam;
    .locals 2

    new-instance v0, Lcom/sunia/HTREnginev2/w2n;

    const-class v1, Lnet/sf/saxon/style/XSLLocalParam;

    invoke-direct {v0, v1}, Lcom/sunia/HTREnginev2/w2n;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, v0}, Lnet/sf/saxon/om/NodeInfo;->children(Lnet/sf/saxon/pattern/NodePredicate;)Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/NodeInfo;

    check-cast v0, Lnet/sf/saxon/style/XSLLocalParam;

    invoke-virtual {v0}, Lnet/sf/saxon/style/XSLGeneralVariable;->getObjectName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {p1, v1}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRequiredContextItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/XSLTemplate;->A0:Lnet/sf/saxon/type/ItemType;

    return-object p0
.end method

.method public getSlotManager()Lnet/sf/saxon/expr/instruct/SlotManager;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/XSLTemplate;->q0:Lnet/sf/saxon/expr/instruct/SlotManager;

    return-object p0
.end method

.method public getSymbolicName()Lnet/sf/saxon/trans/SymbolicName;
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLTemplate;->getTemplateName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lnet/sf/saxon/trans/SymbolicName;

    const/16 v1, 0xd2

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLTemplate;->getTemplateName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lnet/sf/saxon/trans/SymbolicName;-><init>(ILnet/sf/saxon/om/StructuredQName;)V

    return-object v0
.end method

.method public getTemplateName()Lnet/sf/saxon/om/StructuredQName;
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

.method public getTemplateRulesByMode()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lnet/sf/saxon/om/StructuredQName;",
            "Lnet/sf/saxon/expr/instruct/TemplateRule;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/style/XSLTemplate;->u0:Ljava/util/Map;

    return-object p0
.end method

.method public index(Lnet/sf/saxon/style/ComponentDeclaration;Lnet/sf/saxon/style/PrincipalStylesheetModule;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLTemplate;->getTemplateName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/style/XSLTemplate;->t0:Lnet/sf/saxon/expr/instruct/NamedTemplate;

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/expr/instruct/NamedTemplate;

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLTemplate;->getTemplateName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/expr/instruct/NamedTemplate;-><init>(Lnet/sf/saxon/om/StructuredQName;)V

    iput-object v0, p0, Lnet/sf/saxon/style/XSLTemplate;->t0:Lnet/sf/saxon/expr/instruct/NamedTemplate;

    :cond_0
    invoke-virtual {p2, p1}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->indexNamedTemplate(Lnet/sf/saxon/style/ComponentDeclaration;)V

    :cond_1
    return-void
.end method

.method public isDeclaration()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isDeferredCompilation(Lnet/sf/saxon/style/Compilation;)Z
    .locals 1

    invoke-virtual {p1}, Lnet/sf/saxon/style/Compilation;->isPreScan()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLTemplate;->getTemplateName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lnet/sf/saxon/style/Compilation;->isLibraryPackage()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMayOmitContextItem()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/style/XSLTemplate;->B0:Z

    return p0
.end method

.method public isOmniMode()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLTemplate;->getModeNames()[Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    sget-object v4, Lnet/sf/saxon/trans/Mode;->OMNI_MODE:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {v3, v4}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public isPermittedChild(Lnet/sf/saxon/style/StyleElement;)Z
    .locals 0

    instance-of p0, p1, Lnet/sf/saxon/style/XSLLocalParam;

    if-nez p0, :cond_1

    invoke-virtual {p1}, Lnet/sf/saxon/tree/linked/NodeImpl;->getFingerprint()I

    move-result p0

    const/16 p1, 0x91

    if-ne p0, p1, :cond_0

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

.method public isWithinDeclaredStreamableConstruct()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLTemplate;->getApplicableModes()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/trans/Mode;

    invoke-virtual {v1}, Lnet/sf/saxon/trans/Mode;->isDeclaredStreamable()Z

    move-result v1
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_1
    return v0
.end method

.method public declared-synchronized jitCompile(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lnet/sf/saxon/style/XSLTemplate;->D0:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/style/XSLTemplate;->D0:Z

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lnet/sf/saxon/style/Compilation;->setPreScan(Z)V

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLTemplate;->processAllAttributes()V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/XSLTemplate;->Z(Lnet/sf/saxon/style/Compilation;)V

    invoke-virtual {p0, p2, v0}, Lnet/sf/saxon/style/XSLTemplate;->validateSubtree(Lnet/sf/saxon/style/ComponentDeclaration;Z)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/XSLTemplate;->Z(Lnet/sf/saxon/style/Compilation;)V

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/style/XSLTemplate;->compileDeclaration(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/XSLTemplate;->Z(Lnet/sf/saxon/style/Compilation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public markTailCalls()Z
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->B()Lnet/sf/saxon/style/StyleElement;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->markTailCalls()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public mayContainParam()Z
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
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/style/StyleElement;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    iget-object v2, v1, Lnet/sf/saxon/style/XSLTemplate;->t0:Lnet/sf/saxon/expr/instruct/NamedTemplate;

    const/4 v3, 0x6

    const/16 v4, 0x3a

    const-string v5, " in "

    const/4 v6, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lnet/sf/saxon/expr/instruct/Actor;->getBody()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/style/StyleElement;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v7

    iget-object v8, v1, Lnet/sf/saxon/style/XSLTemplate;->A0:Lnet/sf/saxon/type/ItemType;

    iget-boolean v9, v1, Lnet/sf/saxon/style/XSLTemplate;->B0:Z

    invoke-virtual {v7, v8, v9}, Lnet/sf/saxon/Configuration;->makeContextItemStaticInfo(Lnet/sf/saxon/type/ItemType;Z)Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/style/StyleElement;->makeExpressionVisitor()Lnet/sf/saxon/expr/parser/ExpressionVisitor;

    move-result-object v8

    invoke-virtual {v2, v8, v7}, Lnet/sf/saxon/expr/Expression;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/style/StyleElement;->getCompilation()Lnet/sf/saxon/style/Compilation;

    move-result-object v9

    invoke-static {v2, v9, v8, v7, v6}, Lnet/sf/saxon/expr/parser/ExpressionTool;->optimizeComponentBody(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;Z)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    iget-object v7, v1, Lnet/sf/saxon/style/XSLTemplate;->t0:Lnet/sf/saxon/expr/instruct/NamedTemplate;

    invoke-virtual {v7, v2}, Lnet/sf/saxon/expr/instruct/NamedTemplate;->setBody(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v1, v2}, Lnet/sf/saxon/style/StyleElement;->m(Lnet/sf/saxon/expr/Expression;)V

    iget-boolean v7, v1, Lnet/sf/saxon/style/XSLTemplate;->E0:Z

    if-eqz v7, :cond_0

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/style/StyleElement;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v7

    invoke-virtual {v7}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Optimized expression tree for named template at line "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->getLineNumber()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->getSystemId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Lnet/sf/saxon/expr/Expression;->explain(Lnet/sf/saxon/lib/Logger;)V

    :cond_0
    invoke-virtual {v2}, Lnet/sf/saxon/expr/Expression;->restoreParentPointers()V

    sget-object v7, Lnet/sf/saxon/s9api/HostLanguage;->XSLT:Lnet/sf/saxon/s9api/HostLanguage;

    invoke-virtual {v0, v7}, Lnet/sf/saxon/Configuration;->isDeferredByteCode(Lnet/sf/saxon/s9api/HostLanguage;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-boolean v7, v1, Lnet/sf/saxon/style/XSLTemplate;->y0:Z

    if-nez v7, :cond_1

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->obtainOptimizer()Lnet/sf/saxon/expr/parser/Optimizer;

    move-result-object v7

    iget-object v8, v1, Lnet/sf/saxon/style/XSLTemplate;->t0:Lnet/sf/saxon/expr/instruct/NamedTemplate;

    iget-object v9, v1, Lnet/sf/saxon/style/XSLTemplate;->O:Ljava/lang/String;

    invoke-virtual {v7, v8, v2, v9, v3}, Lnet/sf/saxon/expr/parser/Optimizer;->makeByteCodeCandidate(Lnet/sf/saxon/expr/ExpressionOwner;Lnet/sf/saxon/expr/Expression;Ljava/lang/String;I)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v8, v2}, Lnet/sf/saxon/expr/instruct/NamedTemplate;->setBody(Lnet/sf/saxon/expr/Expression;)V

    :cond_1
    iget-object v2, v1, Lnet/sf/saxon/style/XSLTemplate;->Q:Lnet/sf/saxon/pattern/Pattern;

    if-eqz v2, :cond_8

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/style/XSLTemplate;->getContextItemTypeForTemplateRule()Lnet/sf/saxon/type/ItemType;

    move-result-object v2

    iget-boolean v7, v1, Lnet/sf/saxon/style/XSLTemplate;->B0:Z

    invoke-virtual {v0, v2, v7}, Lnet/sf/saxon/Configuration;->makeContextItemStaticInfo(Lnet/sf/saxon/type/ItemType;Z)Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;->setContextPostureStriding()V

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/style/StyleElement;->makeExpressionVisitor()Lnet/sf/saxon/expr/parser/ExpressionVisitor;

    move-result-object v2

    iget-object v7, v1, Lnet/sf/saxon/style/XSLTemplate;->Q:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {v7}, Lnet/sf/saxon/expr/Expression;->resetLocalStaticProperties()V

    iget-object v7, v1, Lnet/sf/saxon/style/XSLTemplate;->Q:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {v7, v2, v0}, Lnet/sf/saxon/pattern/Pattern;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object v7

    iput-object v7, v1, Lnet/sf/saxon/style/XSLTemplate;->Q:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/style/StyleElement;->getCompilation()Lnet/sf/saxon/style/Compilation;

    move-result-object v7

    invoke-virtual {v1, v7}, Lnet/sf/saxon/style/XSLTemplate;->isDeferredCompilation(Lnet/sf/saxon/style/Compilation;)Z

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/style/StyleElement;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v7

    invoke-virtual {v7}, Lnet/sf/saxon/Configuration;->obtainOptimizer()Lnet/sf/saxon/expr/parser/Optimizer;

    move-result-object v7

    :try_start_0
    iget-object v8, v1, Lnet/sf/saxon/style/XSLTemplate;->u0:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lnet/sf/saxon/om/StructuredQName;

    sget-object v11, Lnet/sf/saxon/trans/Mode;->OMNI_MODE:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {v10, v11}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnet/sf/saxon/expr/instruct/TemplateRule;

    invoke-virtual {v9}, Lnet/sf/saxon/expr/instruct/TemplateRule;->getBody()Lnet/sf/saxon/expr/Expression;

    move-result-object v10

    invoke-virtual {v9}, Lnet/sf/saxon/expr/instruct/TemplateRule;->isDeclaredStreamable()Z

    move-result v11

    invoke-virtual {v2, v11}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->setOptimizeForStreaming(Z)V

    invoke-virtual {v10, v2, v0}, Lnet/sf/saxon/expr/Expression;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/style/StyleElement;->getCompilation()Lnet/sf/saxon/style/Compilation;

    move-result-object v11

    invoke-static {v10, v11, v2, v0, v6}, Lnet/sf/saxon/expr/parser/ExpressionTool;->optimizeComponentBody(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;Z)Lnet/sf/saxon/expr/Expression;

    move-result-object v10

    invoke-virtual {v9, v10}, Lnet/sf/saxon/expr/instruct/TemplateRule;->setBody(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v7, v1, v9}, Lnet/sf/saxon/expr/parser/Optimizer;->checkStreamability(Lnet/sf/saxon/style/XSLTemplate;Lnet/sf/saxon/expr/instruct/TemplateRule;)V

    invoke-virtual {v1, v10}, Lnet/sf/saxon/style/StyleElement;->m(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v9}, Lnet/sf/saxon/expr/instruct/TemplateRule;->getRules()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lnet/sf/saxon/trans/rules/Rule;

    invoke-virtual {v12}, Lnet/sf/saxon/trans/rules/Rule;->getPattern()Lnet/sf/saxon/pattern/Pattern;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/style/StyleElement;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v14

    invoke-virtual {v13}, Lnet/sf/saxon/pattern/Pattern;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v15

    iget-boolean v4, v1, Lnet/sf/saxon/style/XSLTemplate;->B0:Z

    invoke-virtual {v14, v15, v4}, Lnet/sf/saxon/Configuration;->makeContextItemStaticInfo(Lnet/sf/saxon/type/ItemType;Z)Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    move-result-object v4

    invoke-virtual {v4}, Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;->setContextPostureStriding()V

    invoke-virtual {v13, v2, v4}, Lnet/sf/saxon/pattern/Pattern;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object v4

    iget-object v14, v1, Lnet/sf/saxon/style/XSLTemplate;->u0:Ljava/util/Map;

    invoke-interface {v14}, Ljava/util/Map;->size()I

    move-result v14

    if-le v14, v6, :cond_2

    new-instance v14, Lnet/sf/saxon/expr/parser/RebindingMap;

    invoke-direct {v14}, Lnet/sf/saxon/expr/parser/RebindingMap;-><init>()V

    invoke-virtual {v4, v14}, Lnet/sf/saxon/pattern/Pattern;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object v4

    :cond_2
    if-eq v4, v13, :cond_3

    invoke-virtual {v12, v4}, Lnet/sf/saxon/trans/rules/Rule;->setPattern(Lnet/sf/saxon/pattern/Pattern;)V

    :cond_3
    const/16 v4, 0x3a

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v4

    sget-object v11, Lnet/sf/saxon/s9api/HostLanguage;->XSLT:Lnet/sf/saxon/s9api/HostLanguage;

    invoke-virtual {v4, v11}, Lnet/sf/saxon/Configuration;->isDeferredByteCode(Lnet/sf/saxon/s9api/HostLanguage;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-boolean v4, v1, Lnet/sf/saxon/style/XSLTemplate;->y0:Z

    if-nez v4, :cond_5

    iget-object v4, v1, Lnet/sf/saxon/style/XSLTemplate;->O:Ljava/lang/String;

    invoke-virtual {v7, v9, v10, v4, v3}, Lnet/sf/saxon/expr/parser/Optimizer;->makeByteCodeCandidate(Lnet/sf/saxon/expr/ExpressionOwner;Lnet/sf/saxon/expr/Expression;Ljava/lang/String;I)Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    invoke-virtual {v9, v4}, Lnet/sf/saxon/expr/instruct/TemplateRule;->setBody(Lnet/sf/saxon/expr/Expression;)V

    :cond_5
    iget-boolean v4, v1, Lnet/sf/saxon/style/XSLTemplate;->E0:Z

    if-eqz v4, :cond_6

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/style/StyleElement;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object v4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Optimized expression tree for template rule at line "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->getLineNumber()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->getSystemId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0x3a

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Lnet/sf/saxon/expr/Expression;->explain(Lnet/sf/saxon/lib/Logger;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_6
    const/16 v11, 0x3a

    goto :goto_2

    :cond_7
    move v11, v4

    :goto_2
    move v4, v11

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0, v1}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {v1, v0}, Lnet/sf/saxon/style/StyleElement;->compileError(Lnet/sf/saxon/trans/XPathException;)V

    :cond_8
    return-void
.end method

.method public prepareAttributes()V
    .locals 15

    const-string v0, "saxon:as"

    const-string v1, "XTSE0530"

    const-string v2, "Invalid numeric value for priority ("

    const-string v3, "XTSE0020"

    const-string v4, "XTSE0280"

    const-string v5, "XTSE0500"

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->attributes()Lnet/sf/saxon/om/AttributeMap;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const-string v9, "match"

    const-string v10, "name"

    const-string v11, "as"

    if-eqz v8, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v8}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v12

    invoke-interface {v12}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "mode"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-virtual {v8}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lnet/sf/saxon/style/XSLTemplate;->v:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v8}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lnet/sf/saxon/style/XSLTemplate;->w:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v8}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lnet/sf/saxon/style/XSLTemplate;->u:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v9, "priority"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v8}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lnet/sf/saxon/style/XSLTemplate;->x:Ljava/lang/String;

    goto :goto_0

    :cond_4
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v8}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lnet/sf/saxon/style/XSLTemplate;->y:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const-string v9, "visibility"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v8}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lnet/sf/saxon/style/XSLTemplate;->z:Ljava/lang/String;

    goto :goto_0

    :cond_6
    const-string v9, "http://saxon.sf.net/"

    invoke-interface {v12, v9}, Lnet/sf/saxon/om/NodeName;->hasURI(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v12}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lnet/sf/saxon/style/StyleElement;->isExtensionAttributeAllowed(Ljava/lang/String;)Z

    invoke-interface {v12}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v8}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    :cond_7
    invoke-interface {v12}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object v9

    const-string v10, "explain"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v8}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lnet/sf/saxon/style/StyleElement;->isYes(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lnet/sf/saxon/style/XSLTemplate;->E0:Z

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0, v12}, Lnet/sf/saxon/style/StyleElement;->checkUnknownAttribute(Lnet/sf/saxon/om/NodeName;)V

    goto/16 :goto_0

    :cond_9
    const/4 v6, 0x0

    const/4 v8, 0x1

    :try_start_0
    iget-object v12, p0, Lnet/sf/saxon/style/XSLTemplate;->v:Ljava/lang/String;

    if-nez v12, :cond_b

    iget-object v12, p0, Lnet/sf/saxon/style/XSLTemplate;->u:Ljava/lang/String;

    if-eqz v12, :cond_e

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->y()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v12

    if-nez v12, :cond_a

    sget-object v12, Lnet/sf/saxon/trans/Mode;->UNNAMED_MODE_NAME:Lnet/sf/saxon/om/StructuredQName;

    :cond_a
    new-array v13, v8, [Lnet/sf/saxon/om/StructuredQName;

    iput-object v13, p0, Lnet/sf/saxon/style/XSLTemplate;->J:[Lnet/sf/saxon/om/StructuredQName;

    aput-object v12, v13, v6

    goto :goto_1

    :cond_b
    iget-object v12, p0, Lnet/sf/saxon/style/XSLTemplate;->u:Ljava/lang/String;

    if-nez v12, :cond_c

    const-string v12, "The mode attribute must be absent if the match attribute is absent"

    invoke-virtual {p0, v12, v5}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLTemplate;->getModeNames()[Lnet/sf/saxon/om/StructuredQName;
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v12

    invoke-virtual {v12, v4}, Lnet/sf/saxon/trans/XPathException;->maybeSetErrorCode(Ljava/lang/String;)V

    invoke-virtual {v12}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeLocalPart()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    const-string v13, "XTSE0550"

    invoke-virtual {v12, v13}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    :cond_d
    invoke-virtual {v12, v8}, Lnet/sf/saxon/trans/XPathException;->setIsStaticError(Z)V

    invoke-virtual {p0, v12}, Lnet/sf/saxon/style/StyleElement;->compileError(Lnet/sf/saxon/trans/XPathException;)V

    :cond_e
    :goto_1
    iget-object v12, p0, Lnet/sf/saxon/style/XSLTemplate;->w:Ljava/lang/String;

    if-eqz v12, :cond_11

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getObjectName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v12

    if-nez v12, :cond_f

    iget-object v12, p0, Lnet/sf/saxon/style/XSLTemplate;->w:Ljava/lang/String;

    invoke-virtual {p0, v12, v4, v10}, Lnet/sf/saxon/style/StyleElement;->makeQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v4

    invoke-virtual {p0, v4}, Lnet/sf/saxon/style/StyleElement;->setObjectName(Lnet/sf/saxon/om/StructuredQName;)V

    :cond_f
    iget-object v4, p0, Lnet/sf/saxon/style/XSLTemplate;->t0:Lnet/sf/saxon/expr/instruct/NamedTemplate;

    if-eqz v4, :cond_10

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getObjectName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v10

    invoke-virtual {v4, v10}, Lnet/sf/saxon/expr/instruct/NamedTemplate;->setTemplateName(Lnet/sf/saxon/om/StructuredQName;)V

    :cond_10
    iget-object v4, p0, Lnet/sf/saxon/style/XSLTemplate;->w:Ljava/lang/String;

    iput-object v4, p0, Lnet/sf/saxon/style/XSLTemplate;->O:Ljava/lang/String;

    :cond_11
    iget-object v4, p0, Lnet/sf/saxon/style/XSLTemplate;->x:Ljava/lang/String;

    if-eqz v4, :cond_12

    move v6, v8

    :cond_12
    iput-boolean v6, p0, Lnet/sf/saxon/style/XSLTemplate;->Z:Z

    if-eqz v6, :cond_15

    iget-object v4, p0, Lnet/sf/saxon/style/XSLTemplate;->u:Ljava/lang/String;

    if-nez v4, :cond_13

    const-string v4, "The priority attribute must be absent if the match attribute is absent"

    invoke-virtual {p0, v4, v5}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    const/16 v4, 0x29

    :try_start_1
    iget-object v6, p0, Lnet/sf/saxon/style/XSLTemplate;->x:Ljava/lang/String;

    invoke-static {v6}, Lnet/sf/saxon/value/BigDecimalValue;->castableAsDecimal(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_14

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, p0, Lnet/sf/saxon/style/XSLTemplate;->k0:D

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    iget-object v6, p0, Lnet/sf/saxon/style/XSLTemplate;->x:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    iput-wide v12, p0, Lnet/sf/saxon/style/XSLTemplate;->k0:D
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, p0, Lnet/sf/saxon/style/XSLTemplate;->k0:D

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    :goto_2
    iget-object v1, p0, Lnet/sf/saxon/style/XSLTemplate;->u:Ljava/lang/String;

    if-eqz v1, :cond_16

    invoke-virtual {p0, v1, v9}, Lnet/sf/saxon/style/StyleElement;->L(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/style/XSLTemplate;->Q:Lnet/sf/saxon/pattern/Pattern;

    iget-object v1, p0, Lnet/sf/saxon/style/XSLTemplate;->O:Ljava/lang/String;

    if-nez v1, :cond_16

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "match=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/sf/saxon/style/XSLTemplate;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/style/XSLTemplate;->O:Ljava/lang/String;

    iget-object v1, p0, Lnet/sf/saxon/style/XSLTemplate;->v:Ljava/lang/String;

    if-eqz v1, :cond_16

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lnet/sf/saxon/style/XSLTemplate;->O:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " mode=\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lnet/sf/saxon/style/XSLTemplate;->v:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/style/XSLTemplate;->O:Ljava/lang/String;

    :cond_16
    iget-object v1, p0, Lnet/sf/saxon/style/XSLTemplate;->Q:Lnet/sf/saxon/pattern/Pattern;

    if-nez v1, :cond_17

    iget-object v1, p0, Lnet/sf/saxon/style/XSLTemplate;->w:Ljava/lang/String;

    if-nez v1, :cond_17

    const-string v1, "xsl:template must have a name or match attribute (or both)"

    invoke-virtual {p0, v1, v5}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    iget-object v1, p0, Lnet/sf/saxon/style/XSLTemplate;->y:Ljava/lang/String;

    if-eqz v1, :cond_18

    :try_start_2
    invoke-virtual {p0, v1}, Lnet/sf/saxon/style/StyleElement;->makeSequenceType(Ljava/lang/String;)Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/style/XSLTemplate;->v0:Lnet/sf/saxon/value/SequenceType;

    iput-boolean v8, p0, Lnet/sf/saxon/style/XSLTemplate;->w0:Z
    :try_end_2
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1, v11}, Lnet/sf/saxon/style/StyleElement;->compileErrorInAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    :goto_3
    if-eqz v7, :cond_1c

    iput-boolean v8, p0, Lnet/sf/saxon/style/XSLTemplate;->w0:Z

    :try_start_3
    invoke-virtual {p0, v7}, Lnet/sf/saxon/style/StyleElement;->K(Ljava/lang/String;)Lnet/sf/saxon/value/SequenceType;

    move-result-object v1
    :try_end_3
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1, v0}, Lnet/sf/saxon/style/StyleElement;->compileErrorInAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lnet/sf/saxon/style/XSLTemplate;->v0:Lnet/sf/saxon/value/SequenceType;

    :goto_4
    iget-object v2, p0, Lnet/sf/saxon/style/XSLTemplate;->y:Ljava/lang/String;

    if-eqz v2, :cond_1b

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v2

    iget-object v4, p0, Lnet/sf/saxon/style/XSLTemplate;->v0:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v2, v1, v4}, Lnet/sf/saxon/type/TypeHierarchy;->sequenceTypeRelationship(Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/value/SequenceType;)Lnet/sf/saxon/type/Affinity;

    move-result-object v2

    sget-object v4, Lnet/sf/saxon/type/Affinity;->SAME_TYPE:Lnet/sf/saxon/type/Affinity;

    if-eq v2, v4, :cond_1a

    sget-object v4, Lnet/sf/saxon/type/Affinity;->SUBSUMED_BY:Lnet/sf/saxon/type/Affinity;

    if-ne v2, v4, :cond_19

    goto :goto_5

    :cond_19
    const-string v1, "When both are present, @saxon:as must be a subtype of @as"

    const-string v2, "SXER7TBA"

    invoke-virtual {p0, v1, v2, v0}, Lnet/sf/saxon/style/StyleElement;->compileErrorInAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_1a
    :goto_5
    iput-object v1, p0, Lnet/sf/saxon/style/XSLTemplate;->v0:Lnet/sf/saxon/value/SequenceType;

    goto :goto_6

    :cond_1b
    iput-object v1, p0, Lnet/sf/saxon/style/XSLTemplate;->v0:Lnet/sf/saxon/value/SequenceType;

    :cond_1c
    :goto_6
    iget-object v0, p0, Lnet/sf/saxon/style/XSLTemplate;->z:Ljava/lang/String;

    if-eqz v0, :cond_1e

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/style/StyleElement;->E(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/trans/Visibility;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLTemplate;->z0:Lnet/sf/saxon/trans/Visibility;

    iget-object v0, p0, Lnet/sf/saxon/style/XSLTemplate;->w:Ljava/lang/String;

    if-nez v0, :cond_1d

    const-string v0, "xsl:template/@visibility can be specified only if the template has a @name attribute"

    invoke-virtual {p0, v0, v3}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_1d
    iget-object v0, p0, Lnet/sf/saxon/style/XSLTemplate;->t0:Lnet/sf/saxon/expr/instruct/NamedTemplate;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getVisibility()Lnet/sf/saxon/trans/Visibility;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/expr/instruct/Actor;->setDeclaredVisibility(Lnet/sf/saxon/trans/Visibility;)V

    :cond_1e
    :goto_7
    return-void
.end method

.method public processAllAttributes()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getCompilation()Lnet/sf/saxon/style/Compilation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/XSLTemplate;->isDeferredCompilation(Lnet/sf/saxon/style/Compilation;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lnet/sf/saxon/style/StyleElement;->processAllAttributes()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->N()V

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->O()V

    new-instance v0, Lnet/sf/saxon/style/ExpressionContext;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/sf/saxon/style/ExpressionContext;-><init>(Lnet/sf/saxon/style/StyleElement;Lnet/sf/saxon/om/StructuredQName;)V

    iput-object v0, p0, Lnet/sf/saxon/style/StyleElement;->staticContext:Lnet/sf/saxon/style/ExpressionContext;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->processAttributes()V

    :goto_0
    return-void
.end method

.method public register(Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    move-object/from16 v1, p0

    iget-object v0, v1, Lnet/sf/saxon/style/XSLTemplate;->Q:Lnet/sf/saxon/pattern/Pattern;

    if-eqz v0, :cond_f

    invoke-virtual/range {p1 .. p1}, Lnet/sf/saxon/style/ComponentDeclaration;->getModule()Lnet/sf/saxon/style/StylesheetModule;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/style/StyleElement;->getCompilation()Lnet/sf/saxon/style/Compilation;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/style/Compilation;->getPrincipalStylesheetModule()Lnet/sf/saxon/style/PrincipalStylesheetModule;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getRuleManager()Lnet/sf/saxon/trans/rules/RuleManager;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/style/StyleElement;->getStaticContext()Lnet/sf/saxon/style/ExpressionContext;

    move-result-object v2

    invoke-static {v2}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->make(Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/expr/parser/ExpressionVisitor;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/style/XSLTemplate;->getModeNames()[Lnet/sf/saxon/om/StructuredQName;

    move-result-object v13

    array-length v14, v13

    const/4 v15, 0x0

    move v10, v15

    :goto_0
    if-ge v10, v14, :cond_f

    aget-object v2, v13, v10

    invoke-virtual {v11, v2, v15}, Lnet/sf/saxon/trans/rules/RuleManager;->obtainMode(Lnet/sf/saxon/om/StructuredQName;Z)Lnet/sf/saxon/trans/Mode;

    move-result-object v3

    const/4 v9, 0x1

    if-nez v3, :cond_1

    invoke-virtual {v11}, Lnet/sf/saxon/trans/rules/RuleManager;->existsOmniMode()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lnet/sf/saxon/trans/Mode;->OMNI_MODE:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {v11, v3, v9}, Lnet/sf/saxon/trans/rules/RuleManager;->obtainMode(Lnet/sf/saxon/om/StructuredQName;Z)Lnet/sf/saxon/trans/Mode;

    move-result-object v3

    invoke-virtual {v11, v2, v9}, Lnet/sf/saxon/trans/rules/RuleManager;->obtainMode(Lnet/sf/saxon/om/StructuredQName;Z)Lnet/sf/saxon/trans/Mode;

    move-result-object v4

    invoke-virtual {v3}, Lnet/sf/saxon/trans/Mode;->getActivePart()Lnet/sf/saxon/trans/SimpleMode;

    move-result-object v3

    invoke-virtual {v4}, Lnet/sf/saxon/trans/Mode;->getActivePart()Lnet/sf/saxon/trans/SimpleMode;

    move-result-object v5

    invoke-static {v3, v5}, Lnet/sf/saxon/trans/SimpleMode;->copyRules(Lnet/sf/saxon/trans/SimpleMode;Lnet/sf/saxon/trans/SimpleMode;)V

    move-object/from16 v16, v4

    goto :goto_2

    :cond_0
    invoke-virtual {v11, v2, v9}, Lnet/sf/saxon/trans/rules/RuleManager;->obtainMode(Lnet/sf/saxon/om/StructuredQName;Z)Lnet/sf/saxon/trans/Mode;

    move-result-object v3

    goto :goto_1

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/style/StyleElement;->getPrincipalStylesheetModule()Lnet/sf/saxon/style/PrincipalStylesheetModule;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->checkAcceptableModeForPackage(Lnet/sf/saxon/style/XSLTemplate;Lnet/sf/saxon/trans/Mode;)Z

    move-result v4

    if-nez v4, :cond_2

    return-void

    :cond_2
    :goto_1
    move-object/from16 v16, v3

    :goto_2
    iget-object v3, v1, Lnet/sf/saxon/style/XSLTemplate;->Q:Lnet/sf/saxon/pattern/Pattern;

    new-instance v4, Lnet/sf/saxon/expr/parser/RebindingMap;

    invoke-direct {v4}, Lnet/sf/saxon/expr/parser/RebindingMap;-><init>()V

    invoke-virtual {v3, v4}, Lnet/sf/saxon/pattern/Pattern;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Lnet/sf/saxon/trans/Mode;->getActivePart()Lnet/sf/saxon/trans/SimpleMode;

    move-result-object v4

    const-string v5, "typed"

    invoke-virtual {v4, v5}, Lnet/sf/saxon/trans/SimpleMode;->getPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "strict"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "lax"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_4

    :cond_3
    :goto_3
    move-object v7, v3

    goto :goto_5

    :cond_4
    :goto_4
    :try_start_0
    invoke-virtual {v3, v4}, Lnet/sf/saxon/pattern/Pattern;->convertToTypedPattern(Ljava/lang/String;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object v4
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v4, v3, :cond_5

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/style/StyleElement;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v3

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v5

    iget-boolean v6, v1, Lnet/sf/saxon/style/XSLTemplate;->B0:Z

    invoke-virtual {v3, v5, v6}, Lnet/sf/saxon/Configuration;->makeContextItemStaticInfo(Lnet/sf/saxon/type/ItemType;Z)Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    move-result-object v3

    iget-object v5, v1, Lnet/sf/saxon/style/XSLTemplate;->Q:Lnet/sf/saxon/pattern/Pattern;

    invoke-static {v5, v4}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    iget-object v5, v1, Lnet/sf/saxon/style/XSLTemplate;->Q:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {v5}, Lnet/sf/saxon/pattern/Pattern;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnet/sf/saxon/pattern/Pattern;->setOriginalText(Ljava/lang/String;)V

    invoke-virtual {v4, v12, v3}, Lnet/sf/saxon/pattern/Pattern;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object v4

    move-object v3, v4

    :cond_5
    iget-object v5, v1, Lnet/sf/saxon/style/XSLTemplate;->J:[Lnet/sf/saxon/om/StructuredQName;

    array-length v5, v5

    if-ne v5, v9, :cond_3

    iput-object v4, v1, Lnet/sf/saxon/style/XSLTemplate;->Q:Lnet/sf/saxon/pattern/Pattern;

    goto :goto_3

    :goto_5
    iget-object v3, v1, Lnet/sf/saxon/style/XSLTemplate;->u0:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/expr/instruct/TemplateRule;

    if-nez v3, :cond_6

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/style/StyleElement;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/Configuration;->makeTemplateRule()Lnet/sf/saxon/expr/instruct/TemplateRule;

    move-result-object v3

    iget-object v4, v1, Lnet/sf/saxon/style/XSLTemplate;->u0:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    move-object v8, v3

    iget-boolean v2, v1, Lnet/sf/saxon/style/XSLTemplate;->Z:Z

    if-eqz v2, :cond_7

    iget-wide v2, v1, Lnet/sf/saxon/style/XSLTemplate;->k0:D

    goto :goto_6

    :cond_7
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    :goto_6
    move-wide/from16 v17, v2

    invoke-virtual {v11}, Lnet/sf/saxon/trans/rules/RuleManager;->allocateSequenceNumber()I

    move-result v19

    const/16 v20, 0x0

    move-object v2, v11

    move-object v3, v7

    move-object v4, v8

    move-object/from16 v5, v16

    move-object v6, v0

    move-object/from16 p1, v7

    move-object v15, v8

    move-wide/from16 v7, v17

    move-object/from16 v22, v12

    move v12, v9

    move/from16 v9, v19

    move/from16 v19, v10

    move/from16 v10, v20

    invoke-virtual/range {v2 .. v10}, Lnet/sf/saxon/trans/rules/RuleManager;->registerRule(Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/expr/instruct/TemplateRule;Lnet/sf/saxon/trans/Mode;Lnet/sf/saxon/style/StylesheetModule;DII)I

    invoke-virtual/range {v16 .. v16}, Lnet/sf/saxon/trans/Mode;->isDeclaredStreamable()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v15, v12}, Lnet/sf/saxon/expr/instruct/TemplateRule;->setDeclaredStreamable(Z)V

    invoke-virtual/range {p1 .. p1}, Lnet/sf/saxon/pattern/Pattern;->isMotionless()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/style/StyleElement;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v2

    sget-object v3, Lnet/sf/saxon/lib/Feature;->STREAMING_FALLBACK:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {v2, v3}, Lnet/sf/saxon/Configuration;->getBooleanProperty(Lnet/sf/saxon/lib/Feature;)Z

    move-result v2

    const-string v3, "Template rule is declared streamable but the match pattern is not motionless"

    if-eqz v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n  * Falling back to non-streaming implementation"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/style/StyleElement;->getStaticContext()Lnet/sf/saxon/style/ExpressionContext;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lnet/sf/saxon/style/ExpressionContext;->issueWarning(Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    const/4 v10, 0x0

    invoke-virtual {v15, v10}, Lnet/sf/saxon/expr/instruct/TemplateRule;->setDeclaredStreamable(Z)V

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/style/StyleElement;->getCompilation()Lnet/sf/saxon/style/Compilation;

    move-result-object v2

    invoke-virtual {v2, v12}, Lnet/sf/saxon/style/Compilation;->setFallbackToNonStreaming(Z)V

    goto :goto_7

    :cond_8
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v2, "XTSE3430"

    invoke-direct {v0, v3, v2, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    throw v0

    :cond_9
    const/4 v10, 0x0

    :goto_7
    invoke-virtual/range {v16 .. v16}, Lnet/sf/saxon/trans/Mode;->getDefaultResultType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v2

    if-eqz v2, :cond_a

    iget-boolean v2, v1, Lnet/sf/saxon/style/XSLTemplate;->w0:Z

    if-nez v2, :cond_a

    invoke-virtual/range {v16 .. v16}, Lnet/sf/saxon/trans/Mode;->getDefaultResultType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v2

    invoke-virtual {v15, v2}, Lnet/sf/saxon/expr/instruct/TemplateRule;->setRequiredType(Lnet/sf/saxon/value/SequenceType;)V

    :cond_a
    invoke-virtual/range {v16 .. v16}, Lnet/sf/saxon/trans/Mode;->getModeName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v2

    sget-object v3, Lnet/sf/saxon/trans/Mode;->OMNI_MODE:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {v2, v3}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, v1, Lnet/sf/saxon/style/XSLTemplate;->u0:Ljava/util/Map;

    sget-object v3, Lnet/sf/saxon/trans/Mode;->UNNAMED_MODE_NAME:Lnet/sf/saxon/om/StructuredQName;

    invoke-interface {v2, v3, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11}, Lnet/sf/saxon/trans/rules/RuleManager;->getUnnamedMode()Lnet/sf/saxon/trans/SimpleMode;

    move-result-object v5

    invoke-virtual {v11}, Lnet/sf/saxon/trans/rules/RuleManager;->allocateSequenceNumber()I

    move-result v9

    const/16 v16, 0x0

    move-object v2, v11

    move-object/from16 v3, p1

    move-object v4, v15

    move-object v6, v0

    move-wide/from16 v7, v17

    move/from16 v20, v10

    move/from16 v10, v16

    invoke-virtual/range {v2 .. v10}, Lnet/sf/saxon/trans/rules/RuleManager;->registerRule(Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/expr/instruct/TemplateRule;Lnet/sf/saxon/trans/Mode;Lnet/sf/saxon/style/StylesheetModule;DII)I

    invoke-virtual {v11}, Lnet/sf/saxon/trans/rules/RuleManager;->getAllNamedModes()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_8
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lnet/sf/saxon/trans/Mode;

    instance-of v2, v5, Lnet/sf/saxon/trans/SimpleMode;

    if-eqz v2, :cond_c

    invoke-virtual {v15}, Lnet/sf/saxon/expr/instruct/TemplateRule;->copy()Lnet/sf/saxon/expr/instruct/TemplateRule;

    move-result-object v4

    invoke-virtual {v5}, Lnet/sf/saxon/trans/Mode;->isDeclaredStreamable()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v4, v12}, Lnet/sf/saxon/expr/instruct/TemplateRule;->setDeclaredStreamable(Z)V

    :cond_b
    iget-object v2, v1, Lnet/sf/saxon/style/XSLTemplate;->u0:Ljava/util/Map;

    invoke-virtual {v5}, Lnet/sf/saxon/trans/Mode;->getModeName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v3

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lnet/sf/saxon/expr/parser/RebindingMap;

    invoke-direct {v2}, Lnet/sf/saxon/expr/parser/RebindingMap;-><init>()V

    move-object/from16 v10, p1

    invoke-virtual {v10, v2}, Lnet/sf/saxon/pattern/Pattern;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object v3

    invoke-virtual {v11}, Lnet/sf/saxon/trans/rules/RuleManager;->allocateSequenceNumber()I

    move-result v9

    const/16 v21, 0x0

    move-object v2, v11

    move-object v6, v0

    move-wide/from16 v7, v17

    move-object/from16 v23, v10

    move/from16 v10, v21

    invoke-virtual/range {v2 .. v10}, Lnet/sf/saxon/trans/rules/RuleManager;->registerRule(Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/expr/instruct/TemplateRule;Lnet/sf/saxon/trans/Mode;Lnet/sf/saxon/style/StylesheetModule;DII)I

    goto :goto_9

    :cond_c
    move-object/from16 v23, p1

    :goto_9
    move-object/from16 p1, v23

    goto :goto_8

    :cond_d
    move/from16 v20, v10

    :cond_e
    add-int/lit8 v10, v19, 0x1

    move/from16 v15, v20

    move-object/from16 v12, v22

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2, v1}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    throw v2

    :cond_f
    return-void
.end method

.method public setCompilation(Lnet/sf/saxon/style/Compilation;)V
    .locals 0

    invoke-super {p0, p1}, Lnet/sf/saxon/style/StyleElement;->setCompilation(Lnet/sf/saxon/style/Compilation;)V

    return-void
.end method

.method public setContextItemRequirements(Lnet/sf/saxon/type/ItemType;ZZ)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/style/XSLTemplate;->A0:Lnet/sf/saxon/type/ItemType;

    iput-boolean p2, p0, Lnet/sf/saxon/style/XSLTemplate;->B0:Z

    iput-boolean p3, p0, Lnet/sf/saxon/style/XSLTemplate;->C0:Z

    return-void
.end method

.method public validate(Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->makeSlotManager()Lnet/sf/saxon/expr/instruct/SlotManager;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLTemplate;->q0:Lnet/sf/saxon/expr/instruct/SlotManager;

    const-string p1, "XTSE0010"

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->checkTopLevel(Ljava/lang/String;Z)V

    iget-object p1, p0, Lnet/sf/saxon/style/XSLTemplate;->Q:Lnet/sf/saxon/pattern/Pattern;

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    const-string v2, "match"

    invoke-virtual {p0, v2, p1}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/pattern/Pattern;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLTemplate;->Q:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {p1}, Lnet/sf/saxon/pattern/Pattern;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p1

    instance-of p1, p1, Lnet/sf/saxon/type/ErrorType;

    if-eqz p1, :cond_0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    const-string v2, "Pattern will never match anything"

    const-string v3, "SXWN9015"

    invoke-direct {p1, v2, v3, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/StyleElement;->issueWarning(Lnet/sf/saxon/trans/XPathException;)V

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getPrincipalStylesheetModule()Lnet/sf/saxon/style/PrincipalStylesheetModule;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->isDeclaredModes()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getPrincipalStylesheetModule()Lnet/sf/saxon/style/PrincipalStylesheetModule;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getRuleManager()Lnet/sf/saxon/trans/rules/RuleManager;

    move-result-object p1

    iget-object v2, p0, Lnet/sf/saxon/style/XSLTemplate;->J:[Lnet/sf/saxon/om/StructuredQName;

    const-string v3, "The unnamed mode has not been declared in an xsl:mode declaration"

    const-string v4, "XTSE3085"

    if-eqz v2, :cond_3

    array-length v5, v2

    move v6, v1

    :goto_0
    if-ge v6, v5, :cond_4

    aget-object v7, v2, v6

    sget-object v8, Lnet/sf/saxon/trans/Mode;->UNNAMED_MODE_NAME:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {v7, v8}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p1}, Lnet/sf/saxon/trans/rules/RuleManager;->isUnnamedModeExplicit()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {p0, v3, v4}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1, v7, v1}, Lnet/sf/saxon/trans/rules/RuleManager;->obtainMode(Lnet/sf/saxon/om/StructuredQName;Z)Lnet/sf/saxon/trans/Mode;

    move-result-object v8

    if-nez v8, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Mode name "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " has not been declared in an xsl:mode declaration"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7, v4}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lnet/sf/saxon/trans/rules/RuleManager;->isUnnamedModeExplicit()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0, v3, v4}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object p1, p0, Lnet/sf/saxon/style/XSLTemplate;->z0:Lnet/sf/saxon/trans/Visibility;

    sget-object v2, Lnet/sf/saxon/trans/Visibility;->ABSTRACT:Lnet/sf/saxon/trans/Visibility;

    if-ne p1, v2, :cond_5

    const-string p1, "An abstract template must have no match attribute"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;)V

    :cond_5
    new-instance p1, Lcom/sunia/HTREnginev2/w2n;

    const-class v2, Lnet/sf/saxon/style/StyleElement;

    invoke-direct {p1, v2}, Lcom/sunia/HTREnginev2/w2n;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, p1}, Lnet/sf/saxon/om/NodeInfo;->children(Lnet/sf/saxon/pattern/NodePredicate;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v2}, Lnet/sf/saxon/om/NodeInfo;->getFingerprint()I

    move-result v3

    const/16 v4, 0x91

    if-ne v3, v4, :cond_7

    goto :goto_1

    :cond_7
    instance-of v3, v2, Lnet/sf/saxon/style/XSLLocalParam;

    if-eqz v3, :cond_8

    check-cast v2, Lnet/sf/saxon/style/XSLLocalParam;

    invoke-virtual {v2}, Lnet/sf/saxon/style/XSLLocalParam;->isRequiredParam()Z

    move-result v2

    if-eqz v2, :cond_6

    iput-boolean v0, p0, Lnet/sf/saxon/style/XSLTemplate;->x0:Z

    goto :goto_1

    :cond_8
    move v1, v0

    goto :goto_1

    :cond_9
    iget-object p1, p0, Lnet/sf/saxon/style/XSLTemplate;->z0:Lnet/sf/saxon/trans/Visibility;

    sget-object v0, Lnet/sf/saxon/trans/Visibility;->ABSTRACT:Lnet/sf/saxon/trans/Visibility;

    if-ne p1, v0, :cond_a

    if-eqz v1, :cond_a

    const-string p1, "A template with visibility=\'abstract\' must have no body"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method public validateSubtree(Lnet/sf/saxon/style/ComponentDeclaration;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getCompilation()Lnet/sf/saxon/style/Compilation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/XSLTemplate;->isDeferredCompilation(Lnet/sf/saxon/style/Compilation;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lnet/sf/saxon/style/StyleElement;->validateSubtree(Lnet/sf/saxon/style/ComponentDeclaration;Z)V

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/XSLTemplate;->validate(Lnet/sf/saxon/style/ComponentDeclaration;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/StyleElement;->compileError(Lnet/sf/saxon/trans/XPathException;)V

    :goto_0
    return-void
.end method
