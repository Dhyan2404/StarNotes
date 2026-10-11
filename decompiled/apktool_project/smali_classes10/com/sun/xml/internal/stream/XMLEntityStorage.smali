.class public Lcom/sun/xml/internal/stream/XMLEntityStorage;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field protected static final WARN_ON_DUPLICATE_ENTITYDEF:Ljava/lang/String; = "http://apache.org/xml/features/warn-on-duplicate-entitydef"

.field private static gAfterEscaping1:[C

.field private static gAfterEscaping2:[C

.field private static gEscapedUserDir:Ljava/lang/String;

.field private static gHexChs:[C

.field private static gNeedEscaping:[Z

.field private static gUserDir:Ljava/lang/String;


# instance fields
.field protected fCurrentEntity:Lcom/sun/xml/internal/stream/Entity$ScannedEntity;

.field protected fEntities:Ljava/util/Hashtable;

.field private fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

.field protected fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

.field protected fInExternalSubset:Z

.field protected fPropertyManager:Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;

.field protected fWarnDuplicateEntityDef:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    const/16 v0, 0x80

    new-array v1, v0, [Z

    sput-object v1, Lcom/sun/xml/internal/stream/XMLEntityStorage;->gNeedEscaping:[Z

    new-array v1, v0, [C

    sput-object v1, Lcom/sun/xml/internal/stream/XMLEntityStorage;->gAfterEscaping1:[C

    new-array v0, v0, [C

    sput-object v0, Lcom/sun/xml/internal/stream/XMLEntityStorage;->gAfterEscaping2:[C

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/xml/internal/stream/XMLEntityStorage;->gHexChs:[C

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x1f

    const/4 v3, 0x1

    if-gt v1, v2, :cond_0

    sget-object v2, Lcom/sun/xml/internal/stream/XMLEntityStorage;->gNeedEscaping:[Z

    aput-boolean v3, v2, v1

    sget-object v2, Lcom/sun/xml/internal/stream/XMLEntityStorage;->gAfterEscaping1:[C

    sget-object v3, Lcom/sun/xml/internal/stream/XMLEntityStorage;->gHexChs:[C

    shr-int/lit8 v4, v1, 0x4

    aget-char v4, v3, v4

    aput-char v4, v2, v1

    sget-object v2, Lcom/sun/xml/internal/stream/XMLEntityStorage;->gAfterEscaping2:[C

    and-int/lit8 v4, v1, 0xf

    aget-char v3, v3, v4

    aput-char v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sun/xml/internal/stream/XMLEntityStorage;->gNeedEscaping:[Z

    const/16 v2, 0x7f

    aput-boolean v3, v1, v2

    sget-object v1, Lcom/sun/xml/internal/stream/XMLEntityStorage;->gAfterEscaping1:[C

    const/16 v4, 0x37

    aput-char v4, v1, v2

    sget-object v1, Lcom/sun/xml/internal/stream/XMLEntityStorage;->gAfterEscaping2:[C

    const/16 v4, 0x46

    aput-char v4, v1, v2

    const/16 v1, 0xf

    new-array v2, v1, [C

    fill-array-data v2, :array_1

    :goto_1
    if-ge v0, v1, :cond_1

    aget-char v4, v2, v0

    sget-object v5, Lcom/sun/xml/internal/stream/XMLEntityStorage;->gNeedEscaping:[Z

    aput-boolean v3, v5, v4

    sget-object v5, Lcom/sun/xml/internal/stream/XMLEntityStorage;->gAfterEscaping1:[C

    sget-object v6, Lcom/sun/xml/internal/stream/XMLEntityStorage;->gHexChs:[C

    shr-int/lit8 v7, v4, 0x4

    aget-char v7, v6, v7

    aput-char v7, v5, v4

    sget-object v5, Lcom/sun/xml/internal/stream/XMLEntityStorage;->gAfterEscaping2:[C

    and-int/lit8 v7, v4, 0xf

    aget-char v6, v6, v7

    aput-char v6, v5, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

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

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/xml/internal/stream/XMLEntityStorage;->fEntities:Ljava/util/Hashtable;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/sun/xml/internal/stream/XMLEntityStorage;->fInExternalSubset:Z

    .line 4
    iput-object p1, p0, Lcom/sun/xml/internal/stream/XMLEntityStorage;->fPropertyManager:Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/xml/internal/stream/XMLEntityStorage;->fEntities:Ljava/util/Hashtable;

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/sun/xml/internal/stream/XMLEntityStorage;->fInExternalSubset:Z

    .line 8
    iput-object p1, p0, Lcom/sun/xml/internal/stream/XMLEntityStorage;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    return-void
.end method

.method public static expandSystemId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/sun/xml/internal/stream/XMLEntityStorage;->expandSystemId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static expandSystemId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v0, :cond_5

    .line 2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    :try_start_0
    new-instance v2, Lcom/sun/org/apache/xerces/internal/util/URI;

    invoke-direct {v2, v0}, Lcom/sun/org/apache/xerces/internal/util/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 4
    :catch_0
    invoke-static/range {p0 .. p0}, Lcom/sun/xml/internal/stream/XMLEntityStorage;->fixURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_3

    .line 5
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v3, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    :try_start_2
    new-instance v3, Lcom/sun/org/apache/xerces/internal/util/URI;

    invoke-static/range {p1 .. p1}, Lcom/sun/xml/internal/stream/XMLEntityStorage;->fixURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sun/org/apache/xerces/internal/util/URI;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/sun/org/apache/xerces/internal/util/URI$MalformedURIException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_1
    const/16 v3, 0x3a

    .line 7
    :try_start_3
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 8
    new-instance v3, Lcom/sun/org/apache/xerces/internal/util/URI;

    const-string v6, "file"

    const-string v7, ""

    invoke-static/range {p1 .. p1}, Lcom/sun/xml/internal/stream/XMLEntityStorage;->fixURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lcom/sun/org/apache/xerces/internal/util/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 9
    :cond_2
    invoke-static {}, Lcom/sun/xml/internal/stream/XMLEntityStorage;->getUserDir()Ljava/lang/String;

    move-result-object v3

    .line 10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/sun/xml/internal/stream/XMLEntityStorage;->fixURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 11
    new-instance v3, Lcom/sun/org/apache/xerces/internal/util/URI;

    const-string v6, "file"

    const-string v7, ""

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lcom/sun/org/apache/xerces/internal/util/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 12
    :cond_3
    :goto_0
    invoke-static {}, Lcom/sun/xml/internal/stream/XMLEntityStorage;->getUserDir()Ljava/lang/String;

    move-result-object v14

    .line 13
    new-instance v3, Lcom/sun/org/apache/xerces/internal/util/URI;

    const-string v12, "file"

    const-string v13, ""

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v11, v3

    invoke-direct/range {v11 .. v16}, Lcom/sun/org/apache/xerces/internal/util/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :goto_1
    new-instance v1, Lcom/sun/org/apache/xerces/internal/util/URI;

    invoke-direct {v1, v3, v2}, Lcom/sun/org/apache/xerces/internal/util/URI;-><init>(Lcom/sun/org/apache/xerces/internal/util/URI;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    const/4 v1, 0x0

    :goto_2
    if-nez v1, :cond_4

    return-object v0

    .line 15
    :cond_4
    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/util/URI;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    :goto_3
    return-object v0
.end method

.method public static fixURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    sget-char v0, Ljava/io/File;->separatorChar:C

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x3a

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    const/16 v1, 0x41

    if-lt v0, v1, :cond_1

    const/16 v1, 0x5a

    if-gt v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method private static declared-synchronized getUserDir()Ljava/lang/String;
    .locals 11

    const-class v0, Lcom/sun/xml/internal/stream/XMLEntityStorage;

    monitor-enter v0

    :try_start_0
    const-string v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v2, "user.dir"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    const-string v1, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_3
    sget-object v2, Lcom/sun/xml/internal/stream/XMLEntityStorage;->gUserDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v1, Lcom/sun/xml/internal/stream/XMLEntityStorage;->gEscapedUserDir:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-object v1

    :cond_1
    :try_start_4
    sput-object v1, Lcom/sun/xml/internal/stream/XMLEntityStorage;->gUserDir:Ljava/lang/String;

    sget-char v2, Ljava/io/File;->separatorChar:C

    const/16 v3, 0x2f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v4, Ljava/lang/StringBuffer;

    mul-int/lit8 v5, v2, 0x3

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-lt v2, v5, :cond_2

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v7, 0x3a

    if-ne v5, v7, :cond_2

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    const/16 v7, 0x41

    if-lt v5, v7, :cond_2

    const/16 v7, 0x5a

    if-gt v5, v7, :cond_2

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    move v5, v6

    :goto_0
    const/16 v7, 0x25

    if-ge v5, v2, :cond_5

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x80

    if-lt v8, v9, :cond_3

    goto :goto_2

    :cond_3
    sget-object v9, Lcom/sun/xml/internal/stream/XMLEntityStorage;->gNeedEscaping:[Z

    aget-boolean v9, v9, v8

    if-eqz v9, :cond_4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v7, Lcom/sun/xml/internal/stream/XMLEntityStorage;->gAfterEscaping1:[C

    aget-char v7, v7, v8

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v7, Lcom/sun/xml/internal/stream/XMLEntityStorage;->gAfterEscaping2:[C

    aget-char v7, v7, v8

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_4
    int-to-char v7, v8

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    if-ge v5, v2, :cond_8

    :try_start_5
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "UTF-8"

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    array-length v5, v2

    :goto_3
    if-ge v6, v5, :cond_8

    aget-byte v8, v2, v6

    if-gez v8, :cond_6

    add-int/lit16 v8, v8, 0x100

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v9, Lcom/sun/xml/internal/stream/XMLEntityStorage;->gHexChs:[C

    shr-int/lit8 v10, v8, 0x4

    aget-char v9, v9, v10

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v9, Lcom/sun/xml/internal/stream/XMLEntityStorage;->gHexChs:[C

    and-int/lit8 v8, v8, 0xf

    aget-char v8, v9, v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_6
    sget-object v9, Lcom/sun/xml/internal/stream/XMLEntityStorage;->gNeedEscaping:[Z

    aget-boolean v9, v9, v8

    if-eqz v9, :cond_7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v9, Lcom/sun/xml/internal/stream/XMLEntityStorage;->gAfterEscaping1:[C

    aget-char v9, v9, v8

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v9, Lcom/sun/xml/internal/stream/XMLEntityStorage;->gAfterEscaping2:[C

    aget-char v8, v9, v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_7
    int-to-char v8, v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :catch_1
    monitor-exit v0

    return-object v1

    :cond_8
    :try_start_7
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_9
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sun/xml/internal/stream/XMLEntityStorage;->gEscapedUserDir:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public addExternalEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/sun/xml/internal/stream/XMLEntityStorage;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p4, :cond_0

    iget-object v0, p0, Lcom/sun/xml/internal/stream/XMLEntityStorage;->fCurrentEntity:Lcom/sun/xml/internal/stream/Entity$ScannedEntity;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->entityLocation:Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object p4

    :cond_0
    iget-object v0, p0, Lcom/sun/xml/internal/stream/XMLEntityStorage;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->getCurrentEntity()Lcom/sun/xml/internal/stream/Entity$ScannedEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/xml/internal/stream/XMLEntityStorage;->fCurrentEntity:Lcom/sun/xml/internal/stream/Entity$ScannedEntity;

    new-instance v0, Lcom/sun/xml/internal/stream/Entity$ExternalEntity;

    new-instance v1, Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;

    invoke-static {p3, p4}, Lcom/sun/xml/internal/stream/XMLEntityStorage;->expandSystemId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p2, p3, p4, v2}, Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    iget-boolean p3, p0, Lcom/sun/xml/internal/stream/XMLEntityStorage;->fInExternalSubset:Z

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/sun/xml/internal/stream/Entity$ExternalEntity;-><init>(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/sun/xml/internal/stream/XMLEntityStorage;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-boolean p2, p0, Lcom/sun/xml/internal/stream/XMLEntityStorage;->fWarnDuplicateEntityDef:Z

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/sun/xml/internal/stream/XMLEntityStorage;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    const-string p3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string p4, "MSG_DUPLICATE_ENTITY_DEFINITION"

    invoke-virtual {p0, p3, p4, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :cond_2
    :goto_0
    return-void
.end method

.method public addInternalEntity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sun/xml/internal/stream/XMLEntityStorage;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/sun/xml/internal/stream/Entity$InternalEntity;

    iget-boolean v1, p0, Lcom/sun/xml/internal/stream/XMLEntityStorage;->fInExternalSubset:Z

    invoke-direct {v0, p1, p2, v1}, Lcom/sun/xml/internal/stream/Entity$InternalEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/sun/xml/internal/stream/XMLEntityStorage;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-boolean p2, p0, Lcom/sun/xml/internal/stream/XMLEntityStorage;->fWarnDuplicateEntityDef:Z

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/sun/xml/internal/stream/XMLEntityStorage;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v1, "MSG_DUPLICATE_ENTITY_DEFINITION"

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :cond_1
    :goto_0
    return-void
.end method

.method public addUnparsedEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/sun/xml/internal/stream/XMLEntityStorage;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->getCurrentEntity()Lcom/sun/xml/internal/stream/Entity$ScannedEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/xml/internal/stream/XMLEntityStorage;->fCurrentEntity:Lcom/sun/xml/internal/stream/Entity$ScannedEntity;

    iget-object v0, p0, Lcom/sun/xml/internal/stream/XMLEntityStorage;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/sun/xml/internal/stream/Entity$ExternalEntity;

    new-instance v1, Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p3, p4, v2}, Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/sun/xml/internal/stream/XMLEntityStorage;->fInExternalSubset:Z

    invoke-direct {v0, p1, v1, p5, p2}, Lcom/sun/xml/internal/stream/Entity$ExternalEntity;-><init>(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/sun/xml/internal/stream/XMLEntityStorage;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-boolean p2, p0, Lcom/sun/xml/internal/stream/XMLEntityStorage;->fWarnDuplicateEntityDef:Z

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/sun/xml/internal/stream/XMLEntityStorage;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    const-string p3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string p4, "MSG_DUPLICATE_ENTITY_DEFINITION"

    invoke-virtual {p0, p3, p4, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :cond_1
    :goto_0
    return-void
.end method

.method public endExternalSubset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/xml/internal/stream/XMLEntityStorage;->fInExternalSubset:Z

    return-void
.end method

.method public getDeclaredEntities()Ljava/util/Hashtable;
    .locals 0

    iget-object p0, p0, Lcom/sun/xml/internal/stream/XMLEntityStorage;->fEntities:Ljava/util/Hashtable;

    return-object p0
.end method

.method public isDeclaredEntity(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/sun/xml/internal/stream/XMLEntityStorage;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/xml/internal/stream/Entity;

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

    iget-object p0, p0, Lcom/sun/xml/internal/stream/XMLEntityStorage;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/xml/internal/stream/Entity;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sun/xml/internal/stream/Entity;->isEntityDeclInExternalSubset()Z

    move-result p0

    return p0
.end method

.method public isExternalEntity(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/sun/xml/internal/stream/XMLEntityStorage;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/xml/internal/stream/Entity;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sun/xml/internal/stream/Entity;->isExternal()Z

    move-result p0

    return p0
.end method

.method public isUnparsedEntity(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/sun/xml/internal/stream/XMLEntityStorage;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/xml/internal/stream/Entity;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sun/xml/internal/stream/Entity;->isUnparsed()Z

    move-result p0

    return p0
.end method

.method public reset()V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/sun/xml/internal/stream/XMLEntityStorage;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/sun/xml/internal/stream/XMLEntityStorage;->fCurrentEntity:Lcom/sun/xml/internal/stream/Entity$ScannedEntity;

    return-void
.end method

.method public reset(Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;)V
    .locals 1

    const-string v0, "http://apache.org/xml/properties/internal/error-reporter"

    .line 1
    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    iput-object p1, p0, Lcom/sun/xml/internal/stream/XMLEntityStorage;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    .line 2
    iget-object p1, p0, Lcom/sun/xml/internal/stream/XMLEntityStorage;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/util/Hashtable;->clear()V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/sun/xml/internal/stream/XMLEntityStorage;->fCurrentEntity:Lcom/sun/xml/internal/stream/Entity$ScannedEntity;

    return-void
.end method

.method public reset(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;
        }
    .end annotation

    :try_start_0
    const-string v0, "http://apache.org/xml/features/warn-on-duplicate-entitydef"

    .line 6
    invoke-interface {p1, v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/xml/internal/stream/XMLEntityStorage;->fWarnDuplicateEntityDef:Z
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/sun/xml/internal/stream/XMLEntityStorage;->fWarnDuplicateEntityDef:Z

    :goto_0
    const-string v0, "http://apache.org/xml/properties/internal/error-reporter"

    .line 8
    invoke-interface {p1, v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    iput-object p1, p0, Lcom/sun/xml/internal/stream/XMLEntityStorage;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    .line 9
    iget-object p1, p0, Lcom/sun/xml/internal/stream/XMLEntityStorage;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/util/Hashtable;->clear()V

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/sun/xml/internal/stream/XMLEntityStorage;->fCurrentEntity:Lcom/sun/xml/internal/stream/Entity$ScannedEntity;

    return-void
.end method

.method public startExternalSubset()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/xml/internal/stream/XMLEntityStorage;->fInExternalSubset:Z

    return-void
.end method
