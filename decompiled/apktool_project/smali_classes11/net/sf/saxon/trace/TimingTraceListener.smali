.class public Lnet/sf/saxon/trace/TimingTraceListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/lib/TraceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/trace/TimingTraceListener$b;
    }
.end annotation


# instance fields
.field protected config:Lnet/sf/saxon/Configuration;

.field public e:I

.field public f:Lnet/sf/saxon/lib/Logger;

.field public g:J

.field public final h:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lnet/sf/saxon/trace/TimingTraceListener$b;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lnet/sf/saxon/trace/Traceable;",
            "Lnet/sf/saxon/trace/TimingTraceListener$b;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/sf/saxon/trace/Traceable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public k:Lnet/sf/saxon/s9api/HostLanguage;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/trace/TimingTraceListener;->e:I

    new-instance v0, Lnet/sf/saxon/lib/StandardLogger;

    invoke-direct {v0}, Lnet/sf/saxon/lib/StandardLogger;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/trace/TimingTraceListener;->f:Lnet/sf/saxon/lib/Logger;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/trace/TimingTraceListener;->h:Ljava/util/Stack;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/trace/TimingTraceListener;->i:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/trace/TimingTraceListener;->config:Lnet/sf/saxon/Configuration;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/trace/TimingTraceListener;->j:Ljava/util/Map;

    sget-object v0, Lnet/sf/saxon/s9api/HostLanguage;->XSLT:Lnet/sf/saxon/s9api/HostLanguage;

    iput-object v0, p0, Lnet/sf/saxon/trace/TimingTraceListener;->k:Lnet/sf/saxon/s9api/HostLanguage;

    return-void
.end method


# virtual methods
.method public final a()Lnet/sf/saxon/PreparedStylesheet;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/trace/TimingTraceListener;->b()Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljavax/xml/transform/stream/StreamSource;

    const-string v2, "profile.xsl"

    invoke-direct {v1, v0, v2}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    iget-object v0, p0, Lnet/sf/saxon/trace/TimingTraceListener;->config:Lnet/sf/saxon/Configuration;

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getDefaultXsltCompilerInfo()Lnet/sf/saxon/trans/CompilerInfo;

    move-result-object v0

    new-instance v2, Lnet/sf/saxon/om/StructuredQName;

    const-string v3, ""

    const-string v4, "lang"

    invoke-direct {v2, v3, v3, v4}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lnet/sf/saxon/trace/TimingTraceListener;->k:Lnet/sf/saxon/s9api/HostLanguage;

    sget-object v4, Lnet/sf/saxon/s9api/HostLanguage;->XSLT:Lnet/sf/saxon/s9api/HostLanguage;

    if-ne v3, v4, :cond_0

    const-string v3, "XSLT"

    goto :goto_0

    :cond_0
    const-string v3, "XQuery"

    :goto_0
    invoke-static {v3}, Lnet/sf/saxon/value/StringValue;->bmp(Ljava/lang/String;)Lnet/sf/saxon/value/StringValue;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lnet/sf/saxon/trans/CompilerInfo;->setParameter(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/GroundedValue;)V

    iget-object p0, p0, Lnet/sf/saxon/trace/TimingTraceListener;->config:Lnet/sf/saxon/Configuration;

    invoke-static {p0, v0, v1}, Lnet/sf/saxon/style/Compilation;->compileSingletonPackage(Lnet/sf/saxon/Configuration;Lnet/sf/saxon/trans/CompilerInfo;Ljavax/xml/transform/Source;)Lnet/sf/saxon/PreparedStylesheet;

    move-result-object p0

    return-object p0
.end method

.method public final b()Ljava/io/InputStream;
    .locals 2

    sget-object p0, Lnet/sf/saxon/Version;->platform:Lnet/sf/saxon/Platform;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "profile.xsl"

    invoke-interface {p0, v1, v0}, Lnet/sf/saxon/Platform;->locateResource(Ljava/lang/String;Ljava/util/List;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public final c(Lnet/sf/saxon/trace/Traceable;)Z
    .locals 0

    instance-of p0, p1, Lnet/sf/saxon/expr/instruct/UserFunction;

    if-nez p0, :cond_1

    instance-of p0, p1, Lnet/sf/saxon/expr/instruct/GlobalVariable;

    if-nez p0, :cond_1

    instance-of p0, p1, Lnet/sf/saxon/expr/instruct/NamedTemplate;

    if-nez p0, :cond_1

    instance-of p0, p1, Lnet/sf/saxon/expr/instruct/TemplateRule;

    if-eqz p0, :cond_0

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

.method public close()V
    .locals 14

    const-string v0, "mode"

    const-string v1, "match"

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p0, Lnet/sf/saxon/trace/TimingTraceListener;->g:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lnet/sf/saxon/trace/TimingTraceListener;->g:J

    iget v2, p0, Lnet/sf/saxon/trace/TimingTraceListener;->e:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lnet/sf/saxon/trace/TimingTraceListener;->e:I

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/trace/TimingTraceListener;->a()Lnet/sf/saxon/PreparedStylesheet;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/PreparedStylesheet;->newController()Lnet/sf/saxon/trans/XsltController;

    move-result-object v2

    new-instance v4, Lnet/sf/saxon/serialize/SerializationProperties;

    invoke-direct {v4}, Lnet/sf/saxon/serialize/SerializationProperties;-><init>()V

    const-string v5, "method"

    const-string v6, "html"

    invoke-virtual {v4, v5, v6}, Lnet/sf/saxon/serialize/SerializationProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "indent"

    const-string v6, "yes"

    invoke-virtual {v4, v5, v6}, Lnet/sf/saxon/serialize/SerializationProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lnet/sf/saxon/Controller;->setTraceListener(Lnet/sf/saxon/lib/TraceListener;)V

    new-instance v5, Lnet/sf/saxon/event/TransformerReceiver;

    invoke-direct {v5, v2}, Lnet/sf/saxon/event/TransformerReceiver;-><init>(Lnet/sf/saxon/trans/XsltController;)V

    new-instance v6, Lnet/sf/saxon/expr/instruct/GlobalParameterSet;

    invoke-direct {v6}, Lnet/sf/saxon/expr/instruct/GlobalParameterSet;-><init>()V

    invoke-virtual {v2, v6}, Lnet/sf/saxon/Controller;->initializeController(Lnet/sf/saxon/expr/instruct/GlobalParameterSet;)V

    invoke-virtual {v5}, Lnet/sf/saxon/event/TransformerReceiver;->open()V

    iget-object v6, p0, Lnet/sf/saxon/trace/TimingTraceListener;->config:Lnet/sf/saxon/Configuration;

    invoke-virtual {v6}, Lnet/sf/saxon/Configuration;->getSerializerFactory()Lnet/sf/saxon/lib/SerializerFactory;

    move-result-object v6

    iget-object v7, p0, Lnet/sf/saxon/trace/TimingTraceListener;->f:Lnet/sf/saxon/lib/Logger;

    invoke-virtual {v7}, Lnet/sf/saxon/lib/Logger;->asStreamResult()Ljavax/xml/transform/stream/StreamResult;

    move-result-object v7

    invoke-virtual {v2}, Lnet/sf/saxon/Controller;->makePipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v2

    invoke-virtual {v6, v7, v4, v2}, Lnet/sf/saxon/lib/SerializerFactory;->getReceiver(Ljavax/xml/transform/Result;Lnet/sf/saxon/serialize/SerializationProperties;Lnet/sf/saxon/event/PipelineConfiguration;)Lnet/sf/saxon/event/Receiver;

    move-result-object v2

    invoke-virtual {v5, v2}, Lnet/sf/saxon/event/TransformerReceiver;->setDestination(Lnet/sf/saxon/event/Receiver;)V

    new-instance v2, Lnet/sf/saxon/event/PushToReceiver;

    invoke-direct {v2, v5}, Lnet/sf/saxon/event/PushToReceiver;-><init>(Lnet/sf/saxon/event/Receiver;)V

    invoke-interface {v2, v3}, Lnet/sf/saxon/s9api/push/Push;->document(Z)Lnet/sf/saxon/s9api/push/Document;

    move-result-object v2

    const-string v3, "trace"

    invoke-interface {v2, v3}, Lnet/sf/saxon/s9api/push/Container;->element(Ljava/lang/String;)Lnet/sf/saxon/s9api/push/Element;

    move-result-object v3

    const-string v4, "t-total"

    iget-wide v5, p0, Lnet/sf/saxon/trace/TimingTraceListener;->g:J

    long-to-double v5, v5

    const-wide v7, 0x412e848000000000L    # 1000000.0

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lnet/sf/saxon/s9api/push/Element;->attribute(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/s9api/push/Element;

    move-result-object v3

    iget-object v4, p0, Lnet/sf/saxon/trace/TimingTraceListener;->i:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/sf/saxon/trace/TimingTraceListener$b;

    const-string v6, "fn"

    invoke-interface {v3, v6}, Lnet/sf/saxon/s9api/push/Container;->element(Ljava/lang/String;)Lnet/sf/saxon/s9api/push/Element;

    move-result-object v6

    iget-object v9, v5, Lnet/sf/saxon/trace/TimingTraceListener$b;->a:Lnet/sf/saxon/trace/TraceableComponent;

    invoke-interface {v9}, Lnet/sf/saxon/trace/Traceable;->getObjectName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v9
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v10, "name"

    if-eqz v9, :cond_0

    :try_start_1
    iget-object v9, v5, Lnet/sf/saxon/trace/TimingTraceListener$b;->a:Lnet/sf/saxon/trace/TraceableComponent;

    invoke-interface {v9}, Lnet/sf/saxon/trace/Traceable;->getObjectName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v9

    invoke-virtual {v9}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v10, v9}, Lnet/sf/saxon/s9api/push/Element;->attribute(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/s9api/push/Element;

    goto :goto_1

    :cond_0
    iget-object v9, v5, Lnet/sf/saxon/trace/TimingTraceListener$b;->b:Ljava/util/Map;

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_1

    iget-object v9, v5, Lnet/sf/saxon/trace/TimingTraceListener$b;->b:Ljava/util/Map;

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v10, v9}, Lnet/sf/saxon/s9api/push/Element;->attribute(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/s9api/push/Element;

    :cond_1
    :goto_1
    iget-object v9, v5, Lnet/sf/saxon/trace/TimingTraceListener$b;->b:Ljava/util/Map;

    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_2

    iget-object v9, v5, Lnet/sf/saxon/trace/TimingTraceListener$b;->b:Ljava/util/Map;

    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v1, v9}, Lnet/sf/saxon/s9api/push/Element;->attribute(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/s9api/push/Element;

    :cond_2
    iget-object v9, v5, Lnet/sf/saxon/trace/TimingTraceListener$b;->b:Ljava/util/Map;

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_3

    iget-object v9, v5, Lnet/sf/saxon/trace/TimingTraceListener$b;->b:Ljava/util/Map;

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v0, v9}, Lnet/sf/saxon/s9api/push/Element;->attribute(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/s9api/push/Element;

    :cond_3
    const-string v9, "construct"

    iget-object v10, v5, Lnet/sf/saxon/trace/TimingTraceListener$b;->a:Lnet/sf/saxon/trace/TraceableComponent;

    invoke-interface {v10}, Lnet/sf/saxon/trace/TraceableComponent;->getTracingTag()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v9, v10}, Lnet/sf/saxon/s9api/push/Element;->attribute(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/s9api/push/Element;

    move-result-object v6

    const-string v9, "file"

    iget-object v10, v5, Lnet/sf/saxon/trace/TimingTraceListener$b;->a:Lnet/sf/saxon/trace/TraceableComponent;

    invoke-interface {v10}, Lnet/sf/saxon/expr/Locatable;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v10

    invoke-interface {v10}, Lnet/sf/saxon/s9api/Location;->getSystemId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v9, v10}, Lnet/sf/saxon/s9api/push/Element;->attribute(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/s9api/push/Element;

    move-result-object v6

    const-string v9, "count"

    iget-wide v10, v5, Lnet/sf/saxon/trace/TimingTraceListener$b;->e:J

    iget v12, p0, Lnet/sf/saxon/trace/TimingTraceListener;->e:I

    int-to-long v12, v12

    div-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v9, v10}, Lnet/sf/saxon/s9api/push/Element;->attribute(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/s9api/push/Element;

    move-result-object v6

    const-string v9, "t-sum-net"

    iget-wide v10, v5, Lnet/sf/saxon/trace/TimingTraceListener$b;->d:J

    long-to-double v10, v10

    iget v12, p0, Lnet/sf/saxon/trace/TimingTraceListener;->e:I

    int-to-double v12, v12

    div-double/2addr v10, v12

    div-double/2addr v10, v7

    invoke-static {v10, v11}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v9, v10}, Lnet/sf/saxon/s9api/push/Element;->attribute(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/s9api/push/Element;

    move-result-object v6

    const-string v9, "t-avg-net"

    iget-wide v10, v5, Lnet/sf/saxon/trace/TimingTraceListener$b;->d:J

    long-to-double v10, v10

    iget-wide v12, v5, Lnet/sf/saxon/trace/TimingTraceListener$b;->e:J

    long-to-double v12, v12

    div-double/2addr v10, v12

    div-double/2addr v10, v7

    invoke-static {v10, v11}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v9, v10}, Lnet/sf/saxon/s9api/push/Element;->attribute(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/s9api/push/Element;

    move-result-object v6

    const-string v9, "t-sum"

    iget-wide v10, v5, Lnet/sf/saxon/trace/TimingTraceListener$b;->c:J

    long-to-double v10, v10

    iget v12, p0, Lnet/sf/saxon/trace/TimingTraceListener;->e:I

    int-to-double v12, v12

    div-double/2addr v10, v12

    div-double/2addr v10, v7

    invoke-static {v10, v11}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v9, v10}, Lnet/sf/saxon/s9api/push/Element;->attribute(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/s9api/push/Element;

    move-result-object v6

    const-string v9, "t-avg"

    iget-wide v10, v5, Lnet/sf/saxon/trace/TimingTraceListener$b;->c:J

    long-to-double v10, v10

    iget-wide v12, v5, Lnet/sf/saxon/trace/TimingTraceListener$b;->e:J

    long-to-double v12, v12

    div-double/2addr v10, v12

    div-double/2addr v10, v7

    invoke-static {v10, v11}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v9, v10}, Lnet/sf/saxon/s9api/push/Element;->attribute(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/s9api/push/Element;

    move-result-object v6

    const-string v9, "line"

    iget-object v5, v5, Lnet/sf/saxon/trace/TimingTraceListener$b;->a:Lnet/sf/saxon/trace/TraceableComponent;

    invoke-interface {v5}, Lnet/sf/saxon/expr/Locatable;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v5

    invoke-interface {v5}, Lnet/sf/saxon/s9api/Location;->getLineNumber()I

    move-result v5

    int-to-long v10, v5

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v9, v5}, Lnet/sf/saxon/s9api/push/Element;->attribute(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/s9api/push/Element;

    move-result-object v5

    invoke-interface {v5}, Lnet/sf/saxon/s9api/push/Container;->close()V

    goto/16 :goto_0

    :cond_4
    invoke-interface {v2}, Lnet/sf/saxon/s9api/push/Container;->close()V
    :try_end_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to generate timing profile information: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/SaxonApiException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception p0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to transform timing profile information: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public endCurrentItem(Lnet/sf/saxon/om/Item;)V
    .locals 0

    return-void
.end method

.method public enter(Lnet/sf/saxon/trace/Traceable;Ljava/util/Map;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 3
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

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trace/TimingTraceListener;->c(Lnet/sf/saxon/trace/Traceable;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    new-instance p3, Lnet/sf/saxon/trace/TimingTraceListener$b;

    const/4 v2, 0x0

    invoke-direct {p3, v2}, Lnet/sf/saxon/trace/TimingTraceListener$b;-><init>(Lnet/sf/saxon/trace/TimingTraceListener$a;)V

    move-object v2, p1

    check-cast v2, Lnet/sf/saxon/trace/TraceableComponent;

    iput-object v2, p3, Lnet/sf/saxon/trace/TimingTraceListener$b;->a:Lnet/sf/saxon/trace/TraceableComponent;

    iput-object p2, p3, Lnet/sf/saxon/trace/TimingTraceListener$b;->b:Ljava/util/Map;

    iput-wide v0, p3, Lnet/sf/saxon/trace/TimingTraceListener$b;->c:J

    iget-object p2, p0, Lnet/sf/saxon/trace/TimingTraceListener;->h:Ljava/util/Stack;

    invoke-virtual {p2, p3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lnet/sf/saxon/trace/TimingTraceListener;->j:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-nez p2, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/trace/TimingTraceListener;->j:Ljava/util/Map;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/trace/TimingTraceListener;->j:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public leave(Lnet/sf/saxon/trace/Traceable;)V
    .locals 8

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trace/TimingTraceListener;->c(Lnet/sf/saxon/trace/Traceable;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/sf/saxon/trace/TimingTraceListener;->h:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/trace/TimingTraceListener$b;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-wide v3, v0, Lnet/sf/saxon/trace/TimingTraceListener$b;->c:J

    sub-long/2addr v1, v3

    iget-wide v3, v0, Lnet/sf/saxon/trace/TimingTraceListener$b;->d:J

    sub-long v3, v1, v3

    iput-wide v3, v0, Lnet/sf/saxon/trace/TimingTraceListener$b;->d:J

    iput-wide v1, v0, Lnet/sf/saxon/trace/TimingTraceListener$b;->c:J

    iget-object v3, p0, Lnet/sf/saxon/trace/TimingTraceListener;->i:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/trace/TimingTraceListener$b;

    const-wide/16 v4, 0x1

    if-nez v3, :cond_0

    iput-wide v4, v0, Lnet/sf/saxon/trace/TimingTraceListener$b;->e:J

    iget-object v3, p0, Lnet/sf/saxon/trace/TimingTraceListener;->i:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-wide v6, v3, Lnet/sf/saxon/trace/TimingTraceListener$b;->e:J

    add-long/2addr v6, v4

    iput-wide v6, v3, Lnet/sf/saxon/trace/TimingTraceListener$b;->e:J

    iget-object v4, p0, Lnet/sf/saxon/trace/TimingTraceListener;->j:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    iget-object v5, p0, Lnet/sf/saxon/trace/TimingTraceListener;->j:Ljava/util/Map;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_1

    iget-wide v4, v3, Lnet/sf/saxon/trace/TimingTraceListener$b;->c:J

    iget-wide v6, v0, Lnet/sf/saxon/trace/TimingTraceListener$b;->c:J

    add-long/2addr v4, v6

    iput-wide v4, v3, Lnet/sf/saxon/trace/TimingTraceListener$b;->c:J

    :cond_1
    iget-wide v4, v3, Lnet/sf/saxon/trace/TimingTraceListener$b;->d:J

    iget-wide v6, v0, Lnet/sf/saxon/trace/TimingTraceListener$b;->d:J

    add-long/2addr v4, v6

    iput-wide v4, v3, Lnet/sf/saxon/trace/TimingTraceListener$b;->d:J

    :goto_0
    iget-object p1, p0, Lnet/sf/saxon/trace/TimingTraceListener;->h:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    iget-object p1, p0, Lnet/sf/saxon/trace/TimingTraceListener;->h:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lnet/sf/saxon/trace/TimingTraceListener;->h:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/trace/TimingTraceListener$b;

    iget-wide v3, p0, Lnet/sf/saxon/trace/TimingTraceListener$b;->d:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lnet/sf/saxon/trace/TimingTraceListener$b;->d:J

    :cond_2
    return-void
.end method

.method public open(Lnet/sf/saxon/Controller;)V
    .locals 2

    invoke-virtual {p1}, Lnet/sf/saxon/Controller;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/trace/TimingTraceListener;->config:Lnet/sf/saxon/Configuration;

    invoke-virtual {p1}, Lnet/sf/saxon/Controller;->getExecutable()Lnet/sf/saxon/expr/instruct/Executable;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/Executable;->getHostLanguage()Lnet/sf/saxon/s9api/HostLanguage;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/trace/TimingTraceListener;->k:Lnet/sf/saxon/s9api/HostLanguage;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/sf/saxon/trace/TimingTraceListener;->g:J

    return-void
.end method

.method public setOutputDestination(Lnet/sf/saxon/lib/Logger;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/trace/TimingTraceListener;->f:Lnet/sf/saxon/lib/Logger;

    return-void
.end method

.method public startCurrentItem(Lnet/sf/saxon/om/Item;)V
    .locals 0

    return-void
.end method
