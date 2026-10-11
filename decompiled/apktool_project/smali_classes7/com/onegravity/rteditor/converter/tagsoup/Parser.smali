.class public Lcom/onegravity/rteditor/converter/tagsoup/Parser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"

# interfaces
.implements Lcom/onegravity/rteditor/converter/tagsoup/ScanHandler;
.implements Lorg/xml/sax/XMLReader;
.implements Lorg/xml/sax/ext/LexicalHandler;


# static fields
.field public static A0:Z = false

.field public static B0:Z = true

.field public static C0:Z = false

.field public static final CDATAElementsFeature:Ljava/lang/String; = "http://www.ccil.org/~cowan/tagsoup/features/cdata-elements"

.field public static D0:Z = true

.field public static E0:[C = null

.field public static F0:Ljava/lang/String; = null

.field public static final XML11Feature:Ljava/lang/String; = "http://xml.org/sax/features/xml-1.1"

.field public static final autoDetectorProperty:Ljava/lang/String; = "http://www.ccil.org/~cowan/tagsoup/properties/auto-detector"

.field public static final bogonsEmptyFeature:Ljava/lang/String; = "http://www.ccil.org/~cowan/tagsoup/features/bogons-empty"

.field public static final defaultAttributesFeature:Ljava/lang/String; = "http://www.ccil.org/~cowan/tagsoup/features/default-attributes"

.field public static final externalGeneralEntitiesFeature:Ljava/lang/String; = "http://xml.org/sax/features/external-general-entities"

.field public static final externalParameterEntitiesFeature:Ljava/lang/String; = "http://xml.org/sax/features/external-parameter-entities"

.field public static final ignorableWhitespaceFeature:Ljava/lang/String; = "http://www.ccil.org/~cowan/tagsoup/features/ignorable-whitespace"

.field public static final ignoreBogonsFeature:Ljava/lang/String; = "http://www.ccil.org/~cowan/tagsoup/features/ignore-bogons"

.field public static final isStandaloneFeature:Ljava/lang/String; = "http://xml.org/sax/features/is-standalone"

.field public static final lexicalHandlerParameterEntitiesFeature:Ljava/lang/String; = "http://xml.org/sax/features/lexical-handler/parameter-entities"

.field public static final lexicalHandlerProperty:Ljava/lang/String; = "http://xml.org/sax/properties/lexical-handler"

.field public static final namespacePrefixesFeature:Ljava/lang/String; = "http://xml.org/sax/features/namespace-prefixes"

.field public static final namespacesFeature:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field public static final resolveDTDURIsFeature:Ljava/lang/String; = "http://xml.org/sax/features/resolve-dtd-uris"

.field public static final restartElementsFeature:Ljava/lang/String; = "http://www.ccil.org/~cowan/tagsoup/features/restart-elements"

.field public static final rootBogonsFeature:Ljava/lang/String; = "http://www.ccil.org/~cowan/tagsoup/features/root-bogons"

.field public static final scannerProperty:Ljava/lang/String; = "http://www.ccil.org/~cowan/tagsoup/properties/scanner"

.field public static final schemaProperty:Ljava/lang/String; = "http://www.ccil.org/~cowan/tagsoup/properties/schema"

.field public static final stringInterningFeature:Ljava/lang/String; = "http://xml.org/sax/features/string-interning"

.field public static final translateColonsFeature:Ljava/lang/String; = "http://www.ccil.org/~cowan/tagsoup/features/translate-colons"

.field public static final unicodeNormalizationCheckingFeature:Ljava/lang/String; = "http://xml.org/sax/features/unicode-normalization-checking"

.field public static final useAttributes2Feature:Ljava/lang/String; = "http://xml.org/sax/features/use-attributes2"

.field public static final useEntityResolver2Feature:Ljava/lang/String; = "http://xml.org/sax/features/use-entity-resolver2"

.field public static final useLocator2Feature:Ljava/lang/String; = "http://xml.org/sax/features/use-locator2"

.field public static v0:Z = true

.field public static final validationFeature:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field public static w0:Z = false

.field public static x0:Z = false

.field public static final xmlnsURIsFeature:Ljava/lang/String; = "http://xml.org/sax/features/xmlns-uris"

.field public static y0:Z = true

.field public static z0:Z = true


# instance fields
.field public J:Ljava/lang/String;

.field public O:Ljava/lang/String;

.field public Q:Ljava/lang/String;

.field public Z:Lcom/onegravity/rteditor/converter/tagsoup/Element;

.field public e:Lorg/xml/sax/ContentHandler;

.field public f:Lorg/xml/sax/ext/LexicalHandler;

.field public g:Lorg/xml/sax/DTDHandler;

.field public h:Lorg/xml/sax/ErrorHandler;

.field public i:Lorg/xml/sax/EntityResolver;

.field public j:Lcom/onegravity/rteditor/converter/tagsoup/Schema;

.field public k:Lcom/onegravity/rteditor/converter/tagsoup/Scanner;

.field public k0:Lcom/onegravity/rteditor/converter/tagsoup/Element;

.field public l:Lcom/onegravity/rteditor/converter/tagsoup/AutoDetector;

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public q0:Lcom/onegravity/rteditor/converter/tagsoup/Element;

.field public r:Z

.field public s:Z

.field public t:Z

.field public t0:I

.field public u:Z

.field public u0:Z

.field public v:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public w:Lcom/onegravity/rteditor/converter/tagsoup/Element;

.field public x:Ljava/lang/String;

.field public y:Z

.field public z:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->E0:[C

    const-string v0, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-\'()+,./:=?;!*#@$_%"

    sput-object v0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->F0:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 2
        0x3cs
        0x2fs
        0x3es
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    iput-object p0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->e:Lorg/xml/sax/ContentHandler;

    iput-object p0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->f:Lorg/xml/sax/ext/LexicalHandler;

    iput-object p0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->g:Lorg/xml/sax/DTDHandler;

    iput-object p0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->h:Lorg/xml/sax/ErrorHandler;

    iput-object p0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->i:Lorg/xml/sax/EntityResolver;

    sget-boolean v0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->v0:Z

    iput-boolean v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->m:Z

    sget-boolean v0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->w0:Z

    iput-boolean v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->n:Z

    sget-boolean v0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->x0:Z

    iput-boolean v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->o:Z

    sget-boolean v0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->y0:Z

    iput-boolean v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->p:Z

    sget-boolean v0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->z0:Z

    iput-boolean v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->q:Z

    sget-boolean v0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->A0:Z

    iput-boolean v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->r:Z

    sget-boolean v0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->B0:Z

    iput-boolean v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->s:Z

    sget-boolean v0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->C0:Z

    iput-boolean v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->t:Z

    sget-boolean v0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->D0:Z

    iput-boolean v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->u:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->v:Ljava/util/HashMap;

    sget-boolean v1, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->v0:Z

    invoke-static {v1}, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->s(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "http://xml.org/sax/features/namespaces"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->v:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "http://xml.org/sax/features/namespace-prefixes"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->v:Ljava/util/HashMap;

    const-string v2, "http://xml.org/sax/features/external-general-entities"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->v:Ljava/util/HashMap;

    const-string v2, "http://xml.org/sax/features/external-parameter-entities"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->v:Ljava/util/HashMap;

    const-string v2, "http://xml.org/sax/features/is-standalone"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->v:Ljava/util/HashMap;

    const-string v2, "http://xml.org/sax/features/lexical-handler/parameter-entities"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->v:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "http://xml.org/sax/features/resolve-dtd-uris"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->v:Ljava/util/HashMap;

    const-string v3, "http://xml.org/sax/features/string-interning"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->v:Ljava/util/HashMap;

    const-string v2, "http://xml.org/sax/features/use-attributes2"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->v:Ljava/util/HashMap;

    const-string v2, "http://xml.org/sax/features/use-locator2"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->v:Ljava/util/HashMap;

    const-string v2, "http://xml.org/sax/features/use-entity-resolver2"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->v:Ljava/util/HashMap;

    const-string v2, "http://xml.org/sax/features/validation"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->v:Ljava/util/HashMap;

    const-string v2, "http://xml.org/sax/features/xmlns-uris"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->v:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->v:Ljava/util/HashMap;

    const-string v2, "http://xml.org/sax/features/xml-1.1"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->v:Ljava/util/HashMap;

    sget-boolean v1, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->w0:Z

    invoke-static {v1}, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->s(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "http://www.ccil.org/~cowan/tagsoup/features/ignore-bogons"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->v:Ljava/util/HashMap;

    sget-boolean v1, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->x0:Z

    invoke-static {v1}, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->s(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "http://www.ccil.org/~cowan/tagsoup/features/bogons-empty"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->v:Ljava/util/HashMap;

    sget-boolean v1, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->y0:Z

    invoke-static {v1}, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->s(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "http://www.ccil.org/~cowan/tagsoup/features/root-bogons"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->v:Ljava/util/HashMap;

    sget-boolean v1, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->z0:Z

    invoke-static {v1}, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->s(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "http://www.ccil.org/~cowan/tagsoup/features/default-attributes"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->v:Ljava/util/HashMap;

    sget-boolean v1, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->A0:Z

    invoke-static {v1}, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->s(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "http://www.ccil.org/~cowan/tagsoup/features/translate-colons"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->v:Ljava/util/HashMap;

    sget-boolean v1, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->B0:Z

    invoke-static {v1}, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->s(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "http://www.ccil.org/~cowan/tagsoup/features/restart-elements"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->v:Ljava/util/HashMap;

    sget-boolean v1, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->C0:Z

    invoke-static {v1}, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->s(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "http://www.ccil.org/~cowan/tagsoup/features/ignorable-whitespace"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->v:Ljava/util/HashMap;

    sget-boolean v1, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->D0:Z

    invoke-static {v1}, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->s(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "http://www.ccil.org/~cowan/tagsoup/features/cdata-elements"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->w:Lcom/onegravity/rteditor/converter/tagsoup/Element;

    iput-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->x:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->y:Z

    iput-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->z:Ljava/lang/String;

    iput-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->J:Ljava/lang/String;

    iput-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->O:Ljava/lang/String;

    iput-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->Q:Ljava/lang/String;

    iput-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->Z:Lcom/onegravity/rteditor/converter/tagsoup/Element;

    iput-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->k0:Lcom/onegravity/rteditor/converter/tagsoup/Element;

    iput-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->q0:Lcom/onegravity/rteditor/converter/tagsoup/Element;

    iput v1, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->t0:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->u0:Z

    return-void
.end method

.method public static q(Ljava/lang/String;)[Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p0, v1, [Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    move v3, v1

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v3, v2, :cond_6

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x5c

    if-nez v5, :cond_1

    const/16 v10, 0x27

    if-ne v8, v10, :cond_1

    if-eq v6, v9, :cond_1

    xor-int/lit8 v7, v7, 0x1

    if-gez v4, :cond_5

    :goto_1
    move v4, v3

    goto :goto_2

    :cond_1
    if-nez v7, :cond_2

    const/16 v10, 0x22

    if-ne v8, v10, :cond_2

    if-eq v6, v9, :cond_2

    xor-int/lit8 v5, v5, 0x1

    if-gez v4, :cond_5

    goto :goto_1

    :cond_2
    if-nez v7, :cond_5

    if-nez v5, :cond_5

    invoke-static {v8}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_4

    if-ltz v4, :cond_3

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const/4 v4, -0x1

    goto :goto_2

    :cond_4
    if-gez v4, :cond_5

    const/16 v6, 0x20

    if-eq v8, v6, :cond_5

    goto :goto_1

    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    move v6, v8

    goto :goto_0

    :cond_6
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array p0, v1, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static r(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    return-object p0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v1, v0, :cond_3

    const/16 v0, 0x27

    if-eq v1, v0, :cond_2

    const/16 v0, 0x22

    if-ne v1, v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_3
    return-object p0
.end method

.method public static s(Z)Ljava/lang/Boolean;
    .locals 0

    if-eqz p0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    move v4, v2

    :goto_0
    if-ge v3, p0, :cond_3

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    sget-object v6, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->F0:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v4, v1

    goto :goto_1

    :cond_1
    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v4, v2

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public adup([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p1, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->w:Lcom/onegravity/rteditor/converter/tagsoup/Element;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->x:Ljava/lang/String;

    if-eqz p2, :cond_0

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3, p2}, Lcom/onegravity/rteditor/converter/tagsoup/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->x:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public aname([CII)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->w:Lcom/onegravity/rteditor/converter/tagsoup/Element;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->i([CII)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->x:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public aval([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->w:Lcom/onegravity/rteditor/converter/tagsoup/Element;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->x:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->w:Lcom/onegravity/rteditor/converter/tagsoup/Element;

    iget-object p3, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->x:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0, p1}, Lcom/onegravity/rteditor/converter/tagsoup/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->x:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final b([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->w:Lcom/onegravity/rteditor/converter/tagsoup/Element;

    if-eqz p3, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->i([CII)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->j:Lcom/onegravity/rteditor/converter/tagsoup/Schema;

    invoke-virtual {p2, p1}, Lcom/onegravity/rteditor/converter/tagsoup/Schema;->getElementType(Ljava/lang/String;)Lcom/onegravity/rteditor/converter/tagsoup/ElementType;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onegravity/rteditor/converter/tagsoup/ElementType;->name()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->Z:Lcom/onegravity/rteditor/converter/tagsoup/Element;

    invoke-virtual {p1}, Lcom/onegravity/rteditor/converter/tagsoup/Element;->name()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object p2, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->Z:Lcom/onegravity/rteditor/converter/tagsoup/Element;

    const/4 p3, 0x0

    :goto_1
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/onegravity/rteditor/converter/tagsoup/Element;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Lcom/onegravity/rteditor/converter/tagsoup/Element;->flags()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    const/4 p3, 0x1

    :cond_3
    invoke-virtual {p2}, Lcom/onegravity/rteditor/converter/tagsoup/Element;->next()Lcom/onegravity/rteditor/converter/tagsoup/Element;

    move-result-object p2

    goto :goto_1

    :cond_4
    :goto_2
    if-nez p2, :cond_5

    return-void

    :cond_5
    invoke-virtual {p2}, Lcom/onegravity/rteditor/converter/tagsoup/Element;->next()Lcom/onegravity/rteditor/converter/tagsoup/Element;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p2}, Lcom/onegravity/rteditor/converter/tagsoup/Element;->next()Lcom/onegravity/rteditor/converter/tagsoup/Element;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onegravity/rteditor/converter/tagsoup/Element;->next()Lcom/onegravity/rteditor/converter/tagsoup/Element;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_5

    :cond_6
    if-eqz p3, :cond_7

    invoke-virtual {p2}, Lcom/onegravity/rteditor/converter/tagsoup/Element;->preclose()V

    goto :goto_4

    :cond_7
    :goto_3
    iget-object p1, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->Z:Lcom/onegravity/rteditor/converter/tagsoup/Element;

    if-eq p1, p2, :cond_8

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->o()V

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->j()V

    :goto_4
    iget-object p1, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->Z:Lcom/onegravity/rteditor/converter/tagsoup/Element;

    invoke-virtual {p1}, Lcom/onegravity/rteditor/converter/tagsoup/Element;->isPreclosed()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->j()V

    goto :goto_4

    :cond_9
    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->n(Lcom/onegravity/rteditor/converter/tagsoup/Element;)V

    :cond_a
    :goto_5
    return-void
.end method

.method public final c([CII)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->Z:Lcom/onegravity/rteditor/converter/tagsoup/Element;

    invoke-virtual {v0}, Lcom/onegravity/rteditor/converter/tagsoup/Element;->name()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->u:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->Z:Lcom/onegravity/rteditor/converter/tagsoup/Element;

    invoke-virtual {v1}, Lcom/onegravity/rteditor/converter/tagsoup/Element;->flags()I

    move-result v1

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x1

    if-ne p3, v1, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_2

    move v5, v2

    :goto_1
    if-ge v5, p3, :cond_2

    add-int v6, p2, v5

    aget-char v6, p1, v6

    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v7

    if-eq v6, v7, :cond_1

    move v1, v2

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->e:Lorg/xml/sax/ContentHandler;

    sget-object v1, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->E0:[C

    invoke-interface {v0, v1, v2, v3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->e:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    iget-object p1, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->e:Lorg/xml/sax/ContentHandler;

    sget-object p2, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->E0:[C

    invoke-interface {p1, p2, v3, v4}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->k:Lcom/onegravity/rteditor/converter/tagsoup/Scanner;

    invoke-interface {p0}, Lcom/onegravity/rteditor/converter/tagsoup/Scanner;->startCDATA()V

    return v4

    :cond_3
    return v2
.end method

.method public cdsect([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->f:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->pcdata([CII)V

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->f:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {p0}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V

    return-void
.end method

.method public cmnt([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->f:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {p0, p1, p2, p3}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    return-void
.end method

.method public comment([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public final d(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-array v1, v0, [C

    const/4 v2, -0x1

    const/4 v3, 0x0

    move v6, v2

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v0, :cond_7

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int/lit8 v8, v5, 0x1

    aput-char v7, v1, v5

    const/16 v5, 0x26

    if-ne v7, v5, :cond_0

    if-ne v6, v2, :cond_0

    move v5, v8

    move v6, v5

    goto :goto_3

    :cond_0
    if-ne v6, v2, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {v7}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_6

    const/16 v5, 0x23

    if-ne v7, v5, :cond_2

    goto :goto_2

    :cond_2
    const/16 v5, 0x3b

    if-ne v7, v5, :cond_5

    sub-int v5, v8, v6

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v1, v6, v5}, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->h([CII)I

    move-result v5

    const v7, 0xffff

    if-le v5, v7, :cond_3

    const/high16 v7, 0x10000

    sub-int/2addr v5, v7

    add-int/lit8 v7, v6, -0x1

    shr-int/lit8 v8, v5, 0xa

    const v9, 0xd800

    add-int/2addr v8, v9

    int-to-char v8, v8

    aput-char v8, v1, v7

    and-int/lit16 v5, v5, 0x3ff

    const v7, 0xdc00

    add-int/2addr v5, v7

    int-to-char v5, v5

    aput-char v5, v1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    if-eqz v5, :cond_4

    add-int/lit8 v7, v6, -0x1

    int-to-char v5, v5

    aput-char v5, v1, v7

    goto :goto_1

    :cond_4
    move v6, v8

    :goto_1
    move v5, v6

    move v6, v2

    goto :goto_3

    :cond_5
    move v6, v2

    :cond_6
    :goto_2
    move v5, v8

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v3, v5}, Ljava/lang/String;-><init>([CII)V

    return-object p0
.end method

.method public decl([CII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v0}, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->q(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length p2, p1

    const/4 p3, 0x0

    if-lez p2, :cond_4

    const/4 p2, 0x0

    aget-object p2, p1, p2

    const-string v0, "DOCTYPE"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-boolean p2, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->y:Z

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->y:Z

    array-length v0, p1

    if-le v0, p2, :cond_4

    aget-object p2, p1, p2

    array-length v0, p1

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-le v0, v2, :cond_1

    const-string v0, "SYSTEM"

    aget-object v3, p1, v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    aget-object p1, p1, v2

    goto :goto_0

    :cond_1
    array-length v0, p1

    if-le v0, v2, :cond_3

    const-string v0, "PUBLIC"

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    aget-object p3, p1, v2

    array-length v0, p1

    const/4 v1, 0x4

    if-le v0, v1, :cond_2

    aget-object p1, p1, v1

    goto :goto_0

    :cond_2
    const-string p1, ""

    goto :goto_0

    :cond_3
    move-object p1, p3

    goto :goto_0

    :cond_4
    move-object p1, p3

    move-object p2, p1

    :goto_0
    invoke-static {p3}, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1}, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_5

    invoke-virtual {p0, p3}, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->f:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0, p2, p3, p1}, Lorg/xml/sax/ext/LexicalHandler;->startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->f:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->endDTD()V

    iput-object p2, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->O:Ljava/lang/String;

    iput-object p3, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->z:Ljava/lang/String;

    iget-object p2, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->k:Lcom/onegravity/rteditor/converter/tagsoup/Scanner;

    instance-of p3, p2, Lorg/xml/sax/Locator;

    if-eqz p3, :cond_5

    check-cast p2, Lorg/xml/sax/Locator;

    invoke-interface {p2}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->J:Ljava/lang/String;

    :try_start_0
    new-instance p2, Ljava/net/URL;

    new-instance p3, Ljava/net/URL;

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->J:Ljava/lang/String;

    invoke-direct {p3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->J:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->j:Lcom/onegravity/rteditor/converter/tagsoup/Schema;

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/tagsoup/Schema;->getURI()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public endCDATA()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public endDTD()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public endEntity(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public entity([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->h([CII)I

    move-result p1

    iput p1, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->t0:I

    return-void
.end method

.method public eof([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean p1, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->u0:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->q0:Lcom/onegravity/rteditor/converter/tagsoup/Element;

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->m(Lcom/onegravity/rteditor/converter/tagsoup/Element;)V

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->Z:Lcom/onegravity/rteditor/converter/tagsoup/Element;

    invoke-virtual {p1}, Lcom/onegravity/rteditor/converter/tagsoup/Element;->next()Lcom/onegravity/rteditor/converter/tagsoup/Element;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->j()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->j:Lcom/onegravity/rteditor/converter/tagsoup/Schema;

    invoke-virtual {p1}, Lcom/onegravity/rteditor/converter/tagsoup/Schema;->getURI()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->e:Lorg/xml/sax/ContentHandler;

    iget-object p2, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->j:Lcom/onegravity/rteditor/converter/tagsoup/Schema;

    invoke-virtual {p2}, Lcom/onegravity/rteditor/converter/tagsoup/Schema;->getPrefix()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    :cond_2
    iget-object p0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->e:Lorg/xml/sax/ContentHandler;

    invoke-interface {p0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    return-void
.end method

.method public etag([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->c([CII)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->b([CII)V

    return-void
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance p0, Ljava/net/URL;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "user.dir"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "file"

    const-string v1, ""

    invoke-direct {p0, v0, v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/net/URL;

    invoke-direct {p1, p0, p2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public final g(Lorg/xml/sax/InputSource;)Ljava/io/Reader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v0

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getPublicId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object p1

    if-nez v0, :cond_2

    if-nez v1, :cond_0

    invoke-virtual {p0, v3, p1}, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    :cond_0
    if-nez v2, :cond_1

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->l:Lcom/onegravity/rteditor/converter/tagsoup/AutoDetector;

    invoke-interface {p0, v1}, Lcom/onegravity/rteditor/converter/tagsoup/AutoDetector;->autoDetectingReader(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object v0

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    :cond_2
    :goto_0
    return-object v0
.end method

.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 1

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->e:Lorg/xml/sax/ContentHandler;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public getDTDHandler()Lorg/xml/sax/DTDHandler;
    .locals 1

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->g:Lorg/xml/sax/DTDHandler;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public getEntity()I
    .locals 0

    iget p0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->t0:I

    return p0
.end method

.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .locals 1

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->i:Lorg/xml/sax/EntityResolver;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 1

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->h:Lorg/xml/sax/ErrorHandler;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->v:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Lorg/xml/sax/SAXNotRecognizedException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown feature "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    const-string v0, "http://xml.org/sax/properties/lexical-handler"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->f:Lorg/xml/sax/ext/LexicalHandler;

    if-ne p1, p0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1

    :cond_1
    const-string v0, "http://www.ccil.org/~cowan/tagsoup/properties/scanner"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->k:Lcom/onegravity/rteditor/converter/tagsoup/Scanner;

    return-object p0

    :cond_2
    const-string v0, "http://www.ccil.org/~cowan/tagsoup/properties/schema"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->j:Lcom/onegravity/rteditor/converter/tagsoup/Schema;

    return-object p0

    :cond_3
    const-string v0, "http://www.ccil.org/~cowan/tagsoup/properties/auto-detector"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->l:Lcom/onegravity/rteditor/converter/tagsoup/AutoDetector;

    return-object p0

    :cond_4
    new-instance p0, Lorg/xml/sax/SAXNotRecognizedException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown property "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public gi([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->w:Lcom/onegravity/rteditor/converter/tagsoup/Element;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->i([CII)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p2, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->j:Lcom/onegravity/rteditor/converter/tagsoup/Schema;

    invoke-virtual {p2, p1}, Lcom/onegravity/rteditor/converter/tagsoup/Schema;->getElementType(Ljava/lang/String;)Lcom/onegravity/rteditor/converter/tagsoup/ElementType;

    move-result-object p2

    if-nez p2, :cond_6

    iget-boolean p2, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->n:Z

    if-eqz p2, :cond_2

    return-void

    :cond_2
    iget-boolean p2, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->o:Z

    const/4 p3, 0x0

    const/4 v0, -0x1

    if-eqz p2, :cond_3

    move p2, p3

    goto :goto_0

    :cond_3
    move p2, v0

    :goto_0
    iget-boolean v1, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->p:Z

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    const v0, 0x7fffffff

    :goto_1
    iget-object v1, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->j:Lcom/onegravity/rteditor/converter/tagsoup/Schema;

    invoke-virtual {v1, p1, p2, v0, p3}, Lcom/onegravity/rteditor/converter/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    iget-boolean p2, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->p:Z

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->j:Lcom/onegravity/rteditor/converter/tagsoup/Schema;

    invoke-virtual {p2}, Lcom/onegravity/rteditor/converter/tagsoup/Schema;->rootElementType()Lcom/onegravity/rteditor/converter/tagsoup/ElementType;

    move-result-object p3

    invoke-virtual {p3}, Lcom/onegravity/rteditor/converter/tagsoup/ElementType;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/onegravity/rteditor/converter/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object p2, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->j:Lcom/onegravity/rteditor/converter/tagsoup/Schema;

    invoke-virtual {p2, p1}, Lcom/onegravity/rteditor/converter/tagsoup/Schema;->getElementType(Ljava/lang/String;)Lcom/onegravity/rteditor/converter/tagsoup/ElementType;

    move-result-object p2

    :cond_6
    new-instance p1, Lcom/onegravity/rteditor/converter/tagsoup/Element;

    iget-boolean p3, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->q:Z

    invoke-direct {p1, p2, p3}, Lcom/onegravity/rteditor/converter/tagsoup/Element;-><init>(Lcom/onegravity/rteditor/converter/tagsoup/ElementType;Z)V

    iput-object p1, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->w:Lcom/onegravity/rteditor/converter/tagsoup/Element;

    return-void
.end method

.method public final h([CII)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p3, v1, :cond_0

    return v0

    :cond_0
    aget-char v2, p1, p2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_3

    if-le p3, v1, :cond_2

    add-int/lit8 p0, p2, 0x1

    aget-char p0, p1, p0

    const/16 v2, 0x78

    if-eq p0, v2, :cond_1

    const/16 v2, 0x58

    if-ne p0, v2, :cond_2

    :cond_1
    :try_start_0
    new-instance p0, Ljava/lang/String;

    add-int/lit8 p2, p2, 0x2

    add-int/lit8 p3, p3, -0x2

    invoke-direct {p0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    const/16 p1, 0x10

    invoke-static {p0, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0

    :cond_2
    :try_start_1
    new-instance p0, Ljava/lang/String;

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    invoke-direct {p0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    const/16 p1, 0xa

    invoke-static {p0, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    :catch_1
    return v0

    :cond_3
    iget-object p0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->j:Lcom/onegravity/rteditor/converter/tagsoup/Schema;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/converter/tagsoup/Schema;->getEntity(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final i([CII)Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/lang/StringBuffer;

    add-int/lit8 v1, p3, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v4, v1

    move v3, v2

    :goto_0
    add-int/lit8 v5, p3, -0x1

    const/16 v6, 0x3a

    const/16 v7, 0x5f

    if-lez p3, :cond_8

    aget-char p3, p1, p2

    invoke-static {p3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v8

    if-nez v8, :cond_6

    if-ne p3, v7, :cond_0

    goto :goto_3

    :cond_0
    invoke-static {p3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-nez v8, :cond_4

    const/16 v8, 0x2d

    if-eq p3, v8, :cond_4

    const/16 v8, 0x2e

    if-ne p3, v8, :cond_1

    goto :goto_2

    :cond_1
    if-ne p3, v6, :cond_7

    if-nez v4, :cond_7

    if-eqz v3, :cond_2

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    iget-boolean v3, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->r:Z

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    move v7, p3

    :goto_1
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v3, v2

    move v4, v3

    goto :goto_5

    :cond_4
    :goto_2
    if-eqz v3, :cond_5

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_5
    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_6
    :goto_3
    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_4
    move v3, v1

    :cond_7
    :goto_5
    add-int/lit8 p2, p2, 0x1

    move p3, v5

    goto :goto_0

    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    if-eqz p0, :cond_9

    sub-int/2addr p0, v2

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result p0

    if-ne p0, v6, :cond_a

    :cond_9
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_a
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final j()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->Z:Lcom/onegravity/rteditor/converter/tagsoup/Element;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/onegravity/rteditor/converter/tagsoup/Element;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->Z:Lcom/onegravity/rteditor/converter/tagsoup/Element;

    invoke-virtual {v1}, Lcom/onegravity/rteditor/converter/tagsoup/Element;->localName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->Z:Lcom/onegravity/rteditor/converter/tagsoup/Element;

    invoke-virtual {v2}, Lcom/onegravity/rteditor/converter/tagsoup/Element;->namespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->m:Z

    if-nez v4, :cond_1

    const-string v1, ""

    move-object v2, v1

    :cond_1
    iget-object v4, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->e:Lorg/xml/sax/ContentHandler;

    invoke-interface {v4, v2, v1, v0}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3, v2}, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->e:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, v3}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->Z:Lcom/onegravity/rteditor/converter/tagsoup/Element;

    invoke-virtual {v0}, Lcom/onegravity/rteditor/converter/tagsoup/Element;->atts()Lcom/onegravity/rteditor/converter/tagsoup/AttributesImpl;

    move-result-object v0

    invoke-interface {v0}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_4

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->e:Lorg/xml/sax/ContentHandler;

    invoke-interface {v2, v3}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->Z:Lcom/onegravity/rteditor/converter/tagsoup/Element;

    invoke-virtual {v0}, Lcom/onegravity/rteditor/converter/tagsoup/Element;->next()Lcom/onegravity/rteditor/converter/tagsoup/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->Z:Lcom/onegravity/rteditor/converter/tagsoup/Element;

    return-void
.end method

.method public final k(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 p0, 0x3a

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public final l(Lcom/onegravity/rteditor/converter/tagsoup/Element;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onegravity/rteditor/converter/tagsoup/Element;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onegravity/rteditor/converter/tagsoup/Element;->localName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onegravity/rteditor/converter/tagsoup/Element;->namespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/onegravity/rteditor/converter/tagsoup/Element;->clean()V

    iget-boolean v4, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->m:Z

    if-nez v4, :cond_0

    const-string v1, ""

    move-object v2, v1

    :cond_0
    iget-boolean v4, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->u0:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->O:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :try_start_0
    iget-object v4, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->i:Lorg/xml/sax/EntityResolver;

    iget-object v5, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->z:Ljava/lang/String;

    iget-object v6, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->J:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Lorg/xml/sax/EntityResolver;->resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    invoke-virtual {p0, v3, v2}, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->e:Lorg/xml/sax/ContentHandler;

    invoke-interface {v4, v3, v2}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lcom/onegravity/rteditor/converter/tagsoup/Element;->atts()Lcom/onegravity/rteditor/converter/tagsoup/AttributesImpl;

    move-result-object v3

    invoke-interface {v3}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_4

    invoke-interface {v3, v6}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8, v7}, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->e:Lorg/xml/sax/ContentHandler;

    invoke-interface {v9, v8, v7}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->e:Lorg/xml/sax/ContentHandler;

    invoke-virtual {p1}, Lcom/onegravity/rteditor/converter/tagsoup/Element;->atts()Lcom/onegravity/rteditor/converter/tagsoup/AttributesImpl;

    move-result-object v4

    invoke-interface {v3, v2, v1, v0, v4}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->Z:Lcom/onegravity/rteditor/converter/tagsoup/Element;

    invoke-virtual {p1, v0}, Lcom/onegravity/rteditor/converter/tagsoup/Element;->setNext(Lcom/onegravity/rteditor/converter/tagsoup/Element;)V

    iput-object p1, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->Z:Lcom/onegravity/rteditor/converter/tagsoup/Element;

    iput-boolean v5, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->u0:Z

    iget-boolean v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->u:Z

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/onegravity/rteditor/converter/tagsoup/Element;->flags()I

    move-result p1

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->k:Lcom/onegravity/rteditor/converter/tagsoup/Scanner;

    invoke-interface {p0}, Lcom/onegravity/rteditor/converter/tagsoup/Scanner;->startCDATA()V

    :cond_5
    return-void
.end method

.method public final m(Lcom/onegravity/rteditor/converter/tagsoup/Element;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->Z:Lcom/onegravity/rteditor/converter/tagsoup/Element;

    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/onegravity/rteditor/converter/tagsoup/Element;->canContain(Lcom/onegravity/rteditor/converter/tagsoup/Element;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v0}, Lcom/onegravity/rteditor/converter/tagsoup/Element;->next()Lcom/onegravity/rteditor/converter/tagsoup/Element;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_2
    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {p1}, Lcom/onegravity/rteditor/converter/tagsoup/Element;->parent()Lcom/onegravity/rteditor/converter/tagsoup/ElementType;

    move-result-object v1

    if-nez v1, :cond_8

    :goto_3
    if-nez v0, :cond_3

    return-void

    :cond_3
    :goto_4
    iget-object v1, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->Z:Lcom/onegravity/rteditor/converter/tagsoup/Element;

    if-eq v1, v0, :cond_5

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/onegravity/rteditor/converter/tagsoup/Element;->next()Lcom/onegravity/rteditor/converter/tagsoup/Element;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->Z:Lcom/onegravity/rteditor/converter/tagsoup/Element;

    invoke-virtual {v1}, Lcom/onegravity/rteditor/converter/tagsoup/Element;->next()Lcom/onegravity/rteditor/converter/tagsoup/Element;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onegravity/rteditor/converter/tagsoup/Element;->next()Lcom/onegravity/rteditor/converter/tagsoup/Element;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_5

    :cond_4
    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->o()V

    goto :goto_4

    :cond_5
    :goto_5
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/onegravity/rteditor/converter/tagsoup/Element;->next()Lcom/onegravity/rteditor/converter/tagsoup/Element;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onegravity/rteditor/converter/tagsoup/Element;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "<pcdata>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->l(Lcom/onegravity/rteditor/converter/tagsoup/Element;)V

    :cond_6
    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->n(Lcom/onegravity/rteditor/converter/tagsoup/Element;)V

    move-object p1, v0

    goto :goto_5

    :cond_7
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->w:Lcom/onegravity/rteditor/converter/tagsoup/Element;

    return-void

    :cond_8
    new-instance v0, Lcom/onegravity/rteditor/converter/tagsoup/Element;

    iget-boolean v2, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->q:Z

    invoke-direct {v0, v1, v2}, Lcom/onegravity/rteditor/converter/tagsoup/Element;-><init>(Lcom/onegravity/rteditor/converter/tagsoup/ElementType;Z)V

    invoke-virtual {v0, p1}, Lcom/onegravity/rteditor/converter/tagsoup/Element;->setNext(Lcom/onegravity/rteditor/converter/tagsoup/Element;)V

    move-object p1, v0

    goto :goto_0
.end method

.method public final n(Lcom/onegravity/rteditor/converter/tagsoup/Element;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->k0:Lcom/onegravity/rteditor/converter/tagsoup/Element;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->Z:Lcom/onegravity/rteditor/converter/tagsoup/Element;

    invoke-virtual {v1, v0}, Lcom/onegravity/rteditor/converter/tagsoup/Element;->canContain(Lcom/onegravity/rteditor/converter/tagsoup/Element;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->k0:Lcom/onegravity/rteditor/converter/tagsoup/Element;

    invoke-virtual {v0, p1}, Lcom/onegravity/rteditor/converter/tagsoup/Element;->canContain(Lcom/onegravity/rteditor/converter/tagsoup/Element;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->k0:Lcom/onegravity/rteditor/converter/tagsoup/Element;

    invoke-virtual {v0}, Lcom/onegravity/rteditor/converter/tagsoup/Element;->next()Lcom/onegravity/rteditor/converter/tagsoup/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->k0:Lcom/onegravity/rteditor/converter/tagsoup/Element;

    invoke-virtual {p0, v1}, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->l(Lcom/onegravity/rteditor/converter/tagsoup/Element;)V

    iput-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->k0:Lcom/onegravity/rteditor/converter/tagsoup/Element;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final o()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->Z:Lcom/onegravity/rteditor/converter/tagsoup/Element;

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->j()V

    iget-boolean v1, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->s:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/onegravity/rteditor/converter/tagsoup/Element;->flags()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/onegravity/rteditor/converter/tagsoup/Element;->anonymize()V

    iget-object v1, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->k0:Lcom/onegravity/rteditor/converter/tagsoup/Element;

    invoke-virtual {v0, v1}, Lcom/onegravity/rteditor/converter/tagsoup/Element;->setNext(Lcom/onegravity/rteditor/converter/tagsoup/Element;)V

    iput-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->k0:Lcom/onegravity/rteditor/converter/tagsoup/Element;

    :cond_0
    return-void
.end method

.method public final p()V
    .locals 3

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->j:Lcom/onegravity/rteditor/converter/tagsoup/Schema;

    if-nez v0, :cond_0

    new-instance v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLSchema;

    invoke-direct {v0}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLSchema;-><init>()V

    iput-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->j:Lcom/onegravity/rteditor/converter/tagsoup/Schema;

    :cond_0
    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->k:Lcom/onegravity/rteditor/converter/tagsoup/Scanner;

    if-nez v0, :cond_1

    new-instance v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;

    invoke-direct {v0}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLScanner;-><init>()V

    iput-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->k:Lcom/onegravity/rteditor/converter/tagsoup/Scanner;

    :cond_1
    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->l:Lcom/onegravity/rteditor/converter/tagsoup/AutoDetector;

    if-nez v0, :cond_2

    new-instance v0, Lcom/onegravity/rteditor/converter/tagsoup/Parser$a;

    invoke-direct {v0, p0}, Lcom/onegravity/rteditor/converter/tagsoup/Parser$a;-><init>(Lcom/onegravity/rteditor/converter/tagsoup/Parser;)V

    iput-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->l:Lcom/onegravity/rteditor/converter/tagsoup/AutoDetector;

    :cond_2
    new-instance v0, Lcom/onegravity/rteditor/converter/tagsoup/Element;

    iget-object v1, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->j:Lcom/onegravity/rteditor/converter/tagsoup/Schema;

    const-string v2, "<root>"

    invoke-virtual {v1, v2}, Lcom/onegravity/rteditor/converter/tagsoup/Schema;->getElementType(Ljava/lang/String;)Lcom/onegravity/rteditor/converter/tagsoup/ElementType;

    move-result-object v1

    iget-boolean v2, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->q:Z

    invoke-direct {v0, v1, v2}, Lcom/onegravity/rteditor/converter/tagsoup/Element;-><init>(Lcom/onegravity/rteditor/converter/tagsoup/ElementType;Z)V

    iput-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->Z:Lcom/onegravity/rteditor/converter/tagsoup/Element;

    new-instance v0, Lcom/onegravity/rteditor/converter/tagsoup/Element;

    iget-object v1, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->j:Lcom/onegravity/rteditor/converter/tagsoup/Schema;

    const-string v2, "<pcdata>"

    invoke-virtual {v1, v2}, Lcom/onegravity/rteditor/converter/tagsoup/Schema;->getElementType(Ljava/lang/String;)Lcom/onegravity/rteditor/converter/tagsoup/ElementType;

    move-result-object v1

    iget-boolean v2, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->q:Z

    invoke-direct {v0, v1, v2}, Lcom/onegravity/rteditor/converter/tagsoup/Element;-><init>(Lcom/onegravity/rteditor/converter/tagsoup/ElementType;Z)V

    iput-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->q0:Lcom/onegravity/rteditor/converter/tagsoup/Element;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->w:Lcom/onegravity/rteditor/converter/tagsoup/Element;

    iput-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->x:Ljava/lang/String;

    iput-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->Q:Ljava/lang/String;

    iput-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->k0:Lcom/onegravity/rteditor/converter/tagsoup/Element;

    const/4 v1, 0x0

    iput v1, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->t0:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->u0:Z

    iput-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->J:Ljava/lang/String;

    iput-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->z:Ljava/lang/String;

    iput-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->O:Ljava/lang/String;

    return-void
.end method

.method public parse(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->parse(Lorg/xml/sax/InputSource;)V

    return-void
.end method

.method public declared-synchronized parse(Lorg/xml/sax/InputSource;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->p()V

    .line 3
    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->g(Lorg/xml/sax/InputSource;)Ljava/io/Reader;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->e:Lorg/xml/sax/ContentHandler;

    invoke-interface {v1}, Lorg/xml/sax/ContentHandler;->startDocument()V

    .line 5
    iget-object v1, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->k:Lcom/onegravity/rteditor/converter/tagsoup/Scanner;

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getPublicId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Lcom/onegravity/rteditor/converter/tagsoup/Scanner;->resetDocumentLocator(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->k:Lcom/onegravity/rteditor/converter/tagsoup/Scanner;

    instance-of v1, p1, Lorg/xml/sax/Locator;

    if-eqz v1, :cond_0

    .line 7
    iget-object v1, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->e:Lorg/xml/sax/ContentHandler;

    check-cast p1, Lorg/xml/sax/Locator;

    invoke-interface {v1, p1}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->j:Lcom/onegravity/rteditor/converter/tagsoup/Schema;

    invoke-virtual {p1}, Lcom/onegravity/rteditor/converter/tagsoup/Schema;->getURI()Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->e:Lorg/xml/sax/ContentHandler;

    iget-object v1, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->j:Lcom/onegravity/rteditor/converter/tagsoup/Schema;

    invoke-virtual {v1}, Lcom/onegravity/rteditor/converter/tagsoup/Schema;->getPrefix()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->j:Lcom/onegravity/rteditor/converter/tagsoup/Schema;

    invoke-virtual {v2}, Lcom/onegravity/rteditor/converter/tagsoup/Schema;->getURI()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->k:Lcom/onegravity/rteditor/converter/tagsoup/Scanner;

    invoke-interface {p1, v0, p0}, Lcom/onegravity/rteditor/converter/tagsoup/Scanner;->scan(Ljava/io/Reader;Lcom/onegravity/rteditor/converter/tagsoup/ScanHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public pcdata([CII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v0

    :goto_0
    if-ge v2, p3, :cond_2

    add-int v3, p2, v2

    aget-char v3, p1, v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->Z:Lcom/onegravity/rteditor/converter/tagsoup/Element;

    iget-object v1, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->q0:Lcom/onegravity/rteditor/converter/tagsoup/Element;

    invoke-virtual {v0, v1}, Lcom/onegravity/rteditor/converter/tagsoup/Element;->canContain(Lcom/onegravity/rteditor/converter/tagsoup/Element;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->t:Z

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->e:Lorg/xml/sax/ContentHandler;

    invoke-interface {p0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->ignorableWhitespace([CII)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->q0:Lcom/onegravity/rteditor/converter/tagsoup/Element;

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->m(Lcom/onegravity/rteditor/converter/tagsoup/Element;)V

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->e:Lorg/xml/sax/ContentHandler;

    invoke-interface {p0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    :cond_4
    :goto_1
    return-void
.end method

.method public pi([CII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->w:Lcom/onegravity/rteditor/converter/tagsoup/Element;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->Q:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "xml"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-lez p3, :cond_2

    add-int/lit8 v0, p3, -0x1

    aget-char v0, p1, v0

    const/16 v1, 0x3f

    if-ne v0, v1, :cond_2

    add-int/lit8 p3, p3, -0x1

    :cond_2
    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->e:Lorg/xml/sax/ContentHandler;

    iget-object v1, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->Q:Ljava/lang/String;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->Q:Ljava/lang/String;

    :cond_3
    :goto_0
    return-void
.end method

.method public pitarget([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->w:Lcom/onegravity/rteditor/converter/tagsoup/Element;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->i([CII)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x3a

    const/16 p3, 0x5f

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->Q:Ljava/lang/String;

    return-void
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 0

    if-nez p1, :cond_0

    move-object p1, p0

    :cond_0
    iput-object p1, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->e:Lorg/xml/sax/ContentHandler;

    return-void
.end method

.method public setDTDHandler(Lorg/xml/sax/DTDHandler;)V
    .locals 0

    if-nez p1, :cond_0

    move-object p1, p0

    :cond_0
    iput-object p1, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->g:Lorg/xml/sax/DTDHandler;

    return-void
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .locals 0

    if-nez p1, :cond_0

    move-object p1, p0

    :cond_0
    iput-object p1, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->i:Lorg/xml/sax/EntityResolver;

    return-void
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 0

    if-nez p1, :cond_0

    move-object p1, p0

    :cond_0
    iput-object p1, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->h:Lorg/xml/sax/ErrorHandler;

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->v:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->v:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->v:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string v0, "http://xml.org/sax/features/namespaces"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean p2, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->m:Z

    goto :goto_1

    :cond_1
    const-string v0, "http://www.ccil.org/~cowan/tagsoup/features/ignore-bogons"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean p2, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->n:Z

    goto :goto_1

    :cond_2
    const-string v0, "http://www.ccil.org/~cowan/tagsoup/features/bogons-empty"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean p2, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->o:Z

    goto :goto_1

    :cond_3
    const-string v0, "http://www.ccil.org/~cowan/tagsoup/features/root-bogons"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean p2, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->p:Z

    goto :goto_1

    :cond_4
    const-string v0, "http://www.ccil.org/~cowan/tagsoup/features/default-attributes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean p2, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->q:Z

    goto :goto_1

    :cond_5
    const-string v0, "http://www.ccil.org/~cowan/tagsoup/features/translate-colons"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iput-boolean p2, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->r:Z

    goto :goto_1

    :cond_6
    const-string v0, "http://www.ccil.org/~cowan/tagsoup/features/restart-elements"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iput-boolean p2, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->s:Z

    goto :goto_1

    :cond_7
    const-string v0, "http://www.ccil.org/~cowan/tagsoup/features/ignorable-whitespace"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iput-boolean p2, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->t:Z

    goto :goto_1

    :cond_8
    const-string v0, "http://www.ccil.org/~cowan/tagsoup/features/cdata-elements"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    iput-boolean p2, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->u:Z

    :cond_9
    :goto_1
    return-void

    :cond_a
    new-instance p0, Lorg/xml/sax/SAXNotRecognizedException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown feature "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    const-string v0, "http://xml.org/sax/properties/lexical-handler"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p2, :cond_0

    iput-object p0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->f:Lorg/xml/sax/ext/LexicalHandler;

    goto :goto_0

    :cond_0
    instance-of p1, p2, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz p1, :cond_1

    check-cast p2, Lorg/xml/sax/ext/LexicalHandler;

    iput-object p2, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->f:Lorg/xml/sax/ext/LexicalHandler;

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/xml/sax/SAXNotSupportedException;

    const-string p1, "Your lexical handler is not a LexicalHandler"

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const-string v0, "http://www.ccil.org/~cowan/tagsoup/properties/scanner"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    instance-of p1, p2, Lcom/onegravity/rteditor/converter/tagsoup/Scanner;

    if-eqz p1, :cond_3

    check-cast p2, Lcom/onegravity/rteditor/converter/tagsoup/Scanner;

    iput-object p2, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->k:Lcom/onegravity/rteditor/converter/tagsoup/Scanner;

    goto :goto_0

    :cond_3
    new-instance p0, Lorg/xml/sax/SAXNotSupportedException;

    const-string p1, "Your scanner is not a Scanner"

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    const-string v0, "http://www.ccil.org/~cowan/tagsoup/properties/schema"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    instance-of p1, p2, Lcom/onegravity/rteditor/converter/tagsoup/Schema;

    if-eqz p1, :cond_5

    check-cast p2, Lcom/onegravity/rteditor/converter/tagsoup/Schema;

    iput-object p2, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->j:Lcom/onegravity/rteditor/converter/tagsoup/Schema;

    goto :goto_0

    :cond_5
    new-instance p0, Lorg/xml/sax/SAXNotSupportedException;

    const-string p1, "Your schema is not a Schema"

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    const-string v0, "http://www.ccil.org/~cowan/tagsoup/properties/auto-detector"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    instance-of p1, p2, Lcom/onegravity/rteditor/converter/tagsoup/AutoDetector;

    if-eqz p1, :cond_7

    check-cast p2, Lcom/onegravity/rteditor/converter/tagsoup/AutoDetector;

    iput-object p2, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->l:Lcom/onegravity/rteditor/converter/tagsoup/AutoDetector;

    :goto_0
    return-void

    :cond_7
    new-instance p0, Lorg/xml/sax/SAXNotSupportedException;

    const-string p1, "Your auto-detector is not an AutoDetector"

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Lorg/xml/sax/SAXNotRecognizedException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown property "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public stagc([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->w:Lcom/onegravity/rteditor/converter/tagsoup/Element;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->m(Lcom/onegravity/rteditor/converter/tagsoup/Element;)V

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->Z:Lcom/onegravity/rteditor/converter/tagsoup/Element;

    invoke-virtual {v0}, Lcom/onegravity/rteditor/converter/tagsoup/Element;->model()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->b([CII)V

    :cond_1
    return-void
.end method

.method public stage([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->w:Lcom/onegravity/rteditor/converter/tagsoup/Element;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->m(Lcom/onegravity/rteditor/converter/tagsoup/Element;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->b([CII)V

    return-void
.end method

.method public startCDATA()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public startEntity(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method
