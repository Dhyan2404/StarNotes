.class public abstract Lnet/sf/saxon/trace/AbstractTraceListener;
.super Lnet/sf/saxon/lib/StandardDiagnostics;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/lib/TraceListener;


# static fields
.field public static final f:Ljava/lang/StringBuilder;


# instance fields
.field public e:I

.field protected indent:I

.field protected out:Lnet/sf/saxon/lib/Logger;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "                "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/trace/AbstractTraceListener;->f:Ljava/lang/StringBuilder;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/lib/StandardDiagnostics;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/trace/AbstractTraceListener;->indent:I

    const/4 v0, 0x2

    iput v0, p0, Lnet/sf/saxon/trace/AbstractTraceListener;->e:I

    new-instance v0, Lnet/sf/saxon/lib/StandardLogger;

    invoke-direct {v0}, Lnet/sf/saxon/lib/StandardLogger;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/trace/AbstractTraceListener;->out:Lnet/sf/saxon/lib/Logger;

    return-void
.end method

.method public static spaces(I)Ljava/lang/String;
    .locals 2

    :goto_0
    sget-object v0, Lnet/sf/saxon/trace/AbstractTraceListener;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ge v1, p0, :cond_0

    invoke-virtual {v0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 1

    iget v0, p0, Lnet/sf/saxon/trace/AbstractTraceListener;->indent:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnet/sf/saxon/trace/AbstractTraceListener;->indent:I

    iget-object p0, p0, Lnet/sf/saxon/trace/AbstractTraceListener;->out:Lnet/sf/saxon/lib/Logger;

    const-string v0, "</trace>"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    return-void
.end method

.method public endCurrentItem(Lnet/sf/saxon/om/Item;)V
    .locals 2

    iget v0, p0, Lnet/sf/saxon/trace/AbstractTraceListener;->indent:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnet/sf/saxon/trace/AbstractTraceListener;->indent:I

    instance-of v0, p1, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v0, :cond_0

    iget v0, p0, Lnet/sf/saxon/trace/AbstractTraceListener;->e:I

    if-lez v0, :cond_0

    check-cast p1, Lnet/sf/saxon/om/NodeInfo;

    iget-object v0, p0, Lnet/sf/saxon/trace/AbstractTraceListener;->out:Lnet/sf/saxon/lib/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget p0, p0, Lnet/sf/saxon/trace/AbstractTraceListener;->indent:I

    invoke-static {p0}, Lnet/sf/saxon/trace/AbstractTraceListener;->spaces(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "</source><!-- "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lnet/sf/saxon/tree/util/Navigator;->getPath(Lnet/sf/saxon/om/NodeInfo;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " -->"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public endRuleSearch(Ljava/lang/Object;Lnet/sf/saxon/trans/Mode;Lnet/sf/saxon/om/Item;)V
    .locals 0

    return-void
.end method

.method public enter(Lnet/sf/saxon/trace/Traceable;Ljava/util/Map;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/trace/Traceable;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lnet/sf/saxon/expr/XPathContext;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trace/AbstractTraceListener;->isApplicable(Lnet/sf/saxon/trace/Traceable;)Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p1}, Lnet/sf/saxon/expr/Locatable;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p3

    invoke-interface {p3}, Lnet/sf/saxon/s9api/Location;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/lib/StandardDiagnostics;->abbreviateLocationURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lnet/sf/saxon/trace/AbstractTraceListener;->indent:I

    invoke-static {v3}, Lnet/sf/saxon/trace/AbstractTraceListener;->spaces(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trace/AbstractTraceListener;->tag(Lnet/sf/saxon/trace/Traceable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/16 v2, 0x22

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lnet/sf/saxon/om/StructuredQName;

    if-eqz v4, :cond_1

    check-cast v3, Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {v3}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    instance-of v4, v3, Lnet/sf/saxon/value/StringValue;

    if-eqz v4, :cond_2

    check-cast v3, Lnet/sf/saxon/value/StringValue;

    invoke-virtual {v3}, Lnet/sf/saxon/value/StringValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v3

    :cond_2
    :goto_1
    if-eqz v3, :cond_0

    const/16 v4, 0x20

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "=\""

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lnet/sf/saxon/trace/AbstractTraceListener;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const-string p1, " line=\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lnet/sf/saxon/s9api/Location;->getLineNumber()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lnet/sf/saxon/s9api/Location;->getColumnNumber()I

    move-result p1

    if-ltz p1, :cond_4

    const-string p1, " column=\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lnet/sf/saxon/s9api/Location;->getColumnNumber()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    const-string p1, " module=\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/trace/AbstractTraceListener;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, ">"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lnet/sf/saxon/trace/AbstractTraceListener;->out:Lnet/sf/saxon/lib/Logger;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    iget p1, p0, Lnet/sf/saxon/trace/AbstractTraceListener;->indent:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lnet/sf/saxon/trace/AbstractTraceListener;->indent:I

    :cond_5
    return-void
.end method

.method public escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-static {p1}, Lnet/sf/saxon/value/Whitespace;->collapseWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    add-int/2addr v0, v1

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_8

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_1

    const-string v2, "&lt;"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const/16 v3, 0x3e

    if-ne v2, v3, :cond_2

    const-string v2, "&gt;"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const/16 v3, 0x26

    if-ne v2, v3, :cond_3

    const-string v2, "&amp;"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const/16 v3, 0x22

    if-ne v2, v3, :cond_4

    const-string v2, "&#34;"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    if-ne v2, v1, :cond_5

    const-string v2, "&#xA;"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    const/16 v3, 0xd

    if-ne v2, v3, :cond_6

    const-string v2, "&#xD;"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    const/16 v3, 0x9

    if-ne v2, v3, :cond_7

    const-string v2, "&#x9;"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_7
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_8
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract getOpeningAttributes()Ljava/lang/String;
.end method

.method public getOutputDestination()Lnet/sf/saxon/lib/Logger;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trace/AbstractTraceListener;->out:Lnet/sf/saxon/lib/Logger;

    return-object p0
.end method

.method public isApplicable(Lnet/sf/saxon/trace/Traceable;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trace/AbstractTraceListener;->level(Lnet/sf/saxon/trace/Traceable;)I

    move-result p1

    iget p0, p0, Lnet/sf/saxon/trace/AbstractTraceListener;->e:I

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public leave(Lnet/sf/saxon/trace/Traceable;)V
    .locals 3

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trace/AbstractTraceListener;->isApplicable(Lnet/sf/saxon/trace/Traceable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lnet/sf/saxon/trace/AbstractTraceListener;->indent:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnet/sf/saxon/trace/AbstractTraceListener;->indent:I

    iget-object v0, p0, Lnet/sf/saxon/trace/AbstractTraceListener;->out:Lnet/sf/saxon/lib/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lnet/sf/saxon/trace/AbstractTraceListener;->indent:I

    invoke-static {v2}, Lnet/sf/saxon/trace/AbstractTraceListener;->spaces(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trace/AbstractTraceListener;->tag(Lnet/sf/saxon/trace/Traceable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x3e

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public level(Lnet/sf/saxon/trace/Traceable;)I
    .locals 0

    instance-of p0, p1, Lnet/sf/saxon/trace/TraceableComponent;

    if-nez p0, :cond_2

    instance-of p0, p1, Lnet/sf/saxon/expr/instruct/ApplyTemplates;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    instance-of p0, p1, Lnet/sf/saxon/expr/instruct/Instruction;

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x3

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public open(Lnet/sf/saxon/Controller;)V
    .locals 2

    iget-object p1, p0, Lnet/sf/saxon/trace/AbstractTraceListener;->out:Lnet/sf/saxon/lib/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<trace saxon-version=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lnet/sf/saxon/Version;->getProductVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/trace/AbstractTraceListener;->getOpeningAttributes()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    iget p1, p0, Lnet/sf/saxon/trace/AbstractTraceListener;->indent:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lnet/sf/saxon/trace/AbstractTraceListener;->indent:I

    return-void
.end method

.method public setLevelOfDetail(I)V
    .locals 0

    iput p1, p0, Lnet/sf/saxon/trace/AbstractTraceListener;->e:I

    return-void
.end method

.method public setOutputDestination(Lnet/sf/saxon/lib/Logger;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/trace/AbstractTraceListener;->out:Lnet/sf/saxon/lib/Logger;

    return-void
.end method

.method public startCurrentItem(Lnet/sf/saxon/om/Item;)V
    .locals 3

    instance-of v0, p1, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v0, :cond_0

    iget v0, p0, Lnet/sf/saxon/trace/AbstractTraceListener;->e:I

    if-lez v0, :cond_0

    check-cast p1, Lnet/sf/saxon/om/NodeInfo;

    iget-object v0, p0, Lnet/sf/saxon/trace/AbstractTraceListener;->out:Lnet/sf/saxon/lib/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lnet/sf/saxon/trace/AbstractTraceListener;->indent:I

    invoke-static {v2}, Lnet/sf/saxon/trace/AbstractTraceListener;->spaces(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<source node=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lnet/sf/saxon/tree/util/Navigator;->getPath(Lnet/sf/saxon/om/NodeInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" line=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\" file=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getSystemId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/StandardDiagnostics;->abbreviateLocationURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\">"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    :cond_0
    iget p1, p0, Lnet/sf/saxon/trace/AbstractTraceListener;->indent:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lnet/sf/saxon/trace/AbstractTraceListener;->indent:I

    return-void
.end method

.method public startRuleSearch()V
    .locals 0

    return-void
.end method

.method public abstract tag(Lnet/sf/saxon/trace/Traceable;)Ljava/lang/String;
.end method
