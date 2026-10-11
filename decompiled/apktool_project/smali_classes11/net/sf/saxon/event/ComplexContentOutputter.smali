.class public final Lnet/sf/saxon/event/ComplexContentOutputter;
.super Lnet/sf/saxon/event/Outputter;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/event/Receiver;
.implements Ljavax/xml/transform/Result;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/event/ComplexContentOutputter$b;
    }
.end annotation


# instance fields
.field public e:Lnet/sf/saxon/event/Receiver;

.field public f:Lnet/sf/saxon/om/NodeName;

.field public g:I

.field public h:[Z

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/om/AttributeInfo;",
            ">;"
        }
    .end annotation
.end field

.field public j:Lnet/sf/saxon/om/NamespaceMap;

.field public final k:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lnet/sf/saxon/om/NamespaceMap;",
            ">;"
        }
    .end annotation
.end field

.field public l:Lnet/sf/saxon/type/SchemaType;

.field public m:I

.field public n:Lnet/sf/saxon/s9api/Location;

.field public o:Lnet/sf/saxon/s9api/HostLanguage;

.field public p:Lnet/sf/saxon/event/RegularSequenceChecker$State;

.field public q:Z


# direct methods
.method public constructor <init>(Lnet/sf/saxon/event/Receiver;)V
    .locals 2

    invoke-direct {p0}, Lnet/sf/saxon/event/Outputter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->f:Lnet/sf/saxon/om/NodeName;

    const/4 v1, -0x1

    iput v1, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->g:I

    const/16 v1, 0x14

    new-array v1, v1, [Z

    iput-object v1, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->h:[Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->i:Ljava/util/List;

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->k:Ljava/util/Stack;

    iput-object v0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->l:Lnet/sf/saxon/type/SchemaType;

    sget-object v0, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    iput-object v0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->n:Lnet/sf/saxon/s9api/Location;

    sget-object v0, Lnet/sf/saxon/s9api/HostLanguage;->XSLT:Lnet/sf/saxon/s9api/HostLanguage;

    iput-object v0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->o:Lnet/sf/saxon/s9api/HostLanguage;

    sget-object v0, Lnet/sf/saxon/event/RegularSequenceChecker$State;->INITIAL:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    iput-object v0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->p:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->q:Z

    invoke-interface {p1}, Lnet/sf/saxon/event/Receiver;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/event/ComplexContentOutputter;->setPipelineConfiguration(Lnet/sf/saxon/event/PipelineConfiguration;)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/event/ComplexContentOutputter;->setReceiver(Lnet/sf/saxon/event/Receiver;)V

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lnet/sf/saxon/event/PipelineConfiguration;->getHostLanguage()Lnet/sf/saxon/s9api/HostLanguage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/event/ComplexContentOutputter;->setHostLanguage(Lnet/sf/saxon/s9api/HostLanguage;)V

    invoke-static {}, Lnet/sf/saxon/om/NamespaceMap;->emptyMap()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/event/ComplexContentOutputter;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/event/ComplexContentOutputter;->i(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic b(Lnet/sf/saxon/event/ComplexContentOutputter;Lnet/sf/saxon/s9api/Location;ILnet/sf/saxon/om/Item;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lnet/sf/saxon/event/ComplexContentOutputter;->h(Lnet/sf/saxon/s9api/Location;ILnet/sf/saxon/om/Item;)V

    return-void
.end method

.method private synthetic h(Lnet/sf/saxon/s9api/Location;ILnet/sf/saxon/om/Item;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p3, p1, p2}, Lnet/sf/saxon/event/ComplexContentOutputter;->append(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method private synthetic i(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->q:Z

    return-void
.end method

.method public static makeComplexContentReceiver(Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/lib/ParseOptions;)Lnet/sf/saxon/event/ComplexContentOutputter;
    .locals 3

    invoke-interface {p0}, Ljavax/xml/transform/Result;->getSystemId()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lnet/sf/saxon/lib/ParseOptions;->getSchemaValidationMode()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {p0}, Lnet/sf/saxon/event/Receiver;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/event/PipelineConfiguration;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, p1, v2}, Lnet/sf/saxon/Configuration;->getDocumentValidator(Lnet/sf/saxon/event/Receiver;Ljava/lang/String;Lnet/sf/saxon/lib/ParseOptions;Lnet/sf/saxon/s9api/Location;)Lnet/sf/saxon/event/Receiver;

    move-result-object p0

    :cond_1
    new-instance p1, Lnet/sf/saxon/event/ComplexContentOutputter;

    invoke-direct {p1, p0}, Lnet/sf/saxon/event/ComplexContentOutputter;-><init>(Lnet/sf/saxon/event/Receiver;)V

    invoke-virtual {p1, v0}, Lnet/sf/saxon/event/ComplexContentOutputter;->setSystemId(Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public append(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->g:I

    if-ltz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/event/ComplexContentOutputter;->d(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->e:Lnet/sf/saxon/event/Receiver;

    invoke-interface {p0, p1, p2, p3}, Lnet/sf/saxon/event/Receiver;->append(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;I)V

    :goto_0
    return-void
.end method

.method public attribute(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->g:I

    const/4 v1, 0x2

    if-ltz v0, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->p:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    sget-object v2, Lnet/sf/saxon/event/RegularSequenceChecker$State;->START_TAG:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->o:Lnet/sf/saxon/s9api/HostLanguage;

    iget-object p3, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->h:[Z

    iget p5, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->g:I

    aget-boolean p3, p3, p5

    iget-object p0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->n:Lnet/sf/saxon/s9api/Location;

    invoke-static {v1, p1, p2, p3, p0}, Lnet/sf/saxon/event/NoOpenStartTagException;->makeNoOpenStartTagException(ILjava/lang/String;Lnet/sf/saxon/s9api/HostLanguage;ZLnet/sf/saxon/s9api/Location;)Lnet/sf/saxon/event/NoOpenStartTagException;

    move-result-object p0

    invoke-virtual {p0, p4}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    throw p0

    :cond_1
    :goto_0
    new-instance v0, Lnet/sf/saxon/om/AttributeInfo;

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v2 .. v7}, Lnet/sf/saxon/om/AttributeInfo;-><init>(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V

    iget v2, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->g:I

    const/4 v3, 0x0

    if-ltz v2, :cond_4

    const/high16 v2, 0x100000

    invoke-static {p5, v2}, Lnet/sf/saxon/event/ReceiverOption;->contains(II)Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_1
    iget-object v4, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->i:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    iget-object v4, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->i:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v4}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object p2, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->o:Lnet/sf/saxon/s9api/HostLanguage;

    sget-object p3, Lnet/sf/saxon/s9api/HostLanguage;->XSLT:Lnet/sf/saxon/s9api/HostLanguage;

    if-ne p2, p3, :cond_2

    iget-object p0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->i:Ljava/util/List;

    invoke-interface {p0, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot create an element having two attributes with the same name: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string p1, "XQDY0025"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw p0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    iget v2, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->g:I

    if-nez v2, :cond_6

    sget-object v2, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->h:[Z

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_6

    invoke-interface {p2}, Lnet/sf/saxon/type/HyperType;->isNamespaceSensitive()Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance p2, Lnet/sf/saxon/trans/XPathException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Cannot copy attributes whose type is namespace-sensitive (QName or NOTATION): "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->o:Lnet/sf/saxon/s9api/HostLanguage;

    sget-object p1, Lnet/sf/saxon/s9api/HostLanguage;->XSLT:Lnet/sf/saxon/s9api/HostLanguage;

    if-ne p0, p1, :cond_5

    const-string p0, "XTTE0950"

    goto :goto_2

    :cond_5
    const-string p0, "XQTY0086"

    :goto_2
    invoke-virtual {p2, p0}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw p2

    :cond_6
    iget v2, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->g:I

    if-gez v2, :cond_7

    new-instance v2, Lnet/sf/saxon/tree/util/Orphan;

    invoke-virtual {p0}, Lnet/sf/saxon/event/Outputter;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v4

    invoke-direct {v2, v4}, Lnet/sf/saxon/tree/util/Orphan;-><init>(Lnet/sf/saxon/Configuration;)V

    invoke-virtual {v2, v1}, Lnet/sf/saxon/tree/util/Orphan;->setNodeKind(S)V

    invoke-virtual {v2, p1}, Lnet/sf/saxon/tree/util/Orphan;->setNodeName(Lnet/sf/saxon/om/NodeName;)V

    invoke-virtual {v2, p2}, Lnet/sf/saxon/tree/util/Orphan;->setTypeAnnotation(Lnet/sf/saxon/type/SchemaType;)V

    invoke-static {p3}, Lnet/sf/saxon/str/StringView;->tidy(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {v2, p1}, Lnet/sf/saxon/tree/util/Orphan;->setStringValue(Lnet/sf/saxon/str/UnicodeString;)V

    iget-object p1, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->e:Lnet/sf/saxon/event/Receiver;

    invoke-interface {p1, v2, p4, p5}, Lnet/sf/saxon/event/Receiver;->append(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;I)V

    :cond_7
    iget-object p1, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->i:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-boolean v3, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->q:Z

    return-void
.end method

.method public final c(Lnet/sf/saxon/om/NodeName;I)Lnet/sf/saxon/om/NodeName;
    .locals 3

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeName;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeName;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object p1

    :cond_0
    iget-object v2, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->j:Lnet/sf/saxon/om/NamespaceMap;

    invoke-virtual {v2, v0}, Lnet/sf/saxon/om/NamespaceMap;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object p2, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->j:Lnet/sf/saxon/om/NamespaceMap;

    invoke-virtual {p2, v0, v1}, Lnet/sf/saxon/om/NamespaceMap;->put(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceMap;

    move-result-object p2

    iput-object p2, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->j:Lnet/sf/saxon/om/NamespaceMap;

    return-object p1

    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object p1

    :cond_2
    invoke-virtual {p0, v0, v1, p2}, Lnet/sf/saxon/event/ComplexContentOutputter;->g(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lnet/sf/saxon/om/FingerprintedQName;

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p2, v1, p1}, Lnet/sf/saxon/om/FingerprintedQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->j:Lnet/sf/saxon/om/NamespaceMap;

    invoke-virtual {p1, p2, v1}, Lnet/sf/saxon/om/NamespaceMap;->put(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceMap;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->j:Lnet/sf/saxon/om/NamespaceMap;

    return-object v0
.end method

.method public characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->g:I

    if-ltz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->q:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->p:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    sget-object v1, Lnet/sf/saxon/event/RegularSequenceChecker$State;->START_TAG:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/event/ComplexContentOutputter;->startContent()V

    :cond_2
    iget-object p0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->e:Lnet/sf/saxon/event/Receiver;

    invoke-interface {p0, p1, p2, p3}, Lnet/sf/saxon/event/Receiver;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->e:Lnet/sf/saxon/event/Receiver;

    invoke-interface {v0}, Lnet/sf/saxon/event/Receiver;->close()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->q:Z

    sget-object v0, Lnet/sf/saxon/event/RegularSequenceChecker$State;->FINAL:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    iput-object v0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->p:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    return-void
.end method

.method public comment(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->g:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->p:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    sget-object v1, Lnet/sf/saxon/event/RegularSequenceChecker$State;->START_TAG:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/event/ComplexContentOutputter;->startContent()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->q:Z

    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->e:Lnet/sf/saxon/event/Receiver;

    invoke-interface {p0, p1, p2, p3}, Lnet/sf/saxon/event/Receiver;->comment(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public final d(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    if-eqz p1, :cond_f

    invoke-interface {p1}, Lnet/sf/saxon/om/Item;->getGenre()Lnet/sf/saxon/om/Genre;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/event/ComplexContentOutputter$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_d

    const/4 v3, 0x2

    if-eq v0, v3, :cond_d

    const/4 v4, 0x3

    if-eq v0, v4, :cond_c

    const/4 v5, 0x4

    if-eq v0, v5, :cond_9

    const/4 v6, 0x5

    if-eq v0, v6, :cond_9

    move-object v0, p1

    check-cast v0, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v6

    if-eq v6, v3, :cond_6

    if-eq v6, v4, :cond_4

    const/16 p1, 0x9

    if-eq v6, p1, :cond_2

    const/16 p1, 0xd

    if-eq v6, p1, :cond_1

    const/high16 p1, 0x80000

    invoke-static {p3, p1}, Lnet/sf/saxon/event/ReceiverOption;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v5, 0x6

    :cond_0
    invoke-interface {v0, p0, v5, p2}, Lnet/sf/saxon/om/NodeInfo;->copy(Lnet/sf/saxon/event/Receiver;ILnet/sf/saxon/s9api/Location;)V

    goto/16 :goto_3

    :cond_1
    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v2}, Lnet/sf/saxon/event/ComplexContentOutputter;->namespace(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_3

    :cond_2
    invoke-virtual {p0, v2}, Lnet/sf/saxon/event/ComplexContentOutputter;->startDocument(I)V

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->children()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/NodeInfo;

    invoke-virtual {p0, v0, p2, p3}, Lnet/sf/saxon/event/ComplexContentOutputter;->append(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lnet/sf/saxon/event/ComplexContentOutputter;->endDocument()V

    goto :goto_3

    :cond_4
    instance-of p3, v0, Lnet/sf/saxon/tree/util/Orphan;

    if-eqz p3, :cond_5

    check-cast v0, Lnet/sf/saxon/tree/util/Orphan;

    invoke-virtual {v0}, Lnet/sf/saxon/tree/util/Orphan;->isDisableOutputEscaping()Z

    move-result p3

    if-eqz p3, :cond_5

    goto :goto_1

    :cond_5
    move v1, v2

    :goto_1
    invoke-interface {p1}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lnet/sf/saxon/event/ComplexContentOutputter;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    goto :goto_3

    :cond_6
    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/type/SimpleType;

    invoke-interface {p1}, Lnet/sf/saxon/type/HyperType;->isNamespaceSensitive()Z

    move-result p1

    if-eqz p1, :cond_8

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot copy attributes whose type is namespace-sensitive (QName or NOTATION): "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getDisplayName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, v3}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/event/Outputter;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/event/PipelineConfiguration;->isXSLT()Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "XTTE0950"

    goto :goto_2

    :cond_7
    const-string p0, "XQTY0086"

    :goto_2
    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw p1

    :cond_8
    invoke-static {v0}, Lnet/sf/saxon/om/NameOfNode;->makeName(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/om/NodeName;

    move-result-object v4

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lnet/sf/saxon/type/SimpleType;

    invoke-interface {v0}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    move-object v3, p0

    move-object v7, p2

    invoke-virtual/range {v3 .. v8}, Lnet/sf/saxon/event/ComplexContentOutputter;->attribute(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V

    :goto_3
    iput-boolean v2, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->q:Z

    goto :goto_5

    :cond_9
    instance-of p1, p1, Lnet/sf/saxon/ma/map/MapItem;

    if-eqz p1, :cond_a

    const-string p1, "map"

    goto :goto_4

    :cond_a
    const-string p1, "function item"

    :goto_4
    invoke-virtual {p0}, Lnet/sf/saxon/event/ComplexContentOutputter;->f()Ljava/lang/String;

    move-result-object p0

    const-string p3, "SENR"

    invoke-virtual {p0, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_b

    new-instance p3, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot serialize a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " using this output method"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, p0, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    throw p3

    :cond_b
    new-instance p3, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot add a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to an XDM node tree"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, p0, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    throw p3

    :cond_c
    check-cast p1, Lnet/sf/saxon/ma/arrays/ArrayItem;

    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/event/ComplexContentOutputter;->e(Lnet/sf/saxon/ma/arrays/ArrayItem;Lnet/sf/saxon/s9api/Location;I)V

    goto :goto_5

    :cond_d
    iget-boolean p3, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->q:Z

    if-eqz p3, :cond_e

    sget-object p3, Lnet/sf/saxon/str/StringConstants;->SINGLE_SPACE:Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {p0, p3, p2, v2}, Lnet/sf/saxon/event/ComplexContentOutputter;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    :cond_e
    invoke-interface {p1}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v2}, Lnet/sf/saxon/event/ComplexContentOutputter;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    iput-boolean v1, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->q:Z

    :cond_f
    :goto_5
    return-void
.end method

.method public final e(Lnet/sf/saxon/ma/arrays/ArrayItem;Lnet/sf/saxon/s9api/Location;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/ma/arrays/ArrayItem;->members()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/Sequence;

    invoke-interface {v0}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/c6e;

    invoke-direct {v1, p0, p2, p3}, Lcom/sunia/HTREnginev2/c6e;-><init>(Lnet/sf/saxon/event/ComplexContentOutputter;Lnet/sf/saxon/s9api/Location;I)V

    invoke-static {v0, v1}, Lnet/sf/saxon/om/SequenceTool;->supply(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/om/ItemConsumer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->g:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->e:Lnet/sf/saxon/event/Receiver;

    invoke-interface {v0}, Lnet/sf/saxon/event/Receiver;->endDocument()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->q:Z

    iget v0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->g:I

    if-gez v0, :cond_1

    sget-object v0, Lnet/sf/saxon/event/RegularSequenceChecker$State;->OPEN:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    goto :goto_0

    :cond_1
    sget-object v0, Lnet/sf/saxon/event/RegularSequenceChecker$State;->CONTENT:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    :goto_0
    iput-object v0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->p:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    return-void
.end method

.method public endElement()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->p:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    sget-object v1, Lnet/sf/saxon/event/RegularSequenceChecker$State;->START_TAG:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/event/ComplexContentOutputter;->startContent()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->f:Lnet/sf/saxon/om/NodeName;

    :goto_0
    iget-object v0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->e:Lnet/sf/saxon/event/Receiver;

    invoke-interface {v0}, Lnet/sf/saxon/event/Receiver;->endElement()V

    iget v0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->g:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->q:Z

    if-gez v0, :cond_1

    sget-object v0, Lnet/sf/saxon/event/RegularSequenceChecker$State;->OPEN:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    goto :goto_1

    :cond_1
    sget-object v0, Lnet/sf/saxon/event/RegularSequenceChecker$State;->CONTENT:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    :goto_1
    iput-object v0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->p:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    iget-object p0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->k:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/event/Outputter;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/event/PipelineConfiguration;->isXSLT()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "XTDE0450"

    goto :goto_0

    :cond_0
    const-string p0, "XQTY0105"

    :goto_0
    return-object p0
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    const-string p0, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "xml"

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x5f

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getReceiver()Lnet/sf/saxon/event/Receiver;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->e:Lnet/sf/saxon/event/Receiver;

    return-object p0
.end method

.method public getStringReceiver(ZLnet/sf/saxon/s9api/Location;)Lnet/sf/saxon/str/UniStringConsumer;
    .locals 7

    iget v0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->g:I

    if-ltz v0, :cond_0

    new-instance v0, Lnet/sf/saxon/event/ComplexContentOutputter$b;

    iget-boolean v3, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->q:Z

    new-instance v6, Lcom/sunia/HTREnginev2/d6e;

    invoke-direct {v6, p0}, Lcom/sunia/HTREnginev2/d6e;-><init>(Lnet/sf/saxon/event/ComplexContentOutputter;)V

    move-object v1, v0

    move-object v2, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/event/ComplexContentOutputter$b;-><init>(Lnet/sf/saxon/event/ComplexContentOutputter;ZZLnet/sf/saxon/s9api/Location;Ljava/util/function/Consumer;)V

    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lnet/sf/saxon/event/Outputter;->getStringReceiver(ZLnet/sf/saxon/s9api/Location;)Lnet/sf/saxon/str/UniStringConsumer;

    move-result-object p0

    return-object p0
.end method

.method public namespace(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x40

    invoke-static {p3, v0}, Lnet/sf/saxon/event/ReceiverOption;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p3, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->j:Lnet/sf/saxon/om/NamespaceMap;

    invoke-virtual {p3, p1, p2}, Lnet/sf/saxon/om/NamespaceMap;->put(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceMap;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->j:Lnet/sf/saxon/om/NamespaceMap;

    goto/16 :goto_0

    :cond_0
    iget v0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->g:I

    const/16 v1, 0xd

    if-ltz v0, :cond_6

    iget-object v2, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->p:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    sget-object v3, Lnet/sf/saxon/event/RegularSequenceChecker$State;->START_TAG:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    if-ne v2, v3, :cond_5

    iget-object v0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->f:Lnet/sf/saxon/om/NodeName;

    const-string v1, ""

    invoke-interface {v0, v1}, Lnet/sf/saxon/om/NodeName;->hasURI(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const-string v2, "XQDY0102"

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot output a namespace node for the default namespace ("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") when the element is in no namespace"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->o:Lnet/sf/saxon/s9api/HostLanguage;

    sget-object p2, Lnet/sf/saxon/s9api/HostLanguage;->XSLT:Lnet/sf/saxon/s9api/HostLanguage;

    if-ne p0, p2, :cond_1

    const-string v2, "XTDE0440"

    :cond_1
    invoke-virtual {p1, v2}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/16 v0, 0x20

    invoke-static {p3, v0}, Lnet/sf/saxon/event/ReceiverOption;->contains(II)Z

    move-result p3

    if-eqz p3, :cond_4

    iget-object p3, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->j:Lnet/sf/saxon/om/NamespaceMap;

    invoke-virtual {p3, p1}, Lnet/sf/saxon/om/NamespaceMap;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_4

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot create two namespace nodes with the same prefix mapped to different URIs (prefix=\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\", URIs=("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\", \""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->o:Lnet/sf/saxon/s9api/HostLanguage;

    sget-object p1, Lnet/sf/saxon/s9api/HostLanguage;->XSLT:Lnet/sf/saxon/s9api/HostLanguage;

    if-ne p0, p1, :cond_3

    const-string v2, "XTDE0430"

    :cond_3
    invoke-virtual {v0, v2}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object p3, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->j:Lnet/sf/saxon/om/NamespaceMap;

    invoke-virtual {p3, p1, p2}, Lnet/sf/saxon/om/NamespaceMap;->put(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceMap;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->j:Lnet/sf/saxon/om/NamespaceMap;

    goto :goto_0

    :cond_5
    iget-object p2, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->o:Lnet/sf/saxon/s9api/HostLanguage;

    iget-object p3, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->h:[Z

    aget-boolean p3, p3, v0

    iget-object p0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->n:Lnet/sf/saxon/s9api/Location;

    invoke-static {v1, p1, p2, p3, p0}, Lnet/sf/saxon/event/NoOpenStartTagException;->makeNoOpenStartTagException(ILjava/lang/String;Lnet/sf/saxon/s9api/HostLanguage;ZLnet/sf/saxon/s9api/Location;)Lnet/sf/saxon/event/NoOpenStartTagException;

    move-result-object p0

    throw p0

    :cond_6
    new-instance v0, Lnet/sf/saxon/tree/util/Orphan;

    invoke-virtual {p0}, Lnet/sf/saxon/event/Outputter;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v2

    invoke-direct {v0, v2}, Lnet/sf/saxon/tree/util/Orphan;-><init>(Lnet/sf/saxon/Configuration;)V

    invoke-virtual {v0, v1}, Lnet/sf/saxon/tree/util/Orphan;->setNodeKind(S)V

    new-instance v1, Lnet/sf/saxon/om/NoNamespaceName;

    invoke-direct {v1, p1}, Lnet/sf/saxon/om/NoNamespaceName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lnet/sf/saxon/tree/util/Orphan;->setNodeName(Lnet/sf/saxon/om/NodeName;)V

    invoke-static {p2}, Lnet/sf/saxon/str/StringView;->tidy(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/sf/saxon/tree/util/Orphan;->setStringValue(Lnet/sf/saxon/str/UnicodeString;)V

    iget-object p1, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->e:Lnet/sf/saxon/event/Receiver;

    sget-object p2, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    invoke-interface {p1, v0, p2, p3}, Lnet/sf/saxon/event/Receiver;->append(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;I)V

    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->q:Z

    return-void
.end method

.method public namespaces(Lnet/sf/saxon/om/NamespaceBindingSet;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of v0, p1, Lnet/sf/saxon/om/NamespaceMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->j:Lnet/sf/saxon/om/NamespaceMap;

    invoke-virtual {v0}, Lnet/sf/saxon/om/NamespaceMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x40

    invoke-static {p2, v0}, Lnet/sf/saxon/event/ReceiverOption;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/om/NamespaceMap;

    iput-object p1, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->j:Lnet/sf/saxon/om/NamespaceMap;

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lnet/sf/saxon/event/Outputter;->namespaces(Lnet/sf/saxon/om/NamespaceBindingSet;I)V

    :goto_0
    return-void
.end method

.method public open()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->e:Lnet/sf/saxon/event/Receiver;

    invoke-interface {v0}, Lnet/sf/saxon/event/Receiver;->open()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->q:Z

    sget-object v0, Lnet/sf/saxon/event/RegularSequenceChecker$State;->OPEN:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    iput-object v0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->p:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->g:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->p:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    sget-object v1, Lnet/sf/saxon/event/RegularSequenceChecker$State;->START_TAG:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/event/ComplexContentOutputter;->startContent()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->q:Z

    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->e:Lnet/sf/saxon/event/Receiver;

    invoke-interface {p0, p1, p2, p3, p4}, Lnet/sf/saxon/event/Receiver;->processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public setHostLanguage(Lnet/sf/saxon/s9api/HostLanguage;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->o:Lnet/sf/saxon/s9api/HostLanguage;

    return-void
.end method

.method public setPipelineConfiguration(Lnet/sf/saxon/event/PipelineConfiguration;)V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/event/Outputter;->pipelineConfiguration:Lnet/sf/saxon/event/PipelineConfiguration;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lnet/sf/saxon/event/Outputter;->pipelineConfiguration:Lnet/sf/saxon/event/PipelineConfiguration;

    iget-object p0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->e:Lnet/sf/saxon/event/Receiver;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lnet/sf/saxon/event/Receiver;->setPipelineConfiguration(Lnet/sf/saxon/event/PipelineConfiguration;)V

    :cond_0
    return-void
.end method

.method public setReceiver(Lnet/sf/saxon/event/Receiver;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->e:Lnet/sf/saxon/event/Receiver;

    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lnet/sf/saxon/event/Outputter;->setSystemId(Ljava/lang/String;)V

    iget-object p0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->e:Lnet/sf/saxon/event/Receiver;

    invoke-interface {p0, p1}, Ljavax/xml/transform/Result;->setSystemId(Ljava/lang/String;)V

    return-void
.end method

.method public setUnparsedEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->e:Lnet/sf/saxon/event/Receiver;

    invoke-interface {p0, p1, p2, p3}, Lnet/sf/saxon/event/Receiver;->setUnparsedEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startContent()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->p:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    sget-object v1, Lnet/sf/saxon/event/RegularSequenceChecker$State;->START_TAG:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->f:Lnet/sf/saxon/om/NodeName;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/event/ComplexContentOutputter;->c(Lnet/sf/saxon/om/NodeName;I)Lnet/sf/saxon/om/NodeName;

    move-result-object v3

    iget v0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->m:I

    or-int/lit8 v8, v0, 0x40

    move v0, v1

    :goto_0
    iget-object v2, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const-string v4, ""

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->i:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v2}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v2

    invoke-interface {v2, v4}, Lnet/sf/saxon/om/NodeName;->hasURI(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v2, v4}, Lnet/sf/saxon/event/ComplexContentOutputter;->c(Lnet/sf/saxon/om/NodeName;I)Lnet/sf/saxon/om/NodeName;

    move-result-object v4

    if-eq v4, v2, :cond_1

    iget-object v2, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->i:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v2, v4}, Lnet/sf/saxon/om/AttributeInfo;->withNodeName(Lnet/sf/saxon/om/NodeName;)Lnet/sf/saxon/om/AttributeInfo;

    move-result-object v2

    iget-object v4, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->i:Ljava/util/List;

    invoke-interface {v4, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->k:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lnet/sf/saxon/om/NamespaceMap;->emptyMap()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->k:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/NamespaceMap;

    :goto_1
    iget v2, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->m:I

    const/high16 v5, 0x10000

    invoke-static {v2, v5}, Lnet/sf/saxon/event/ReceiverOption;->contains(II)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->j:Lnet/sf/saxon/om/NamespaceMap;

    invoke-virtual {v0, v2}, Lnet/sf/saxon/om/NamespaceMap;->putAll(Lnet/sf/saxon/om/NamespaceMap;)Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v2

    iput-object v2, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->j:Lnet/sf/saxon/om/NamespaceMap;

    :cond_4
    iget-object v2, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->f:Lnet/sf/saxon/om/NodeName;

    invoke-interface {v2, v4}, Lnet/sf/saxon/om/NodeName;->hasURI(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->j:Lnet/sf/saxon/om/NamespaceMap;

    invoke-virtual {v2}, Lnet/sf/saxon/om/NamespaceMap;->getDefaultNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->j:Lnet/sf/saxon/om/NamespaceMap;

    invoke-virtual {v2, v4}, Lnet/sf/saxon/om/NamespaceMap;->remove(Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v2

    iput-object v2, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->j:Lnet/sf/saxon/om/NamespaceMap;

    :cond_5
    iget-object v2, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->i:Ljava/util/List;

    invoke-static {v2}, Lnet/sf/saxon/om/SequenceTool;->attributeMapFromList(Ljava/util/List;)Lnet/sf/saxon/om/AttributeMap;

    move-result-object v5

    iget-object v2, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->e:Lnet/sf/saxon/event/Receiver;

    iget-object v4, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->l:Lnet/sf/saxon/type/SchemaType;

    iget-object v6, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->j:Lnet/sf/saxon/om/NamespaceMap;

    iget-object v7, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->n:Lnet/sf/saxon/s9api/Location;

    invoke-interface/range {v2 .. v8}, Lnet/sf/saxon/event/Receiver;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V

    iget v2, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->m:I

    const/16 v3, 0x80

    invoke-static {v2, v3}, Lnet/sf/saxon/event/ReceiverOption;->contains(II)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->k:Ljava/util/Stack;

    if-eqz v2, :cond_6

    iget-object v0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->j:Lnet/sf/saxon/om/NamespaceMap;

    :cond_6
    invoke-virtual {v3, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static {}, Lnet/sf/saxon/om/NamespaceMap;->emptyMap()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->j:Lnet/sf/saxon/om/NamespaceMap;

    iput-boolean v1, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->q:Z

    sget-object v0, Lnet/sf/saxon/event/RegularSequenceChecker$State;->CONTENT:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    iput-object v0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->p:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    return-void
.end method

.method public startDocument(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->g:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->g:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->e:Lnet/sf/saxon/event/Receiver;

    invoke-interface {v0, p1}, Lnet/sf/saxon/event/Receiver;->startDocument(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->p:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    sget-object v0, Lnet/sf/saxon/event/RegularSequenceChecker$State;->START_TAG:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/event/ComplexContentOutputter;->startContent()V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->q:Z

    iget-object p1, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->h:[Z

    array-length v0, p1

    iget v2, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->g:I

    add-int/lit8 v3, v2, 0x1

    if-ge v0, v3, :cond_2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->h:[Z

    :cond_2
    iget-object p1, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->h:[Z

    iget v0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->g:I

    aput-boolean v1, p1, v0

    sget-object p1, Lnet/sf/saxon/event/RegularSequenceChecker$State;->CONTENT:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    iput-object p1, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->p:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    return-void
.end method

.method public startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->p:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    sget-object v1, Lnet/sf/saxon/event/RegularSequenceChecker$State;->START_TAG:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    if-ne v0, v1, :cond_0

    .line 16
    invoke-virtual {p0}, Lnet/sf/saxon/event/ComplexContentOutputter;->startContent()V

    .line 17
    :cond_0
    iget v0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->g:I

    .line 18
    invoke-interface {p5}, Lnet/sf/saxon/s9api/Location;->saveLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->n:Lnet/sf/saxon/s9api/Location;

    .line 19
    iget-object v0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->h:[Z

    array-length v1, v0

    iget v2, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->g:I

    add-int/lit8 v3, v2, 0x1

    if-ge v1, v3, :cond_1

    mul-int/lit8 v2, v2, 0x2

    .line 20
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->h:[Z

    .line 21
    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->h:[Z

    iget v1, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->g:I

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    const-string v0, ""

    .line 22
    invoke-interface {p1, v0}, Lnet/sf/saxon/om/NodeName;->hasURI(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p4}, Lnet/sf/saxon/om/NamespaceMap;->getDefaultNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 23
    invoke-virtual {p4, v0}, Lnet/sf/saxon/om/NamespaceMap;->remove(Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceMap;

    move-result-object p4

    :cond_2
    const/16 v1, 0x80

    .line 24
    invoke-static {p6, v1}, Lnet/sf/saxon/event/ReceiverOption;->contains(II)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_5

    .line 25
    iget-object v1, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->k:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/NamespaceMap;

    .line 26
    invoke-virtual {v1}, Lnet/sf/saxon/om/NamespaceMap;->getDefaultNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeName;->getURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 27
    invoke-virtual {v1, v0}, Lnet/sf/saxon/om/NamespaceMap;->remove(Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v1

    .line 28
    :cond_3
    invoke-virtual {v1, p4}, Lnet/sf/saxon/om/NamespaceMap;->putAll(Lnet/sf/saxon/om/NamespaceMap;)Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v0

    const/high16 v2, 0x20000

    .line 29
    invoke-static {p6, v2}, Lnet/sf/saxon/event/ReceiverOption;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 30
    iget-object v2, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->k:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 31
    :cond_4
    iget-object v1, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->k:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 32
    :cond_5
    iget-object v0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->k:Ljava/util/Stack;

    invoke-static {}, Lnet/sf/saxon/om/NamespaceMap;->emptyMap()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p4

    :goto_0
    const/high16 v1, 0x10000

    .line 33
    invoke-static {p6, v1}, Lnet/sf/saxon/event/ReceiverOption;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v6, p4

    goto :goto_1

    :cond_6
    move-object v6, v0

    .line 34
    :goto_1
    iget-object v2, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->e:Lnet/sf/saxon/event/Receiver;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p5

    move v8, p6

    invoke-interface/range {v2 .. v8}, Lnet/sf/saxon/event/Receiver;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V

    .line 35
    sget-object p1, Lnet/sf/saxon/event/RegularSequenceChecker$State;->CONTENT:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    iput-object p1, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->p:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    return-void
.end method

.method public startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/s9api/Location;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->g:I

    .line 2
    iget-object v0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->p:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    sget-object v1, Lnet/sf/saxon/event/RegularSequenceChecker$State;->START_TAG:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lnet/sf/saxon/event/ComplexContentOutputter;->startContent()V

    .line 4
    :cond_0
    iput p4, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->m:I

    .line 5
    invoke-interface {p3}, Lnet/sf/saxon/s9api/Location;->saveLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p3

    iput-object p3, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->n:Lnet/sf/saxon/s9api/Location;

    .line 6
    iget-object p3, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->i:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 7
    invoke-static {}, Lnet/sf/saxon/om/NamespaceMap;->emptyMap()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object p3

    iput-object p3, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->j:Lnet/sf/saxon/om/NamespaceMap;

    .line 8
    iput-object p1, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->f:Lnet/sf/saxon/om/NodeName;

    .line 9
    iput-object p2, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->l:Lnet/sf/saxon/type/SchemaType;

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->q:Z

    .line 11
    iget-object p2, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->h:[Z

    array-length p3, p2

    iget p4, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->g:I

    add-int/lit8 v0, p4, 0x1

    if-ge p3, v0, :cond_1

    mul-int/lit8 p4, p4, 0x2

    .line 12
    invoke-static {p2, p4}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object p2

    iput-object p2, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->h:[Z

    .line 13
    :cond_1
    iget-object p2, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->h:[Z

    iget p3, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->g:I

    aput-boolean p1, p2, p3

    .line 14
    iput-object v1, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->p:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    return-void
.end method

.method public usesTypeAnnotations()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/event/ComplexContentOutputter;->e:Lnet/sf/saxon/event/Receiver;

    invoke-interface {p0}, Lnet/sf/saxon/event/Receiver;->usesTypeAnnotations()Z

    move-result p0

    return p0
.end method
