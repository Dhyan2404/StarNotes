.class public Lnet/sf/saxon/serialize/AdaptiveEmitter;
.super Lnet/sf/saxon/event/SequenceWriter;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/event/ReceiverWithOutputProperties;


# static fields
.field public static m:Lnet/sf/saxon/regex/ARegularExpression;


# instance fields
.field public final h:Lnet/sf/saxon/str/UnicodeWriter;

.field public i:Lnet/sf/saxon/serialize/CharacterMap;

.field public j:Ljava/util/Properties;

.field public k:Ljava/lang/String;

.field public l:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "\""

    const-string v1, ""

    invoke-static {v0, v1}, Lnet/sf/saxon/regex/ARegularExpression;->compile(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/regex/ARegularExpression;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/serialize/AdaptiveEmitter;->m:Lnet/sf/saxon/regex/ARegularExpression;

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/event/PipelineConfiguration;Lnet/sf/saxon/str/UnicodeWriter;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/event/SequenceWriter;-><init>(Lnet/sf/saxon/event/PipelineConfiguration;)V

    const-string p1, "\n"

    iput-object p1, p0, Lnet/sf/saxon/serialize/AdaptiveEmitter;->k:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/sf/saxon/serialize/AdaptiveEmitter;->l:Z

    iput-object p2, p0, Lnet/sf/saxon/serialize/AdaptiveEmitter;->h:Lnet/sf/saxon/str/UnicodeWriter;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-super {p0}, Lnet/sf/saxon/event/SequenceWriter;->close()V

    iget-object p0, p0, Lnet/sf/saxon/serialize/AdaptiveEmitter;->h:Lnet/sf/saxon/str/UnicodeWriter;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Lnet/sf/saxon/str/UnicodeWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {v0, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lnet/sf/saxon/serialize/AdaptiveEmitter;->h:Lnet/sf/saxon/str/UnicodeWriter;

    invoke-interface {p0, p1}, Lnet/sf/saxon/str/UnicodeWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final e(Lnet/sf/saxon/str/UnicodeString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lnet/sf/saxon/serialize/AdaptiveEmitter;->h:Lnet/sf/saxon/str/UnicodeWriter;

    invoke-interface {p0, p1}, Lnet/sf/saxon/str/UnicodeWriter;->write(Lnet/sf/saxon/str/UnicodeString;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final f(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_7

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_6

    const/16 v2, 0xa

    if-eq v1, v2, :cond_5

    const/16 v2, 0xd

    if-eq v1, v2, :cond_4

    const/16 v2, 0x22

    if-eq v1, v2, :cond_3

    const/16 v2, 0x26

    if-eq v1, v2, :cond_2

    const/16 v2, 0x3c

    if-eq v1, v2, :cond_1

    const/16 v2, 0x3e

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v1, "&gt;"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v1, "&lt;"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v1, "&amp;"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string v1, "&quot;"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const-string v1, "&#xD;"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    const-string v1, "&#xA;"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    const-string v1, "&#x9;"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final g(Lnet/sf/saxon/om/Sequence;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v0

    instance-of v1, p1, Lnet/sf/saxon/om/GroundedValue;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    check-cast p1, Lnet/sf/saxon/om/GroundedValue;

    invoke-interface {p1}, Lnet/sf/saxon/om/GroundedValue;->getLength()I

    move-result p1

    if-ne p1, v3, :cond_0

    move p1, v3

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    if-nez p1, :cond_1

    const-string v1, "("

    invoke-virtual {p0, v1}, Lnet/sf/saxon/serialize/AdaptiveEmitter;->d(Ljava/lang/String;)V

    :cond_1
    :goto_1
    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v1

    if-eqz v1, :cond_3

    if-nez v3, :cond_2

    const-string v3, ","

    invoke-virtual {p0, v3}, Lnet/sf/saxon/serialize/AdaptiveEmitter;->d(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0, v1}, Lnet/sf/saxon/serialize/AdaptiveEmitter;->k(Lnet/sf/saxon/om/Item;)V

    move v3, v2

    goto :goto_1

    :cond_3
    if-nez p1, :cond_4

    const-string p1, ")"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/serialize/AdaptiveEmitter;->d(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public getOutputProperties()Ljava/util/Properties;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/serialize/AdaptiveEmitter;->j:Ljava/util/Properties;

    return-object p0
.end method

.method public final h(Lnet/sf/saxon/ma/arrays/ArrayItem;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "["

    invoke-virtual {p0, v0}, Lnet/sf/saxon/serialize/AdaptiveEmitter;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/sf/saxon/ma/arrays/ArrayItem;->members()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/Sequence;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    const-string v2, ","

    invoke-virtual {p0, v2}, Lnet/sf/saxon/serialize/AdaptiveEmitter;->d(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0, v1}, Lnet/sf/saxon/serialize/AdaptiveEmitter;->g(Lnet/sf/saxon/om/Sequence;)V

    goto :goto_0

    :cond_1
    const-string p1, "]"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/serialize/AdaptiveEmitter;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final i(Lnet/sf/saxon/value/AtomicValue;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->getPrimitiveType()Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/type/BuiltInAtomicType;->getFingerprint()I

    move-result v0

    const/16 v1, 0x215

    if-eq v0, v1, :cond_4

    const/16 v1, 0x277

    if-eq v0, v1, :cond_2

    const/16 v1, 0x279

    const-string v2, "\")"

    if-eq v0, v1, :cond_1

    const/16 v1, 0x27a

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    const-string p0, "***"

    return-object p0

    :pswitch_0
    check-cast p1, Lnet/sf/saxon/value/QualifiedNameValue;

    invoke-virtual {p1}, Lnet/sf/saxon/value/QualifiedNameValue;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getEQName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Lnet/sf/saxon/value/DoubleValue;

    invoke-static {p1}, Lnet/sf/saxon/functions/FormatNumber;->formatExponential(Lnet/sf/saxon/value/DoubleValue;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->getPrimitiveType()Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/type/BuiltInAtomicType;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "(\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->effectiveBooleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "true()"

    goto :goto_0

    :cond_0
    const-string p0, "false()"

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "xs:duration(\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :pswitch_4
    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    sget-object v0, Lnet/sf/saxon/serialize/AdaptiveEmitter;->m:Lnet/sf/saxon/regex/ARegularExpression;

    const-string v1, "\"\""

    invoke-static {v1}, Lnet/sf/saxon/str/BMPString;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lnet/sf/saxon/regex/ARegularExpression;->replace(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    iget-object p0, p0, Lnet/sf/saxon/serialize/AdaptiveEmitter;->i:Lnet/sf/saxon/serialize/CharacterMap;

    if-eqz p0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/serialize/CharacterMap;->map(Lnet/sf/saxon/str/UnicodeString;Z)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    :pswitch_5
    invoke-interface {p1}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x201
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final j(Lnet/sf/saxon/om/Function;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Lnet/sf/saxon/om/Function;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v1, "http://ns.saxonica.com/anonymous-type"

    invoke-virtual {v0, v1}, Lnet/sf/saxon/om/StructuredQName;->hasURI(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v1, "http://www.w3.org/2005/xpath-functions"

    invoke-virtual {v0, v1}, Lnet/sf/saxon/om/StructuredQName;->hasURI(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/serialize/AdaptiveEmitter;->d(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    const-string v1, "http://www.w3.org/2005/xpath-functions/math"

    invoke-virtual {v0, v1}, Lnet/sf/saxon/om/StructuredQName;->hasURI(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "math:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/serialize/AdaptiveEmitter;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v1, "http://www.w3.org/2005/xpath-functions/map"

    invoke-virtual {v0, v1}, Lnet/sf/saxon/om/StructuredQName;->hasURI(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "map:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/serialize/AdaptiveEmitter;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v1, "http://www.w3.org/2005/xpath-functions/array"

    invoke-virtual {v0, v1}, Lnet/sf/saxon/om/StructuredQName;->hasURI(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "array:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/serialize/AdaptiveEmitter;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v1, "http://www.w3.org/2001/XMLSchema"

    invoke-virtual {v0, v1}, Lnet/sf/saxon/om/StructuredQName;->hasURI(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "xs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/serialize/AdaptiveEmitter;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getEQName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/serialize/AdaptiveEmitter;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    :goto_0
    const-string v0, "(anonymous-function)"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/serialize/AdaptiveEmitter;->d(Ljava/lang/String;)V

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lnet/sf/saxon/om/Function;->getArity()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/serialize/AdaptiveEmitter;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final k(Lnet/sf/saxon/om/Item;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of v0, p1, Lnet/sf/saxon/value/AtomicValue;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/value/AtomicValue;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/serialize/AdaptiveEmitter;->i(Lnet/sf/saxon/value/AtomicValue;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/serialize/AdaptiveEmitter;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v0, :cond_1

    check-cast p1, Lnet/sf/saxon/om/NodeInfo;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/serialize/AdaptiveEmitter;->m(Lnet/sf/saxon/om/NodeInfo;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lnet/sf/saxon/ma/map/MapItem;

    if-eqz v0, :cond_2

    check-cast p1, Lnet/sf/saxon/ma/map/MapItem;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/serialize/AdaptiveEmitter;->l(Lnet/sf/saxon/ma/map/MapItem;)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lnet/sf/saxon/ma/arrays/ArrayItem;

    if-eqz v0, :cond_3

    check-cast p1, Lnet/sf/saxon/ma/arrays/ArrayItem;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/serialize/AdaptiveEmitter;->h(Lnet/sf/saxon/ma/arrays/ArrayItem;)V

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lnet/sf/saxon/om/Function;

    if-eqz v0, :cond_4

    check-cast p1, Lnet/sf/saxon/om/Function;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/serialize/AdaptiveEmitter;->j(Lnet/sf/saxon/om/Function;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final l(Lnet/sf/saxon/ma/map/MapItem;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "map{"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/serialize/AdaptiveEmitter;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/sf/saxon/ma/map/MapItem;->keyValuePairs()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/ma/map/KeyValuePair;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    const-string v2, ","

    invoke-virtual {p0, v2}, Lnet/sf/saxon/serialize/AdaptiveEmitter;->d(Ljava/lang/String;)V

    :goto_1
    iget-object v2, v1, Lnet/sf/saxon/ma/map/KeyValuePair;->key:Lnet/sf/saxon/value/AtomicValue;

    invoke-virtual {p0, v2}, Lnet/sf/saxon/serialize/AdaptiveEmitter;->k(Lnet/sf/saxon/om/Item;)V

    const-string v2, ":"

    invoke-virtual {p0, v2}, Lnet/sf/saxon/serialize/AdaptiveEmitter;->d(Ljava/lang/String;)V

    iget-object v1, v1, Lnet/sf/saxon/ma/map/KeyValuePair;->value:Lnet/sf/saxon/om/GroundedValue;

    invoke-virtual {p0, v1}, Lnet/sf/saxon/serialize/AdaptiveEmitter;->g(Lnet/sf/saxon/om/Sequence;)V

    goto :goto_0

    :cond_1
    const-string p1, "}"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/serialize/AdaptiveEmitter;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final m(Lnet/sf/saxon/om/NodeInfo;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v0

    const/4 v1, 0x2

    const-string v2, "\""

    const-string v3, "=\""

    if-eq v0, v1, :cond_4

    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/util/Properties;

    iget-object v2, p0, Lnet/sf/saxon/serialize/AdaptiveEmitter;->j:Ljava/util/Properties;

    invoke-direct {v1, v2}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    const-string v2, "method"

    const-string v3, "xml"

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "indent"

    const-string v3, "no"

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "omit-xml-declaration"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_0
    const-string v2, "{http://saxon.sf.net/}unfailing"

    const-string v3, "yes"

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v2, p0, Lnet/sf/saxon/serialize/AdaptiveEmitter;->i:Lnet/sf/saxon/serialize/CharacterMap;

    if-eqz v2, :cond_1

    new-instance v2, Lnet/sf/saxon/serialize/CharacterMapIndex;

    invoke-direct {v2}, Lnet/sf/saxon/serialize/CharacterMapIndex;-><init>()V

    iget-object v3, p0, Lnet/sf/saxon/serialize/AdaptiveEmitter;->i:Lnet/sf/saxon/serialize/CharacterMap;

    invoke-virtual {v3}, Lnet/sf/saxon/serialize/CharacterMap;->getName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v3

    iget-object v4, p0, Lnet/sf/saxon/serialize/AdaptiveEmitter;->i:Lnet/sf/saxon/serialize/CharacterMap;

    invoke-virtual {v2, v3, v4}, Lnet/sf/saxon/serialize/CharacterMapIndex;->putCharacterMap(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/serialize/CharacterMap;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    new-instance v3, Lnet/sf/saxon/serialize/SerializationProperties;

    invoke-direct {v3, v1, v2}, Lnet/sf/saxon/serialize/SerializationProperties;-><init>(Ljava/util/Properties;Lnet/sf/saxon/serialize/CharacterMapIndex;)V

    new-instance v1, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v1, v0}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    invoke-static {p1, v1, v3}, Lnet/sf/saxon/query/QueryResult;->serialize(Lnet/sf/saxon/om/NodeInfo;Ljavax/xml/transform/Result;Lnet/sf/saxon/serialize/SerializationProperties;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/serialize/AdaptiveEmitter;->d(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "xmlns"

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xmlns:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v0}, Lnet/sf/saxon/serialize/AdaptiveEmitter;->d(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lnet/sf/saxon/serialize/AdaptiveEmitter;->d(Ljava/lang/String;)V

    invoke-interface {p1}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/serialize/AdaptiveEmitter;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/serialize/AdaptiveEmitter;->d(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lnet/sf/saxon/serialize/AdaptiveEmitter;->d(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/serialize/AdaptiveEmitter;->d(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lnet/sf/saxon/serialize/AdaptiveEmitter;->d(Ljava/lang/String;)V

    invoke-interface {p1}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/serialize/AdaptiveEmitter;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/serialize/AdaptiveEmitter;->d(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lnet/sf/saxon/serialize/AdaptiveEmitter;->d(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public setCharacterMap(Lnet/sf/saxon/serialize/CharacterMap;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/serialize/AdaptiveEmitter;->i:Lnet/sf/saxon/serialize/CharacterMap;

    return-void
.end method

.method public setNormalizationForm(Ljava/text/Normalizer$Form;)V
    .locals 0

    return-void
.end method

.method public setOutputProperties(Ljava/util/Properties;)V
    .locals 1

    iput-object p1, p0, Lnet/sf/saxon/serialize/AdaptiveEmitter;->j:Ljava/util/Properties;

    const-string v0, "item-separator"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "#absent"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lnet/sf/saxon/serialize/AdaptiveEmitter;->k:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public write(Lnet/sf/saxon/om/Item;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/serialize/AdaptiveEmitter;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/serialize/AdaptiveEmitter;->k:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/serialize/AdaptiveEmitter;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/serialize/AdaptiveEmitter;->l:Z

    :goto_0
    invoke-virtual {p0, p1}, Lnet/sf/saxon/serialize/AdaptiveEmitter;->k(Lnet/sf/saxon/om/Item;)V

    return-void
.end method
