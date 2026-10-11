.class public Lnet/sf/saxon/style/StylesheetPackage;
.super Lnet/sf/saxon/expr/PackageData;
.source "SourceFile"


# static fields
.field public static final F:Z


# instance fields
.field public A:I

.field public B:Z

.field public C:Z

.field public final D:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lnet/sf/saxon/trans/SymbolicName;",
            "Lnet/sf/saxon/expr/Component;",
            ">;"
        }
    .end annotation
.end field

.field public final E:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lnet/sf/saxon/trans/SymbolicName;",
            "Lnet/sf/saxon/expr/Component;",
            ">;"
        }
    .end annotation
.end field

.field protected defaultOutputProperties:Ljava/util/Properties;

.field protected globalContextRequirement:Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;

.field protected hiddenComponents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/Component;",
            ">;"
        }
    .end annotation
.end field

.field public k:Lnet/sf/saxon/style/PackageVersion;

.field public l:Ljava/lang/String;

.field public final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/style/StylesheetPackage;",
            ">;"
        }
    .end annotation
.end field

.field public n:Lnet/sf/saxon/trans/rules/RuleManager;

.field protected namedOutputProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/sf/saxon/om/StructuredQName;",
            "Ljava/util/Properties;",
            ">;"
        }
    .end annotation
.end field

.field public o:Lnet/sf/saxon/serialize/CharacterMapIndex;

.field protected overriddenComponents:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lnet/sf/saxon/trans/SymbolicName;",
            "Lnet/sf/saxon/expr/Component;",
            ">;"
        }
    .end annotation
.end field

.field public p:Z

.field public final q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/om/Action;",
            ">;"
        }
    .end annotation
.end field

.field public r:Z

.field public s:Z

.field protected schemaIndex:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected stripperRules:Lnet/sf/saxon/om/SpaceStrippingRule;

.field public t:Z

.field public u:Lnet/sf/saxon/om/StructuredQName;

.field public v:Z

.field public w:Lnet/sf/saxon/functions/FunctionLibraryList;

.field public x:Lnet/sf/saxon/query/XQueryFunctionLibrary;

.field public y:Lnet/sf/saxon/functions/ExecutableFunctionLibrary;

.field public z:Lnet/sf/saxon/functions/ExecutableFunctionLibrary;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/Configuration;)V
    .locals 3

    invoke-direct {p0, p1}, Lnet/sf/saxon/expr/PackageData;-><init>(Lnet/sf/saxon/Configuration;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/style/StylesheetPackage;->k:Lnet/sf/saxon/style/PackageVersion;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lnet/sf/saxon/style/StylesheetPackage;->m:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lnet/sf/saxon/style/StylesheetPackage;->q:Ljava/util/List;

    iput-object v0, p0, Lnet/sf/saxon/style/StylesheetPackage;->globalContextRequirement:Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/style/StylesheetPackage;->r:Z

    iput-boolean v0, p0, Lnet/sf/saxon/style/StylesheetPackage;->s:Z

    iput-boolean v0, p0, Lnet/sf/saxon/style/StylesheetPackage;->t:Z

    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lnet/sf/saxon/style/StylesheetPackage;->namedOutputProperties:Ljava/util/Map;

    new-instance v1, Ljava/util/HashSet;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Lnet/sf/saxon/style/StylesheetPackage;->schemaIndex:Ljava/util/Set;

    const/4 v1, -0x1

    iput v1, p0, Lnet/sf/saxon/style/StylesheetPackage;->A:I

    iput-boolean v0, p0, Lnet/sf/saxon/style/StylesheetPackage;->B:Z

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/style/StylesheetPackage;->D:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/style/StylesheetPackage;->hiddenComponents:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/style/StylesheetPackage;->overriddenComponents:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/style/StylesheetPackage;->E:Ljava/util/HashMap;

    sget-object v0, Lnet/sf/saxon/s9api/HostLanguage;->XSLT:Lnet/sf/saxon/s9api/HostLanguage;

    const/16 v1, 0x1e

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/expr/PackageData;->setHostLanguage(Lnet/sf/saxon/s9api/HostLanguage;I)V

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->makeAccumulatorRegistry()Lnet/sf/saxon/expr/accum/AccumulatorRegistry;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/PackageData;->setAccumulatorRegistry(Lnet/sf/saxon/expr/accum/AccumulatorRegistry;)V

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/style/StylesheetPackage;Lnet/sf/saxon/expr/Component;Ljava/util/Set;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lnet/sf/saxon/style/StylesheetPackage;->g(Lnet/sf/saxon/expr/Component;Ljava/util/Set;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic b(Lnet/sf/saxon/style/StylesheetPackage;Lnet/sf/saxon/expr/Component;Ljava/util/Set;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lnet/sf/saxon/style/StylesheetPackage;->e(Lnet/sf/saxon/expr/Component;Ljava/util/Set;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic c(Lnet/sf/saxon/style/StylesheetPackage;Lnet/sf/saxon/expr/Component;Ljava/util/Set;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lnet/sf/saxon/style/StylesheetPackage;->f(Lnet/sf/saxon/expr/Component;Ljava/util/Set;Ljava/util/Map;)V

    return-void
.end method

.method private synthetic e(Lnet/sf/saxon/expr/Component;Ljava/util/Set;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Doing mode completion for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/Actor;->getSymbolicName()Lnet/sf/saxon/trans/SymbolicName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/StylesheetPackage;->k(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Component;->getBaseComponent()Lnet/sf/saxon/expr/Component;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Component;->getComponentBindings()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Component;->getComponentBindings()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/ComponentBinding;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/ComponentBinding;->getSymbolicName()Lnet/sf/saxon/trans/SymbolicName;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v2}, Lnet/sf/saxon/style/StylesheetPackage;->getComponent(Lnet/sf/saxon/trans/SymbolicName;)Lnet/sf/saxon/expr/Component;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "We know there\'s an override for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", but we can\'t find it"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/expr/ComponentBinding;

    invoke-virtual {v3}, Lnet/sf/saxon/expr/ComponentBinding;->getTarget()Lnet/sf/saxon/expr/Component;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/expr/Component;

    if-eqz v3, :cond_2

    :goto_1
    new-instance v4, Lnet/sf/saxon/expr/ComponentBinding;

    invoke-direct {v4, v2, v3}, Lnet/sf/saxon/expr/ComponentBinding;-><init>(Lnet/sf/saxon/trans/SymbolicName;Lnet/sf/saxon/expr/Component;)V

    invoke-interface {p1, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Saxon can\'t find the new component corresponding to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_3
    return-void
.end method

.method private synthetic f(Lnet/sf/saxon/expr/Component;Ljava/util/Set;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Doing normal completion for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/Actor;->getSymbolicName()Lnet/sf/saxon/trans/SymbolicName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/StylesheetPackage;->k(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Component;->getBaseComponent()Lnet/sf/saxon/expr/Component;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Component;->getComponentBindings()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, p2, p3, v0, v1}, Lnet/sf/saxon/style/StylesheetPackage;->h(Ljava/util/Set;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p1, v1}, Lnet/sf/saxon/expr/Component;->setComponentBindings(Ljava/util/List;)V

    return-void
.end method

.method private synthetic g(Lnet/sf/saxon/expr/Component;Ljava/util/Set;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Component;->getBaseComponent()Lnet/sf/saxon/expr/Component;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Component;->getComponentBindings()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, p2, p3, v0, v1}, Lnet/sf/saxon/style/StylesheetPackage;->h(Ljava/util/Set;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p1, v1}, Lnet/sf/saxon/expr/Component;->setComponentBindings(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public addCompletionAction(Lnet/sf/saxon/om/Action;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/StylesheetPackage;->q:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addComponent(Lnet/sf/saxon/expr/Component;)V
    .locals 2

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/Actor;->getSymbolicName()Lnet/sf/saxon/trans/SymbolicName;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/style/StylesheetPackage;->D:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Component;->getVisibility()Lnet/sf/saxon/trans/Visibility;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/trans/Visibility;->ABSTRACT:Lnet/sf/saxon/trans/Visibility;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Component;->getContainingPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v0

    if-ne v0, p0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/style/StylesheetPackage;->E:Ljava/util/HashMap;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/Actor;->getSymbolicName()Lnet/sf/saxon/trans/SymbolicName;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public addComponentsFromUsedPackage(Lnet/sf/saxon/style/StylesheetPackage;Ljava/util/List;Ljava/util/Set;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/style/StylesheetPackage;",
            "Ljava/util/List<",
            "Lnet/sf/saxon/style/XSLAccept;",
            ">;",
            "Ljava/util/Set<",
            "Lnet/sf/saxon/trans/SymbolicName;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/style/StylesheetPackage;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "=== Adding components from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/style/StylesheetPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StylesheetPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/StylesheetPackage;->k(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p1, Lnet/sf/saxon/style/StylesheetPackage;->D:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/trans/SymbolicName;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/expr/Component;

    invoke-virtual {v4}, Lnet/sf/saxon/expr/Component;->getVisibility()Lnet/sf/saxon/trans/Visibility;

    move-result-object v5

    sget-object v6, Lnet/sf/saxon/trans/Visibility;->UNDEFINED:Lnet/sf/saxon/trans/Visibility;

    invoke-interface {p3, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v4}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object v7

    instance-of v7, v7, Lnet/sf/saxon/trans/Mode;

    if-nez v7, :cond_0

    sget-object v6, Lnet/sf/saxon/trans/Visibility;->HIDDEN:Lnet/sf/saxon/trans/Visibility;

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0, v3, p2}, Lnet/sf/saxon/style/StylesheetPackage;->d(Lnet/sf/saxon/trans/SymbolicName;Ljava/util/List;)Lnet/sf/saxon/trans/Visibility;

    move-result-object v7

    if-eq v7, v6, :cond_2

    invoke-static {v5, v7}, Lnet/sf/saxon/style/XSLAccept;->isCompatible(Lnet/sf/saxon/trans/Visibility;Lnet/sf/saxon/trans/Visibility;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot accept a "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lnet/sf/saxon/trans/Err;->describeVisibility(Lnet/sf/saxon/trans/Visibility;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " component ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ") from package "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/style/StylesheetPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " with visibility "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lnet/sf/saxon/trans/Err;->describeVisibility(Lnet/sf/saxon/trans/Visibility;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "XTSE3040"

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-virtual {p0, v3, p2}, Lnet/sf/saxon/style/StylesheetPackage;->l(Lnet/sf/saxon/trans/SymbolicName;Ljava/util/List;)Lnet/sf/saxon/trans/Visibility;

    move-result-object v7

    if-eq v7, v6, :cond_3

    invoke-static {v5, v7}, Lnet/sf/saxon/style/XSLAccept;->isCompatible(Lnet/sf/saxon/trans/Visibility;Lnet/sf/saxon/trans/Visibility;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_1

    :cond_3
    move-object v7, v6

    :goto_1
    if-ne v7, v6, :cond_6

    sget-object v6, Lnet/sf/saxon/trans/Visibility;->PUBLIC:Lnet/sf/saxon/trans/Visibility;

    if-eq v5, v6, :cond_5

    sget-object v6, Lnet/sf/saxon/trans/Visibility;->FINAL:Lnet/sf/saxon/trans/Visibility;

    if-ne v5, v6, :cond_4

    goto :goto_2

    :cond_4
    sget-object v6, Lnet/sf/saxon/trans/Visibility;->HIDDEN:Lnet/sf/saxon/trans/Visibility;

    goto :goto_3

    :cond_5
    :goto_2
    sget-object v6, Lnet/sf/saxon/trans/Visibility;->PRIVATE:Lnet/sf/saxon/trans/Visibility;

    goto :goto_3

    :cond_6
    move-object v6, v7

    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object v8

    invoke-virtual {v8}, Lnet/sf/saxon/expr/instruct/Actor;->getSymbolicName()Lnet/sf/saxon/trans/SymbolicName;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lnet/sf/saxon/trans/Err;->describeVisibility(Lnet/sf/saxon/trans/Visibility;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ") becomes "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lnet/sf/saxon/trans/Err;->describeVisibility(Lnet/sf/saxon/trans/Visibility;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lnet/sf/saxon/style/StylesheetPackage;->k(Ljava/lang/String;)V

    invoke-virtual {v4}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object v7

    sget-object v8, Lnet/sf/saxon/trans/VisibilityProvenance;->DERIVED:Lnet/sf/saxon/trans/VisibilityProvenance;

    invoke-virtual {v4}, Lnet/sf/saxon/expr/Component;->getDeclaringPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v9

    invoke-static {v7, v6, v8, p0, v9}, Lnet/sf/saxon/expr/Component;->makeComponent(Lnet/sf/saxon/expr/instruct/Actor;Lnet/sf/saxon/trans/Visibility;Lnet/sf/saxon/trans/VisibilityProvenance;Lnet/sf/saxon/style/StylesheetPackage;Lnet/sf/saxon/style/StylesheetPackage;)Lnet/sf/saxon/expr/Component;

    move-result-object v7

    invoke-interface {v0, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7, v4}, Lnet/sf/saxon/expr/Component;->setBaseComponent(Lnet/sf/saxon/expr/Component;)V

    invoke-interface {p3, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lnet/sf/saxon/style/StylesheetPackage;->overriddenComponents:Ljava/util/HashMap;

    invoke-virtual {v8, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lnet/sf/saxon/trans/Visibility;->ABSTRACT:Lnet/sf/saxon/trans/Visibility;

    if-eq v6, v8, :cond_7

    iget-object v6, p0, Lnet/sf/saxon/style/StylesheetPackage;->E:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-virtual {v7}, Lnet/sf/saxon/expr/Component;->getVisibility()Lnet/sf/saxon/trans/Visibility;

    move-result-object v6

    sget-object v8, Lnet/sf/saxon/trans/Visibility;->HIDDEN:Lnet/sf/saxon/trans/Visibility;

    if-ne v6, v8, :cond_8

    iget-object v2, p0, Lnet/sf/saxon/style/StylesheetPackage;->hiddenComponents:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_8
    iget-object v6, p0, Lnet/sf/saxon/style/StylesheetPackage;->D:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-string v8, "XTSE3050"

    const-string v9, "Duplicate "

    if-eqz v6, :cond_a

    invoke-virtual {v4}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object v5

    instance-of v5, v5, Lnet/sf/saxon/trans/Mode;

    if-eqz v5, :cond_9

    goto :goto_4

    :cond_9
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object p2

    invoke-direct {p0, p1, v8, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    throw p0

    :cond_a
    iget-object v6, p0, Lnet/sf/saxon/style/StylesheetPackage;->D:Ljava/util/HashMap;

    invoke-virtual {v6, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object v6

    instance-of v6, v6, Lnet/sf/saxon/trans/Mode;

    if-eqz v6, :cond_d

    sget-object v6, Lnet/sf/saxon/trans/Visibility;->PUBLIC:Lnet/sf/saxon/trans/Visibility;

    if-eq v5, v6, :cond_b

    sget-object v6, Lnet/sf/saxon/trans/Visibility;->FINAL:Lnet/sf/saxon/trans/Visibility;

    if-ne v5, v6, :cond_d

    :cond_b
    invoke-virtual {p0}, Lnet/sf/saxon/style/StylesheetPackage;->getRuleManager()Lnet/sf/saxon/trans/rules/RuleManager;

    move-result-object v5

    invoke-virtual {v3}, Lnet/sf/saxon/trans/SymbolicName;->getComponentName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v6

    const/4 v10, 0x0

    invoke-virtual {v5, v6, v10}, Lnet/sf/saxon/trans/rules/RuleManager;->obtainMode(Lnet/sf/saxon/om/StructuredQName;Z)Lnet/sf/saxon/trans/Mode;

    move-result-object v5

    if-nez v5, :cond_c

    goto :goto_4

    :cond_c
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object p2

    invoke-direct {p0, p1, v8, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    throw p0

    :cond_d
    :goto_4
    invoke-virtual {v7}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object v2

    instance-of v2, v2, Lnet/sf/saxon/trans/Mode;

    if-eqz v2, :cond_e

    invoke-interface {p3, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    new-instance v2, Lcom/sunia/HTREnginev2/i4n;

    invoke-direct {v2, p0, v7, p3, v0}, Lcom/sunia/HTREnginev2/i4n;-><init>(Lnet/sf/saxon/style/StylesheetPackage;Lnet/sf/saxon/expr/Component;Ljava/util/Set;Ljava/util/Map;)V

    invoke-virtual {p0, v2}, Lnet/sf/saxon/style/StylesheetPackage;->addCompletionAction(Lnet/sf/saxon/om/Action;)V

    goto/16 :goto_0

    :cond_e
    new-instance v2, Lcom/sunia/HTREnginev2/j4n;

    invoke-direct {v2, p0, v7, p3, v0}, Lcom/sunia/HTREnginev2/j4n;-><init>(Lnet/sf/saxon/style/StylesheetPackage;Lnet/sf/saxon/expr/Component;Ljava/util/Set;Ljava/util/Map;)V

    invoke-virtual {p0, v2}, Lnet/sf/saxon/style/StylesheetPackage;->addCompletionAction(Lnet/sf/saxon/om/Action;)V

    goto/16 :goto_0

    :cond_f
    iget-object p2, p1, Lnet/sf/saxon/style/StylesheetPackage;->hiddenComponents:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/Component;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/expr/instruct/Actor;->getSymbolicName()Lnet/sf/saxon/trans/SymbolicName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " (HIDDEN, declared in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Component;->getDeclaringPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/style/StylesheetPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") becomes HIDDEN"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/sf/saxon/style/StylesheetPackage;->k(Ljava/lang/String;)V

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object v2

    sget-object v3, Lnet/sf/saxon/trans/Visibility;->HIDDEN:Lnet/sf/saxon/trans/Visibility;

    sget-object v4, Lnet/sf/saxon/trans/VisibilityProvenance;->DERIVED:Lnet/sf/saxon/trans/VisibilityProvenance;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Component;->getDeclaringPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v5

    invoke-static {v2, v3, v4, p0, v5}, Lnet/sf/saxon/expr/Component;->makeComponent(Lnet/sf/saxon/expr/instruct/Actor;Lnet/sf/saxon/trans/Visibility;Lnet/sf/saxon/trans/VisibilityProvenance;Lnet/sf/saxon/style/StylesheetPackage;Lnet/sf/saxon/style/StylesheetPackage;)Lnet/sf/saxon/expr/Component;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v1}, Lnet/sf/saxon/expr/Component;->setBaseComponent(Lnet/sf/saxon/expr/Component;)V

    iget-object v1, p0, Lnet/sf/saxon/style/StylesheetPackage;->hiddenComponents:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/sunia/HTREnginev2/k4n;

    invoke-direct {v1, p0, v2, p3, v0}, Lcom/sunia/HTREnginev2/k4n;-><init>(Lnet/sf/saxon/style/StylesheetPackage;Lnet/sf/saxon/expr/Component;Ljava/util/Set;Ljava/util/Map;)V

    invoke-virtual {p0, v1}, Lnet/sf/saxon/style/StylesheetPackage;->addCompletionAction(Lnet/sf/saxon/om/Action;)V

    goto :goto_5

    :cond_10
    invoke-virtual {p1}, Lnet/sf/saxon/style/StylesheetPackage;->isCreatesSecondaryResultDocuments()Z

    move-result p1

    if-eqz p1, :cond_11

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/StylesheetPackage;->setCreatesSecondaryResultDocuments(Z)V

    :cond_11
    return-void
.end method

.method public addGlobalVariable(Lnet/sf/saxon/expr/instruct/GlobalVariable;)V
    .locals 2

    invoke-super {p0, p1}, Lnet/sf/saxon/expr/PackageData;->addGlobalVariable(Lnet/sf/saxon/expr/instruct/GlobalVariable;)V

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->getSymbolicName()Lnet/sf/saxon/trans/SymbolicName;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/style/StylesheetPackage;->D:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/Actor;->getDeclaringComponent()Lnet/sf/saxon/expr/Component;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lnet/sf/saxon/trans/Visibility;->PRIVATE:Lnet/sf/saxon/trans/Visibility;

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/expr/instruct/Actor;->makeDeclaringComponent(Lnet/sf/saxon/trans/Visibility;Lnet/sf/saxon/style/StylesheetPackage;)Lnet/sf/saxon/expr/Component;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/StylesheetPackage;->addComponent(Lnet/sf/saxon/expr/Component;)V

    :cond_1
    return-void
.end method

.method public addHiddenComponent(Lnet/sf/saxon/expr/Component;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/StylesheetPackage;->hiddenComponents:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addIxslFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibraryList;)V
    .locals 0

    return-void
.end method

.method public addOverriddenComponent(Lnet/sf/saxon/expr/Component;)V
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/style/StylesheetPackage;->overriddenComponents:Ljava/util/HashMap;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/Actor;->getSymbolicName()Lnet/sf/saxon/trans/SymbolicName;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addUsedPackage(Lnet/sf/saxon/style/StylesheetPackage;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/StylesheetPackage;->m:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public allocateBinderySlots()V
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/PackageData;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->makeSlotManager()Lnet/sf/saxon/expr/instruct/SlotManager;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/style/StylesheetPackage;->D:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/Component;

    invoke-virtual {p0, v2, v0}, Lnet/sf/saxon/style/StylesheetPackage;->j(Lnet/sf/saxon/expr/Component;Lnet/sf/saxon/expr/instruct/SlotManager;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lnet/sf/saxon/style/StylesheetPackage;->hiddenComponents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/Component;

    invoke-virtual {p0, v2, v0}, Lnet/sf/saxon/style/StylesheetPackage;->j(Lnet/sf/saxon/expr/Component;Lnet/sf/saxon/expr/instruct/SlotManager;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/PackageData;->setGlobalSlotManager(Lnet/sf/saxon/expr/instruct/SlotManager;)V

    return-void
.end method

.method public checkForAbstractComponents()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/style/StylesheetPackage;->D:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/Component;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Component;->getVisibility()Lnet/sf/saxon/trans/Visibility;

    move-result-object v2

    sget-object v3, Lnet/sf/saxon/trans/Visibility;->ABSTRACT:Lnet/sf/saxon/trans/Visibility;

    if-ne v2, v3, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/Component;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Component;->getContainingPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v2

    if-ne v2, p0, :cond_0

    iget-object v2, p0, Lnet/sf/saxon/style/StylesheetPackage;->E:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/style/StylesheetPackage;->E:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object p0, p0, Lnet/sf/saxon/style/StylesheetPackage;->E:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/trans/SymbolicName;

    add-int/lit8 v3, v1, 0x1

    if-lez v1, :cond_2

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v2}, Lnet/sf/saxon/trans/SymbolicName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/16 v2, 0x12c

    if-gt v1, v2, :cond_3

    move v1, v3

    goto :goto_1

    :cond_3
    const-string p0, " ..."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The package is not executable, because it contains abstract components: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XTSE3080"

    invoke-direct {p0, v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_5
    return-void
.end method

.method public complete()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/style/StylesheetPackage;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/Action;

    invoke-interface {v1}, Lnet/sf/saxon/om/Action;->doAction()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/style/StylesheetPackage;->allocateBinderySlots()V

    return-void
.end method

.method public contains(Lnet/sf/saxon/style/StylesheetPackage;)Z
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/style/StylesheetPackage;->m:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/style/StylesheetPackage;

    if-eq v0, p1, :cond_1

    invoke-virtual {v0, p1}, Lnet/sf/saxon/style/StylesheetPackage;->contains(Lnet/sf/saxon/style/StylesheetPackage;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public createFunctionLibrary()V
    .locals 5

    new-instance v0, Lnet/sf/saxon/functions/FunctionLibraryList;

    invoke-direct {v0}, Lnet/sf/saxon/functions/FunctionLibraryList;-><init>()V

    const-string v1, "HE"

    invoke-virtual {p0}, Lnet/sf/saxon/expr/PackageData;->getTargetEdition()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "JS"

    const/4 v4, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/PackageData;->getTargetEdition()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/sf/saxon/expr/PackageData;->config:Lnet/sf/saxon/Configuration;

    goto :goto_1

    :cond_1
    new-instance v1, Lnet/sf/saxon/Configuration;

    invoke-direct {v1}, Lnet/sf/saxon/Configuration;-><init>()V

    :goto_1
    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->getXSLT30FunctionSet()Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/functions/FunctionLibraryList;->addFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibrary;)I

    new-instance v1, Lnet/sf/saxon/style/StylesheetFunctionLibrary;

    invoke-direct {v1, p0, v2}, Lnet/sf/saxon/style/StylesheetFunctionLibrary;-><init>(Lnet/sf/saxon/style/StylesheetPackage;Z)V

    invoke-virtual {v0, v1}, Lnet/sf/saxon/functions/FunctionLibraryList;->addFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibrary;)I

    iget-object v1, p0, Lnet/sf/saxon/expr/PackageData;->config:Lnet/sf/saxon/Configuration;

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->getBuiltInExtensionLibraryList()Lnet/sf/saxon/functions/FunctionLibraryList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/functions/FunctionLibraryList;->addFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibrary;)I

    new-instance v1, Lnet/sf/saxon/functions/registry/ConstructorFunctionLibrary;

    iget-object v2, p0, Lnet/sf/saxon/expr/PackageData;->config:Lnet/sf/saxon/Configuration;

    invoke-direct {v1, v2}, Lnet/sf/saxon/functions/registry/ConstructorFunctionLibrary;-><init>(Lnet/sf/saxon/Configuration;)V

    invoke-virtual {v0, v1}, Lnet/sf/saxon/functions/FunctionLibraryList;->addFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibrary;)I

    invoke-virtual {p0}, Lnet/sf/saxon/expr/PackageData;->getTargetEdition()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/StylesheetPackage;->addIxslFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibraryList;)V

    :cond_2
    new-instance v1, Lnet/sf/saxon/query/XQueryFunctionLibrary;

    iget-object v2, p0, Lnet/sf/saxon/expr/PackageData;->config:Lnet/sf/saxon/Configuration;

    invoke-direct {v1, v2}, Lnet/sf/saxon/query/XQueryFunctionLibrary;-><init>(Lnet/sf/saxon/Configuration;)V

    iput-object v1, p0, Lnet/sf/saxon/style/StylesheetPackage;->x:Lnet/sf/saxon/query/XQueryFunctionLibrary;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/functions/FunctionLibraryList;->addFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibrary;)I

    iget-object v1, p0, Lnet/sf/saxon/expr/PackageData;->config:Lnet/sf/saxon/Configuration;

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->getIntegratedFunctionLibrary()Lnet/sf/saxon/functions/IntegratedFunctionLibrary;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/functions/FunctionLibraryList;->addFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibrary;)I

    iget-object v1, p0, Lnet/sf/saxon/expr/PackageData;->config:Lnet/sf/saxon/Configuration;

    invoke-virtual {v1, v0}, Lnet/sf/saxon/Configuration;->addExtensionBinders(Lnet/sf/saxon/functions/FunctionLibraryList;)V

    new-instance v1, Lnet/sf/saxon/style/StylesheetFunctionLibrary;

    invoke-direct {v1, p0, v4}, Lnet/sf/saxon/style/StylesheetFunctionLibrary;-><init>(Lnet/sf/saxon/style/StylesheetPackage;Z)V

    invoke-virtual {v0, v1}, Lnet/sf/saxon/functions/FunctionLibraryList;->addFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibrary;)I

    iput-object v0, p0, Lnet/sf/saxon/style/StylesheetPackage;->w:Lnet/sf/saxon/functions/FunctionLibraryList;

    return-void
.end method

.method public final d(Lnet/sf/saxon/trans/SymbolicName;Ljava/util/List;)Lnet/sf/saxon/trans/Visibility;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/trans/SymbolicName;",
            "Ljava/util/List<",
            "Lnet/sf/saxon/style/XSLAccept;",
            ">;)",
            "Lnet/sf/saxon/trans/Visibility;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/style/XSLAccept;

    invoke-virtual {p2}, Lnet/sf/saxon/style/XSLAcceptExpose;->getExplicitComponentTests()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/trans/ComponentTest;

    invoke-virtual {v1, p1}, Lnet/sf/saxon/trans/ComponentTest;->matches(Lnet/sf/saxon/trans/SymbolicName;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lnet/sf/saxon/style/XSLAcceptExpose;->getVisibility()Lnet/sf/saxon/trans/Visibility;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object p0, Lnet/sf/saxon/trans/Visibility;->UNDEFINED:Lnet/sf/saxon/trans/Visibility;

    return-object p0
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Exporting a stylesheet requires Saxon-EE"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAbstractComponents()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lnet/sf/saxon/trans/SymbolicName;",
            "Lnet/sf/saxon/expr/Component;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/style/StylesheetPackage;->E:Ljava/util/HashMap;

    return-object p0
.end method

.method public getCharacterMapIndex()Lnet/sf/saxon/serialize/CharacterMapIndex;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/StylesheetPackage;->o:Lnet/sf/saxon/serialize/CharacterMapIndex;

    return-object p0
.end method

.method public getComponent(Lnet/sf/saxon/trans/SymbolicName;)Lnet/sf/saxon/expr/Component;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/StylesheetPackage;->D:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/Component;

    return-object p0
.end method

.method public getComponentIndex()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lnet/sf/saxon/trans/SymbolicName;",
            "Lnet/sf/saxon/expr/Component;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/style/StylesheetPackage;->D:Ljava/util/HashMap;

    return-object p0
.end method

.method public getContextItemRequirements()Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/StylesheetPackage;->globalContextRequirement:Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;

    return-object p0
.end method

.method public getDefaultMode()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/StylesheetPackage;->u:Lnet/sf/saxon/om/StructuredQName;

    return-object p0
.end method

.method public getFunction(Lnet/sf/saxon/trans/SymbolicName$F;)Lnet/sf/saxon/expr/instruct/UserFunction;
    .locals 4

    invoke-virtual {p1}, Lnet/sf/saxon/trans/SymbolicName$F;->getArity()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x14

    if-ge v0, v1, :cond_1

    new-instance v1, Lnet/sf/saxon/trans/SymbolicName$F;

    invoke-virtual {p1}, Lnet/sf/saxon/trans/SymbolicName;->getComponentName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lnet/sf/saxon/trans/SymbolicName$F;-><init>(Lnet/sf/saxon/om/StructuredQName;I)V

    invoke-virtual {p0, v1}, Lnet/sf/saxon/style/StylesheetPackage;->getFunction(Lnet/sf/saxon/trans/SymbolicName$F;)Lnet/sf/saxon/expr/instruct/UserFunction;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/UserFunction;->incrementReferenceCount()V

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v2

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/style/StylesheetPackage;->getComponentIndex()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/Component;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/UserFunction;->incrementReferenceCount()V

    return-object p0

    :cond_3
    return-object v2
.end method

.method public getFunctionLibrary()Lnet/sf/saxon/functions/FunctionLibraryList;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/StylesheetPackage;->w:Lnet/sf/saxon/functions/FunctionLibraryList;

    return-object p0
.end method

.method public getMaxFunctionArity()I
    .locals 4

    iget v0, p0, Lnet/sf/saxon/style/StylesheetPackage;->A:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/style/StylesheetPackage;->D:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/Component;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object v2

    instance-of v2, v2, Lnet/sf/saxon/expr/instruct/UserFunction;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/instruct/UserFunction;->getArity()I

    move-result v2

    iget v3, p0, Lnet/sf/saxon/style/StylesheetPackage;->A:I

    if-le v2, v3, :cond_0

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/UserFunction;->getArity()I

    move-result v1

    iput v1, p0, Lnet/sf/saxon/style/StylesheetPackage;->A:I

    goto :goto_0

    :cond_1
    iget p0, p0, Lnet/sf/saxon/style/StylesheetPackage;->A:I

    return p0
.end method

.method public getNamedOutputProperties(Lnet/sf/saxon/om/StructuredQName;)Ljava/util/Properties;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/StylesheetPackage;->namedOutputProperties:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Properties;

    return-object p0
.end method

.method public getOverriddenComponent(Lnet/sf/saxon/trans/SymbolicName;)Lnet/sf/saxon/expr/Component;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/StylesheetPackage;->overriddenComponents:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/Component;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/StylesheetPackage;->l:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageVersion()Lnet/sf/saxon/style/PackageVersion;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/StylesheetPackage;->k:Lnet/sf/saxon/style/PackageVersion;

    return-object p0
.end method

.method public getPublicFunctions()Lnet/sf/saxon/functions/FunctionLibrary;
    .locals 1

    new-instance v0, Lnet/sf/saxon/style/PublicStylesheetFunctionLibrary;

    iget-object p0, p0, Lnet/sf/saxon/style/StylesheetPackage;->w:Lnet/sf/saxon/functions/FunctionLibraryList;

    invoke-direct {v0, p0}, Lnet/sf/saxon/style/PublicStylesheetFunctionLibrary;-><init>(Lnet/sf/saxon/functions/FunctionLibrary;)V

    return-object v0
.end method

.method public getRuleManager()Lnet/sf/saxon/trans/rules/RuleManager;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/StylesheetPackage;->n:Lnet/sf/saxon/trans/rules/RuleManager;

    return-object p0
.end method

.method public getSchemaNamespaces()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/style/StylesheetPackage;->schemaIndex:Ljava/util/Set;

    return-object p0
.end method

.method public getSpaceStrippingRule()Lnet/sf/saxon/om/SpaceStrippingRule;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/StylesheetPackage;->stripperRules:Lnet/sf/saxon/om/SpaceStrippingRule;

    return-object p0
.end method

.method public getStripperRules()Lnet/sf/saxon/om/SpaceStrippingRule;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/StylesheetPackage;->stripperRules:Lnet/sf/saxon/om/SpaceStrippingRule;

    return-object p0
.end method

.method public getUsedPackages()Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lnet/sf/saxon/style/StylesheetPackage;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/style/StylesheetPackage;->m:Ljava/util/List;

    return-object p0
.end method

.method public getXQueryFunctionLibrary()Lnet/sf/saxon/query/XQueryFunctionLibrary;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/StylesheetPackage;->x:Lnet/sf/saxon/query/XQueryFunctionLibrary;

    return-object p0
.end method

.method public final h(Ljava/util/Set;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lnet/sf/saxon/trans/SymbolicName;",
            ">;",
            "Ljava/util/Map<",
            "Lnet/sf/saxon/expr/Component;",
            "Lnet/sf/saxon/expr/Component;",
            ">;",
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/ComponentBinding;",
            ">;",
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/ComponentBinding;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/ComponentBinding;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/ComponentBinding;->getSymbolicName()Lnet/sf/saxon/trans/SymbolicName;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Lnet/sf/saxon/style/StylesheetPackage;->getComponent(Lnet/sf/saxon/trans/SymbolicName;)Lnet/sf/saxon/expr/Component;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "We know there\'s an override for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", but we can\'t find it"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_1
    invoke-virtual {v0}, Lnet/sf/saxon/expr/ComponentBinding;->getTarget()Lnet/sf/saxon/expr/Component;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/Component;

    if-eqz v0, :cond_2

    :goto_1
    new-instance v2, Lnet/sf/saxon/expr/ComponentBinding;

    invoke-direct {v2, v1, v0}, Lnet/sf/saxon/expr/ComponentBinding;-><init>(Lnet/sf/saxon/trans/SymbolicName;Lnet/sf/saxon/expr/Component;)V

    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Saxon can\'t find the new component corresponding to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_3
    return-void
.end method

.method public final i()Z
    .locals 2

    iget-boolean v0, p0, Lnet/sf/saxon/style/StylesheetPackage;->p:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/style/StylesheetPackage;->m:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/style/StylesheetPackage;

    invoke-virtual {v0}, Lnet/sf/saxon/style/StylesheetPackage;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public isCreatesSecondaryResultDocuments()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/style/StylesheetPackage;->p:Z

    return p0
.end method

.method public isDeclaredModes()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/style/StylesheetPackage;->v:Z

    return p0
.end method

.method public isFallbackToNonStreaming()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isImplicitPackage()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/style/StylesheetPackage;->C:Z

    return p0
.end method

.method public isJustInTimeCompilation()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isRetainUnusedFunctions()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/style/StylesheetPackage;->B:Z

    return p0
.end method

.method public isStripsTypeAnnotations()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/style/StylesheetPackage;->t:Z

    return p0
.end method

.method public isStripsWhitespace()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/style/StylesheetPackage;->s:Z

    return p0
.end method

.method public final j(Lnet/sf/saxon/expr/Component;Lnet/sf/saxon/expr/instruct/SlotManager;)V
    .locals 1

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/expr/instruct/GlobalVariable;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/expr/instruct/GlobalVariable;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {p2, v0}, Lnet/sf/saxon/expr/instruct/SlotManager;->allocateSlotNumber(Lnet/sf/saxon/om/StructuredQName;)I

    move-result p2

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/instruct/Actor;->setPackageData(Lnet/sf/saxon/expr/PackageData;)V

    invoke-virtual {p1, p2}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->setBinderySlotNumber(I)V

    :cond_0
    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final l(Lnet/sf/saxon/trans/SymbolicName;Ljava/util/List;)Lnet/sf/saxon/trans/Visibility;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/trans/SymbolicName;",
            "Ljava/util/List<",
            "Lnet/sf/saxon/style/XSLAccept;",
            ">;)",
            "Lnet/sf/saxon/trans/Visibility;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    sget-object p0, Lnet/sf/saxon/trans/Visibility;->UNDEFINED:Lnet/sf/saxon/trans/Visibility;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/style/XSLAccept;

    invoke-virtual {v1}, Lnet/sf/saxon/style/XSLAcceptExpose;->getWildcardComponentTests()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/trans/ComponentTest;

    invoke-virtual {v3}, Lnet/sf/saxon/trans/ComponentTest;->getQNameTest()Lnet/sf/saxon/pattern/QNameTest;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {v4}, Lnet/sf/saxon/pattern/NodeTest;->getDefaultPriority()D

    move-result-wide v4

    const-wide/high16 v6, -0x4030000000000000L    # -0.25

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    invoke-virtual {v3, p1}, Lnet/sf/saxon/trans/ComponentTest;->matches(Lnet/sf/saxon/trans/SymbolicName;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lnet/sf/saxon/style/XSLAcceptExpose;->getVisibility()Lnet/sf/saxon/trans/Visibility;

    move-result-object p0

    goto :goto_0

    :cond_2
    sget-object v0, Lnet/sf/saxon/trans/Visibility;->UNDEFINED:Lnet/sf/saxon/trans/Visibility;

    if-eq p0, v0, :cond_3

    return-object p0

    :cond_3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/style/XSLAccept;

    invoke-virtual {v0}, Lnet/sf/saxon/style/XSLAcceptExpose;->getWildcardComponentTests()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/trans/ComponentTest;

    invoke-virtual {v2, p1}, Lnet/sf/saxon/trans/ComponentTest;->matches(Lnet/sf/saxon/trans/SymbolicName;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lnet/sf/saxon/style/XSLAcceptExpose;->getVisibility()Lnet/sf/saxon/trans/Visibility;

    move-result-object p0

    goto :goto_1

    :cond_6
    return-object p0
.end method

.method public markNonExportable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setCharacterMapIndex(Lnet/sf/saxon/serialize/CharacterMapIndex;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/style/StylesheetPackage;->o:Lnet/sf/saxon/serialize/CharacterMapIndex;

    return-void
.end method

.method public setContextItemRequirements(Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/style/StylesheetPackage;->r:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;->isAbsentFocus()Z

    move-result v0

    const-string v1, "XTSE3087"

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/style/StylesheetPackage;->globalContextRequirement:Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;->isAbsentFocus()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;->isMayBeOmitted()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/sf/saxon/style/StylesheetPackage;->globalContextRequirement:Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;->isMayBeOmitted()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "The package contains two xsl:global-context-item declarations with conflicting @use attributes"

    invoke-direct {p0, p1, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/PackageData;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;->getRequiredItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v2

    iget-object v3, p0, Lnet/sf/saxon/style/StylesheetPackage;->globalContextRequirement:Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;

    invoke-virtual {v3}, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;->getRequiredItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object v0

    sget-object v2, Lnet/sf/saxon/type/Affinity;->SAME_TYPE:Lnet/sf/saxon/type/Affinity;

    if-ne v0, v2, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "The package contains two xsl:global-context-item declarations with conflicting item types"

    invoke-direct {p0, p1, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/style/StylesheetPackage;->r:Z

    iput-object p1, p0, Lnet/sf/saxon/style/StylesheetPackage;->globalContextRequirement:Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;

    return-void
.end method

.method public setCreatesSecondaryResultDocuments(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/style/StylesheetPackage;->p:Z

    return-void
.end method

.method public setDeclaredModes(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/style/StylesheetPackage;->v:Z

    return-void
.end method

.method public setDefaultMode(Lnet/sf/saxon/om/StructuredQName;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/style/StylesheetPackage;->u:Lnet/sf/saxon/om/StructuredQName;

    return-void
.end method

.method public setDefaultOutputProperties(Ljava/util/Properties;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/style/StylesheetPackage;->defaultOutputProperties:Ljava/util/Properties;

    return-void
.end method

.method public setFallbackToNonStreaming()V
    .locals 0

    return-void
.end method

.method public setFunctionLibraryDetails(Lnet/sf/saxon/functions/FunctionLibraryList;Lnet/sf/saxon/functions/ExecutableFunctionLibrary;Lnet/sf/saxon/functions/ExecutableFunctionLibrary;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lnet/sf/saxon/style/StylesheetPackage;->w:Lnet/sf/saxon/functions/FunctionLibraryList;

    :cond_0
    iput-object p2, p0, Lnet/sf/saxon/style/StylesheetPackage;->y:Lnet/sf/saxon/functions/ExecutableFunctionLibrary;

    iput-object p3, p0, Lnet/sf/saxon/style/StylesheetPackage;->z:Lnet/sf/saxon/functions/ExecutableFunctionLibrary;

    return-void
.end method

.method public setImplicitPackage(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/style/StylesheetPackage;->C:Z

    return-void
.end method

.method public setJustInTimeCompilation(Z)V
    .locals 0

    return-void
.end method

.method public setLanguageVersion(I)V
    .locals 0

    iput p1, p0, Lnet/sf/saxon/expr/PackageData;->hostLanguageVersion:I

    return-void
.end method

.method public setNamedOutputProperties(Lnet/sf/saxon/om/StructuredQName;Ljava/util/Properties;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/StylesheetPackage;->namedOutputProperties:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/style/StylesheetPackage;->l:Ljava/lang/String;

    return-void
.end method

.method public setPackageVersion(Lnet/sf/saxon/style/PackageVersion;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/style/StylesheetPackage;->k:Lnet/sf/saxon/style/PackageVersion;

    return-void
.end method

.method public setRetainUnusedFunctions()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/style/StylesheetPackage;->B:Z

    return-void
.end method

.method public setRuleManager(Lnet/sf/saxon/trans/rules/RuleManager;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/style/StylesheetPackage;->n:Lnet/sf/saxon/trans/rules/RuleManager;

    return-void
.end method

.method public setStripperRules(Lnet/sf/saxon/om/SpaceStrippingRule;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/style/StylesheetPackage;->stripperRules:Lnet/sf/saxon/om/SpaceStrippingRule;

    return-void
.end method

.method public setStripsTypeAnnotations(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/style/StylesheetPackage;->t:Z

    return-void
.end method

.method public setStripsWhitespace(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/style/StylesheetPackage;->s:Z

    return-void
.end method

.method public updatePreparedStylesheet(Lnet/sf/saxon/PreparedStylesheet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/style/StylesheetPackage;->D:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/Component;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Component;->getVisibility()Lnet/sf/saxon/trans/Visibility;

    move-result-object v2

    sget-object v3, Lnet/sf/saxon/trans/Visibility;->ABSTRACT:Lnet/sf/saxon/trans/Visibility;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lnet/sf/saxon/style/StylesheetPackage;->E:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/instruct/Executable;->setTopLevelPackage(Lnet/sf/saxon/expr/PackageData;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/PackageData;->isSchemaAware()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lnet/sf/saxon/style/StylesheetPackage;->schemaIndex:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lnet/sf/saxon/expr/instruct/Executable;->setSchemaAware(Z)V

    :cond_3
    sget-object v0, Lnet/sf/saxon/s9api/HostLanguage;->XSLT:Lnet/sf/saxon/s9api/HostLanguage;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/expr/instruct/Executable;->setHostLanguage(Lnet/sf/saxon/s9api/HostLanguage;)V

    new-instance v0, Lnet/sf/saxon/functions/FunctionLibraryList;

    invoke-direct {v0}, Lnet/sf/saxon/functions/FunctionLibraryList;-><init>()V

    iget-object v1, p0, Lnet/sf/saxon/style/StylesheetPackage;->w:Lnet/sf/saxon/functions/FunctionLibraryList;

    invoke-virtual {v1}, Lnet/sf/saxon/functions/FunctionLibraryList;->getLibraryList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/functions/FunctionLibrary;

    instance-of v3, v2, Lnet/sf/saxon/style/StylesheetFunctionLibrary;

    if-eqz v3, :cond_5

    check-cast v2, Lnet/sf/saxon/style/StylesheetFunctionLibrary;

    invoke-virtual {v2}, Lnet/sf/saxon/style/StylesheetFunctionLibrary;->isOverrideExtensionFunction()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lnet/sf/saxon/style/StylesheetPackage;->y:Lnet/sf/saxon/functions/ExecutableFunctionLibrary;

    invoke-virtual {v0, v2}, Lnet/sf/saxon/functions/FunctionLibraryList;->addFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibrary;)I

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lnet/sf/saxon/style/StylesheetPackage;->z:Lnet/sf/saxon/functions/ExecutableFunctionLibrary;

    invoke-virtual {v0, v2}, Lnet/sf/saxon/functions/FunctionLibraryList;->addFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibrary;)I

    goto :goto_1

    :cond_5
    invoke-virtual {v0, v2}, Lnet/sf/saxon/functions/FunctionLibraryList;->addFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibrary;)I

    goto :goto_1

    :cond_6
    invoke-virtual {p1, v0}, Lnet/sf/saxon/expr/instruct/Executable;->setFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibraryList;)V

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/Executable;->createsSecondaryResult()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lnet/sf/saxon/style/StylesheetPackage;->i()Z

    move-result v0

    invoke-virtual {p1, v0}, Lnet/sf/saxon/expr/instruct/Executable;->setCreatesSecondaryResult(Z)V

    :cond_7
    iget-object v0, p0, Lnet/sf/saxon/style/StylesheetPackage;->defaultOutputProperties:Ljava/util/Properties;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/expr/instruct/Executable;->setDefaultOutputProperties(Ljava/util/Properties;)V

    iget-object v0, p0, Lnet/sf/saxon/style/StylesheetPackage;->namedOutputProperties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/om/StructuredQName;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Properties;

    invoke-virtual {p1, v2, v1}, Lnet/sf/saxon/expr/instruct/Executable;->setOutputProperties(Lnet/sf/saxon/om/StructuredQName;Ljava/util/Properties;)V

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lnet/sf/saxon/style/StylesheetPackage;->o:Lnet/sf/saxon/serialize/CharacterMapIndex;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lnet/sf/saxon/serialize/CharacterMapIndex;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/serialize/CharacterMap;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/Executable;->getCharacterMapIndex()Lnet/sf/saxon/serialize/CharacterMapIndex;

    move-result-object v2

    invoke-virtual {v1}, Lnet/sf/saxon/serialize/CharacterMap;->getName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lnet/sf/saxon/serialize/CharacterMapIndex;->putCharacterMap(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/serialize/CharacterMap;)V

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lnet/sf/saxon/style/StylesheetPackage;->n:Lnet/sf/saxon/trans/rules/RuleManager;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/PreparedStylesheet;->setRuleManager(Lnet/sf/saxon/trans/rules/RuleManager;)V

    iget-object v0, p0, Lnet/sf/saxon/style/StylesheetPackage;->D:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/Component;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object v2

    instance-of v2, v2, Lnet/sf/saxon/expr/instruct/NamedTemplate;

    if-eqz v2, :cond_a

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/instruct/NamedTemplate;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/NamedTemplate;->getTemplateName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Lnet/sf/saxon/PreparedStylesheet;->putNamedTemplate(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/expr/instruct/NamedTemplate;)V

    goto :goto_4

    :cond_b
    iget-object v0, p0, Lnet/sf/saxon/style/StylesheetPackage;->D:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/PreparedStylesheet;->setComponentIndex(Ljava/util/Map;)V

    iget-object v0, p0, Lnet/sf/saxon/style/StylesheetPackage;->D:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/Component;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object v2

    instance-of v2, v2, Lnet/sf/saxon/expr/instruct/GlobalParam;

    if-eqz v2, :cond_c

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/instruct/GlobalParam;

    invoke-virtual {p1, v1}, Lnet/sf/saxon/expr/instruct/Executable;->registerGlobalParameter(Lnet/sf/saxon/expr/instruct/GlobalParam;)V

    goto :goto_5

    :cond_d
    iget-object p0, p0, Lnet/sf/saxon/style/StylesheetPackage;->globalContextRequirement:Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;

    if-eqz p0, :cond_e

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/instruct/Executable;->setGlobalContextRequirement(Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;)V

    :cond_e
    return-void
.end method
