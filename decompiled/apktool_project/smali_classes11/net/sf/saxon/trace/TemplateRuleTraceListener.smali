.class public Lnet/sf/saxon/trace/TemplateRuleTraceListener;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Lnet/sf/saxon/lib/Logger;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/lib/Logger;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/trace/TemplateRuleTraceListener;->a:I

    iput-object p1, p0, Lnet/sf/saxon/trace/TemplateRuleTraceListener;->b:Lnet/sf/saxon/lib/Logger;

    return-void
.end method


# virtual methods
.method public enter(Ljava/lang/String;Lnet/sf/saxon/s9api/Location;Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/instruct/TemplateRule;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lnet/sf/saxon/trace/TemplateRuleTraceListener;->a:I

    if-ge v1, v2, :cond_0

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lnet/sf/saxon/trace/TemplateRuleTraceListener;->a:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " at "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lnet/sf/saxon/trans/Err;->show(Lnet/sf/saxon/s9api/Location;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lnet/sf/saxon/om/Item;->toShortString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    instance-of p2, p3, Lnet/sf/saxon/om/NodeInfo;

    if-eqz p2, :cond_1

    check-cast p3, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p3}, Lnet/sf/saxon/om/NodeInfo;->getLineNumber()I

    move-result p2

    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lnet/sf/saxon/om/NodeInfo;->getBaseURI()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/sf/saxon/trans/Err;->abbreviateURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "#"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lnet/sf/saxon/om/NodeInfo;->getLineNumber()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    const-string p1, " using "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p4, :cond_2

    const-string p1, "built-in rule"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string p1, "rule at "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lnet/sf/saxon/trans/Err;->show(Lnet/sf/saxon/s9api/Location;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, " \\.\\.\\./"

    const-string p3, " "

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lnet/sf/saxon/trace/TemplateRuleTraceListener;->b:Lnet/sf/saxon/lib/Logger;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    return-void
.end method

.method public leave()V
    .locals 1

    iget v0, p0, Lnet/sf/saxon/trace/TemplateRuleTraceListener;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnet/sf/saxon/trace/TemplateRuleTraceListener;->a:I

    return-void
.end method
