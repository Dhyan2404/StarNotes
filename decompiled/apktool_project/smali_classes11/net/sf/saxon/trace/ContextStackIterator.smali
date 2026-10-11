.class public Lnet/sf/saxon/trace/ContextStackIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lnet/sf/saxon/trace/ContextStackFrame;",
        ">;"
    }
.end annotation


# instance fields
.field public e:Lnet/sf/saxon/expr/XPathContextMajor;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/XPathContext;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Lnet/sf/saxon/expr/XPathContextMajor;

    if-nez v0, :cond_0

    invoke-static {p1}, Lnet/sf/saxon/trace/ContextStackIterator;->a(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object p1

    :cond_0
    check-cast p1, Lnet/sf/saxon/expr/XPathContextMajor;

    iput-object p1, p0, Lnet/sf/saxon/trace/ContextStackIterator;->e:Lnet/sf/saxon/expr/XPathContextMajor;

    return-void
.end method

.method public static a(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/XPathContextMajor;
    .locals 1

    invoke-interface {p0}, Lnet/sf/saxon/expr/XPathContext;->getCaller()Lnet/sf/saxon/expr/XPathContext;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_0

    instance-of v0, p0, Lnet/sf/saxon/expr/XPathContextMajor;

    if-nez v0, :cond_0

    invoke-interface {p0}, Lnet/sf/saxon/expr/XPathContext;->getCaller()Lnet/sf/saxon/expr/XPathContext;

    move-result-object p0

    goto :goto_0

    :cond_0
    check-cast p0, Lnet/sf/saxon/expr/XPathContextMajor;

    return-object p0
.end method


# virtual methods
.method public hasNext()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trace/ContextStackIterator;->e:Lnet/sf/saxon/expr/XPathContextMajor;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/trace/ContextStackIterator;->next()Lnet/sf/saxon/trace/ContextStackFrame;

    move-result-object p0

    return-object p0
.end method

.method public next()Lnet/sf/saxon/trace/ContextStackFrame;
    .locals 4

    .line 2
    iget-object v0, p0, Lnet/sf/saxon/trace/ContextStackIterator;->e:Lnet/sf/saxon/expr/XPathContextMajor;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lnet/sf/saxon/expr/XPathContextMajor;->getOrigin()Lnet/sf/saxon/expr/ContextOriginator;

    move-result-object v1

    .line 4
    instance-of v2, v1, Lnet/sf/saxon/Controller;

    if-eqz v2, :cond_1

    .line 5
    invoke-static {v0}, Lnet/sf/saxon/trace/ContextStackIterator;->a(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/trace/ContextStackIterator;->e:Lnet/sf/saxon/expr/XPathContextMajor;

    .line 6
    new-instance p0, Lnet/sf/saxon/trace/ContextStackFrame$CallingApplication;

    invoke-direct {p0}, Lnet/sf/saxon/trace/ContextStackFrame$CallingApplication;-><init>()V

    return-object p0

    .line 7
    :cond_1
    instance-of v2, v1, Lnet/sf/saxon/trans/rules/BuiltInRuleSet;

    if-eqz v2, :cond_2

    .line 8
    invoke-static {v0}, Lnet/sf/saxon/trace/ContextStackIterator;->a(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/trace/ContextStackIterator;->e:Lnet/sf/saxon/expr/XPathContextMajor;

    .line 9
    new-instance p0, Lnet/sf/saxon/trace/ContextStackFrame$BuiltInTemplateRule;

    invoke-direct {p0, v0}, Lnet/sf/saxon/trace/ContextStackFrame$BuiltInTemplateRule;-><init>(Lnet/sf/saxon/expr/XPathContext;)V

    return-object p0

    .line 10
    :cond_2
    instance-of v2, v1, Lnet/sf/saxon/expr/instruct/UserFunction;

    if-eqz v2, :cond_3

    .line 11
    new-instance v2, Lnet/sf/saxon/trace/ContextStackFrame$FunctionCall;

    invoke-direct {v2}, Lnet/sf/saxon/trace/ContextStackFrame$FunctionCall;-><init>()V

    .line 12
    check-cast v1, Lnet/sf/saxon/expr/instruct/UserFunction;

    .line 13
    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/Actor;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/sf/saxon/trace/ContextStackFrame;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    .line 14
    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/UserFunction;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {v2, v1}, Lnet/sf/saxon/trace/ContextStackFrame$FunctionCall;->setFunctionName(Lnet/sf/saxon/om/StructuredQName;)V

    .line 15
    invoke-virtual {v0}, Lnet/sf/saxon/expr/XPathContextMinor;->getContextItem()Lnet/sf/saxon/om/Item;

    move-result-object v1

    invoke-virtual {v2, v1}, Lnet/sf/saxon/trace/ContextStackFrame;->setContextItem(Lnet/sf/saxon/om/Item;)V

    .line 16
    invoke-virtual {v2, v0}, Lnet/sf/saxon/trace/ContextStackFrame;->setContext(Lnet/sf/saxon/expr/XPathContext;)V

    .line 17
    invoke-static {v0}, Lnet/sf/saxon/trace/ContextStackIterator;->a(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/trace/ContextStackIterator;->e:Lnet/sf/saxon/expr/XPathContextMajor;

    return-object v2

    .line 18
    :cond_3
    instance-of v2, v1, Lnet/sf/saxon/expr/UserFunctionCall;

    if-eqz v2, :cond_4

    .line 19
    new-instance v2, Lnet/sf/saxon/trace/ContextStackFrame$FunctionCall;

    invoke-direct {v2}, Lnet/sf/saxon/trace/ContextStackFrame$FunctionCall;-><init>()V

    .line 20
    check-cast v1, Lnet/sf/saxon/expr/UserFunctionCall;

    .line 21
    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/sf/saxon/trace/ContextStackFrame;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    .line 22
    invoke-virtual {v1}, Lnet/sf/saxon/expr/UserFunctionCall;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {v2, v1}, Lnet/sf/saxon/trace/ContextStackFrame$FunctionCall;->setFunctionName(Lnet/sf/saxon/om/StructuredQName;)V

    .line 23
    invoke-virtual {v0}, Lnet/sf/saxon/expr/XPathContextMinor;->getContextItem()Lnet/sf/saxon/om/Item;

    move-result-object v1

    invoke-virtual {v2, v1}, Lnet/sf/saxon/trace/ContextStackFrame;->setContextItem(Lnet/sf/saxon/om/Item;)V

    .line 24
    invoke-virtual {v2, v0}, Lnet/sf/saxon/trace/ContextStackFrame;->setContext(Lnet/sf/saxon/expr/XPathContext;)V

    .line 25
    invoke-static {v0}, Lnet/sf/saxon/trace/ContextStackIterator;->a(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/trace/ContextStackIterator;->e:Lnet/sf/saxon/expr/XPathContextMajor;

    return-object v2

    .line 26
    :cond_4
    instance-of v2, v1, Lnet/sf/saxon/expr/instruct/ApplyTemplates;

    if-eqz v2, :cond_5

    .line 27
    new-instance v2, Lnet/sf/saxon/trace/ContextStackFrame$ApplyTemplates;

    invoke-direct {v2}, Lnet/sf/saxon/trace/ContextStackFrame$ApplyTemplates;-><init>()V

    .line 28
    check-cast v1, Lnet/sf/saxon/expr/instruct/ApplyTemplates;

    .line 29
    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v1

    invoke-virtual {v2, v1}, Lnet/sf/saxon/trace/ContextStackFrame;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    .line 30
    invoke-virtual {v0}, Lnet/sf/saxon/expr/XPathContextMinor;->getContextItem()Lnet/sf/saxon/om/Item;

    move-result-object v1

    invoke-virtual {v2, v1}, Lnet/sf/saxon/trace/ContextStackFrame;->setContextItem(Lnet/sf/saxon/om/Item;)V

    .line 31
    invoke-virtual {v2, v0}, Lnet/sf/saxon/trace/ContextStackFrame;->setContext(Lnet/sf/saxon/expr/XPathContext;)V

    .line 32
    invoke-static {v0}, Lnet/sf/saxon/trace/ContextStackIterator;->a(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/trace/ContextStackIterator;->e:Lnet/sf/saxon/expr/XPathContextMajor;

    return-object v2

    .line 33
    :cond_5
    instance-of v2, v1, Lnet/sf/saxon/expr/instruct/CallTemplate;

    if-eqz v2, :cond_6

    .line 34
    new-instance v2, Lnet/sf/saxon/trace/ContextStackFrame$CallTemplate;

    invoke-direct {v2}, Lnet/sf/saxon/trace/ContextStackFrame$CallTemplate;-><init>()V

    .line 35
    check-cast v1, Lnet/sf/saxon/expr/instruct/CallTemplate;

    .line 36
    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/sf/saxon/trace/ContextStackFrame;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    .line 37
    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/CallTemplate;->getObjectName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {v2, v1}, Lnet/sf/saxon/trace/ContextStackFrame$CallTemplate;->setTemplateName(Lnet/sf/saxon/om/StructuredQName;)V

    .line 38
    invoke-virtual {v0}, Lnet/sf/saxon/expr/XPathContextMinor;->getContextItem()Lnet/sf/saxon/om/Item;

    move-result-object v1

    invoke-virtual {v2, v1}, Lnet/sf/saxon/trace/ContextStackFrame;->setContextItem(Lnet/sf/saxon/om/Item;)V

    .line 39
    invoke-virtual {v2, v0}, Lnet/sf/saxon/trace/ContextStackFrame;->setContext(Lnet/sf/saxon/expr/XPathContext;)V

    .line 40
    invoke-static {v0}, Lnet/sf/saxon/trace/ContextStackIterator;->a(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/trace/ContextStackIterator;->e:Lnet/sf/saxon/expr/XPathContextMajor;

    return-object v2

    .line 41
    :cond_6
    instance-of v2, v1, Lnet/sf/saxon/expr/instruct/GlobalVariable;

    if-eqz v2, :cond_7

    .line 42
    new-instance v2, Lnet/sf/saxon/trace/ContextStackFrame$VariableEvaluation;

    invoke-direct {v2}, Lnet/sf/saxon/trace/ContextStackFrame$VariableEvaluation;-><init>()V

    .line 43
    check-cast v1, Lnet/sf/saxon/expr/instruct/GlobalVariable;

    .line 44
    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/Actor;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/sf/saxon/trace/ContextStackFrame;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    .line 45
    invoke-virtual {v0}, Lnet/sf/saxon/expr/XPathContextMinor;->getContextItem()Lnet/sf/saxon/om/Item;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/sf/saxon/trace/ContextStackFrame;->setContextItem(Lnet/sf/saxon/om/Item;)V

    .line 46
    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/sf/saxon/trace/ContextStackFrame$VariableEvaluation;->setVariableName(Lnet/sf/saxon/om/StructuredQName;)V

    .line 47
    invoke-virtual {v2, v1}, Lnet/sf/saxon/trace/ContextStackFrame;->setComponent(Ljava/lang/Object;)V

    .line 48
    invoke-virtual {v2, v0}, Lnet/sf/saxon/trace/ContextStackFrame;->setContext(Lnet/sf/saxon/expr/XPathContext;)V

    .line 49
    invoke-static {v0}, Lnet/sf/saxon/trace/ContextStackIterator;->a(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/trace/ContextStackIterator;->e:Lnet/sf/saxon/expr/XPathContextMajor;

    return-object v2

    .line 50
    :cond_7
    invoke-static {v0}, Lnet/sf/saxon/trace/ContextStackIterator;->a(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/trace/ContextStackIterator;->e:Lnet/sf/saxon/expr/XPathContextMajor;

    .line 51
    invoke-virtual {p0}, Lnet/sf/saxon/trace/ContextStackIterator;->next()Lnet/sf/saxon/trace/ContextStackFrame;

    move-result-object p0

    if-nez p0, :cond_8

    .line 52
    new-instance p0, Lnet/sf/saxon/trace/ContextStackFrame$CallingApplication;

    invoke-direct {p0}, Lnet/sf/saxon/trace/ContextStackFrame$CallingApplication;-><init>()V

    :cond_8
    return-object p0
.end method

.method public remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
