.class public Lnet/sf/saxon/trace/ExpressionPresenter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/trace/ExpressionPresenter$ExportOptions;,
        Lnet/sf/saxon/trace/ExpressionPresenter$Options;
    }
.end annotation


# instance fields
.field public a:Lnet/sf/saxon/Configuration;

.field public b:Lnet/sf/saxon/event/Receiver;

.field public c:Lnet/sf/saxon/event/ComplexContentOutputter;

.field public d:I

.field public e:Z

.field public f:Ljava/lang/String;

.field public final g:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lnet/sf/saxon/expr/Expression;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public i:Lnet/sf/saxon/om/NamespaceMap;

.field public j:Ljava/lang/String;

.field public k:Lnet/sf/saxon/trace/ExpressionPresenter$Options;

.field public l:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->d:I

    .line 3
    iput-boolean v0, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->e:Z

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->f:Ljava/lang/String;

    .line 5
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->g:Ljava/util/Stack;

    .line 6
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->h:Ljava/util/Stack;

    .line 7
    invoke-static {}, Lnet/sf/saxon/om/NamespaceMap;->emptyMap()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->i:Lnet/sf/saxon/om/NamespaceMap;

    .line 8
    new-instance v1, Lnet/sf/saxon/trace/ExpressionPresenter$ExportOptions;

    invoke-direct {v1}, Lnet/sf/saxon/trace/ExpressionPresenter$ExportOptions;-><init>()V

    iput-object v1, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->k:Lnet/sf/saxon/trace/ExpressionPresenter$Options;

    .line 9
    iput-boolean v0, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->l:Z

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/Configuration;)V
    .locals 1

    .line 10
    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;-><init>(Lnet/sf/saxon/Configuration;Lnet/sf/saxon/lib/Logger;)V

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/Configuration;Ljavax/xml/transform/stream/StreamResult;)V
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, p1, p2, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;-><init>(Lnet/sf/saxon/Configuration;Ljavax/xml/transform/stream/StreamResult;Z)V

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/Configuration;Ljavax/xml/transform/stream/StreamResult;Z)V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->d:I

    .line 16
    iput-boolean v0, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->e:Z

    const/4 v1, 0x0

    .line 17
    iput-object v1, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->f:Ljava/lang/String;

    .line 18
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->g:Ljava/util/Stack;

    .line 19
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->h:Ljava/util/Stack;

    .line 20
    invoke-static {}, Lnet/sf/saxon/om/NamespaceMap;->emptyMap()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->i:Lnet/sf/saxon/om/NamespaceMap;

    .line 21
    new-instance v1, Lnet/sf/saxon/trace/ExpressionPresenter$ExportOptions;

    invoke-direct {v1}, Lnet/sf/saxon/trace/ExpressionPresenter$ExportOptions;-><init>()V

    iput-object v1, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->k:Lnet/sf/saxon/trace/ExpressionPresenter$Options;

    .line 22
    iput-boolean v0, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->l:Z

    .line 23
    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/trace/ExpressionPresenter;->init(Lnet/sf/saxon/Configuration;Ljavax/xml/transform/stream/StreamResult;Z)V

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/Configuration;Lnet/sf/saxon/event/Receiver;)V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->d:I

    .line 27
    iput-boolean v0, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->e:Z

    const/4 v1, 0x0

    .line 28
    iput-object v1, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->f:Ljava/lang/String;

    .line 29
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->g:Ljava/util/Stack;

    .line 30
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->h:Ljava/util/Stack;

    .line 31
    invoke-static {}, Lnet/sf/saxon/om/NamespaceMap;->emptyMap()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->i:Lnet/sf/saxon/om/NamespaceMap;

    .line 32
    new-instance v1, Lnet/sf/saxon/trace/ExpressionPresenter$ExportOptions;

    invoke-direct {v1}, Lnet/sf/saxon/trace/ExpressionPresenter$ExportOptions;-><init>()V

    iput-object v1, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->k:Lnet/sf/saxon/trace/ExpressionPresenter$Options;

    .line 33
    iput-boolean v0, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->l:Z

    .line 34
    iput-object p1, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->a:Lnet/sf/saxon/Configuration;

    .line 35
    iput-object p2, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->b:Lnet/sf/saxon/event/Receiver;

    .line 36
    new-instance p1, Lnet/sf/saxon/event/ComplexContentOutputter;

    invoke-direct {p1, p2}, Lnet/sf/saxon/event/ComplexContentOutputter;-><init>(Lnet/sf/saxon/event/Receiver;)V

    iput-object p1, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->c:Lnet/sf/saxon/event/ComplexContentOutputter;

    .line 37
    :try_start_0
    invoke-virtual {p1}, Lnet/sf/saxon/event/ComplexContentOutputter;->open()V

    .line 38
    iget-object p0, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->c:Lnet/sf/saxon/event/ComplexContentOutputter;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/event/ComplexContentOutputter;->startDocument(I)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 39
    invoke-virtual {p0}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    .line 40
    new-instance p1, Ljava/lang/InternalError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lnet/sf/saxon/Configuration;Lnet/sf/saxon/lib/Logger;)V
    .locals 0

    .line 24
    invoke-virtual {p2}, Lnet/sf/saxon/lib/Logger;->asStreamResult()Ljavax/xml/transform/stream/StreamResult;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/trace/ExpressionPresenter;-><init>(Lnet/sf/saxon/Configuration;Ljavax/xml/transform/stream/StreamResult;)V

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/event/Builder;)V
    .locals 2

    .line 12
    invoke-direct {p0}, Lnet/sf/saxon/trace/ExpressionPresenter;-><init>()V

    .line 13
    invoke-virtual {p1}, Lnet/sf/saxon/event/Builder;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->init(Lnet/sf/saxon/Configuration;Lnet/sf/saxon/event/Receiver;Z)V

    return-void
.end method

.method public static defaultDestination(Lnet/sf/saxon/Configuration;Lnet/sf/saxon/lib/Logger;)Lnet/sf/saxon/event/Receiver;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-static {p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->makeDefaultProperties(Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/serialize/SerializationProperties;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getSerializerFactory()Lnet/sf/saxon/lib/SerializerFactory;

    move-result-object p0

    invoke-virtual {p1}, Lnet/sf/saxon/lib/Logger;->asStreamResult()Ljavax/xml/transform/stream/StreamResult;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/lib/SerializerFactory;->getReceiver(Ljavax/xml/transform/Result;Lnet/sf/saxon/serialize/SerializationProperties;)Lnet/sf/saxon/event/Receiver;

    move-result-object p0

    return-object p0
.end method

.method public static jsEscape(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_9

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_8

    const/16 v4, 0xd

    if-eq v3, v4, :cond_7

    const/16 v4, 0x22

    if-eq v3, v4, :cond_6

    const/16 v4, 0x27

    if-eq v3, v4, :cond_5

    const/16 v4, 0x5c

    if-eq v3, v4, :cond_4

    packed-switch v3, :pswitch_data_0

    const/16 v4, 0x20

    if-lt v3, v4, :cond_2

    const/16 v4, 0x7f

    if-le v3, v4, :cond_0

    const/16 v4, 0xa0

    if-lt v3, v4, :cond_2

    :cond_0
    const v4, 0xd800

    if-le v3, v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_2
    :goto_1
    const-string v4, "\\u"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v5, 0x4

    if-ge v3, v5, :cond_3

    const-string v3, "0"

    invoke-virtual {v4, v1, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :pswitch_0
    const-string v3, "\\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :pswitch_1
    const-string v3, "\\t"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :pswitch_2
    const-string v3, "\\b"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    const-string v3, "\\\\"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    const-string v3, "\\\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_6
    const-string v3, "\\\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_7
    const-string v3, "\\r"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_8
    const-string v3, "\\f"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static makeDefaultProperties(Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/serialize/SerializationProperties;
    .locals 3

    new-instance v0, Lnet/sf/saxon/serialize/SerializationProperties;

    invoke-direct {v0}, Lnet/sf/saxon/serialize/SerializationProperties;-><init>()V

    const-string v1, "method"

    const-string v2, "xml"

    invoke-virtual {v0, v1, v2}, Lnet/sf/saxon/serialize/SerializationProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "indent"

    const-string v2, "yes"

    invoke-virtual {v0, v1, v2}, Lnet/sf/saxon/serialize/SerializationProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lnet/sf/saxon/Configuration;->isLicensedFeature(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "{http://saxon.sf.net/}indent-spaces"

    const-string v1, "1"

    invoke-virtual {v0, p0, v1}, Lnet/sf/saxon/serialize/SerializationProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "{http://saxon.sf.net/}line-length"

    const-string v1, "4096"

    invoke-virtual {v0, p0, v1}, Lnet/sf/saxon/serialize/SerializationProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p0, "omit-xml-declaration"

    const-string v1, "no"

    invoke-virtual {v0, p0, v1}, Lnet/sf/saxon/serialize/SerializationProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "encoding"

    const-string v1, "utf-8"

    invoke-virtual {v0, p0, v1}, Lnet/sf/saxon/serialize/SerializationProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "version"

    const-string v1, "1.0"

    invoke-virtual {v0, p0, v1}, Lnet/sf/saxon/serialize/SerializationProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "{http://saxon.sf.net/}single-quotes"

    invoke-virtual {v0, p0, v2}, Lnet/sf/saxon/serialize/SerializationProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 4

    :try_start_0
    iget-boolean v0, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->e:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->c:Lnet/sf/saxon/event/ComplexContentOutputter;

    invoke-virtual {v0}, Lnet/sf/saxon/event/ComplexContentOutputter;->startContent()V

    iput-boolean v1, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->e:Z

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->j:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Lnet/sf/saxon/om/NoNamespaceName;

    invoke-direct {v0, p1}, Lnet/sf/saxon/om/NoNamespaceName;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v2, Lnet/sf/saxon/om/FingerprintedQName;

    const-string v3, ""

    invoke-direct {v2, v3, v0, p1}, Lnet/sf/saxon/om/FingerprintedQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    :goto_0
    iget-object p1, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->c:Lnet/sf/saxon/event/ComplexContentOutputter;

    invoke-static {}, Lnet/sf/saxon/type/Untyped;->getInstance()Lnet/sf/saxon/type/Untyped;

    move-result-object v2

    sget-object v3, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    invoke-virtual {p1, v0, v2, v3, v1}, Lnet/sf/saxon/event/ComplexContentOutputter;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/s9api/Location;I)V

    iget-object p1, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->f:Ljava/lang/String;

    if-eqz p1, :cond_2

    const-string v0, "role"

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->f:Ljava/lang/String;
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->e:Z

    iget p1, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->d:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->d:I

    return p1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    new-instance p1, Ljava/lang/InternalError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-boolean p0, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->l:Z

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    const-string p0, "/"

    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    aget-object p0, p0, v0

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public close()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->b:Lnet/sf/saxon/event/Receiver;

    instance-of v1, v0, Lnet/sf/saxon/event/CheckSumFilter;

    if-eqz v1, :cond_0

    check-cast v0, Lnet/sf/saxon/event/CheckSumFilter;

    invoke-virtual {v0}, Lnet/sf/saxon/event/CheckSumFilter;->getChecksum()I

    move-result v0

    iget-object v1, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->c:Lnet/sf/saxon/event/ComplexContentOutputter;

    const-string v2, "\u03a3"

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/str/BMPString;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    sget-object v3, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lnet/sf/saxon/event/ComplexContentOutputter;->processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->c:Lnet/sf/saxon/event/ComplexContentOutputter;

    invoke-virtual {v0}, Lnet/sf/saxon/event/ComplexContentOutputter;->endDocument()V

    iget-object p0, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->c:Lnet/sf/saxon/event/ComplexContentOutputter;

    invoke-virtual {p0}, Lnet/sf/saxon/event/ComplexContentOutputter;->close()V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    new-instance v0, Ljava/lang/InternalError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public emitAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    if-eqz p2, :cond_1

    const-string v0, "module"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p2}, Lnet/sf/saxon/trace/ExpressionPresenter;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    move-object v3, p2

    .line 3
    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->c:Lnet/sf/saxon/event/ComplexContentOutputter;

    new-instance v1, Lnet/sf/saxon/om/NoNamespaceName;

    invoke-direct {v1, p1}, Lnet/sf/saxon/om/NoNamespaceName;-><init>(Ljava/lang/String;)V

    sget-object v2, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    sget-object v4, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lnet/sf/saxon/event/ComplexContentOutputter;->attribute(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    .line 5
    new-instance p1, Ljava/lang/InternalError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public emitAttribute(Ljava/lang/String;Lnet/sf/saxon/om/StructuredQName;)V
    .locals 6

    .line 6
    invoke-virtual {p2}, Lnet/sf/saxon/om/StructuredQName;->getEQName()Ljava/lang/String;

    move-result-object v3

    .line 7
    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->c:Lnet/sf/saxon/event/ComplexContentOutputter;

    new-instance v1, Lnet/sf/saxon/om/NoNamespaceName;

    invoke-direct {v1, p1}, Lnet/sf/saxon/om/NoNamespaceName;-><init>(Ljava/lang/String;)V

    sget-object v2, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    sget-object v4, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lnet/sf/saxon/event/ComplexContentOutputter;->attribute(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    .line 9
    new-instance p1, Ljava/lang/InternalError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public emitRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->k:Lnet/sf/saxon/trace/ExpressionPresenter$Options;

    check-cast v0, Lnet/sf/saxon/trace/ExpressionPresenter$ExportOptions;

    iget-boolean v0, v0, Lnet/sf/saxon/trace/ExpressionPresenter$ExportOptions;->suppressStaticContext:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->l:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getStaticBaseUri()Ljava/net/URI;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getStaticBaseUri()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p2}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getStaticBaseUri()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "baseUri"

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getStaticBaseUriString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getDefaultCollationName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://www.w3.org/2005/xpath-functions/collation/codepoint"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getDefaultCollationName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getDefaultCollationName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const-string v0, "defaultCollation"

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getDefaultCollationName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getDefaultElementNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getDefaultElementNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getDefaultElementNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    const-string v0, "defaultElementNS"

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getDefaultElementNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v0, "http://www.w3.org/2005/xpath-functions"

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getDefaultFunctionNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "defaultFunctionNS"

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getDefaultFunctionNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->k:Lnet/sf/saxon/trace/ExpressionPresenter$Options;

    check-cast v0, Lnet/sf/saxon/trace/ExpressionPresenter$ExportOptions;

    iget-boolean v0, v0, Lnet/sf/saxon/trace/ExpressionPresenter$ExportOptions;->suppressStaticContext:Z

    if-nez v0, :cond_b

    if-eqz p2, :cond_7

    invoke-virtual {p1, p2}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->declaresSameNamespaces(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)Z

    move-result p2

    if-nez p2, :cond_b

    :cond_7
    new-instance p2, Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-direct {p2}, Lnet/sf/saxon/str/UnicodeBuilder;-><init>()V

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->iteratePrefixes()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getURIForPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(Ljava/lang/CharSequence;)Lnet/sf/saxon/str/UnicodeBuilder;

    const-string v3, "="

    invoke-virtual {p2, v3}, Lnet/sf/saxon/str/UnicodeBuilder;->append(Ljava/lang/CharSequence;)Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-static {v2}, Lnet/sf/saxon/str/StringTool;->codePoints(Ljava/lang/CharSequence;)Lnet/sf/saxon/z/IntIterator;

    move-result-object v3

    invoke-static {v3}, Lnet/sf/saxon/value/Whitespace;->containsWhitespace(Lnet/sf/saxon/z/IntIterator;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-static {v1}, Lnet/sf/saxon/lib/NamespaceConstant;->getUriForConventionalPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v2, "~"

    :cond_8
    invoke-virtual {p2, v2}, Lnet/sf/saxon/str/UnicodeBuilder;->append(Ljava/lang/CharSequence;)Lnet/sf/saxon/str/UnicodeBuilder;

    const-string v1, " "

    invoke-virtual {p2, v1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(Ljava/lang/CharSequence;)Lnet/sf/saxon/str/UnicodeBuilder;

    goto :goto_0

    :cond_9
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot export a stylesheet if namespaces contain whitespace: \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    const-string p1, "ns"

    invoke-virtual {p2}, Lnet/sf/saxon/str/UnicodeBuilder;->toUnicodeString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p2

    invoke-static {p2}, Lnet/sf/saxon/value/Whitespace;->trim(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_b
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public endElement()I
    .locals 2

    :try_start_0
    iget-boolean v0, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->c:Lnet/sf/saxon/event/ComplexContentOutputter;

    invoke-virtual {v0}, Lnet/sf/saxon/event/ComplexContentOutputter;->startContent()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->e:Z

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->c:Lnet/sf/saxon/event/ComplexContentOutputter;

    invoke-virtual {v0}, Lnet/sf/saxon/event/ComplexContentOutputter;->endElement()V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->h:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->g:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    :cond_1
    iget v0, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->d:I

    return v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    new-instance v0, Ljava/lang/InternalError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endSubsidiaryElement()V
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public getConfiguration()Lnet/sf/saxon/Configuration;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->a:Lnet/sf/saxon/Configuration;

    return-object p0
.end method

.method public getNamePool()Lnet/sf/saxon/om/NamePool;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object p0

    return-object p0
.end method

.method public getOptions()Lnet/sf/saxon/trace/ExpressionPresenter$Options;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->k:Lnet/sf/saxon/trace/ExpressionPresenter$Options;

    return-object p0
.end method

.method public getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object p0

    return-object p0
.end method

.method public init(Lnet/sf/saxon/Configuration;Ljavax/xml/transform/stream/StreamResult;Z)V
    .locals 3

    .line 1
    invoke-static {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->makeDefaultProperties(Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/serialize/SerializationProperties;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getXMLVersion()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    .line 3
    invoke-virtual {p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->getOptions()Lnet/sf/saxon/trace/ExpressionPresenter$Options;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/trace/ExpressionPresenter$ExportOptions;

    iget-object v1, v1, Lnet/sf/saxon/trace/ExpressionPresenter$ExportOptions;->target:Ljava/lang/String;

    const-string v2, "JS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object v1

    const-string v2, "For target=JS, the SEF file will use XML 1.0, which disallows control characters"

    invoke-virtual {v1, v2}, Lnet/sf/saxon/lib/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "version"

    const-string v2, "1.1"

    .line 5
    invoke-virtual {v0, v1, v2}, Lnet/sf/saxon/serialize/SerializationProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getSerializerFactory()Lnet/sf/saxon/lib/SerializerFactory;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Lnet/sf/saxon/lib/SerializerFactory;->getReceiver(Ljavax/xml/transform/Result;Lnet/sf/saxon/serialize/SerializationProperties;)Lnet/sf/saxon/event/Receiver;

    move-result-object p2

    iput-object p2, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->b:Lnet/sf/saxon/event/Receiver;

    .line 7
    new-instance v0, Lnet/sf/saxon/event/NamespaceReducer;

    invoke-direct {v0, p2}, Lnet/sf/saxon/event/NamespaceReducer;-><init>(Lnet/sf/saxon/event/Receiver;)V

    iput-object v0, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->b:Lnet/sf/saxon/event/Receiver;

    if-eqz p3, :cond_2

    .line 8
    new-instance p2, Lnet/sf/saxon/event/CheckSumFilter;

    invoke-direct {p2, v0}, Lnet/sf/saxon/event/CheckSumFilter;-><init>(Lnet/sf/saxon/event/Receiver;)V

    iput-object p2, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->b:Lnet/sf/saxon/event/Receiver;

    .line 9
    :cond_2
    new-instance p2, Lnet/sf/saxon/event/ComplexContentOutputter;

    iget-object p3, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->b:Lnet/sf/saxon/event/Receiver;

    invoke-direct {p2, p3}, Lnet/sf/saxon/event/ComplexContentOutputter;-><init>(Lnet/sf/saxon/event/Receiver;)V

    iput-object p2, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->c:Lnet/sf/saxon/event/ComplexContentOutputter;
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_1

    .line 10
    iput-object p1, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->a:Lnet/sf/saxon/Configuration;

    .line 11
    :try_start_1
    invoke-virtual {p2}, Lnet/sf/saxon/event/ComplexContentOutputter;->open()V

    .line 12
    iget-object p0, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->c:Lnet/sf/saxon/event/ComplexContentOutputter;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/event/ComplexContentOutputter;->startDocument(I)V
    :try_end_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 13
    invoke-virtual {p0}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    .line 14
    new-instance p1, Ljava/lang/InternalError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p0

    .line 15
    invoke-virtual {p0}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    .line 16
    new-instance p1, Ljava/lang/InternalError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public init(Lnet/sf/saxon/Configuration;Lnet/sf/saxon/event/Receiver;Z)V
    .locals 1

    .line 17
    iput-object p2, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->b:Lnet/sf/saxon/event/Receiver;

    .line 18
    new-instance v0, Lnet/sf/saxon/event/NamespaceReducer;

    invoke-direct {v0, p2}, Lnet/sf/saxon/event/NamespaceReducer;-><init>(Lnet/sf/saxon/event/Receiver;)V

    iput-object v0, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->b:Lnet/sf/saxon/event/Receiver;

    if-eqz p3, :cond_0

    .line 19
    new-instance p2, Lnet/sf/saxon/event/CheckSumFilter;

    invoke-direct {p2, v0}, Lnet/sf/saxon/event/CheckSumFilter;-><init>(Lnet/sf/saxon/event/Receiver;)V

    iput-object p2, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->b:Lnet/sf/saxon/event/Receiver;

    .line 20
    :cond_0
    new-instance p2, Lnet/sf/saxon/event/ComplexContentOutputter;

    iget-object p3, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->b:Lnet/sf/saxon/event/Receiver;

    invoke-direct {p2, p3}, Lnet/sf/saxon/event/ComplexContentOutputter;-><init>(Lnet/sf/saxon/event/Receiver;)V

    iput-object p2, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->c:Lnet/sf/saxon/event/ComplexContentOutputter;

    .line 21
    iput-object p1, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->a:Lnet/sf/saxon/Configuration;

    .line 22
    :try_start_0
    invoke-virtual {p2}, Lnet/sf/saxon/event/ComplexContentOutputter;->open()V

    .line 23
    iget-object p0, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->c:Lnet/sf/saxon/event/ComplexContentOutputter;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/event/ComplexContentOutputter;->startDocument(I)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 24
    invoke-virtual {p0}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    .line 25
    new-instance p1, Ljava/lang/InternalError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isRelocatable()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->l:Z

    return p0
.end method

.method public namespace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->c:Lnet/sf/saxon/event/ComplexContentOutputter;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lnet/sf/saxon/event/ComplexContentOutputter;->namespace(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    new-instance p1, Ljava/lang/InternalError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setChildRole(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->f:Ljava/lang/String;

    return-void
.end method

.method public setDefaultNamespace(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->j:Ljava/lang/String;

    iget-object v0, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->i:Lnet/sf/saxon/om/NamespaceMap;

    const-string v1, ""

    invoke-virtual {v0, v1, p1}, Lnet/sf/saxon/om/NamespaceMap;->put(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceMap;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->i:Lnet/sf/saxon/om/NamespaceMap;

    return-void
.end method

.method public setOptions(Lnet/sf/saxon/trace/ExpressionPresenter$Options;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->k:Lnet/sf/saxon/trace/ExpressionPresenter$Options;

    return-void
.end method

.method public setRelocatable(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->l:Z

    return-void
.end method

.method public startElement(Ljava/lang/String;)I
    .locals 1

    .line 14
    iget-object v0, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->h:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-virtual {p0, p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->a(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public startElement(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)I
    .locals 5

    .line 1
    iget-object v0, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->g:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->g:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/Expression;

    .line 2
    :goto_0
    iget-object v2, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->g:Ljava/util/Stack;

    invoke-virtual {v2, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v2, p0, Lnet/sf/saxon/trace/ExpressionPresenter;->h:Ljava/util/Stack;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0, p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->a(Ljava/lang/String;)I

    move-result p1

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p2}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v2

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v3

    if-eq v2, v3, :cond_4

    .line 6
    :cond_1
    invoke-virtual {p2}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    invoke-virtual {p2}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v2

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v1

    :goto_1
    invoke-virtual {p0, v2, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    .line 8
    :cond_4
    :goto_2
    invoke-virtual {p2}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v1

    invoke-interface {v1}, Lnet/sf/saxon/s9api/Location;->getSystemId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    .line 9
    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v2

    invoke-interface {v2}, Lnet/sf/saxon/s9api/Location;->getSystemId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v2

    invoke-interface {v2}, Lnet/sf/saxon/s9api/Location;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    const-string v2, "module"

    .line 10
    invoke-virtual {p0, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_6
    invoke-virtual {p2}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p2

    invoke-interface {p2}, Lnet/sf/saxon/s9api/Location;->getLineNumber()I

    move-result p2

    if-eqz v0, :cond_7

    .line 12
    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/s9api/Location;->getLineNumber()I

    move-result v0

    if-eq v0, p2, :cond_8

    const/4 v0, -0x1

    if-eq p2, v0, :cond_8

    .line 13
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "line"

    invoke-virtual {p0, v0, p2}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return p1
.end method

.method public startSubsidiaryElement(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    return-void
.end method
