.class public Lnet/sf/saxon/serialize/JSONEmitter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic p:Z


# instance fields
.field public a:Lnet/sf/saxon/Configuration;

.field public b:Lnet/sf/saxon/str/UnicodeWriter;

.field public c:Z

.field public d:Ljava/text/Normalizer$Form;

.field public e:Lnet/sf/saxon/serialize/CharacterMap;

.field public f:Ljava/util/Properties;

.field public g:Lnet/sf/saxon/serialize/charcode/CharacterSet;

.field public h:Z

.field public i:I

.field public j:I

.field public k:Z

.field public l:Z

.field public m:I

.field public final n:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public o:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/event/PipelineConfiguration;Lnet/sf/saxon/str/UnicodeWriter;Ljava/util/Properties;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lnet/sf/saxon/serialize/JSONEmitter;->i:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/serialize/JSONEmitter;->k:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/serialize/JSONEmitter;->l:Z

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lnet/sf/saxon/serialize/JSONEmitter;->n:Ljava/util/Stack;

    iput-boolean v0, p0, Lnet/sf/saxon/serialize/JSONEmitter;->o:Z

    invoke-virtual {p1}, Lnet/sf/saxon/event/PipelineConfiguration;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/serialize/JSONEmitter;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {p0, p3}, Lnet/sf/saxon/serialize/JSONEmitter;->setOutputProperties(Ljava/util/Properties;)V

    iput-object p2, p0, Lnet/sf/saxon/serialize/JSONEmitter;->b:Lnet/sf/saxon/str/UnicodeWriter;

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/serialize/JSONEmitter;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/serialize/JSONEmitter;->i(I)Z

    move-result p0

    return p0
.end method

.method private synthetic i(I)Z
    .locals 1

    const/16 v0, 0x1f

    if-lt p1, v0, :cond_2

    const/16 v0, 0x7f

    if-lt p1, v0, :cond_0

    const/16 v0, 0x9f

    if-le p1, v0, :cond_2

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/serialize/JSONEmitter;->g:Lnet/sf/saxon/serialize/charcode/CharacterSet;

    invoke-interface {p0, p1}, Lnet/sf/saxon/serialize/charcode/CharacterSet;->inCharset(I)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public final b(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean p1, p0, Lnet/sf/saxon/serialize/JSONEmitter;->k:Z

    iget-object v0, p0, Lnet/sf/saxon/serialize/JSONEmitter;->n:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/serialize/JSONEmitter;->n:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-boolean v3, p0, Lnet/sf/saxon/serialize/JSONEmitter;->h:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lnet/sf/saxon/serialize/JSONEmitter;->m:I

    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iget-boolean v3, p0, Lnet/sf/saxon/serialize/JSONEmitter;->k:Z

    const/16 v4, 0x20

    if-eqz v3, :cond_2

    iput-boolean v2, p0, Lnet/sf/saxon/serialize/JSONEmitter;->k:Z

    goto :goto_2

    :cond_2
    iget-boolean v3, p0, Lnet/sf/saxon/serialize/JSONEmitter;->l:Z

    if-nez v3, :cond_3

    const/16 v3, 0x2c

    invoke-virtual {p0, v3}, Lnet/sf/saxon/serialize/JSONEmitter;->c(C)V

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lnet/sf/saxon/serialize/JSONEmitter;->h:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0, v4}, Lnet/sf/saxon/serialize/JSONEmitter;->c(C)V

    :cond_3
    :goto_2
    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lnet/sf/saxon/serialize/JSONEmitter;->l:Z

    if-eqz p1, :cond_4

    invoke-virtual {p0, v4}, Lnet/sf/saxon/serialize/JSONEmitter;->c(C)V

    goto :goto_4

    :cond_4
    if-eqz v1, :cond_5

    iget-boolean p1, p0, Lnet/sf/saxon/serialize/JSONEmitter;->l:Z

    if-nez p1, :cond_5

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Lnet/sf/saxon/serialize/JSONEmitter;->c(C)V

    move p1, v2

    :goto_3
    iget v0, p0, Lnet/sf/saxon/serialize/JSONEmitter;->i:I

    iget v1, p0, Lnet/sf/saxon/serialize/JSONEmitter;->m:I

    mul-int/2addr v0, v1

    if-ge p1, v0, :cond_5

    invoke-virtual {p0, v4}, Lnet/sf/saxon/serialize/JSONEmitter;->c(C)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    iput-boolean v2, p0, Lnet/sf/saxon/serialize/JSONEmitter;->l:Z

    return-void
.end method

.method public final c(C)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lnet/sf/saxon/serialize/JSONEmitter;->b:Lnet/sf/saxon/str/UnicodeWriter;

    invoke-interface {p0, p1}, Lnet/sf/saxon/str/UnicodeWriter;->writeCodePoint(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/serialize/JSONEmitter;->k:Z

    if-eqz v0, :cond_0

    const-string v0, "null"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/serialize/JSONEmitter;->d(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/serialize/JSONEmitter;->b:Lnet/sf/saxon/str/UnicodeWriter;

    if-eqz p0, :cond_1

    :try_start_0
    invoke-interface {p0}, Lnet/sf/saxon/str/UnicodeWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
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
    iget-object p0, p0, Lnet/sf/saxon/serialize/JSONEmitter;->b:Lnet/sf/saxon/str/UnicodeWriter;

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

.method public final e(CI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/serialize/JSONEmitter;->n:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-boolean v1, p0, Lnet/sf/saxon/serialize/JSONEmitter;->h:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    const/16 p2, 0x20

    invoke-virtual {p0, p2}, Lnet/sf/saxon/serialize/JSONEmitter;->c(C)V

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p0, p2}, Lnet/sf/saxon/serialize/JSONEmitter;->h(I)V

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lnet/sf/saxon/serialize/JSONEmitter;->c(C)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/sf/saxon/serialize/JSONEmitter;->k:Z

    return-void
.end method

.method public endArray()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/serialize/JSONEmitter;->m:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lnet/sf/saxon/serialize/JSONEmitter;->m:I

    const/16 v1, 0x5d

    invoke-virtual {p0, v1, v0}, Lnet/sf/saxon/serialize/JSONEmitter;->e(CI)V

    return-void
.end method

.method public endMap()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/serialize/JSONEmitter;->m:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lnet/sf/saxon/serialize/JSONEmitter;->m:I

    const/16 v1, 0x7d

    invoke-virtual {p0, v1, v0}, Lnet/sf/saxon/serialize/JSONEmitter;->e(CI)V

    return-void
.end method

.method public final f(CZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/sf/saxon/serialize/JSONEmitter;->b(Z)V

    iget-object v1, p0, Lnet/sf/saxon/serialize/JSONEmitter;->n:Ljava/util/Stack;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/serialize/JSONEmitter;->c(C)V

    iput-boolean v0, p0, Lnet/sf/saxon/serialize/JSONEmitter;->k:Z

    iget-boolean p1, p0, Lnet/sf/saxon/serialize/JSONEmitter;->h:Z

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/16 p1, 0x20

    invoke-virtual {p0, p1}, Lnet/sf/saxon/serialize/JSONEmitter;->c(C)V

    :cond_0
    return-void
.end method

.method public final g(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/serialize/JSONEmitter;->e:Lnet/sf/saxon/serialize/CharacterMap;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lnet/sf/saxon/serialize/JSONEmitter;->e:Lnet/sf/saxon/serialize/CharacterMap;

    invoke-static {p1}, Lnet/sf/saxon/str/StringView;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lnet/sf/saxon/serialize/CharacterMap;->map(Lnet/sf/saxon/str/UnicodeString;Z)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-ltz v4, :cond_0

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lnet/sf/saxon/serialize/JSONEmitter;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    invoke-virtual {v0, p1, v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    add-int/2addr v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/serialize/JSONEmitter;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/serialize/JSONEmitter;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOutputProperties()Ljava/util/Properties;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/serialize/JSONEmitter;->f:Ljava/util/Properties;

    return-object p0
.end method

.method public final h(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lnet/sf/saxon/serialize/JSONEmitter;->c(C)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lnet/sf/saxon/serialize/JSONEmitter;->i:I

    mul-int/2addr v1, p1

    if-ge v0, v1, :cond_0

    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Lnet/sf/saxon/serialize/JSONEmitter;->c(C)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final j(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/serialize/JSONEmitter;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/serialize/JSONEmitter;->d:Ljava/text/Normalizer$Form;

    invoke-static {p1, v0}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    new-instance v0, Lcom/sunia/HTREnginev2/cri;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/cri;-><init>(Lnet/sf/saxon/serialize/JSONEmitter;)V

    const/4 p0, 0x0

    invoke-static {p1, p0, v0}, Lnet/sf/saxon/ma/json/JsonReceiver;->escape(Ljava/lang/String;ZLjava/util/function/IntPredicate;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setCharacterMap(Lnet/sf/saxon/serialize/CharacterMap;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/serialize/JSONEmitter;->e:Lnet/sf/saxon/serialize/CharacterMap;

    return-void
.end method

.method public setNormalizationForm(Ljava/text/Normalizer$Form;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/serialize/JSONEmitter;->c:Z

    iput-object p1, p0, Lnet/sf/saxon/serialize/JSONEmitter;->d:Ljava/text/Normalizer$Form;

    return-void
.end method

.method public setOutputProperties(Ljava/util/Properties;)V
    .locals 3

    iput-object p1, p0, Lnet/sf/saxon/serialize/JSONEmitter;->f:Ljava/util/Properties;

    const-string v0, "indent"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "yes"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lnet/sf/saxon/serialize/JSONEmitter;->h:Z

    :cond_0
    const-string v0, "{http://saxon.sf.net/}unfailing"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lnet/sf/saxon/serialize/JSONEmitter;->o:Z

    :cond_1
    const-string v0, "{http://saxon.sf.net/}line-length"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/sf/saxon/serialize/JSONEmitter;->j:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    const-string v0, "{http://saxon.sf.net/}indent-spaces"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/sf/saxon/serialize/JSONEmitter;->i:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_3
    const-string v0, "encoding"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :try_start_2
    iget-object v0, p0, Lnet/sf/saxon/serialize/JSONEmitter;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getCharacterSetFactory()Lnet/sf/saxon/serialize/charcode/CharacterSetFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/serialize/charcode/CharacterSetFactory;->getCharacterSet(Ljava/lang/String;)Lnet/sf/saxon/serialize/charcode/CharacterSet;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/serialize/JSONEmitter;->g:Lnet/sf/saxon/serialize/charcode/CharacterSet;
    :try_end_2
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    invoke-static {}, Lnet/sf/saxon/serialize/charcode/UTF8CharacterSet;->getInstance()Lnet/sf/saxon/serialize/charcode/UTF8CharacterSet;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/serialize/JSONEmitter;->g:Lnet/sf/saxon/serialize/charcode/CharacterSet;

    :goto_0
    return-void
.end method

.method public startArray(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/16 v0, 0x5b

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/serialize/JSONEmitter;->f(CZ)V

    iget p1, p0, Lnet/sf/saxon/serialize/JSONEmitter;->m:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lnet/sf/saxon/serialize/JSONEmitter;->m:I

    return-void
.end method

.method public startMap(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/16 v0, 0x7b

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/serialize/JSONEmitter;->f(CZ)V

    iget p1, p0, Lnet/sf/saxon/serialize/JSONEmitter;->m:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lnet/sf/saxon/serialize/JSONEmitter;->m:I

    return-void
.end method

.method public writeAtomicValue(Lnet/sf/saxon/value/AtomicValue;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/serialize/JSONEmitter;->b(Z)V

    if-nez p1, :cond_0

    const-string p1, "null"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/serialize/JSONEmitter;->d(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    instance-of v0, p1, Lnet/sf/saxon/value/NumericValue;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Lnet/sf/saxon/value/NumericValue;

    invoke-virtual {v0}, Lnet/sf/saxon/value/AtomicValue;->isNaN()Z

    move-result v1

    const-string v2, "SERE0020"

    if-eqz v1, :cond_2

    iget-boolean p1, p0, Lnet/sf/saxon/serialize/JSONEmitter;->o:Z

    if-eqz p1, :cond_1

    const-string p1, "NaN"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/serialize/JSONEmitter;->d(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "JSON has no way of representing NaN"

    invoke-direct {p0, p1, v2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-virtual {v0}, Lnet/sf/saxon/value/NumericValue;->getDoubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean p1, p0, Lnet/sf/saxon/serialize/JSONEmitter;->o:Z

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Lnet/sf/saxon/value/NumericValue;->getDoubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double p1, v0, v2

    if-gez p1, :cond_3

    const-string p1, "-INF"

    goto :goto_0

    :cond_3
    const-string p1, "INF"

    :goto_0
    invoke-virtual {p0, p1}, Lnet/sf/saxon/serialize/JSONEmitter;->d(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "JSON has no way of representing Infinity"

    invoke-direct {p0, p1, v2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_5
    instance-of p1, p1, Lnet/sf/saxon/value/IntegerValue;

    const-string v1, ""

    if-eqz p1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lnet/sf/saxon/value/NumericValue;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/serialize/JSONEmitter;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Lnet/sf/saxon/value/NumericValue;->isWholeNumber()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {v0}, Lnet/sf/saxon/value/NumericValue;->isNegativeZero()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {v0}, Lnet/sf/saxon/value/NumericValue;->abs()Lnet/sf/saxon/value/NumericValue;

    move-result-object p1

    const-wide v2, 0xde0b6b3a7640000L

    invoke-virtual {p1, v2, v3}, Lnet/sf/saxon/value/NumericValue;->compareTo(J)I

    move-result p1

    if-gez p1, :cond_7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lnet/sf/saxon/value/NumericValue;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/serialize/JSONEmitter;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    invoke-interface {v0}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/serialize/JSONEmitter;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    instance-of v0, p1, Lnet/sf/saxon/value/BooleanValue;

    if-eqz v0, :cond_9

    invoke-interface {p1}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/serialize/JSONEmitter;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lnet/sf/saxon/serialize/JSONEmitter;->c(C)V

    invoke-interface {p1}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/serialize/JSONEmitter;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/serialize/JSONEmitter;->d(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/serialize/JSONEmitter;->c(C)V

    :goto_1
    return-void
.end method

.method public writeKey(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/serialize/JSONEmitter;->n:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lnet/sf/saxon/serialize/JSONEmitter;->b(Z)V

    const/16 v1, 0x22

    invoke-virtual {p0, v1}, Lnet/sf/saxon/serialize/JSONEmitter;->c(C)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/serialize/JSONEmitter;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/serialize/JSONEmitter;->d(Ljava/lang/String;)V

    const-string p1, "\":"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/serialize/JSONEmitter;->d(Ljava/lang/String;)V

    iget-boolean p1, p0, Lnet/sf/saxon/serialize/JSONEmitter;->h:Z

    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    const-string p1, " "

    invoke-virtual {p0, p1}, Lnet/sf/saxon/serialize/JSONEmitter;->d(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/sf/saxon/serialize/JSONEmitter;->l:Z

    return-void
.end method
