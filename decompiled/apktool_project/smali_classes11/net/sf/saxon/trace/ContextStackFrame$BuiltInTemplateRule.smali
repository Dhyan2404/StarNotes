.class public Lnet/sf/saxon/trace/ContextStackFrame$BuiltInTemplateRule;
.super Lnet/sf/saxon/trace/ContextStackFrame;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/trace/ContextStackFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BuiltInTemplateRule"
.end annotation


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/XPathContext;)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/trace/ContextStackFrame;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/trace/ContextStackFrame;->context:Lnet/sf/saxon/expr/XPathContext;

    return-void
.end method


# virtual methods
.method public print(Lnet/sf/saxon/lib/Logger;)V
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/trace/ContextStackFrame;->context:Lnet/sf/saxon/expr/XPathContext;

    invoke-interface {v0}, Lnet/sf/saxon/expr/XPathContext;->getContextItem()Lnet/sf/saxon/om/Item;

    move-result-object v0

    instance-of v1, v0, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v1, :cond_0

    check-cast v0, Lnet/sf/saxon/om/NodeInfo;

    invoke-static {v0}, Lnet/sf/saxon/tree/util/Navigator;->getPath(Lnet/sf/saxon/om/NodeInfo;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lnet/sf/saxon/value/AtomicValue;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lnet/sf/saxon/ma/map/MapItem;

    if-eqz v1, :cond_2

    const-string v0, "map"

    goto :goto_0

    :cond_2
    instance-of v1, v0, Lnet/sf/saxon/ma/arrays/ArrayItem;

    if-eqz v1, :cond_3

    const-string v0, "array"

    goto :goto_0

    :cond_3
    instance-of v0, v0, Lnet/sf/saxon/om/Function;

    if-eqz v0, :cond_4

    const-string v0, "function"

    goto :goto_0

    :cond_4
    const-string v0, "item"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  in built-in template rule for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " in "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/trace/ContextStackFrame;->context:Lnet/sf/saxon/expr/XPathContext;

    invoke-interface {p0}, Lnet/sf/saxon/expr/XPathContext;->getCurrentMode()Lnet/sf/saxon/expr/Component$M;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Component$M;->getActor()Lnet/sf/saxon/trans/Mode;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/trans/Mode;->getModeTitle(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/lib/Logger;->error(Ljava/lang/String;)V

    return-void
.end method
