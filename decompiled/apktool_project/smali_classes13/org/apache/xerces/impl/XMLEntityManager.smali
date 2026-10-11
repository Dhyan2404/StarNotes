.class public Lorg/apache/xerces/impl/XMLEntityManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/xni/parser/XMLComponent;
.implements Lorg/apache/xerces/xni/parser/XMLEntityResolver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/impl/XMLEntityManager$RewindableInputStream;,
        Lorg/apache/xerces/impl/XMLEntityManager$c;,
        Lorg/apache/xerces/impl/XMLEntityManager$b;,
        Lorg/apache/xerces/impl/XMLEntityManager$a;,
        Lorg/apache/xerces/impl/XMLEntityManager$d;,
        Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;,
        Lorg/apache/xerces/impl/XMLEntityManager$ExternalEntity;,
        Lorg/apache/xerces/impl/XMLEntityManager$InternalEntity;,
        Lorg/apache/xerces/impl/XMLEntityManager$Entity;
    }
.end annotation


# static fields
.field protected static final ALLOW_JAVA_ENCODINGS:Ljava/lang/String; = "http://apache.org/xml/features/allow-java-encodings"

.field protected static final BUFFER_SIZE:Ljava/lang/String; = "http://apache.org/xml/properties/input-buffer-size"

.field public static final DEFAULT_BUFFER_SIZE:I = 0x800

.field public static final DEFAULT_INTERNAL_BUFFER_SIZE:I = 0x200

.field public static final DEFAULT_XMLDECL_BUFFER_SIZE:I = 0x40

.field protected static final ENTITY_RESOLVER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-resolver"

.field protected static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field protected static final EXTERNAL_GENERAL_ENTITIES:Ljava/lang/String; = "http://xml.org/sax/features/external-general-entities"

.field protected static final EXTERNAL_PARAMETER_ENTITIES:Ljava/lang/String; = "http://xml.org/sax/features/external-parameter-entities"

.field public static J:Ljava/security/PrivilegedAction; = null

.field protected static final PARSER_SETTINGS:Ljava/lang/String; = "http://apache.org/xml/features/internal/parser-settings"

.field protected static final SECURITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/security-manager"

.field protected static final STANDARD_URI_CONFORMANT:Ljava/lang/String; = "http://apache.org/xml/features/standard-uri-conformant"

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field protected static final VALIDATION:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field protected static final VALIDATION_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation-manager"

.field protected static final WARN_ON_DUPLICATE_ENTITYDEF:Ljava/lang/String; = "http://apache.org/xml/features/warn-on-duplicate-entitydef"

.field public static final k:[Ljava/lang/String;

.field public static final l:[Ljava/lang/Boolean;

.field public static final m:[Ljava/lang/String;

.field public static final n:[Ljava/lang/Object;

.field public static final o:Ljava/lang/String;

.field public static final p:Ljava/lang/String;

.field public static final q:Z

.field public static final r:Z

.field public static final s:Z

.field public static final t:Z

.field public static u:Ljava/lang/String;

.field public static v:Lorg/apache/xerces/util/URI;

.field public static final w:[Z

.field public static final x:[C

.field public static final y:[C

.field public static final z:[C


# instance fields
.field public final e:Lorg/apache/xerces/util/XMLResourceIdentifierImpl;

.field public final f:Lorg/apache/xerces/xni/Augmentations;

.field protected fAllowJavaEncodings:Z

.field protected fBufferSize:I

.field protected fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

.field protected fDeclaredEntities:Ljava/util/Hashtable;

.field protected final fEntities:Ljava/util/Hashtable;

.field protected fEntityExpansionCount:I

.field protected fEntityExpansionLimit:I

.field protected fEntityHandler:Lorg/apache/xerces/impl/XMLEntityHandler;

.field protected fEntityResolver:Lorg/apache/xerces/xni/parser/XMLEntityResolver;

.field protected fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

.field protected final fEntityStack:Ljava/util/Stack;

.field protected fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

.field protected fExternalGeneralEntities:Z

.field protected fExternalParameterEntities:Z

.field protected fHasPEReferences:Z

.field protected fInExternalSubset:Z

.field protected fReaderStack:Ljava/util/Stack;

.field protected fSecurityManager:Lorg/apache/xerces/util/SecurityManager;

.field protected fStandalone:Z

.field protected fStrictURI:Z

.field protected fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

.field protected fValidation:Z

.field protected fValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

.field protected fWarnDuplicateEntityDef:Z

.field protected fXML10EntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

.field protected fXML11EntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

.field public final g:Lorg/apache/xerces/impl/XMLEntityManager$a;

.field public final h:Lorg/apache/xerces/impl/XMLEntityManager$a;

.field public i:[B

.field public final j:Lorg/apache/xerces/impl/XMLEntityManager$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    const-string v0, "http://xml.org/sax/features/validation"

    const-string v1, "http://xml.org/sax/features/external-general-entities"

    const-string v2, "http://xml.org/sax/features/external-parameter-entities"

    const-string v3, "http://apache.org/xml/features/allow-java-encodings"

    const-string v4, "http://apache.org/xml/features/warn-on-duplicate-entitydef"

    const-string v5, "http://apache.org/xml/features/standard-uri-conformant"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xerces/impl/XMLEntityManager;->k:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Boolean;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v4, 0x3

    aput-object v1, v0, v4

    const/4 v4, 0x4

    aput-object v1, v0, v4

    const/4 v4, 0x5

    aput-object v1, v0, v4

    sput-object v0, Lorg/apache/xerces/impl/XMLEntityManager;->l:[Ljava/lang/Boolean;

    const-string v5, "http://apache.org/xml/properties/internal/symbol-table"

    const-string v6, "http://apache.org/xml/properties/internal/error-reporter"

    const-string v7, "http://apache.org/xml/properties/internal/entity-resolver"

    const-string v8, "http://apache.org/xml/properties/internal/validation-manager"

    const-string v9, "http://apache.org/xml/properties/input-buffer-size"

    const-string v10, "http://apache.org/xml/properties/security-manager"

    filled-new-array/range {v5 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xerces/impl/XMLEntityManager;->m:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/Integer;

    const/16 v0, 0x800

    invoke-direct {v8, v0}, Ljava/lang/Integer;-><init>(I)V

    const/4 v9, 0x0

    filled-new-array/range {v4 .. v9}, [Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lorg/apache/xerces/impl/XMLEntityManager;->n:[Ljava/lang/Object;

    const-string v0, "[xml]"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xerces/impl/XMLEntityManager;->o:Ljava/lang/String;

    const-string v0, "[dtd]"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xerces/impl/XMLEntityManager;->p:Ljava/lang/String;

    const/16 v0, 0x80

    new-array v1, v0, [Z

    sput-object v1, Lorg/apache/xerces/impl/XMLEntityManager;->w:[Z

    new-array v1, v0, [C

    sput-object v1, Lorg/apache/xerces/impl/XMLEntityManager;->x:[C

    new-array v0, v0, [C

    sput-object v0, Lorg/apache/xerces/impl/XMLEntityManager;->y:[C

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/xerces/impl/XMLEntityManager;->z:[C

    move v0, v2

    :goto_0
    const/16 v1, 0x1f

    if-le v0, v1, :cond_1

    sget-object v0, Lorg/apache/xerces/impl/XMLEntityManager;->w:[Z

    const/16 v1, 0x7f

    aput-boolean v3, v0, v1

    sget-object v0, Lorg/apache/xerces/impl/XMLEntityManager;->x:[C

    const/16 v4, 0x37

    aput-char v4, v0, v1

    sget-object v0, Lorg/apache/xerces/impl/XMLEntityManager;->y:[C

    const/16 v4, 0x46

    aput-char v4, v0, v1

    const/16 v1, 0xf

    new-array v4, v1, [C

    fill-array-data v4, :array_1

    :goto_1
    if-lt v2, v1, :cond_0

    new-instance v0, Lorg/apache/xerces/impl/a;

    invoke-direct {v0}, Lorg/apache/xerces/impl/a;-><init>()V

    sput-object v0, Lorg/apache/xerces/impl/XMLEntityManager;->J:Ljava/security/PrivilegedAction;

    return-void

    :cond_0
    aget-char v0, v4, v2

    sget-object v5, Lorg/apache/xerces/impl/XMLEntityManager;->w:[Z

    aput-boolean v3, v5, v0

    sget-object v5, Lorg/apache/xerces/impl/XMLEntityManager;->x:[C

    sget-object v6, Lorg/apache/xerces/impl/XMLEntityManager;->z:[C

    shr-int/lit8 v7, v0, 0x4

    aget-char v7, v6, v7

    aput-char v7, v5, v0

    sget-object v5, Lorg/apache/xerces/impl/XMLEntityManager;->y:[C

    and-int/lit8 v7, v0, 0xf

    aget-char v6, v6, v7

    aput-char v6, v5, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    sget-object v1, Lorg/apache/xerces/impl/XMLEntityManager;->w:[Z

    aput-boolean v3, v1, v0

    sget-object v1, Lorg/apache/xerces/impl/XMLEntityManager;->x:[C

    sget-object v4, Lorg/apache/xerces/impl/XMLEntityManager;->z:[C

    shr-int/lit8 v5, v0, 0x4

    aget-char v5, v4, v5

    aput-char v5, v1, v0

    sget-object v1, Lorg/apache/xerces/impl/XMLEntityManager;->y:[C

    and-int/lit8 v5, v0, 0xf

    aget-char v4, v4, v5

    aput-char v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data

    :array_1
    .array-data 2
        0x20s
        0x3cs
        0x3es
        0x23s
        0x25s
        0x22s
        0x7bs
        0x7ds
        0x7cs
        0x5cs
        0x5es
        0x7es
        0x5bs
        0x5ds
        0x60s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/xerces/impl/XMLEntityManager;-><init>(Lorg/apache/xerces/impl/XMLEntityManager;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/impl/XMLEntityManager;)V
    .locals 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fExternalGeneralEntities:Z

    iput-boolean v0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fExternalParameterEntities:Z

    const/16 v1, 0x800

    iput v1, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fBufferSize:I

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fSecurityManager:Lorg/apache/xerces/util/SecurityManager;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fInExternalSubset:Z

    iput v2, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fEntityExpansionLimit:I

    iput v2, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fEntityExpansionCount:I

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    new-instance v2, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;

    invoke-direct {v2}, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;-><init>()V

    iput-object v2, p0, Lorg/apache/xerces/impl/XMLEntityManager;->e:Lorg/apache/xerces/util/XMLResourceIdentifierImpl;

    new-instance v2, Lorg/apache/xerces/util/AugmentationsImpl;

    invoke-direct {v2}, Lorg/apache/xerces/util/AugmentationsImpl;-><init>()V

    iput-object v2, p0, Lorg/apache/xerces/impl/XMLEntityManager;->f:Lorg/apache/xerces/xni/Augmentations;

    new-instance v2, Lorg/apache/xerces/impl/XMLEntityManager$a;

    iget v3, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fBufferSize:I

    invoke-direct {v2, v3}, Lorg/apache/xerces/impl/XMLEntityManager$a;-><init>(I)V

    iput-object v2, p0, Lorg/apache/xerces/impl/XMLEntityManager;->g:Lorg/apache/xerces/impl/XMLEntityManager$a;

    new-instance v2, Lorg/apache/xerces/impl/XMLEntityManager$a;

    iget v3, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fBufferSize:I

    shl-int/2addr v3, v0

    invoke-direct {v2, v3}, Lorg/apache/xerces/impl/XMLEntityManager$a;-><init>(I)V

    iput-object v2, p0, Lorg/apache/xerces/impl/XMLEntityManager;->h:Lorg/apache/xerces/impl/XMLEntityManager$a;

    iput-object v1, p0, Lorg/apache/xerces/impl/XMLEntityManager;->i:[B

    new-instance v2, Lorg/apache/xerces/impl/XMLEntityManager$c;

    iget v3, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fBufferSize:I

    const/16 v4, 0x200

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/impl/XMLEntityManager$c;-><init>(II)V

    iput-object v2, p0, Lorg/apache/xerces/impl/XMLEntityManager;->j:Lorg/apache/xerces/impl/XMLEntityManager$c;

    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fReaderStack:Ljava/util/Stack;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/apache/xerces/impl/XMLEntityManager;->k()Ljava/util/Hashtable;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fDeclaredEntities:Ljava/util/Hashtable;

    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/XMLEntityManager;->setScannerVersion(S)V

    return-void
.end method

.method public static synthetic a(Lorg/apache/xerces/impl/XMLEntityManager;)Lorg/apache/xerces/impl/XMLEntityManager$c;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->j:Lorg/apache/xerces/impl/XMLEntityManager$c;

    return-object p0
.end method

.method public static absolutizeAgainstUserDir(Lorg/apache/xerces/util/URI;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    invoke-static {}, Lorg/apache/xerces/impl/XMLEntityManager;->m()Lorg/apache/xerces/util/URI;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xerces/util/URI;->absolutize(Lorg/apache/xerces/util/URI;)V

    return-void
.end method

.method public static synthetic b(Lorg/apache/xerces/impl/XMLEntityManager;)[B
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->i:[B

    return-object p0
.end method

.method public static synthetic c(Lorg/apache/xerces/impl/XMLEntityManager;[B)[B
    .locals 0

    iput-object p1, p0, Lorg/apache/xerces/impl/XMLEntityManager;->i:[B

    return-object p1
.end method

.method public static createOutputStream(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/net/URL;

    if-eqz v0, :cond_0

    move-object p0, v0

    :cond_0
    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v3, "file"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "localhost"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_1
    new-instance p0, Ljava/io/File;

    invoke-virtual {v2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xerces/impl/XMLEntityManager;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_2
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setDoInput(Z)V

    invoke-virtual {p0, v1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setUseCaches(Z)V

    instance-of v0, p0, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_4

    move-object v0, p0

    check-cast v0, Ljava/net/HttpURLConnection;

    const-string v1, "PUT"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p0, p1}, Lorg/apache/xerces/impl/XMLEntityManager;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :try_start_0
    invoke-static {p0, p1}, Lorg/apache/xerces/impl/XMLEntityManager;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/apache/xerces/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_2

    return-object p0

    :cond_2
    invoke-static {p0}, Lorg/apache/xerces/impl/XMLEntityManager;->fixURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_5

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    :try_start_2
    new-instance v1, Lorg/apache/xerces/util/URI;

    invoke-static {p1}, Lorg/apache/xerces/impl/XMLEntityManager;->fixURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/xerces/util/URI;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/apache/xerces/util/URI$MalformedURIException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_1
    const/16 v1, 0x3a

    :try_start_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    new-instance v1, Lorg/apache/xerces/util/URI;

    const-string v4, "file"

    const-string v5, ""

    invoke-static {p1}, Lorg/apache/xerces/impl/XMLEntityManager;->fixURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lorg/apache/xerces/util/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance v1, Lorg/apache/xerces/util/URI;

    invoke-static {}, Lorg/apache/xerces/impl/XMLEntityManager;->m()Lorg/apache/xerces/util/URI;

    move-result-object v2

    invoke-static {p1}, Lorg/apache/xerces/impl/XMLEntityManager;->fixURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lorg/apache/xerces/util/URI;-><init>(Lorg/apache/xerces/util/URI;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    :goto_0
    invoke-static {}, Lorg/apache/xerces/impl/XMLEntityManager;->m()Lorg/apache/xerces/util/URI;

    move-result-object v1

    :goto_1
    new-instance p1, Lorg/apache/xerces/util/URI;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v1, p2}, Lorg/apache/xerces/util/URI;-><init>(Lorg/apache/xerces/util/URI;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v0, p1

    :catch_2
    if-nez v0, :cond_6

    return-object p0

    :cond_6
    invoke-virtual {v0}, Lorg/apache/xerces/util/URI;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static fixURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    sget-char v0, Ljava/io/File;->separatorChar:C

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt v0, v2, :cond_1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x3a

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    const/16 v1, 0x41

    if-lt v0, v1, :cond_1

    const/16 v1, 0x5a

    if-gt v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "file:///"

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "file:"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_2

    if-eqz v0, :cond_4

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    :cond_2
    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v0, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    :cond_3
    :goto_3
    if-lt v3, v2, :cond_7

    const-string v5, "%20"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/2addr v2, v4

    :goto_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_5

    goto :goto_2

    :cond_4
    :goto_5
    return-object p0

    :cond_5
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v1, :cond_6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    :cond_6
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    new-instance v0, Lorg/apache/xerces/util/URI;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/apache/xerces/util/URI;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lorg/apache/xerces/util/URI;->isAbsoluteURI()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lorg/apache/xerces/util/URI;->getScheme()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-le p1, v1, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lorg/apache/xerces/util/URI$MalformedURIException;

    invoke-direct {p0}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>()V

    throw p0

    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Lorg/apache/xerces/util/URI;

    invoke-direct {p0, p1, v1}, Lorg/apache/xerces/util/URI;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lorg/apache/xerces/util/URI;->isAbsoluteURI()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {}, Lorg/apache/xerces/impl/XMLEntityManager;->m()Lorg/apache/xerces/util/URI;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/URI;->absolutize(Lorg/apache/xerces/util/URI;)V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-static {}, Lorg/apache/xerces/impl/XMLEntityManager;->m()Lorg/apache/xerces/util/URI;

    move-result-object p0

    :cond_4
    :goto_1
    invoke-virtual {v0, p0}, Lorg/apache/xerces/util/URI;->absolutize(Lorg/apache/xerces/util/URI;)V

    invoke-virtual {v0}, Lorg/apache/xerces/util/URI;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    new-instance v0, Lorg/apache/xerces/util/URI;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/apache/xerces/util/URI;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lorg/apache/xerces/util/URI;->isAbsoluteURI()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object p0

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/apache/xerces/util/URI;

    invoke-direct {p0, p1, v1}, Lorg/apache/xerces/util/URI;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lorg/apache/xerces/util/URI;->isAbsoluteURI()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, Lorg/apache/xerces/impl/XMLEntityManager;->m()Lorg/apache/xerces/util/URI;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/URI;->absolutize(Lorg/apache/xerces/util/URI;)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {}, Lorg/apache/xerces/impl/XMLEntityManager;->m()Lorg/apache/xerces/util/URI;

    move-result-object p0

    :cond_3
    :goto_1
    invoke-virtual {v0, p0}, Lorg/apache/xerces/util/URI;->absolutize(Lorg/apache/xerces/util/URI;)V

    invoke-virtual {v0}, Lorg/apache/xerces/util/URI;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static l(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x25

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "%"

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-direct {v1, p0}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v2

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p0, 0x1

    :goto_0
    if-lt p0, v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x10

    invoke-static {v4, v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public static declared-synchronized m()Lorg/apache/xerces/util/URI;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    const-class v0, Lorg/apache/xerces/impl/XMLEntityManager;

    monitor-enter v0

    :try_start_0
    const-string v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v2, Lorg/apache/xerces/impl/XMLEntityManager;->J:Ljava/security/PrivilegedAction;

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v2

    :catch_0
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    new-instance v1, Lorg/apache/xerces/util/URI;

    const-string v4, "file"

    const-string v5, ""

    const-string v6, ""

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lorg/apache/xerces/util/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_3
    sget-object v2, Lorg/apache/xerces/impl/XMLEntityManager;->v:Lorg/apache/xerces/util/URI;

    if-eqz v2, :cond_1

    sget-object v2, Lorg/apache/xerces/impl/XMLEntityManager;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v1, Lorg/apache/xerces/impl/XMLEntityManager;->v:Lorg/apache/xerces/util/URI;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-object v1

    :cond_1
    :try_start_4
    sput-object v1, Lorg/apache/xerces/impl/XMLEntityManager;->u:Ljava/lang/String;

    sget-char v2, Ljava/io/File;->separatorChar:C

    const/16 v3, 0x2f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuffer;

    mul-int/lit8 v4, v1, 0x3

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-lt v1, v4, :cond_2

    const/4 v4, 0x1

    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x3a

    if-ne v4, v6, :cond_2

    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    const/16 v6, 0x41

    if-lt v4, v6, :cond_2

    const/16 v6, 0x5a

    if-gt v4, v6, :cond_2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    move v4, v5

    :goto_0
    const/16 v6, 0x25

    if-lt v4, v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/16 v9, 0x80

    if-lt v8, v9, :cond_9

    :goto_1
    if-ge v4, v1, :cond_7

    :try_start_5
    invoke-virtual {v7, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "UTF-8"

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    array-length v4, v1

    :goto_2
    if-lt v5, v4, :cond_4

    goto :goto_5

    :cond_4
    aget-byte v8, v1, v5

    if-gez v8, :cond_5

    add-int/lit16 v8, v8, 0x100

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v9, Lorg/apache/xerces/impl/XMLEntityManager;->z:[C

    shr-int/lit8 v10, v8, 0x4

    aget-char v10, v9, v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    and-int/lit8 v8, v8, 0xf

    aget-char v8, v9, v8

    :goto_3
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_5
    sget-object v9, Lorg/apache/xerces/impl/XMLEntityManager;->w:[Z

    aget-boolean v9, v9, v8

    if-eqz v9, :cond_6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v9, Lorg/apache/xerces/impl/XMLEntityManager;->x:[C

    aget-char v9, v9, v8

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v9, Lorg/apache/xerces/impl/XMLEntityManager;->y:[C

    aget-char v8, v9, v8

    goto :goto_3

    :cond_6
    int-to-char v8, v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :catch_1
    new-instance v1, Lorg/apache/xerces/util/URI;

    const-string v5, "file"

    const-string v6, ""

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lorg/apache/xerces/util/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit v0

    return-object v1

    :cond_7
    :goto_5
    :try_start_7
    const-string v1, "/"

    invoke-virtual {v7, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_8
    new-instance v1, Lorg/apache/xerces/util/URI;

    const-string v3, "file"

    const-string v4, ""

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lorg/apache/xerces/util/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lorg/apache/xerces/impl/XMLEntityManager;->v:Lorg/apache/xerces/util/URI;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit v0

    return-object v1

    :cond_9
    :try_start_8
    sget-object v9, Lorg/apache/xerces/impl/XMLEntityManager;->w:[Z

    aget-boolean v9, v9, v8

    if-eqz v9, :cond_a

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v6, Lorg/apache/xerces/impl/XMLEntityManager;->x:[C

    aget-char v6, v6, v8

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v6, Lorg/apache/xerces/impl/XMLEntityManager;->y:[C

    aget-char v6, v6, v8

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_6

    :cond_a
    int-to-char v6, v8

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static final p(Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public addExternalEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    if-nez p4, :cond_3

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->entityLocation:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object p4

    :cond_0
    move-object v2, p4

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_1

    move-object v7, v2

    goto :goto_2

    :cond_1
    iget-object p4, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {p4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v3, p4, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->entityLocation:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object p4, p4, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->entityLocation:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {p4}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object p4

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    move-object v7, p4

    :goto_2
    new-instance p4, Lorg/apache/xerces/impl/XMLEntityManager$ExternalEntity;

    new-instance v0, Lorg/apache/xerces/util/XMLEntityDescriptionImpl;

    invoke-static {p3, v7, v1}, Lorg/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v3 .. v8}, Lorg/apache/xerces/util/XMLEntityDescriptionImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    iget-boolean p3, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fInExternalSubset:Z

    invoke-direct {p4, p1, v0, p2, p3}, Lorg/apache/xerces/impl/XMLEntityManager$ExternalEntity;-><init>(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Z)V

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, p4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    iget-boolean p2, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fWarnDuplicateEntityDef:Z

    if-eqz p2, :cond_5

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string p2, "MSG_DUPLICATE_ENTITY_DEFINITION"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {p0, p3, p2, p1, v1}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_5
    :goto_3
    return-void
.end method

.method public addInternalEntity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xerces/impl/XMLEntityManager;->addInternalEntity(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public addInternalEntity(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/xerces/impl/XMLEntityManager$InternalEntity;

    iget-boolean v1, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fInExternalSubset:Z

    invoke-direct {v0, p1, p2, v1, p3}, Lorg/apache/xerces/impl/XMLEntityManager$InternalEntity;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-boolean p2, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fWarnDuplicateEntityDef:Z

    if-eqz p2, :cond_1

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    const-string p3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v0, "MSG_DUPLICATE_ENTITY_DEFINITION"

    invoke-virtual {p0, p3, v0, p1, p2}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method public addUnparsedEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/xerces/impl/XMLEntityManager$ExternalEntity;

    new-instance v7, Lorg/apache/xerces/util/XMLEntityDescriptionImpl;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lorg/apache/xerces/util/XMLEntityDescriptionImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p2, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fInExternalSubset:Z

    invoke-direct {v0, p1, v7, p5, p2}, Lorg/apache/xerces/impl/XMLEntityManager$ExternalEntity;-><init>(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Z)V

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-boolean p2, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fWarnDuplicateEntityDef:Z

    if-eqz p2, :cond_1

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    const-string p3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string p4, "MSG_DUPLICATE_ENTITY_DEFINITION"

    invoke-virtual {p0, p3, p4, p1, p2}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method public closeReaders()V
    .locals 2

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fReaderStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fReaderStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public createReader(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/io/Reader;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "UTF-8"

    if-eq p2, v0, :cond_11

    if-nez p2, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v1, "UTF-16"

    if-ne p2, v1, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/xerces/impl/XMLEntityManager;->f(Ljava/io/InputStream;Z)Ljava/io/Reader;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/XMLEntityManager;->g(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v0, "UTF-16BE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1, v2}, Lorg/apache/xerces/impl/XMLEntityManager;->f(Ljava/io/InputStream;Z)Ljava/io/Reader;

    move-result-object p0

    return-object p0

    :cond_3
    const-string v0, "UTF-16LE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/apache/xerces/impl/XMLEntityManager;->f(Ljava/io/InputStream;Z)Ljava/io/Reader;

    move-result-object p0

    return-object p0

    :cond_4
    const-string v0, "ISO-10646-UCS-4"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "EncodingByteOrderUnsupported"

    const-string v4, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const/4 v5, 0x2

    if-eqz v0, :cond_7

    if-eqz p3, :cond_6

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_5

    new-instance p0, Lorg/apache/xerces/impl/io/UCSReader;

    const/16 p2, 0x8

    invoke-direct {p0, p1, p2}, Lorg/apache/xerces/impl/io/UCSReader;-><init>(Ljava/io/InputStream;S)V

    return-object p0

    :cond_5
    new-instance p0, Lorg/apache/xerces/impl/io/UCSReader;

    const/4 p2, 0x4

    invoke-direct {p0, p1, p2}, Lorg/apache/xerces/impl/io/UCSReader;-><init>(Ljava/io/InputStream;S)V

    return-object p0

    :cond_6
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v4, v3, v6, v5}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_7
    const-string v0, "ISO-10646-UCS-2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    if-eqz p3, :cond_9

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_8

    new-instance p0, Lorg/apache/xerces/impl/io/UCSReader;

    invoke-direct {p0, p1, v5}, Lorg/apache/xerces/impl/io/UCSReader;-><init>(Ljava/io/InputStream;S)V

    return-object p0

    :cond_8
    new-instance p0, Lorg/apache/xerces/impl/io/UCSReader;

    invoke-direct {p0, p1, v2}, Lorg/apache/xerces/impl/io/UCSReader;-><init>(Ljava/io/InputStream;S)V

    return-object p0

    :cond_9
    iget-object p3, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v4, v3, v0, v5}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_a
    invoke-static {p2}, Lorg/apache/xerces/util/XMLChar;->isValidIANAEncoding(Ljava/lang/String;)Z

    move-result p3

    invoke-static {p2}, Lorg/apache/xerces/util/XMLChar;->isValidJavaEncoding(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "EncodingDeclInvalid"

    if-eqz p3, :cond_10

    iget-boolean p3, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fAllowJavaEncodings:Z

    if-eqz p3, :cond_b

    if-nez v0, :cond_b

    goto :goto_1

    :cond_b
    invoke-static {v1}, Lorg/apache/xerces/util/EncodingMap;->getIANA2JavaMapping(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_d

    iget-boolean p3, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fAllowJavaEncodings:Z

    if-eqz p3, :cond_c

    goto :goto_0

    :cond_c
    iget-object p3, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p3, v4, v2, p2, v5}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/XMLEntityManager;->e(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object p0

    return-object p0

    :cond_d
    const-string p2, "ASCII"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/XMLEntityManager;->d(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object p0

    return-object p0

    :cond_e
    const-string p2, "ISO8859_1"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/XMLEntityManager;->e(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object p0

    return-object p0

    :cond_f
    move-object p2, p3

    :goto_0
    new-instance p0, Ljava/io/InputStreamReader;

    invoke-direct {p0, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object p0

    :cond_10
    :goto_1
    iget-object p3, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p3, v4, v2, p2, v5}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/XMLEntityManager;->e(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object p0

    return-object p0

    :cond_11
    :goto_2
    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/XMLEntityManager;->g(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object p0

    return-object p0
.end method

.method public final d(Ljava/io/InputStream;)Ljava/io/Reader;
    .locals 4

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->i:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->g:Lorg/apache/xerces/impl/XMLEntityManager$a;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/XMLEntityManager$a;->a()[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->i:[B

    :cond_0
    new-instance v0, Lorg/apache/xerces/impl/io/ASCIIReader;

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLEntityManager;->i:[B

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lorg/apache/xerces/util/MessageFormatter;

    move-result-object v2

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object p0

    invoke-direct {v0, p1, v1, v2, p0}, Lorg/apache/xerces/impl/io/ASCIIReader;-><init>(Ljava/io/InputStream;[BLorg/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    return-object v0
.end method

.method public final e(Ljava/io/InputStream;)Ljava/io/Reader;
    .locals 1

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->i:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->g:Lorg/apache/xerces/impl/XMLEntityManager$a;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/XMLEntityManager$a;->a()[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->i:[B

    :cond_0
    new-instance v0, Lorg/apache/xerces/impl/io/Latin1Reader;

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->i:[B

    invoke-direct {v0, p1, p0}, Lorg/apache/xerces/impl/io/Latin1Reader;-><init>(Ljava/io/InputStream;[B)V

    return-object v0
.end method

.method public endExternalSubset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fInExternalSubset:Z

    return-void
.end method

.method public final f(Ljava/io/InputStream;Z)Ljava/io/Reader;
    .locals 7

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->i:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->h:Lorg/apache/xerces/impl/XMLEntityManager$a;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/XMLEntityManager$a;->a()[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->i:[B

    goto :goto_0

    :cond_0
    array-length v1, v0

    iget v2, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fBufferSize:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLEntityManager;->g:Lorg/apache/xerces/impl/XMLEntityManager$a;

    invoke-virtual {v1, v0}, Lorg/apache/xerces/impl/XMLEntityManager$a;->b([B)V

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->h:Lorg/apache/xerces/impl/XMLEntityManager$a;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/XMLEntityManager$a;->a()[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->i:[B

    :cond_1
    :goto_0
    new-instance v0, Lorg/apache/xerces/impl/io/UTF16Reader;

    iget-object v3, p0, Lorg/apache/xerces/impl/XMLEntityManager;->i:[B

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lorg/apache/xerces/util/MessageFormatter;

    move-result-object v5

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v6

    move-object v1, v0

    move-object v2, p1

    move v4, p2

    invoke-direct/range {v1 .. v6}, Lorg/apache/xerces/impl/io/UTF16Reader;-><init>(Ljava/io/InputStream;[BZLorg/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    return-object v0
.end method

.method public final g(Ljava/io/InputStream;)Ljava/io/Reader;
    .locals 4

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->i:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->g:Lorg/apache/xerces/impl/XMLEntityManager$a;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/XMLEntityManager$a;->a()[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->i:[B

    :cond_0
    new-instance v0, Lorg/apache/xerces/impl/io/UTF8Reader;

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLEntityManager;->i:[B

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lorg/apache/xerces/util/MessageFormatter;

    move-result-object v2

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object p0

    invoke-direct {v0, p1, v1, v2, p0}, Lorg/apache/xerces/impl/io/UTF8Reader;-><init>(Ljava/io/InputStream;[BLorg/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    return-object v0
.end method

.method public getCurrentEntity()Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    return-object p0
.end method

.method public getCurrentResourceIdentifier()Lorg/apache/xerces/xni/XMLResourceIdentifier;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->e:Lorg/apache/xerces/util/XMLResourceIdentifierImpl;

    return-object p0
.end method

.method public getEncodingInfo([BI)Lorg/apache/xerces/impl/XMLEntityManager$d;
    .locals 5

    const/4 p0, 0x2

    if-ge p2, p0, :cond_0

    sget-object p0, Lorg/apache/xerces/impl/XMLEntityManager$d;->e:Lorg/apache/xerces/impl/XMLEntityManager$d;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    const/16 v1, 0xff

    and-int/2addr v0, v1

    const/4 v2, 0x1

    aget-byte v2, p1, v2

    and-int/2addr v2, v1

    const/16 v3, 0xfe

    if-ne v0, v3, :cond_1

    if-ne v2, v1, :cond_1

    sget-object p0, Lorg/apache/xerces/impl/XMLEntityManager$d;->h:Lorg/apache/xerces/impl/XMLEntityManager$d;

    return-object p0

    :cond_1
    if-ne v0, v1, :cond_2

    if-ne v2, v3, :cond_2

    sget-object p0, Lorg/apache/xerces/impl/XMLEntityManager$d;->j:Lorg/apache/xerces/impl/XMLEntityManager$d;

    return-object p0

    :cond_2
    const/4 v3, 0x3

    if-ge p2, v3, :cond_3

    sget-object p0, Lorg/apache/xerces/impl/XMLEntityManager$d;->e:Lorg/apache/xerces/impl/XMLEntityManager$d;

    return-object p0

    :cond_3
    aget-byte p0, p1, p0

    and-int/2addr p0, v1

    const/16 v4, 0xef

    if-ne v0, v4, :cond_4

    const/16 v4, 0xbb

    if-ne v2, v4, :cond_4

    const/16 v4, 0xbf

    if-ne p0, v4, :cond_4

    sget-object p0, Lorg/apache/xerces/impl/XMLEntityManager$d;->f:Lorg/apache/xerces/impl/XMLEntityManager$d;

    return-object p0

    :cond_4
    const/4 v4, 0x4

    if-ge p2, v4, :cond_5

    sget-object p0, Lorg/apache/xerces/impl/XMLEntityManager$d;->e:Lorg/apache/xerces/impl/XMLEntityManager$d;

    return-object p0

    :cond_5
    aget-byte p1, p1, v3

    and-int/2addr p1, v1

    const/16 p2, 0x3c

    if-nez v0, :cond_6

    if-nez v2, :cond_6

    if-nez p0, :cond_6

    if-ne p1, p2, :cond_6

    sget-object p0, Lorg/apache/xerces/impl/XMLEntityManager$d;->k:Lorg/apache/xerces/impl/XMLEntityManager$d;

    return-object p0

    :cond_6
    if-ne v0, p2, :cond_7

    if-nez v2, :cond_7

    if-nez p0, :cond_7

    if-nez p1, :cond_7

    sget-object p0, Lorg/apache/xerces/impl/XMLEntityManager$d;->l:Lorg/apache/xerces/impl/XMLEntityManager$d;

    return-object p0

    :cond_7
    if-nez v0, :cond_8

    if-nez v2, :cond_8

    if-ne p0, p2, :cond_8

    if-nez p1, :cond_8

    sget-object p0, Lorg/apache/xerces/impl/XMLEntityManager$d;->m:Lorg/apache/xerces/impl/XMLEntityManager$d;

    return-object p0

    :cond_8
    if-nez v0, :cond_9

    if-ne v2, p2, :cond_9

    if-nez p0, :cond_9

    if-nez p1, :cond_9

    sget-object p0, Lorg/apache/xerces/impl/XMLEntityManager$d;->m:Lorg/apache/xerces/impl/XMLEntityManager$d;

    return-object p0

    :cond_9
    const/16 v1, 0x3f

    if-nez v0, :cond_a

    if-ne v2, p2, :cond_a

    if-nez p0, :cond_a

    if-ne p1, v1, :cond_a

    sget-object p0, Lorg/apache/xerces/impl/XMLEntityManager$d;->g:Lorg/apache/xerces/impl/XMLEntityManager$d;

    return-object p0

    :cond_a
    if-ne v0, p2, :cond_b

    if-nez v2, :cond_b

    if-ne p0, v1, :cond_b

    if-nez p1, :cond_b

    sget-object p0, Lorg/apache/xerces/impl/XMLEntityManager$d;->i:Lorg/apache/xerces/impl/XMLEntityManager$d;

    return-object p0

    :cond_b
    const/16 p2, 0x4c

    if-ne v0, p2, :cond_c

    const/16 p2, 0x6f

    if-ne v2, p2, :cond_c

    const/16 p2, 0xa7

    if-ne p0, p2, :cond_c

    const/16 p0, 0x94

    if-ne p1, p0, :cond_c

    sget-object p0, Lorg/apache/xerces/impl/XMLEntityManager$d;->n:Lorg/apache/xerces/impl/XMLEntityManager$d;

    return-object p0

    :cond_c
    sget-object p0, Lorg/apache/xerces/impl/XMLEntityManager$d;->e:Lorg/apache/xerces/impl/XMLEntityManager$d;

    return-object p0
.end method

.method public getEntityScanner()Lorg/apache/xerces/impl/XMLEntityScanner;
    .locals 3

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fXML10EntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-direct {v0}, Lorg/apache/xerces/impl/XMLEntityScanner;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fXML10EntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fXML10EntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v0, v1, p0, v2}, Lorg/apache/xerces/impl/XMLEntityScanner;->reset(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/impl/XMLEntityManager;Lorg/apache/xerces/impl/XMLErrorReporter;)V

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fXML10EntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    iput-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    :cond_1
    iget-object p0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    return-object p0
.end method

.method public getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    const/4 p0, 0x0

    :goto_0
    sget-object v0, Lorg/apache/xerces/impl/XMLEntityManager;->k:[Ljava/lang/String;

    array-length v1, v0

    if-lt p0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    aget-object v0, v0, p0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lorg/apache/xerces/impl/XMLEntityManager;->l:[Ljava/lang/Boolean;

    aget-object p0, p1, p0

    return-object p0

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0
.end method

.method public getParamEntityRefCount(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x25

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xerces/impl/XMLEntityManager$Entity;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLEntityManager$Entity;->isExternal()Z

    move-result p1

    if-nez p1, :cond_0

    check-cast p0, Lorg/apache/xerces/impl/XMLEntityManager$InternalEntity;

    iget p0, p0, Lorg/apache/xerces/impl/XMLEntityManager$InternalEntity;->paramEntityRefs:I

    return p0

    :cond_0
    return v0
.end method

.method public getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const/4 p0, 0x0

    :goto_0
    sget-object v0, Lorg/apache/xerces/impl/XMLEntityManager;->m:[Ljava/lang/String;

    array-length v1, v0

    if-lt p0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    aget-object v0, v0, p0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lorg/apache/xerces/impl/XMLEntityManager;->n:[Ljava/lang/Object;

    aget-object p0, p1, p0

    return-object p0

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0
.end method

.method public getRecognizedFeatures()[Ljava/lang/String;
    .locals 0

    sget-object p0, Lorg/apache/xerces/impl/XMLEntityManager;->k:[Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getRecognizedProperties()[Ljava/lang/String;
    .locals 0

    sget-object p0, Lorg/apache/xerces/impl/XMLEntityManager;->m:[Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public h()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fEntityHandler:Lorg/apache/xerces/impl/XMLEntityHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v2, v2, Lorg/apache/xerces/impl/XMLEntityManager$Entity;->name:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lorg/apache/xerces/impl/XMLEntityHandler;->endEntity(Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v0, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fReaderStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fReaderStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->j:Lorg/apache/xerces/impl/XMLEntityManager$c;

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-static {v2}, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->a(Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;)Lorg/apache/xerces/impl/XMLEntityManager$b;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/xerces/impl/XMLEntityManager$c;->c(Lorg/apache/xerces/impl/XMLEntityManager$b;)V

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-static {v0}, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->b(Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;)[B

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-static {v0}, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->b(Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;)[B

    move-result-object v0

    array-length v0, v0

    iget v2, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fBufferSize:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->g:Lorg/apache/xerces/impl/XMLEntityManager$a;

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-static {v2}, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->b(Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/xerces/impl/XMLEntityManager$a;->b([B)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->h:Lorg/apache/xerces/impl/XMLEntityManager$a;

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-static {v2}, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->b(Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/xerces/impl/XMLEntityManager$a;->b([B)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    :cond_4
    iput-object v1, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {p0, v1}, Lorg/apache/xerces/impl/XMLEntityScanner;->setCurrentEntity(Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;)V

    return-void
.end method

.method public isDeclaredEntity(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xerces/impl/XMLEntityManager$Entity;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEntityDeclInExternalSubset(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xerces/impl/XMLEntityManager$Entity;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLEntityManager$Entity;->isEntityDeclInExternalSubset()Z

    move-result p0

    return p0
.end method

.method public isExternalEntity(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xerces/impl/XMLEntityManager$Entity;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLEntityManager$Entity;->isExternal()Z

    move-result p0

    return p0
.end method

.method public isStandalone()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fStandalone:Z

    return p0
.end method

.method public isUnparsedEntity(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xerces/impl/XMLEntityManager$Entity;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLEntityManager$Entity;->isUnparsed()Z

    move-result p0

    return p0
.end method

.method public k()Ljava/util/Hashtable;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    return-object p0
.end method

.method public final n()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fHasPEReferences:Z

    return p0
.end method

.method public final o()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fHasPEReferences:Z

    return-void
.end method

.method public reset()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fSecurityManager:Lorg/apache/xerces/util/SecurityManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/xerces/util/SecurityManager;->getEntityExpansionLimit()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fEntityExpansionLimit:I

    iput-boolean v1, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fStandalone:Z

    iput-boolean v1, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fHasPEReferences:Z

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    iput v1, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fEntityExpansionCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fXML10EntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    iget-object v3, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v1, v2, p0, v3}, Lorg/apache/xerces/impl/XMLEntityScanner;->reset(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/impl/XMLEntityManager;Lorg/apache/xerces/impl/XMLErrorReporter;)V

    :cond_1
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fXML11EntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    iget-object v3, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v1, v2, p0, v3}, Lorg/apache/xerces/impl/XMLEntityScanner;->reset(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/impl/XMLEntityManager;Lorg/apache/xerces/impl/XMLErrorReporter;)V

    :cond_2
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fDeclaredEntities:Ljava/util/Hashtable;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    iget-object v4, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {v4, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    :goto_2
    iput-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fEntityHandler:Lorg/apache/xerces/impl/XMLEntityHandler;

    return-void
.end method

.method public reset(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .line 2
    const/4 v0, 0x1

    :try_start_0
    const-string v1, "http://apache.org/xml/features/internal/parser-settings"

    invoke-interface {p1, v1}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v1, v0

    :goto_0
    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLEntityManager;->reset()V

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    const-string v2, "http://xml.org/sax/features/validation"

    invoke-interface {p1, v2}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fValidation:Z
    :try_end_1
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    iput-boolean v1, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fValidation:Z

    :goto_1
    :try_start_2
    const-string v2, "http://xml.org/sax/features/external-general-entities"

    invoke-interface {p1, v2}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fExternalGeneralEntities:Z
    :try_end_2
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    iput-boolean v0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fExternalGeneralEntities:Z

    :goto_2
    :try_start_3
    const-string v2, "http://xml.org/sax/features/external-parameter-entities"

    invoke-interface {p1, v2}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fExternalParameterEntities:Z
    :try_end_3
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    iput-boolean v0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fExternalParameterEntities:Z

    :goto_3
    :try_start_4
    const-string v0, "http://apache.org/xml/features/allow-java-encodings"

    invoke-interface {p1, v0}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fAllowJavaEncodings:Z
    :try_end_4
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    iput-boolean v1, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fAllowJavaEncodings:Z

    :goto_4
    :try_start_5
    const-string v0, "http://apache.org/xml/features/warn-on-duplicate-entitydef"

    invoke-interface {p1, v0}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fWarnDuplicateEntityDef:Z
    :try_end_5
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    iput-boolean v1, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fWarnDuplicateEntityDef:Z

    :goto_5
    :try_start_6
    const-string v0, "http://apache.org/xml/features/standard-uri-conformant"

    invoke-interface {p1, v0}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fStrictURI:Z
    :try_end_6
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    iput-boolean v1, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fStrictURI:Z

    :goto_6
    const-string v0, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {p1, v0}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xerces/util/SymbolTable;

    iput-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    const-string v0, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-interface {p1, v0}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xerces/impl/XMLErrorReporter;

    iput-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const/4 v0, 0x0

    :try_start_7
    const-string v1, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-interface {p1, v1}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xerces/xni/parser/XMLEntityResolver;

    iput-object v1, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fEntityResolver:Lorg/apache/xerces/xni/parser/XMLEntityResolver;
    :try_end_7
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    iput-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fEntityResolver:Lorg/apache/xerces/xni/parser/XMLEntityResolver;

    :goto_7
    :try_start_8
    const-string v1, "http://apache.org/xml/properties/internal/validation-manager"

    invoke-interface {p1, v1}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xerces/impl/validation/ValidationManager;

    iput-object v1, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;
    :try_end_8
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    iput-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

    :goto_8
    :try_start_9
    const-string v1, "http://apache.org/xml/properties/security-manager"

    invoke-interface {p1, v1}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xerces/util/SecurityManager;

    iput-object p1, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fSecurityManager:Lorg/apache/xerces/util/SecurityManager;
    :try_end_9
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    :catch_9
    iput-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fSecurityManager:Lorg/apache/xerces/util/SecurityManager;

    :goto_9
    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLEntityManager;->reset()V

    return-void
.end method

.method public resolveEntity(Lorg/apache/xerces/xni/XMLResourceIdentifier;)Lorg/apache/xerces/xni/parser/XMLInputSource;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_1

    move v7, v5

    goto :goto_0

    :cond_1
    move v7, v6

    :goto_0
    if-nez v3, :cond_2

    iget-object v8, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    if-eqz v8, :cond_2

    iget-object v8, v8, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->entityLocation:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    if-eqz v8, :cond_2

    invoke-interface {v8}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v5, v7

    :goto_1
    iget-object v7, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fEntityResolver:Lorg/apache/xerces/xni/parser/XMLEntityResolver;

    if-eqz v7, :cond_4

    if-eqz v5, :cond_3

    invoke-static {v2, v3, v6}, Lorg/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    :cond_3
    invoke-interface {p1, v3}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->setBaseSystemId(Ljava/lang/String;)V

    invoke-interface {p1, v4}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->setExpandedSystemId(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fEntityResolver:Lorg/apache/xerces/xni/parser/XMLEntityResolver;

    invoke-interface {p0, p1}, Lorg/apache/xerces/xni/parser/XMLEntityResolver;->resolveEntity(Lorg/apache/xerces/xni/XMLResourceIdentifier;)Lorg/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v0

    :cond_4
    if-nez v0, :cond_5

    new-instance v0, Lorg/apache/xerces/xni/parser/XMLInputSource;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-object v0
.end method

.method public setEntityHandler(Lorg/apache/xerces/impl/XMLEntityHandler;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fEntityHandler:Lorg/apache/xerces/impl/XMLEntityHandler;

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string v0, "http://apache.org/xml/features/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1f

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    const-string v0, "allow-java-encodings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iput-boolean p2, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fAllowJavaEncodings:Z

    :cond_0
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string v0, "http://apache.org/xml/properties/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x21

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    const-string v1, "internal/symbol-table"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast p2, Lorg/apache/xerces/util/SymbolTable;

    iput-object p2, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    return-void

    :cond_0
    const/16 v1, 0x17

    if-ne v0, v1, :cond_1

    const-string v1, "internal/error-reporter"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast p2, Lorg/apache/xerces/impl/XMLErrorReporter;

    iput-object p2, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    return-void

    :cond_1
    const/16 v1, 0x18

    if-ne v0, v1, :cond_2

    const-string v1, "internal/entity-resolver"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    check-cast p2, Lorg/apache/xerces/xni/parser/XMLEntityResolver;

    iput-object p2, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fEntityResolver:Lorg/apache/xerces/xni/parser/XMLEntityResolver;

    return-void

    :cond_2
    const/16 v1, 0x11

    if-ne v0, v1, :cond_3

    const-string v1, "input-buffer-size"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, p2

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x40

    if-le v2, v3, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fBufferSize:I

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2, v1}, Lorg/apache/xerces/impl/XMLEntityScanner;->setBufferSize(I)V

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLEntityManager;->g:Lorg/apache/xerces/impl/XMLEntityManager$a;

    iget v2, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fBufferSize:I

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/XMLEntityManager$a;->c(I)V

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLEntityManager;->h:Lorg/apache/xerces/impl/XMLEntityManager$a;

    iget v2, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fBufferSize:I

    shl-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/XMLEntityManager$a;->c(I)V

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLEntityManager;->j:Lorg/apache/xerces/impl/XMLEntityManager$c;

    iget v2, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fBufferSize:I

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/XMLEntityManager$c;->d(I)V

    :cond_3
    const/16 v1, 0x10

    if-ne v0, v1, :cond_5

    const-string v0, "security-manager"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    check-cast p2, Lorg/apache/xerces/util/SecurityManager;

    iput-object p2, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fSecurityManager:Lorg/apache/xerces/util/SecurityManager;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lorg/apache/xerces/util/SecurityManager;->getEntityExpansionLimit()I

    move-result p1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fEntityExpansionLimit:I

    :cond_5
    return-void
.end method

.method public setScannerVersion(S)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fXML10EntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    if-nez p1, :cond_0

    new-instance p1, Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-direct {p1}, Lorg/apache/xerces/impl/XMLEntityScanner;-><init>()V

    iput-object p1, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fXML10EntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    :cond_0
    iget-object p1, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fXML10EntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {p1, v0, p0, v1}, Lorg/apache/xerces/impl/XMLEntityScanner;->reset(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/impl/XMLEntityManager;Lorg/apache/xerces/impl/XMLErrorReporter;)V

    iget-object p1, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fXML10EntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fXML11EntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    if-nez p1, :cond_2

    new-instance p1, Lorg/apache/xerces/impl/XML11EntityScanner;

    invoke-direct {p1}, Lorg/apache/xerces/impl/XML11EntityScanner;-><init>()V

    iput-object p1, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fXML11EntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    :cond_2
    iget-object p1, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fXML11EntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {p1, v0, p0, v1}, Lorg/apache/xerces/impl/XMLEntityScanner;->reset(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/impl/XMLEntityManager;Lorg/apache/xerces/impl/XMLErrorReporter;)V

    iget-object p1, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fXML11EntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    :goto_0
    iput-object p1, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {p1, p0}, Lorg/apache/xerces/impl/XMLEntityScanner;->setCurrentEntity(Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;)V

    return-void
.end method

.method public setStandalone(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fStandalone:Z

    return-void
.end method

.method public setupCurrentEntity(Ljava/lang/String;Lorg/apache/xerces/xni/parser/XMLInputSource;ZZ)Ljava/lang/String;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v0, p2

    invoke-virtual/range {p2 .. p2}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getPublicId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getEncoding()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    move v13, v5

    goto :goto_0

    :cond_0
    move v13, v4

    :goto_0
    const/4 v6, 0x0

    iput-object v6, v11, Lorg/apache/xerces/impl/XMLEntityManager;->i:[B

    invoke-virtual/range {p2 .. p2}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v7

    iget-boolean v8, v11, Lorg/apache/xerces/impl/XMLEntityManager;->fStrictURI:Z

    invoke-static {v1, v2, v8}, Lorg/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    if-nez v2, :cond_1

    move-object v14, v8

    goto :goto_1

    :cond_1
    move-object v14, v2

    :goto_1
    if-nez v7, :cond_27

    invoke-virtual/range {p2 .. p2}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v2

    if-nez v2, :cond_7

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    instance-of v7, v2, Ljava/net/HttpURLConnection;

    if-nez v7, :cond_2

    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    goto :goto_4

    :cond_2
    instance-of v7, v0, Lorg/apache/xerces/util/HTTPInputSource;

    if-eqz v7, :cond_4

    move-object v7, v2

    check-cast v7, Ljava/net/HttpURLConnection;

    check-cast v0, Lorg/apache/xerces/util/HTTPInputSource;

    invoke-virtual {v0}, Lorg/apache/xerces/util/HTTPInputSource;->getHTTPRequestProperties()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_3

    invoke-virtual {v0}, Lorg/apache/xerces/util/HTTPInputSource;->getFollowHTTPRedirects()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    goto :goto_3

    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v7, v15, v10}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move v0, v5

    :cond_5
    :goto_3
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    if-eqz v0, :cond_6

    invoke-virtual {v2}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move-object v1, v0

    move-object v8, v1

    :cond_6
    move-object v2, v7

    :cond_7
    :goto_4
    new-instance v0, Lorg/apache/xerces/impl/XMLEntityManager$RewindableInputStream;

    invoke-direct {v0, v11, v2}, Lorg/apache/xerces/impl/XMLEntityManager$RewindableInputStream;-><init>(Lorg/apache/xerces/impl/XMLEntityManager;Ljava/io/InputStream;)V

    const-wide/16 v9, 0x2

    const-string v2, "UTF-16"

    const-string v7, "UTF-8"

    const/4 v15, 0x4

    if-nez v3, :cond_c

    new-array v5, v15, [B

    :goto_5
    if-lt v4, v15, :cond_b

    if-ne v4, v15, :cond_a

    invoke-virtual {v11, v5, v4}, Lorg/apache/xerces/impl/XMLEntityManager;->getEncodingInfo([BI)Lorg/apache/xerces/impl/XMLEntityManager$d;

    move-result-object v3

    iget-object v4, v3, Lorg/apache/xerces/impl/XMLEntityManager$d;->a:Ljava/lang/String;

    iget-object v5, v3, Lorg/apache/xerces/impl/XMLEntityManager$d;->b:Ljava/lang/String;

    iget-object v6, v3, Lorg/apache/xerces/impl/XMLEntityManager$d;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    iget-boolean v3, v3, Lorg/apache/xerces/impl/XMLEntityManager$d;->d:Z

    if-eqz v3, :cond_9

    if-ne v5, v7, :cond_8

    const-wide/16 v2, 0x3

    invoke-virtual {v0, v2, v3}, Ljava/io/InputStream;->skip(J)J

    goto :goto_6

    :cond_8
    if-ne v5, v2, :cond_9

    invoke-virtual {v0, v9, v10}, Ljava/io/InputStream;->skip(J)J

    :cond_9
    :goto_6
    invoke-virtual {v11, v0, v5, v6}, Lorg/apache/xerces/impl/XMLEntityManager;->createReader(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/io/Reader;

    move-result-object v2

    move-object v15, v1

    move-object v5, v2

    move-object/from16 v16, v4

    move-object v10, v8

    move-object v4, v0

    goto/16 :goto_17

    :cond_a
    :goto_7
    invoke-virtual {v11, v0, v3, v6}, Lorg/apache/xerces/impl/XMLEntityManager;->createReader(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/io/Reader;

    move-result-object v2

    :goto_8
    move-object v4, v0

    move-object v15, v1

    move-object v5, v2

    move-object/from16 v16, v3

    move-object v10, v8

    goto/16 :goto_17

    :cond_b
    invoke-virtual {v0}, Lorg/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->readAndBuffer()I

    move-result v9

    int-to-byte v9, v9

    aput-byte v9, v5, v4

    add-int/lit8 v4, v4, 0x1

    const-wide/16 v9, 0x2

    goto :goto_5

    :cond_c
    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, -0x1

    const/4 v6, 0x3

    if-eqz v9, :cond_11

    new-array v9, v6, [I

    move v2, v4

    :goto_9
    if-lt v2, v6, :cond_d

    goto :goto_a

    :cond_d
    invoke-virtual {v0}, Lorg/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->readAndBuffer()I

    move-result v15

    aput v15, v9, v2

    if-ne v15, v10, :cond_10

    :goto_a
    if-ne v2, v6, :cond_e

    aget v2, v9, v4

    const/16 v4, 0xef

    if-ne v2, v4, :cond_e

    aget v2, v9, v5

    const/16 v4, 0xbb

    if-ne v2, v4, :cond_e

    const/4 v2, 0x2

    aget v2, v9, v2

    const/16 v4, 0xbf

    if-eq v2, v4, :cond_f

    :cond_e
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    :cond_f
    const/4 v2, 0x0

    invoke-virtual {v11, v0, v7, v2}, Lorg/apache/xerces/impl/XMLEntityManager;->createReader(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/io/Reader;

    move-result-object v2

    goto :goto_8

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_11
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    const/4 v7, 0x4

    new-array v9, v7, [I

    move v15, v4

    :goto_b
    if-lt v15, v7, :cond_12

    goto :goto_c

    :cond_12
    invoke-virtual {v0}, Lorg/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->readAndBuffer()I

    move-result v7

    aput v7, v9, v15

    if-ne v7, v10, :cond_19

    :goto_c
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    const/4 v7, 0x2

    if-lt v15, v7, :cond_18

    aget v4, v9, v4

    aget v5, v9, v5

    const/16 v7, 0xff

    const/16 v10, 0xfe

    if-ne v4, v10, :cond_13

    if-ne v5, v7, :cond_13

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_d
    const-wide/16 v4, 0x2

    invoke-virtual {v0, v4, v5}, Ljava/io/InputStream;->skip(J)J

    goto :goto_f

    :cond_13
    if-ne v4, v7, :cond_14

    if-ne v5, v10, :cond_14

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_d

    :cond_14
    const/4 v7, 0x4

    if-ne v15, v7, :cond_18

    const/4 v7, 0x2

    aget v7, v9, v7

    aget v6, v9, v6

    const/16 v9, 0x3c

    if-nez v4, :cond_15

    if-ne v5, v9, :cond_15

    if-nez v7, :cond_15

    const/16 v10, 0x3f

    if-ne v6, v10, :cond_16

    sget-object v15, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_e

    :cond_15
    const/16 v10, 0x3f

    :cond_16
    const/4 v15, 0x0

    :goto_e
    if-ne v4, v9, :cond_17

    if-nez v5, :cond_17

    if-ne v7, v10, :cond_17

    if-nez v6, :cond_17

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_f

    :cond_17
    move-object v6, v15

    goto :goto_f

    :cond_18
    const/4 v6, 0x0

    :goto_f
    invoke-virtual {v11, v0, v2, v6}, Lorg/apache/xerces/impl/XMLEntityManager;->createReader(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/io/Reader;

    move-result-object v2

    goto/16 :goto_8

    :cond_19
    const-wide/16 v16, 0x2

    add-int/lit8 v15, v15, 0x1

    const/4 v7, 0x4

    goto :goto_b

    :cond_1a
    const-string v2, "ISO-10646-UCS-4"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 v2, 0x4

    new-array v7, v2, [I

    move v9, v4

    :goto_10
    if-lt v9, v2, :cond_1b

    goto :goto_11

    :cond_1b
    invoke-virtual {v0}, Lorg/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->readAndBuffer()I

    move-result v15

    aput v15, v7, v9

    if-ne v15, v10, :cond_1f

    :goto_11
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    if-ne v9, v2, :cond_1e

    aget v2, v7, v4

    if-nez v2, :cond_1c

    aget v4, v7, v5

    if-nez v4, :cond_1c

    const/4 v4, 0x2

    aget v9, v7, v4

    if-nez v9, :cond_1c

    aget v4, v7, v6

    const/16 v9, 0x3c

    if-ne v4, v9, :cond_1d

    :goto_12
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_7

    :cond_1c
    const/16 v9, 0x3c

    :cond_1d
    if-ne v2, v9, :cond_1e

    aget v2, v7, v5

    if-nez v2, :cond_1e

    const/4 v2, 0x2

    aget v2, v7, v2

    if-nez v2, :cond_1e

    aget v2, v7, v6

    if-nez v2, :cond_1e

    :goto_13
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_7

    :cond_1e
    const/4 v6, 0x0

    goto/16 :goto_7

    :cond_1f
    add-int/lit8 v9, v9, 0x1

    const/4 v2, 0x4

    goto :goto_10

    :cond_20
    const-string v2, "ISO-10646-UCS-2"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    const/4 v2, 0x4

    new-array v7, v2, [I

    move v9, v4

    :goto_14
    if-lt v9, v2, :cond_21

    goto :goto_15

    :cond_21
    invoke-virtual {v0}, Lorg/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->readAndBuffer()I

    move-result v15

    aput v15, v7, v9

    if-ne v15, v10, :cond_25

    :goto_15
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    if-ne v9, v2, :cond_1e

    aget v2, v7, v4

    if-nez v2, :cond_23

    aget v4, v7, v5

    const/16 v15, 0x3c

    if-ne v4, v15, :cond_22

    const/4 v4, 0x2

    aget v9, v7, v4

    if-nez v9, :cond_22

    aget v4, v7, v6

    const/16 v9, 0x3f

    if-ne v4, v9, :cond_24

    goto :goto_12

    :cond_22
    const/16 v9, 0x3f

    goto :goto_16

    :cond_23
    const/16 v9, 0x3f

    const/16 v15, 0x3c

    :cond_24
    :goto_16
    if-ne v2, v15, :cond_1e

    aget v2, v7, v5

    if-nez v2, :cond_1e

    const/16 v16, 0x2

    aget v2, v7, v16

    if-ne v2, v9, :cond_1e

    aget v2, v7, v6

    if-nez v2, :cond_1e

    goto :goto_13

    :cond_25
    const/16 v15, 0x3c

    const/16 v16, 0x2

    const/16 v17, 0x3f

    add-int/lit8 v9, v9, 0x1

    goto :goto_14

    :cond_26
    const/4 v9, 0x0

    invoke-virtual {v11, v0, v3, v9}, Lorg/apache/xerces/impl/XMLEntityManager;->createReader(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/io/Reader;

    move-result-object v2

    goto/16 :goto_8

    :cond_27
    move-object v9, v6

    move-object v15, v1

    move-object/from16 v16, v3

    move-object v5, v7

    move-object v10, v8

    move-object v4, v9

    :goto_17
    iget-object v0, v11, Lorg/apache/xerces/impl/XMLEntityManager;->fReaderStack:Ljava/util/Stack;

    invoke-virtual {v0, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v11, Lorg/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    if-eqz v0, :cond_28

    iget-object v1, v11, Lorg/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_28
    new-instance v9, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    new-instance v3, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;

    invoke-direct {v3, v12, v15, v14, v10}, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v11, Lorg/apache/xerces/impl/XMLEntityManager;->i:[B

    const/16 v17, 0x0

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v7, v16

    move/from16 v8, p3

    move-object/from16 v18, v12

    move-object v12, v9

    move/from16 v9, v17

    move-object/from16 v19, v10

    move/from16 v10, p4

    invoke-direct/range {v0 .. v10}, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;-><init>(Lorg/apache/xerces/impl/XMLEntityManager;Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/io/InputStream;Ljava/io/Reader;[BLjava/lang/String;ZZZ)V

    iput-object v12, v11, Lorg/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v12, v13}, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->setEncodingExternallySpecified(Z)V

    iget-object v0, v11, Lorg/apache/xerces/impl/XMLEntityManager;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    iget-object v1, v11, Lorg/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/XMLEntityScanner;->setCurrentEntity(Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;)V

    iget-object v0, v11, Lorg/apache/xerces/impl/XMLEntityManager;->e:Lorg/apache/xerces/util/XMLResourceIdentifierImpl;

    move-object/from16 v1, v18

    move-object/from16 v8, v19

    invoke-virtual {v0, v1, v15, v14, v8}, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v16
.end method

.method public startDTDEntity(Lorg/apache/xerces/xni/parser/XMLInputSource;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    sget-object v0, Lorg/apache/xerces/impl/XMLEntityManager;->p:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, p1, v1, v2}, Lorg/apache/xerces/impl/XMLEntityManager;->startEntity(Ljava/lang/String;Lorg/apache/xerces/xni/parser/XMLInputSource;ZZ)V

    return-void
.end method

.method public startDocumentEntity(Lorg/apache/xerces/xni/parser/XMLInputSource;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    sget-object v0, Lorg/apache/xerces/impl/XMLEntityManager;->o:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, p1, v1, v2}, Lorg/apache/xerces/impl/XMLEntityManager;->startEntity(Ljava/lang/String;Lorg/apache/xerces/xni/parser/XMLInputSource;ZZ)V

    return-void
.end method

.method public startEntity(Ljava/lang/String;Lorg/apache/xerces/xni/parser/XMLInputSource;ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/xerces/impl/XMLEntityManager;->setupCurrentEntity(Ljava/lang/String;Lorg/apache/xerces/xni/parser/XMLInputSource;ZZ)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fSecurityManager:Lorg/apache/xerces/util/SecurityManager;

    if-eqz p3, :cond_0

    iget p3, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fEntityExpansionCount:I

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/XMLEntityManager;->getParamEntityRefCount(Ljava/lang/String;)I

    move-result p4

    add-int/2addr p3, p4

    add-int/lit8 p4, p3, 0x1

    iput p4, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fEntityExpansionCount:I

    iget p4, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fEntityExpansionLimit:I

    if-le p3, p4, :cond_0

    iget-object p3, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p4}, Ljava/lang/Integer;-><init>(I)V

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p4

    const/4 v0, 0x2

    const-string v1, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v2, "EntityExpansionLimitExceeded"

    invoke-virtual {p3, v1, v2, p4, v0}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    const/4 p3, 0x0

    iput p3, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fEntityExpansionCount:I

    :cond_0
    iget-object p3, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fEntityHandler:Lorg/apache/xerces/impl/XMLEntityHandler;

    if-eqz p3, :cond_1

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->e:Lorg/apache/xerces/util/XMLResourceIdentifierImpl;

    const/4 p4, 0x0

    invoke-interface {p3, p1, p0, p2, p4}, Lorg/apache/xerces/impl/XMLEntityHandler;->startEntity(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_1
    return-void
.end method

.method public startEntity(Ljava/lang/String;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xerces/impl/XMLEntityManager$Entity;

    const-string v1, "ENTITY_SKIPPED"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object p2, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fEntityHandler:Lorg/apache/xerces/impl/XMLEntityHandler;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/apache/xerces/impl/XMLEntityManager;->e:Lorg/apache/xerces/util/XMLResourceIdentifierImpl;

    invoke-virtual {p2}, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->clear()V

    iget-object p2, p0, Lorg/apache/xerces/impl/XMLEntityManager;->f:Lorg/apache/xerces/xni/Augmentations;

    invoke-interface {p2}, Lorg/apache/xerces/xni/Augmentations;->removeAllItems()V

    iget-object p2, p0, Lorg/apache/xerces/impl/XMLEntityManager;->f:Lorg/apache/xerces/xni/Augmentations;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, v1, v0}, Lorg/apache/xerces/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fEntityHandler:Lorg/apache/xerces/impl/XMLEntityHandler;

    iget-object v3, p0, Lorg/apache/xerces/impl/XMLEntityManager;->e:Lorg/apache/xerces/util/XMLResourceIdentifierImpl;

    iget-object v4, p0, Lorg/apache/xerces/impl/XMLEntityManager;->f:Lorg/apache/xerces/xni/Augmentations;

    invoke-interface {p2, p1, v3, v2, v4}, Lorg/apache/xerces/impl/XMLEntityHandler;->startEntity(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    iget-object p2, p0, Lorg/apache/xerces/impl/XMLEntityManager;->f:Lorg/apache/xerces/xni/Augmentations;

    invoke-interface {p2}, Lorg/apache/xerces/xni/Augmentations;->removeAllItems()V

    iget-object p2, p0, Lorg/apache/xerces/impl/XMLEntityManager;->f:Lorg/apache/xerces/xni/Augmentations;

    invoke-interface {p2, v1, v0}, Lorg/apache/xerces/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fEntityHandler:Lorg/apache/xerces/impl/XMLEntityHandler;

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->f:Lorg/apache/xerces/xni/Augmentations;

    invoke-interface {p2, p1, p0}, Lorg/apache/xerces/impl/XMLEntityHandler;->endEntity(Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lorg/apache/xerces/impl/XMLEntityManager$Entity;->isExternal()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_9

    iget-object v5, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lorg/apache/xerces/impl/validation/ValidationManager;->isCachedDTD()Z

    move-result v5

    if-nez v5, :cond_9

    :cond_2
    invoke-virtual {v0}, Lorg/apache/xerces/impl/XMLEntityManager$Entity;->isUnparsed()Z

    move-result v5

    const-string v6, "%"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    xor-int/lit8 v7, v6, 0x1

    if-nez v5, :cond_4

    if-eqz v7, :cond_3

    iget-boolean v5, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fExternalGeneralEntities:Z

    if-eqz v5, :cond_4

    :cond_3
    if-eqz v6, :cond_9

    iget-boolean v5, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fExternalParameterEntities:Z

    if-nez v5, :cond_9

    :cond_4
    iget-object p2, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fEntityHandler:Lorg/apache/xerces/impl/XMLEntityHandler;

    if-eqz p2, :cond_8

    iget-object p2, p0, Lorg/apache/xerces/impl/XMLEntityManager;->e:Lorg/apache/xerces/util/XMLResourceIdentifierImpl;

    invoke-virtual {p2}, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->clear()V

    check-cast v0, Lorg/apache/xerces/impl/XMLEntityManager$ExternalEntity;

    iget-object p2, v0, Lorg/apache/xerces/impl/XMLEntityManager$ExternalEntity;->entityLocation:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    if-eqz p2, :cond_5

    invoke-interface {p2}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_5
    move-object p2, v2

    :goto_0
    iget-object v3, v0, Lorg/apache/xerces/impl/XMLEntityManager$ExternalEntity;->entityLocation:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    if-eqz v3, :cond_6

    invoke-interface {v3}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_6
    move-object v3, v2

    :goto_1
    invoke-static {p2, v3, v4}, Lorg/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/xerces/impl/XMLEntityManager;->e:Lorg/apache/xerces/util/XMLResourceIdentifierImpl;

    iget-object v0, v0, Lorg/apache/xerces/impl/XMLEntityManager$ExternalEntity;->entityLocation:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_7
    move-object v0, v2

    :goto_2
    invoke-virtual {v5, v0, p2, v3, v4}, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lorg/apache/xerces/impl/XMLEntityManager;->f:Lorg/apache/xerces/xni/Augmentations;

    invoke-interface {p2}, Lorg/apache/xerces/xni/Augmentations;->removeAllItems()V

    iget-object p2, p0, Lorg/apache/xerces/impl/XMLEntityManager;->f:Lorg/apache/xerces/xni/Augmentations;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, v1, v0}, Lorg/apache/xerces/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fEntityHandler:Lorg/apache/xerces/impl/XMLEntityHandler;

    iget-object v3, p0, Lorg/apache/xerces/impl/XMLEntityManager;->e:Lorg/apache/xerces/util/XMLResourceIdentifierImpl;

    iget-object v4, p0, Lorg/apache/xerces/impl/XMLEntityManager;->f:Lorg/apache/xerces/xni/Augmentations;

    invoke-interface {p2, p1, v3, v2, v4}, Lorg/apache/xerces/impl/XMLEntityHandler;->startEntity(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    iget-object p2, p0, Lorg/apache/xerces/impl/XMLEntityManager;->f:Lorg/apache/xerces/xni/Augmentations;

    invoke-interface {p2}, Lorg/apache/xerces/xni/Augmentations;->removeAllItems()V

    iget-object p2, p0, Lorg/apache/xerces/impl/XMLEntityManager;->f:Lorg/apache/xerces/xni/Augmentations;

    invoke-interface {p2, v1, v0}, Lorg/apache/xerces/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fEntityHandler:Lorg/apache/xerces/impl/XMLEntityHandler;

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->f:Lorg/apache/xerces/xni/Augmentations;

    invoke-interface {p2, p1, p0}, Lorg/apache/xerces/impl/XMLEntityHandler;->endEntity(Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_8
    return-void

    :cond_9
    iget-object v5, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/AbstractCollection;->size()I

    move-result v5

    move v6, v5

    :goto_3
    if-gez v6, :cond_b

    if-eqz v3, :cond_a

    check-cast v0, Lorg/apache/xerces/impl/XMLEntityManager$ExternalEntity;

    iget-object v0, v0, Lorg/apache/xerces/impl/XMLEntityManager$ExternalEntity;->entityLocation:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/XMLEntityManager;->resolveEntity(Lorg/apache/xerces/xni/XMLResourceIdentifier;)Lorg/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v0

    goto :goto_4

    :cond_a
    check-cast v0, Lorg/apache/xerces/impl/XMLEntityManager$InternalEntity;

    new-instance v8, Ljava/io/StringReader;

    iget-object v0, v0, Lorg/apache/xerces/impl/XMLEntityManager$InternalEntity;->text:Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/apache/xerces/xni/parser/XMLInputSource;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lorg/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Ljava/lang/String;)V

    :goto_4
    invoke-virtual {p0, p1, v0, p2, v3}, Lorg/apache/xerces/impl/XMLEntityManager;->startEntity(Ljava/lang/String;Lorg/apache/xerces/xni/parser/XMLInputSource;ZZ)V

    return-void

    :cond_b
    if-ne v6, v5, :cond_c

    iget-object v7, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    goto :goto_5

    :cond_c
    iget-object v7, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v7, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/xerces/impl/XMLEntityManager$Entity;

    :goto_5
    iget-object v7, v7, Lorg/apache/xerces/impl/XMLEntityManager$Entity;->name:Ljava/lang/String;

    if-ne v7, p1, :cond_13

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :goto_6
    add-int/lit8 v6, v6, 0x1

    const-string p2, " -> "

    if-lt v6, v5, :cond_12

    invoke-virtual {v7, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v5, v5, Lorg/apache/xerces/impl/XMLEntityManager$Entity;->name:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p2, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {p1, v5}, [Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x2

    const-string v7, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v8, "RecursiveReference"

    invoke-virtual {p2, v7, v8, v5, v6}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    iget-object p2, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fEntityHandler:Lorg/apache/xerces/impl/XMLEntityHandler;

    if-eqz p2, :cond_11

    iget-object p2, p0, Lorg/apache/xerces/impl/XMLEntityManager;->e:Lorg/apache/xerces/util/XMLResourceIdentifierImpl;

    invoke-virtual {p2}, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->clear()V

    if-eqz v3, :cond_10

    check-cast v0, Lorg/apache/xerces/impl/XMLEntityManager$ExternalEntity;

    iget-object p2, v0, Lorg/apache/xerces/impl/XMLEntityManager$ExternalEntity;->entityLocation:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    if-eqz p2, :cond_d

    invoke-interface {p2}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object p2

    goto :goto_7

    :cond_d
    move-object p2, v2

    :goto_7
    iget-object v3, v0, Lorg/apache/xerces/impl/XMLEntityManager$ExternalEntity;->entityLocation:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    if-eqz v3, :cond_e

    invoke-interface {v3}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    :cond_e
    move-object v3, v2

    :goto_8
    invoke-static {p2, v3, v4}, Lorg/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/xerces/impl/XMLEntityManager;->e:Lorg/apache/xerces/util/XMLResourceIdentifierImpl;

    iget-object v0, v0, Lorg/apache/xerces/impl/XMLEntityManager$ExternalEntity;->entityLocation:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_f
    move-object v0, v2

    :goto_9
    invoke-virtual {v5, v0, p2, v3, v4}, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    iget-object p2, p0, Lorg/apache/xerces/impl/XMLEntityManager;->f:Lorg/apache/xerces/xni/Augmentations;

    invoke-interface {p2}, Lorg/apache/xerces/xni/Augmentations;->removeAllItems()V

    iget-object p2, p0, Lorg/apache/xerces/impl/XMLEntityManager;->f:Lorg/apache/xerces/xni/Augmentations;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, v1, v0}, Lorg/apache/xerces/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fEntityHandler:Lorg/apache/xerces/impl/XMLEntityHandler;

    iget-object v3, p0, Lorg/apache/xerces/impl/XMLEntityManager;->e:Lorg/apache/xerces/util/XMLResourceIdentifierImpl;

    iget-object v4, p0, Lorg/apache/xerces/impl/XMLEntityManager;->f:Lorg/apache/xerces/xni/Augmentations;

    invoke-interface {p2, p1, v3, v2, v4}, Lorg/apache/xerces/impl/XMLEntityHandler;->startEntity(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    iget-object p2, p0, Lorg/apache/xerces/impl/XMLEntityManager;->f:Lorg/apache/xerces/xni/Augmentations;

    invoke-interface {p2}, Lorg/apache/xerces/xni/Augmentations;->removeAllItems()V

    iget-object p2, p0, Lorg/apache/xerces/impl/XMLEntityManager;->f:Lorg/apache/xerces/xni/Augmentations;

    invoke-interface {p2, v1, v0}, Lorg/apache/xerces/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fEntityHandler:Lorg/apache/xerces/impl/XMLEntityHandler;

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->f:Lorg/apache/xerces/xni/Augmentations;

    invoke-interface {p2, p1, p0}, Lorg/apache/xerces/impl/XMLEntityHandler;->endEntity(Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_11
    return-void

    :cond_12
    iget-object v8, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v8, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/xerces/impl/XMLEntityManager$Entity;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p2, v8, Lorg/apache/xerces/impl/XMLEntityManager$Entity;->name:Ljava/lang/String;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_6

    :cond_13
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_3
.end method

.method public startExternalSubset()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fInExternalSubset:Z

    return-void
.end method
