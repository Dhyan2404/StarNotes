.class public abstract Lnet/sf/saxon/trace/ContextStackFrame;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/trace/ContextStackFrame$VariableEvaluation;,
        Lnet/sf/saxon/trace/ContextStackFrame$CallTemplate;,
        Lnet/sf/saxon/trace/ContextStackFrame$ApplyTemplates;,
        Lnet/sf/saxon/trace/ContextStackFrame$FunctionCall;,
        Lnet/sf/saxon/trace/ContextStackFrame$BuiltInTemplateRule;,
        Lnet/sf/saxon/trace/ContextStackFrame$CallingApplication;
    }
.end annotation


# instance fields
.field public a:Lnet/sf/saxon/s9api/Location;

.field public b:Lnet/sf/saxon/om/Item;

.field public c:Ljava/lang/Object;

.field protected context:Lnet/sf/saxon/expr/XPathContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/trace/ContextStackFrame;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    instance-of v0, p0, Lnet/sf/saxon/expr/instruct/Actor;

    const-string v1, "\""

    const-string v2, ""

    if-eqz v0, :cond_6

    move-object v0, p0

    check-cast v0, Lnet/sf/saxon/expr/instruct/Actor;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/Actor;->getComponentName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    instance-of v3, p0, Lnet/sf/saxon/expr/instruct/NamedTemplate;

    if-eqz v3, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "template name=\""

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v1, p0, Lnet/sf/saxon/expr/instruct/UserFunction;

    if-eqz v1, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "function "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "()"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v1, p0, Lnet/sf/saxon/expr/instruct/AttributeSet;

    if-eqz v1, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "attribute-set "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    instance-of v1, p0, Lnet/sf/saxon/trans/KeyDefinition;

    if-eqz v1, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    instance-of v0, p0, Lnet/sf/saxon/expr/instruct/GlobalVariable;

    if-eqz v0, :cond_7

    check-cast p0, Lnet/sf/saxon/expr/instruct/GlobalVariable;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    const-string v0, "http://saxon.sf.net/generated-variable"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/om/StructuredQName;->hasURI(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "optimizer-created global variable"

    return-object p0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "global variable $"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    instance-of v0, p0, Lnet/sf/saxon/expr/instruct/TemplateRule;

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "template match=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p0, Lnet/sf/saxon/expr/instruct/TemplateRule;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/TemplateRule;->getMatchPattern()Lnet/sf/saxon/pattern/Pattern;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/Pattern;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    return-object v2
.end method


# virtual methods
.method public getContainer()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trace/ContextStackFrame;->c:Ljava/lang/Object;

    return-object p0
.end method

.method public getContext()Lnet/sf/saxon/expr/XPathContext;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trace/ContextStackFrame;->context:Lnet/sf/saxon/expr/XPathContext;

    return-object p0
.end method

.method public getContextItem()Lnet/sf/saxon/om/Item;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trace/ContextStackFrame;->b:Lnet/sf/saxon/om/Item;

    return-object p0
.end method

.method public getLineNumber()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trace/ContextStackFrame;->a:Lnet/sf/saxon/s9api/Location;

    invoke-interface {p0}, Lnet/sf/saxon/s9api/Location;->getLineNumber()I

    move-result p0

    return p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trace/ContextStackFrame;->a:Lnet/sf/saxon/s9api/Location;

    invoke-interface {p0}, Lnet/sf/saxon/s9api/Location;->getSystemId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract print(Lnet/sf/saxon/lib/Logger;)V
.end method

.method public setComponent(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/trace/ContextStackFrame;->c:Ljava/lang/Object;

    return-void
.end method

.method public setContext(Lnet/sf/saxon/expr/XPathContext;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/trace/ContextStackFrame;->context:Lnet/sf/saxon/expr/XPathContext;

    return-void
.end method

.method public setContextItem(Lnet/sf/saxon/om/Item;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/trace/ContextStackFrame;->b:Lnet/sf/saxon/om/Item;

    return-void
.end method

.method public setLocation(Lnet/sf/saxon/s9api/Location;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/trace/ContextStackFrame;->a:Lnet/sf/saxon/s9api/Location;

    return-void
.end method

.method public showLocation()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lnet/sf/saxon/trace/ContextStackFrame;->getSystemId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/trace/ContextStackFrame;->getLineNumber()I

    move-result v0

    const/4 v1, -0x1

    const-string v2, ")"

    const-string v3, "("

    if-eq v0, v1, :cond_2

    const v1, 0xfffff

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/trace/ContextStackFrame;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/trace/ContextStackFrame;->getLineNumber()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/trace/ContextStackFrame;->getSystemId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
