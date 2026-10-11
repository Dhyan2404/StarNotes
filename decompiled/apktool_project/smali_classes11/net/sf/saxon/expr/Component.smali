.class public Lnet/sf/saxon/expr/Component;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/expr/Component$M;
    }
.end annotation


# instance fields
.field public a:Lnet/sf/saxon/trans/Visibility;

.field protected actor:Lnet/sf/saxon/expr/instruct/Actor;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/ComponentBinding;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lnet/sf/saxon/style/StylesheetPackage;

.field public d:Lnet/sf/saxon/style/StylesheetPackage;

.field public e:Lnet/sf/saxon/trans/VisibilityProvenance;

.field public f:Lnet/sf/saxon/expr/Component;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/expr/Component;->b:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lnet/sf/saxon/expr/Component$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnet/sf/saxon/expr/Component;-><init>()V

    return-void
.end method

.method public static makeComponent(Lnet/sf/saxon/expr/instruct/Actor;Lnet/sf/saxon/trans/Visibility;Lnet/sf/saxon/trans/VisibilityProvenance;Lnet/sf/saxon/style/StylesheetPackage;Lnet/sf/saxon/style/StylesheetPackage;)Lnet/sf/saxon/expr/Component;
    .locals 1

    instance-of v0, p0, Lnet/sf/saxon/trans/Mode;

    if-eqz v0, :cond_0

    new-instance v0, Lnet/sf/saxon/expr/Component$M;

    invoke-direct {v0}, Lnet/sf/saxon/expr/Component$M;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/sf/saxon/expr/Component;

    invoke-direct {v0}, Lnet/sf/saxon/expr/Component;-><init>()V

    :goto_0
    iput-object p0, v0, Lnet/sf/saxon/expr/Component;->actor:Lnet/sf/saxon/expr/instruct/Actor;

    iput-object p1, v0, Lnet/sf/saxon/expr/Component;->a:Lnet/sf/saxon/trans/Visibility;

    iput-object p2, v0, Lnet/sf/saxon/expr/Component;->e:Lnet/sf/saxon/trans/VisibilityProvenance;

    iput-object p3, v0, Lnet/sf/saxon/expr/Component;->c:Lnet/sf/saxon/style/StylesheetPackage;

    iput-object p4, v0, Lnet/sf/saxon/expr/Component;->d:Lnet/sf/saxon/style/StylesheetPackage;

    return-object v0
.end method


# virtual methods
.method public final a(Lnet/sf/saxon/expr/Component;Ljava/util/Map;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/expr/Component;",
            "Ljava/util/Map<",
            "Lnet/sf/saxon/expr/Component;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/high16 p0, -0x80000000

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p0, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return v0
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;Ljava/util/Map;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/trace/ExpressionPresenter;",
            "Ljava/util/Map<",
            "Lnet/sf/saxon/expr/Component;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Lnet/sf/saxon/style/StylesheetPackage;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "co"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    invoke-virtual {p0, p0, p2}, Lnet/sf/saxon/expr/Component;->a(Lnet/sf/saxon/expr/Component;Ljava/util/Map;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnet/sf/saxon/expr/Component;->e:Lnet/sf/saxon/trans/VisibilityProvenance;

    sget-object v1, Lnet/sf/saxon/trans/VisibilityProvenance;->DEFAULTED:Lnet/sf/saxon/trans/VisibilityProvenance;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Component;->getVisibility()Lnet/sf/saxon/trans/Visibility;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "vis"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/Component;->listComponentReferences(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "binds"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnet/sf/saxon/expr/Component;->f:Lnet/sf/saxon/expr/Component;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/expr/Component;->f:Lnet/sf/saxon/expr/Component;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/expr/Component;->f:Lnet/sf/saxon/expr/Component;

    invoke-virtual {p0, v0, p2}, Lnet/sf/saxon/expr/Component;->a(Lnet/sf/saxon/expr/Component;Ljava/util/Map;)I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "base"

    invoke-virtual {p1, v0, p2}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lnet/sf/saxon/expr/Component;->d:Lnet/sf/saxon/style/StylesheetPackage;

    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "dpack"

    invoke-virtual {p1, p2, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/expr/Component;->actor:Lnet/sf/saxon/expr/instruct/Actor;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/instruct/Actor;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    :goto_0
    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public getActor()Lnet/sf/saxon/expr/instruct/Actor;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/Component;->actor:Lnet/sf/saxon/expr/instruct/Actor;

    return-object p0
.end method

.method public getBaseComponent()Lnet/sf/saxon/expr/Component;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/Component;->f:Lnet/sf/saxon/expr/Component;

    return-object p0
.end method

.method public getComponentBindings()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/ComponentBinding;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/expr/Component;->b:Ljava/util/List;

    return-object p0
.end method

.method public getComponentKind()I
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/expr/Component;->actor:Lnet/sf/saxon/expr/instruct/Actor;

    instance-of v0, p0, Lnet/sf/saxon/expr/instruct/NamedTemplate;

    if-eqz v0, :cond_0

    const/16 p0, 0xd2

    return p0

    :cond_0
    instance-of v0, p0, Lnet/sf/saxon/expr/instruct/GlobalVariable;

    if-eqz v0, :cond_1

    const/16 p0, 0xda

    return p0

    :cond_1
    instance-of v0, p0, Lnet/sf/saxon/om/Function;

    if-eqz v0, :cond_2

    const/16 p0, 0xa0

    return p0

    :cond_2
    instance-of v0, p0, Lnet/sf/saxon/expr/instruct/AttributeSet;

    if-eqz v0, :cond_3

    const/16 p0, 0x8a

    return p0

    :cond_3
    instance-of p0, p0, Lnet/sf/saxon/trans/Mode;

    if-eqz p0, :cond_4

    const/16 p0, 0xb4

    return p0

    :cond_4
    const/4 p0, -0x1

    return p0
.end method

.method public getContainingPackage()Lnet/sf/saxon/style/StylesheetPackage;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/Component;->c:Lnet/sf/saxon/style/StylesheetPackage;

    return-object p0
.end method

.method public getDeclaringPackage()Lnet/sf/saxon/style/StylesheetPackage;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/Component;->d:Lnet/sf/saxon/style/StylesheetPackage;

    return-object p0
.end method

.method public getVisibility()Lnet/sf/saxon/trans/Visibility;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/Component;->a:Lnet/sf/saxon/trans/Visibility;

    return-object p0
.end method

.method public getVisibilityProvenance()Lnet/sf/saxon/trans/VisibilityProvenance;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/Component;->e:Lnet/sf/saxon/trans/VisibilityProvenance;

    return-object p0
.end method

.method public isHiddenAbstractComponent()Z
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/expr/Component;->a:Lnet/sf/saxon/trans/Visibility;

    sget-object v1, Lnet/sf/saxon/trans/Visibility;->HIDDEN:Lnet/sf/saxon/trans/Visibility;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/expr/Component;->f:Lnet/sf/saxon/expr/Component;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Component;->getVisibility()Lnet/sf/saxon/trans/Visibility;

    move-result-object p0

    sget-object v0, Lnet/sf/saxon/trans/Visibility;->ABSTRACT:Lnet/sf/saxon/trans/Visibility;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public listComponentReferences(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lnet/sf/saxon/expr/Component;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Component;->getComponentBindings()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/ComponentBinding;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/ComponentBinding;->getTarget()Lnet/sf/saxon/expr/Component;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lnet/sf/saxon/expr/Component;->a(Lnet/sf/saxon/expr/Component;Ljava/util/Map;)I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setBaseComponent(Lnet/sf/saxon/expr/Component;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/Component;->f:Lnet/sf/saxon/expr/Component;

    return-void
.end method

.method public setComponentBindings(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/ComponentBinding;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sf/saxon/expr/Component;->b:Ljava/util/List;

    return-void
.end method

.method public setVisibility(Lnet/sf/saxon/trans/Visibility;Lnet/sf/saxon/trans/VisibilityProvenance;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/Component;->a:Lnet/sf/saxon/trans/Visibility;

    iput-object p2, p0, Lnet/sf/saxon/expr/Component;->e:Lnet/sf/saxon/trans/VisibilityProvenance;

    return-void
.end method
