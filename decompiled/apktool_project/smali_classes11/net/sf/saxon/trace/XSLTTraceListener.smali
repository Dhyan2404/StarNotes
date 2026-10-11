.class public Lnet/sf/saxon/trace/XSLTTraceListener;
.super Lnet/sf/saxon/trace/AbstractTraceListener;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/trace/AbstractTraceListener;-><init>()V

    return-void
.end method

.method public static tagName(Lnet/sf/saxon/trace/Traceable;)Ljava/lang/String;
    .locals 4

    instance-of v0, p0, Lnet/sf/saxon/expr/Expression;

    const-string v1, "fn:trace"

    const-string v2, "xsl:variable"

    if-eqz v0, :cond_4

    check-cast p0, Lnet/sf/saxon/expr/Expression;

    instance-of v0, p0, Lnet/sf/saxon/expr/instruct/FixedElement;

    if-eqz v0, :cond_0

    const-string p0, "LRE"

    return-object p0

    :cond_0
    instance-of v0, p0, Lnet/sf/saxon/expr/instruct/FixedAttribute;

    if-eqz v0, :cond_1

    const-string p0, "ATTR"

    return-object p0

    :cond_1
    instance-of v0, p0, Lnet/sf/saxon/expr/LetExpression;

    if-eqz v0, :cond_2

    return-object v2

    :cond_2
    const-class v0, Lnet/sf/saxon/functions/Trace;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/Expression;->isCallOn(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object v1

    :cond_3
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getExpressionName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    instance-of v0, p0, Lnet/sf/saxon/expr/instruct/UserFunction;

    if-eqz v0, :cond_5

    const-string p0, "xsl:function"

    return-object p0

    :cond_5
    instance-of v0, p0, Lnet/sf/saxon/expr/instruct/TemplateRule;

    const-string v3, "xsl:template"

    if-eqz v0, :cond_6

    return-object v3

    :cond_6
    instance-of v0, p0, Lnet/sf/saxon/expr/instruct/NamedTemplate;

    if-eqz v0, :cond_7

    return-object v3

    :cond_7
    instance-of v0, p0, Lnet/sf/saxon/expr/instruct/GlobalParam;

    if-eqz v0, :cond_8

    const-string p0, "xsl:param"

    return-object p0

    :cond_8
    instance-of v0, p0, Lnet/sf/saxon/expr/instruct/GlobalVariable;

    if-eqz v0, :cond_9

    return-object v2

    :cond_9
    instance-of p0, p0, Lnet/sf/saxon/functions/Trace;

    if-eqz p0, :cond_a

    return-object v1

    :cond_a
    const-string p0, "misc"

    return-object p0
.end method


# virtual methods
.method public getOpeningAttributes()Ljava/lang/String;
    .locals 0

    const-string p0, "xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\""

    return-object p0
.end method

.method public tag(Lnet/sf/saxon/trace/Traceable;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lnet/sf/saxon/trace/XSLTTraceListener;->tagName(Lnet/sf/saxon/trace/Traceable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
