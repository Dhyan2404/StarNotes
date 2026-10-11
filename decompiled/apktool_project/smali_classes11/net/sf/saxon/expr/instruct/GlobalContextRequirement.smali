.class public Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/type/ItemType;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lnet/sf/saxon/expr/Expression;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;->a:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;->d:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;->e:Lnet/sf/saxon/expr/Expression;

    return-void
.end method


# virtual methods
.method public addRequiredItemType(Lnet/sf/saxon/type/ItemType;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;->d:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "glob"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;->isMayBeOmitted()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;->isAbsentFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "pro"

    goto :goto_0

    :cond_0
    const-string v0, "opt"

    goto :goto_0

    :cond_1
    const-string v0, "req"

    :goto_0
    const-string v1, "use"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;->getRequiredItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;->getRequiredItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/type/ItemType;->toExportString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "type"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public getDefaultValue()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;->e:Lnet/sf/saxon/expr/Expression;

    return-object p0
.end method

.method public getRequiredItemType()Lnet/sf/saxon/type/ItemType;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;->d:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/type/ItemType;

    return-object p0
.end method

.method public getRequiredItemTypes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/sf/saxon/type/ItemType;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;->d:Ljava/util/List;

    return-object p0
.end method

.method public isAbsentFocus()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;->b:Z

    return p0
.end method

.method public isExternal()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;->c:Z

    return p0
.end method

.method public isMayBeOmitted()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;->a:Z

    return p0
.end method

.method public makeGlobalContextInfo(Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;->isAbsentFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/sf/saxon/type/ErrorType;->getInstance()Lnet/sf/saxon/type/ErrorType;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;->getRequiredItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;->isMayBeOmitted()Z

    move-result p0

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/Configuration;->makeContextItemStaticInfo(Lnet/sf/saxon/type/ItemType;Z)Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    move-result-object p0

    return-object p0
.end method

.method public setAbsentFocus(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;->b:Z

    return-void
.end method

.method public setDefaultValue(Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;->e:Lnet/sf/saxon/expr/Expression;

    return-void
.end method

.method public setExternal(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;->c:Z

    return-void
.end method

.method public setMayBeOmitted(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;->a:Z

    return-void
.end method
