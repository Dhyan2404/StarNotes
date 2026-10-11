.class public Lcom/sun/org/apache/xml/internal/resolver/Catalog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BASE:I

.field public static final CATALOG:I

.field public static final DELEGATE_PUBLIC:I

.field public static final DELEGATE_SYSTEM:I

.field public static final DELEGATE_URI:I

.field public static final DOCTYPE:I

.field public static final DOCUMENT:I

.field public static final DTDDECL:I

.field public static final ENTITY:I

.field public static final LINKTYPE:I

.field public static final NOTATION:I

.field public static final OVERRIDE:I

.field public static final PUBLIC:I

.field public static final REWRITE_SYSTEM:I

.field public static final REWRITE_URI:I

.field public static final SGMLDECL:I

.field public static final SYSTEM:I

.field public static final SYSTEM_SUFFIX:I

.field public static final URI:I

.field public static final URI_SUFFIX:I


# instance fields
.field protected base:Ljava/net/URL;

.field protected catalogCwd:Ljava/net/URL;

.field protected catalogEntries:Ljava/util/Vector;

.field protected catalogFiles:Ljava/util/Vector;

.field protected catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

.field protected catalogs:Ljava/util/Vector;

.field protected default_override:Z

.field protected localCatalogFiles:Ljava/util/Vector;

.field protected localDelegate:Ljava/util/Vector;

.field protected readerArr:Ljava/util/Vector;

.field protected readerMap:Ljava/util/Hashtable;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "BASE"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->addEntryType(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->BASE:I

    const-string v0, "CATALOG"

    invoke-static {v0, v1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->addEntryType(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->CATALOG:I

    const-string v0, "DOCUMENT"

    invoke-static {v0, v1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->addEntryType(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->DOCUMENT:I

    const-string v0, "OVERRIDE"

    invoke-static {v0, v1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->addEntryType(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->OVERRIDE:I

    const-string v0, "SGMLDECL"

    invoke-static {v0, v1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->addEntryType(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->SGMLDECL:I

    const-string v0, "DELEGATE_PUBLIC"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->addEntryType(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->DELEGATE_PUBLIC:I

    const-string v0, "DELEGATE_SYSTEM"

    invoke-static {v0, v1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->addEntryType(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->DELEGATE_SYSTEM:I

    const-string v0, "DELEGATE_URI"

    invoke-static {v0, v1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->addEntryType(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->DELEGATE_URI:I

    const-string v0, "DOCTYPE"

    invoke-static {v0, v1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->addEntryType(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->DOCTYPE:I

    const-string v0, "DTDDECL"

    invoke-static {v0, v1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->addEntryType(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->DTDDECL:I

    const-string v0, "ENTITY"

    invoke-static {v0, v1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->addEntryType(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->ENTITY:I

    const-string v0, "LINKTYPE"

    invoke-static {v0, v1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->addEntryType(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->LINKTYPE:I

    const-string v0, "NOTATION"

    invoke-static {v0, v1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->addEntryType(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->NOTATION:I

    const-string v0, "PUBLIC"

    invoke-static {v0, v1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->addEntryType(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->PUBLIC:I

    const-string v0, "SYSTEM"

    invoke-static {v0, v1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->addEntryType(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->SYSTEM:I

    const-string v0, "URI"

    invoke-static {v0, v1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->addEntryType(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->URI:I

    const-string v0, "REWRITE_SYSTEM"

    invoke-static {v0, v1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->addEntryType(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->REWRITE_SYSTEM:I

    const-string v0, "REWRITE_URI"

    invoke-static {v0, v1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->addEntryType(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->REWRITE_URI:I

    const-string v0, "SYSTEM_SUFFIX"

    invoke-static {v0, v1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->addEntryType(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->SYSTEM_SUFFIX:I

    const-string v0, "URI_SUFFIX"

    invoke-static {v0, v1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->addEntryType(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->URI_SUFFIX:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->default_override:Z

    .line 4
    invoke-static {}, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->getStaticManager()Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    .line 5
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogFiles:Ljava/util/Vector;

    .line 6
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->localCatalogFiles:Ljava/util/Vector;

    .line 7
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogs:Ljava/util/Vector;

    .line 8
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->localDelegate:Ljava/util/Vector;

    .line 9
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->readerMap:Ljava/util/Hashtable;

    .line 10
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->readerArr:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->default_override:Z

    .line 14
    invoke-static {}, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->getStaticManager()Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    .line 15
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogFiles:Ljava/util/Vector;

    .line 16
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->localCatalogFiles:Ljava/util/Vector;

    .line 17
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogs:Ljava/util/Vector;

    .line 18
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->localDelegate:Ljava/util/Vector;

    .line 19
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->readerMap:Ljava/util/Hashtable;

    .line 20
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->readerArr:Ljava/util/Vector;

    .line 21
    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    return-void
.end method


# virtual methods
.method public addDelegate(Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;)V
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->localDelegate:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    move v3, v0

    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;

    invoke-virtual {v4, v0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    return-void

    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-le v5, v6, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    :cond_3
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->localDelegate:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_4

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->localDelegate:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->localDelegate:Ljava/util/Vector;

    invoke-virtual {p0, p1, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    :goto_0
    return-void
.end method

.method public addEntry(Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;)V
    .locals 6

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryType()I

    move-result v0

    sget v1, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->BASE:I

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v1, :cond_2

    invoke-virtual {p1, v4}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->base:Ljava/net/URL;

    const-string v1, "BASE CUR"

    const/4 v4, 0x5

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const-string v5, "null"

    invoke-virtual {v0, v4, v1, v5}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object v5, v5, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v4, v1, v0}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const-string v1, "BASE STR"

    invoke-virtual {v0, v2, v1, p1}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->fixSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->base:Ljava/net/URL;

    invoke-direct {v0, v1, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :try_start_1
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const-string v1, "Malformed URL on base"

    invoke-virtual {v0, v3, v1, p1}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->base:Ljava/net/URL;

    :cond_1
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object p1, p1, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->base:Ljava/net/URL;

    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BASE NEW"

    invoke-virtual {p1, v4, v0, p0}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_2
    sget v1, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->CATALOG:I

    if-ne v0, v1, :cond_3

    invoke-virtual {p1, v4}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->makeAbsolute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const-string v1, "CATALOG"

    invoke-virtual {v0, v2, v1, p1}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->localCatalogFiles:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_3
    sget v1, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->PUBLIC:I

    if-ne v0, v1, :cond_4

    invoke-virtual {p1, v4}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/resolver/helpers/PublicId;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->makeAbsolute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v4, v0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    invoke-virtual {p1, v3, v1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object v3, v3, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const-string v4, "PUBLIC"

    invoke-virtual {v3, v2, v4, v0, v1}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_4
    sget v1, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->SYSTEM:I

    if-ne v0, v1, :cond_5

    invoke-virtual {p1, v4}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->makeAbsolute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object v3, v3, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const-string v4, "SYSTEM"

    invoke-virtual {v3, v2, v4, v0, v1}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_5
    sget v1, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->URI:I

    if-ne v0, v1, :cond_6

    invoke-virtual {p1, v4}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->makeAbsolute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object v3, v3, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const-string v4, "URI"

    invoke-virtual {v3, v2, v4, v0, v1}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_6
    sget v1, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->DOCUMENT:I

    if-ne v0, v1, :cond_7

    invoke-virtual {p1, v4}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->makeAbsolute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object v1, v1, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const-string v3, "DOCUMENT"

    invoke-virtual {v1, v2, v3, v0}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_7
    sget v1, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->OVERRIDE:I

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const-string v1, "OVERRIDE"

    invoke-virtual {p1, v4}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_8
    sget v1, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->SGMLDECL:I

    if-ne v0, v1, :cond_9

    invoke-virtual {p1, v4}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->makeAbsolute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object v1, v1, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const-string v3, "SGMLDECL"

    invoke-virtual {v1, v2, v3, v0}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_9
    sget v1, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->DELEGATE_PUBLIC:I

    if-ne v0, v1, :cond_a

    invoke-virtual {p1, v4}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/resolver/helpers/PublicId;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->makeAbsolute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v4, v0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    invoke-virtual {p1, v3, v1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object v3, v3, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const-string v4, "DELEGATE_PUBLIC"

    invoke-virtual {v3, v2, v4, v0, v1}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->addDelegate(Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;)V

    goto/16 :goto_2

    :cond_a
    sget v1, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->DELEGATE_SYSTEM:I

    if-ne v0, v1, :cond_b

    invoke-virtual {p1, v4}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->makeAbsolute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v4, v0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    invoke-virtual {p1, v3, v1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object v3, v3, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const-string v4, "DELEGATE_SYSTEM"

    invoke-virtual {v3, v2, v4, v0, v1}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->addDelegate(Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;)V

    goto/16 :goto_2

    :cond_b
    sget v1, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->DELEGATE_URI:I

    if-ne v0, v1, :cond_c

    invoke-virtual {p1, v4}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->makeAbsolute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v4, v0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    invoke-virtual {p1, v3, v1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object v3, v3, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const-string v4, "DELEGATE_URI"

    invoke-virtual {v3, v2, v4, v0, v1}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->addDelegate(Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;)V

    goto/16 :goto_2

    :cond_c
    sget v1, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->REWRITE_SYSTEM:I

    if-ne v0, v1, :cond_d

    invoke-virtual {p1, v4}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->makeAbsolute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v4, v0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    invoke-virtual {p1, v3, v1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object v3, v3, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const-string v4, "REWRITE_SYSTEM"

    invoke-virtual {v3, v2, v4, v0, v1}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_d
    sget v1, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->REWRITE_URI:I

    if-ne v0, v1, :cond_e

    invoke-virtual {p1, v4}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->makeAbsolute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v4, v0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    invoke-virtual {p1, v3, v1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object v3, v3, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const-string v4, "REWRITE_URI"

    invoke-virtual {v3, v2, v4, v0, v1}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_e
    sget v1, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->SYSTEM_SUFFIX:I

    if-ne v0, v1, :cond_f

    invoke-virtual {p1, v4}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->makeAbsolute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v4, v0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    invoke-virtual {p1, v3, v1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object v3, v3, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const-string v4, "SYSTEM_SUFFIX"

    invoke-virtual {v3, v2, v4, v0, v1}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_f
    sget v1, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->URI_SUFFIX:I

    if-ne v0, v1, :cond_10

    invoke-virtual {p1, v4}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->makeAbsolute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v4, v0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    invoke-virtual {p1, v3, v1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object v3, v3, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const-string v4, "URI_SUFFIX"

    invoke-virtual {v3, v2, v4, v0, v1}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_10
    sget v1, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->DOCTYPE:I

    if-ne v0, v1, :cond_11

    invoke-virtual {p1, v3}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->makeAbsolute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object v1, v1, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const-string v3, "DOCTYPE"

    invoke-virtual {p1, v4}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_11
    sget v1, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->DTDDECL:I

    if-ne v0, v1, :cond_12

    invoke-virtual {p1, v4}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/resolver/helpers/PublicId;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    invoke-virtual {p1, v3}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->makeAbsolute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object v3, v3, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const-string v4, "DTDDECL"

    invoke-virtual {v3, v2, v4, v0, v1}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_12
    sget v1, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->ENTITY:I

    if-ne v0, v1, :cond_13

    invoke-virtual {p1, v3}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->makeAbsolute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object v1, v1, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const-string v3, "ENTITY"

    invoke-virtual {p1, v4}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2

    :cond_13
    sget v1, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->LINKTYPE:I

    if-ne v0, v1, :cond_14

    invoke-virtual {p1, v3}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->makeAbsolute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object v1, v1, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const-string v3, "LINKTYPE"

    invoke-virtual {p1, v4}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2

    :cond_14
    sget v1, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->NOTATION:I

    if-ne v0, v1, :cond_15

    invoke-virtual {p1, v3}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->makeAbsolute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object v1, v1, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const-string v3, "NOTATION"

    invoke-virtual {p1, v4}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2

    :cond_15
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public addReader(Ljava/lang/String;Lcom/sun/org/apache/xml/internal/resolver/readers/CatalogReader;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->readerMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->readerMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->readerArr:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->readerArr:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    new-instance p2, Ljava/lang/Integer;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->readerArr:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p2, v0}, Ljava/lang/Integer;-><init>(I)V

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->readerMap:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public copyReaders(Lcom/sun/org/apache/xml/internal/resolver/Catalog;)V
    .locals 5

    new-instance v0, Ljava/util/Vector;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->readerMap:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->readerMap:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->readerMap:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->readerMap:Ljava/util/Hashtable;

    invoke-virtual {v4, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4, v3}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->readerMap:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->readerArr:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xml/internal/resolver/readers/CatalogReader;

    invoke-virtual {p1, v2, v3}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->addReader(Ljava/lang/String;Lcom/sun/org/apache/xml/internal/resolver/readers/CatalogReader;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public encodedByte(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "%0"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public fixSlashes(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 p0, 0x5c

    const/16 v0, 0x2f

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCatalogManager()Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    return-object p0
.end method

.method public getCurrentBase()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->base:Ljava/net/URL;

    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultOverride()Ljava/lang/String;
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->default_override:Z

    if-eqz p0, :cond_0

    const-string p0, "yes"

    return-object p0

    :cond_0
    const-string p0, "no"

    return-object p0
.end method

.method public loadSystemCatalogs()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->getCatalogFiles()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogFiles:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogFiles:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogFiles:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogFiles:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->parseCatalog(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public makeAbsolute(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->fixSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->base:Ljava/net/URL;

    invoke-direct {v0, v1, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const/4 v0, 0x1

    const-string v1, "Malformed URL on system identifier"

    invoke-virtual {p0, v0, v1, p1}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public newCatalog()Lcom/sun/org/apache/xml/internal/resolver/Catalog;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xml/internal/resolver/Catalog;

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->setCatalogManager(Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;)V

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->copyReaders(Lcom/sun/org/apache/xml/internal/resolver/Catalog;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object v2, v2, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Other Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_0

    :catch_1
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object v2, v2, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Class Cast Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_0

    :catch_2
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object v2, v2, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Instantiation Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_0

    :catch_3
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object v2, v2, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal Access Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_0

    :catch_4
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object v2, v2, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Class Not Found Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    :goto_0
    new-instance v0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;

    invoke-direct {v0}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;-><init>()V

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->setCatalogManager(Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;)V

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->copyReaders(Lcom/sun/org/apache/xml/internal/resolver/Catalog;)V

    return-object v0
.end method

.method public normalizeURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, ""

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x20

    if-le v2, v3, :cond_2

    const/16 v3, 0x7f

    if-gt v2, v3, :cond_2

    const/16 v4, 0x22

    if-eq v2, v4, :cond_2

    const/16 v4, 0x3c

    if-eq v2, v4, :cond_2

    const/16 v4, 0x3e

    if-eq v2, v4, :cond_2

    const/16 v4, 0x5c

    if-eq v2, v4, :cond_2

    const/16 v4, 0x5e

    if-eq v2, v4, :cond_2

    const/16 v4, 0x60

    if-eq v2, v4, :cond_2

    const/16 v4, 0x7b

    if-eq v2, v4, :cond_2

    const/16 v4, 0x7c

    if-eq v2, v4, :cond_2

    const/16 v4, 0x7d

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v0, p1, v1

    int-to-char v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->encodedByte(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    :catch_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const-string v0, "UTF-8 is an unsupported encoding!?"

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    return-object p1
.end method

.method public parseAllCatalogs()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogs:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogs:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xml/internal/resolver/Catalog;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogs:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->newCatalog()Lcom/sun/org/apache/xml/internal/resolver/Catalog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->parseCatalog(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogs:Ljava/util/Vector;

    invoke-virtual {v1, v2, v0}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    invoke-virtual {v2}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->parseAllCatalogs()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :cond_1
    :goto_2
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryType()I

    move-result v2

    sget v3, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->DELEGATE_PUBLIC:I

    if-eq v2, v3, :cond_2

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryType()I

    move-result v2

    sget v3, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->DELEGATE_SYSTEM:I

    if-eq v2, v3, :cond_2

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryType()I

    move-result v2

    sget v3, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->DELEGATE_URI:I

    if-ne v2, v3, :cond_1

    :cond_2
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->newCatalog()Lcom/sun/org/apache/xml/internal/resolver/Catalog;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->parseCatalog(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public declared-synchronized parseCatalog(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->getPreferPublic()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->default_override:Z

    .line 2
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parse catalog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogFiles:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->parsePendingCatalogs()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized parseCatalog(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/xml/internal/resolver/CatalogException;
        }
    .end annotation

    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->getPreferPublic()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->default_override:Z

    .line 7
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parse "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " catalog on input stream"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->readerMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->readerMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 10
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->readerArr:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/resolver/readers/CatalogReader;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 11
    invoke-interface {v0, p0, p2}, Lcom/sun/org/apache/xml/internal/resolver/readers/CatalogReader;->readCatalog(Lcom/sun/org/apache/xml/internal/resolver/Catalog;Ljava/io/InputStream;)V

    .line 12
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->parsePendingCatalogs()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit p0

    return-void

    .line 14
    :cond_1
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No CatalogReader for MIME type: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 15
    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object p2, p2, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const/4 v0, 0x2

    invoke-virtual {p2, v0, p1}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    .line 16
    new-instance p2, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;

    const/4 v0, 0x6

    invoke-direct {p2, v0, p1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;-><init>(ILjava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized parseCatalog(Ljava/net/URL;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 17
    :try_start_0
    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogCwd:Ljava/net/URL;

    .line 18
    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->base:Ljava/net/URL;

    .line 19
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->getPreferPublic()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->default_override:Z

    .line 20
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parse catalog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-nez v0, :cond_1

    .line 21
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->readerArr:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 22
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->readerArr:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xml/internal/resolver/readers/CatalogReader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :try_start_1
    new-instance v3, Ljava/io/DataInputStream;

    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    :try_start_2
    invoke-interface {v2, p0, v3}, Lcom/sun/org/apache/xml/internal/resolver/readers/CatalogReader;->readCatalog(Lcom/sun/org/apache/xml/internal/resolver/Catalog;Ljava/io/InputStream;)V
    :try_end_2
    .catch Lcom/sun/org/apache/xml/internal/resolver/CatalogException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    .line 25
    :try_start_3
    invoke-virtual {v2}, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;->getExceptionType()I

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v4, 0x7

    if-ne v2, v4, :cond_0

    goto :goto_2

    .line 26
    :cond_0
    :goto_1
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_2
    :cond_1
    :goto_2
    if-eqz v0, :cond_2

    .line 27
    :try_start_5
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->parsePendingCatalogs()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 28
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized parseCatalogFile(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;,
            Lcom/sun/org/apache/xml/internal/resolver/CatalogException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "basename"

    invoke-static {v2}, Lcom/sun/org/apache/xml/internal/resolver/helpers/FileURL;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogCwd:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :catch_0
    :try_start_1
    const-string v2, "user.dir"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x5c

    const/16 v4, 0x2f

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object v3, v3, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const-string v4, "Malformed URL on cwd"

    invoke-virtual {v3, v1, v4, v2}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogCwd:Ljava/net/URL;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogCwd:Ljava/net/URL;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->fixSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->base:Ljava/net/URL;
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_1
    :try_start_3
    new-instance v2, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->fixSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->base:Ljava/net/URL;
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_2
    :try_start_4
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object v2, v2, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const-string v3, "Malformed URL on catalog filename"

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->fixSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v4}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->base:Ljava/net/URL;

    :goto_1
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const-string v2, "Loading catalog"

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2, p1}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object p1, p1, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const-string v0, "Default BASE"

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->base:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {p1, v3, v0, v2}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->base:Ljava/net/URL;

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    move v2, v0

    move v3, v2

    :goto_2
    if-nez v2, :cond_1

    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->readerArr:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->readerArr:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/org/apache/xml/internal/resolver/readers/CatalogReader;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    new-instance v5, Ljava/io/DataInputStream;

    iget-object v6, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->base:Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-interface {v4, p0, v5}, Lcom/sun/org/apache/xml/internal/resolver/readers/CatalogReader;->readCatalog(Lcom/sun/org/apache/xml/internal/resolver/Catalog;Ljava/io/InputStream;)V
    :try_end_6
    .catch Lcom/sun/org/apache/xml/internal/resolver/CatalogException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move v2, v1

    goto :goto_3

    :catch_3
    move-exception v4

    :try_start_7
    invoke-virtual {v4}, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;->getExceptionType()I

    move-result v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/4 v6, 0x7

    if-ne v4, v6, :cond_0

    goto :goto_4

    :cond_0
    :goto_3
    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catch_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :catch_5
    move v0, v1

    :cond_1
    :goto_4
    if-nez v2, :cond_3

    if-eqz v0, :cond_2

    :try_start_9
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const-string v1, "Catalog does not exist"

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1, p1}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const-string v2, "Failed to parse catalog"

    invoke-virtual {v0, v1, v2, p1}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_3
    :goto_5
    monitor-exit p0

    return-void

    :goto_6
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized parsePendingCatalogs()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->localCatalogFiles:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->localCatalogFiles:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_1
    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogFiles:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogFiles:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogFiles:Ljava/util/Vector;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->localCatalogFiles:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogFiles:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->localDelegate:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->localDelegate:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->localDelegate:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogFiles:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogFiles:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogFiles:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogs:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_5

    :try_start_3
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->parseCatalogFile(Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/sun/org/apache/xml/internal/resolver/CatalogException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catch_1
    move-exception v0

    :try_start_4
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FIXME: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogs:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_4
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->localCatalogFiles:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->localCatalogFiles:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_5

    :cond_6
    move v2, v1

    :goto_6
    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogFiles:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogFiles:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_7
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogFiles:Ljava/util/Vector;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->localCatalogFiles:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    :cond_8
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->localDelegate:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->localDelegate:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_7

    :cond_9
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->localDelegate:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    goto/16 :goto_3

    :cond_a
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogFiles:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resolveDoctype(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolveDoctype("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "urn:publicid:"

    if-eqz p2, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Lcom/sun/org/apache/xml/internal/resolver/helpers/PublicId;->decodeURN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    const/4 v1, 0x1

    if-eqz p3, :cond_2

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p3}, Lcom/sun/org/apache/xml/internal/resolver/helpers/PublicId;->decodeURN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object p3, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object p3, p3, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const-string v2, "urn:publicid: system identifier differs from public identifier; using public identifier"

    invoke-virtual {p3, v1, v2}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object p2, p3

    :goto_0
    move-object p3, v0

    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p0, p3}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->resolveLocalSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    if-eqz p2, :cond_4

    sget v0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->DOCTYPE:I

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->resolveLocalPublic(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    return-object v0

    :cond_4
    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->default_override:Z

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;

    invoke-virtual {v3}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryType()I

    move-result v4

    sget v5, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->OVERRIDE:I

    const/4 v6, 0x0

    if-ne v4, v5, :cond_6

    invoke-virtual {v3, v6}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "YES"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    :cond_6
    invoke-virtual {v3}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryType()I

    move-result v4

    sget v5, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->DOCTYPE:I

    if-ne v4, v5, :cond_5

    invoke-virtual {v3, v6}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-nez v0, :cond_7

    if-nez p3, :cond_5

    :cond_7
    invoke-virtual {v3, v1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    sget v0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->DOCTYPE:I

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->resolveSubordinateCatalogs(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public resolveDocument()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const/4 v1, 0x3

    const-string v2, "resolveDocument"

    invoke-virtual {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryType()I

    move-result v2

    sget v3, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->DOCUMENT:I

    if-ne v2, v3, :cond_0

    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    sget v0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->DOCUMENT:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->resolveSubordinateCatalogs(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolveEntity("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "urn:publicid:"

    if-eqz p2, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Lcom/sun/org/apache/xml/internal/resolver/helpers/PublicId;->decodeURN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    const/4 v1, 0x1

    if-eqz p3, :cond_2

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p3}, Lcom/sun/org/apache/xml/internal/resolver/helpers/PublicId;->decodeURN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object p3, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object p3, p3, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const-string v2, "urn:publicid: system identifier differs from public identifier; using public identifier"

    invoke-virtual {p3, v1, v2}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object p2, p3

    :goto_0
    move-object p3, v0

    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p0, p3}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->resolveLocalSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    if-eqz p2, :cond_4

    sget v0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->ENTITY:I

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->resolveLocalPublic(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    return-object v0

    :cond_4
    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->default_override:Z

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;

    invoke-virtual {v3}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryType()I

    move-result v4

    sget v5, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->OVERRIDE:I

    const/4 v6, 0x0

    if-ne v4, v5, :cond_6

    invoke-virtual {v3, v6}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "YES"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    :cond_6
    invoke-virtual {v3}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryType()I

    move-result v4

    sget v5, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->ENTITY:I

    if-ne v4, v5, :cond_5

    invoke-virtual {v3, v6}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-nez v0, :cond_7

    if-nez p3, :cond_5

    :cond_7
    invoke-virtual {v3, v1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    sget v0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->ENTITY:I

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->resolveSubordinateCatalogs(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized resolveLocalPublic(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {p3}, Lcom/sun/org/apache/xml/internal/resolver/helpers/PublicId;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p4, :cond_0

    invoke-virtual {p0, p4}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->resolveLocalSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    monitor-exit p0

    return-object p2

    :cond_0
    :try_start_1
    iget-boolean p2, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->default_override:Z

    iget-object p3, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    invoke-virtual {p3}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object p3

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-interface {p3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryType()I

    move-result v3

    sget v4, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->OVERRIDE:I

    if-ne v3, v4, :cond_2

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "YES"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryType()I

    move-result v3

    sget v4, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->PUBLIC:I

    if-ne v3, v4, :cond_1

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p2, :cond_3

    if-nez p4, :cond_1

    :cond_3
    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_4
    :try_start_2
    iget-boolean p2, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->default_override:Z

    iget-object p3, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    invoke-virtual {p3}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object p3

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    :cond_5
    :goto_1
    invoke-interface {p3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {p3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;

    invoke-virtual {v3}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryType()I

    move-result v4

    sget v5, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->OVERRIDE:I

    if-ne v4, v5, :cond_6

    invoke-virtual {v3, v2}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object p2

    const-string v3, "YES"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    goto :goto_1

    :cond_6
    invoke-virtual {v3}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryType()I

    move-result v4

    sget v5, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->DELEGATE_PUBLIC:I

    if-ne v4, v5, :cond_5

    if-nez p2, :cond_7

    if-nez p4, :cond_5

    :cond_7
    invoke-virtual {v3, v2}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-gt v5, v6, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3, v1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    :cond_8
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p2

    const/4 p3, 0x0

    if-lez p2, :cond_b

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object p2

    iget-object p4, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object p4, p4, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    invoke-virtual {p4}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->getDebug()I

    move-result p4

    if-le p4, v1, :cond_9

    iget-object p4, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object p4, p4, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const-string v1, "Switching to delegated catalog(s):"

    const/4 v2, 0x2

    invoke-virtual {p4, v2, v1}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    :goto_2
    invoke-interface {p2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p4

    if-eqz p4, :cond_9

    invoke-interface {p2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object v1, v1, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, v2, p4}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_2

    :cond_9
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->newCatalog()Lcom/sun/org/apache/xml/internal/resolver/Catalog;

    move-result-object p2

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object p4

    :goto_3
    invoke-interface {p4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->parseCatalog(Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    invoke-virtual {p2, p1, p3}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->resolvePublic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_b
    monitor-exit p0

    return-object p3

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public resolveLocalSystem(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Windows"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;

    invoke-virtual {v4}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryType()I

    move-result v5

    sget v6, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->SYSTEM:I

    if-ne v5, v6, :cond_1

    invoke-virtual {v4, v2}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {v4, v2}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_2
    invoke-virtual {v4, v1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    const/4 v3, 0x0

    move-object v4, v3

    move-object v5, v4

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;

    invoke-virtual {v6}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryType()I

    move-result v7

    sget v8, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->REWRITE_SYSTEM:I

    if-ne v7, v8, :cond_4

    invoke-virtual {v6, v2}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-gt v8, v9, :cond_4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p1, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    if-eqz v5, :cond_5

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-le v8, v9, :cond_4

    :cond_5
    invoke-virtual {v6, v1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v4

    move-object v5, v7

    goto :goto_1

    :cond_6
    if-eqz v4, :cond_7

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    move-object v4, v3

    move-object v5, v4

    :cond_8
    :goto_2
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;

    invoke-virtual {v6}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryType()I

    move-result v7

    sget v8, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->SYSTEM_SUFFIX:I

    if-ne v7, v8, :cond_8

    invoke-virtual {v6, v2}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-gt v8, v9, :cond_8

    invoke-virtual {p1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    if-eqz v5, :cond_9

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-le v8, v9, :cond_8

    :cond_9
    invoke-virtual {v6, v1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v4

    move-object v5, v7

    goto :goto_2

    :cond_a
    if-eqz v4, :cond_b

    return-object v4

    :cond_b
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    :cond_c
    :goto_3
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;

    invoke-virtual {v5}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryType()I

    move-result v6

    sget v7, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->DELEGATE_SYSTEM:I

    if-ne v6, v7, :cond_c

    invoke-virtual {v5, v2}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-gt v7, v8, :cond_c

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p1, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {v5, v1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_3

    :cond_d
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_10

    invoke-virtual {v4}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object v2, v2, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    invoke-virtual {v2}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->getDebug()I

    move-result v2

    if-le v2, v1, :cond_e

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object v1, v1, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const-string v2, "Switching to delegated catalog(s):"

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    :goto_4
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object v2, v2, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_4

    :cond_e
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->newCatalog()Lcom/sun/org/apache/xml/internal/resolver/Catalog;

    move-result-object p0

    invoke-virtual {v4}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->parseCatalog(Ljava/lang/String;)V

    goto :goto_5

    :cond_f
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->resolveSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_10
    return-object v3
.end method

.method public resolveLocalURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryType()I

    move-result v4

    sget v5, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->URI:I

    if-ne v4, v5, :cond_0

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    const/4 v1, 0x0

    move-object v4, v1

    move-object v5, v4

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;

    invoke-virtual {v6}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryType()I

    move-result v7

    sget v8, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->REWRITE_URI:I

    if-ne v7, v8, :cond_2

    invoke-virtual {v6, v3}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-gt v8, v9, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p1, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    if-eqz v5, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-le v8, v9, :cond_2

    :cond_3
    invoke-virtual {v6, v2}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v4

    move-object v5, v7

    goto :goto_0

    :cond_4
    if-eqz v4, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    move-object v4, v1

    move-object v5, v4

    :cond_6
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;

    invoke-virtual {v6}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryType()I

    move-result v7

    sget v8, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->URI_SUFFIX:I

    if-ne v7, v8, :cond_6

    invoke-virtual {v6, v3}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-gt v8, v9, :cond_6

    invoke-virtual {p1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    if-eqz v5, :cond_7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-le v8, v9, :cond_6

    :cond_7
    invoke-virtual {v6, v2}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v4

    move-object v5, v7

    goto :goto_1

    :cond_8
    if-eqz v4, :cond_9

    return-object v4

    :cond_9
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    :cond_a
    :goto_2
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;

    invoke-virtual {v5}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryType()I

    move-result v6

    sget v7, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->DELEGATE_URI:I

    if-ne v6, v7, :cond_a

    invoke-virtual {v5, v3}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-gt v7, v8, :cond_a

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p1, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v5, v2}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2

    :cond_b
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_e

    invoke-virtual {v4}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object v1, v1, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->getDebug()I

    move-result v1

    if-le v1, v2, :cond_c

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object v1, v1, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const-string v2, "Switching to delegated catalog(s):"

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    :goto_3
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object v2, v2, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_3

    :cond_c
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->newCatalog()Lcom/sun/org/apache/xml/internal/resolver/Catalog;

    move-result-object p0

    invoke-virtual {v4}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->parseCatalog(Ljava/lang/String;)V

    goto :goto_4

    :cond_d
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->resolveURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_e
    return-object v1
.end method

.method public resolveNotation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolveNotation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "urn:publicid:"

    if-eqz p2, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Lcom/sun/org/apache/xml/internal/resolver/helpers/PublicId;->decodeURN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    const/4 v1, 0x1

    if-eqz p3, :cond_2

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p3}, Lcom/sun/org/apache/xml/internal/resolver/helpers/PublicId;->decodeURN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object p3, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object p3, p3, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const-string v2, "urn:publicid: system identifier differs from public identifier; using public identifier"

    invoke-virtual {p3, v1, v2}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object p2, p3

    :goto_0
    move-object p3, v0

    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p0, p3}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->resolveLocalSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    if-eqz p2, :cond_4

    sget v0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->NOTATION:I

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->resolveLocalPublic(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    return-object v0

    :cond_4
    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->default_override:Z

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;

    invoke-virtual {v3}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryType()I

    move-result v4

    sget v5, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->OVERRIDE:I

    const/4 v6, 0x0

    if-ne v4, v5, :cond_6

    invoke-virtual {v3, v6}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "YES"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    :cond_6
    invoke-virtual {v3}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryType()I

    move-result v4

    sget v5, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->NOTATION:I

    if-ne v4, v5, :cond_5

    invoke-virtual {v3, v6}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-nez v0, :cond_7

    if-nez p3, :cond_5

    :cond_7
    invoke-virtual {v3, v1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    sget v0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->NOTATION:I

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->resolveSubordinateCatalogs(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public resolvePublic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolvePublic("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "urn:publicid:"

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/sun/org/apache/xml/internal/resolver/helpers/PublicId;->decodeURN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/4 v1, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2}, Lcom/sun/org/apache/xml/internal/resolver/helpers/PublicId;->decodeURN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object p2, p2, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const/4 v0, 0x1

    const-string v2, "urn:publicid: system identifier differs from public identifier; using public identifier"

    invoke-virtual {p2, v0, v2}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object p1, p2

    :goto_0
    move-object p2, v1

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->resolveLocalSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    sget v0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->PUBLIC:I

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->resolveLocalPublic(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    return-object v2

    :cond_4
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->resolveSubordinateCatalogs(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized resolveSubordinateCatalogs(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogs:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-ge v0, v1, :cond_8

    :try_start_1
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogs:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xml/internal/resolver/Catalog;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    :try_start_2
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogs:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->newCatalog()Lcom/sun/org/apache/xml/internal/resolver/Catalog;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v4, 0x1

    :try_start_3
    invoke-virtual {v3, v1}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->parseCatalog(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    :try_start_4
    iget-object v5, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object v5, v5, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const-string v6, "Failed to load catalog, I/O error"

    invoke-virtual {v5, v4, v6, v1}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    iget-object v5, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object v5, v5, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const-string v6, "Failed to load catalog, file not found"

    invoke-virtual {v5, v4, v6, v1}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_3
    iget-object v5, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object v5, v5, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const-string v6, "Malformed Catalog URL"

    invoke-virtual {v5, v4, v6, v1}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogs:Ljava/util/Vector;

    invoke-virtual {v1, v3, v0}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    move-object v1, v3

    :goto_2
    sget v3, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->DOCTYPE:I

    if-ne p1, v3, :cond_0

    invoke-virtual {v1, p2, p3, p4}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->resolveDoctype(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_0
    sget v3, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->DOCUMENT:I

    if-ne p1, v3, :cond_1

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->resolveDocument()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_1
    sget v3, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->ENTITY:I

    if-ne p1, v3, :cond_2

    invoke-virtual {v1, p2, p3, p4}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->resolveEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_2
    sget v3, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->NOTATION:I

    if-ne p1, v3, :cond_3

    invoke-virtual {v1, p2, p3, p4}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->resolveNotation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_3
    sget v3, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->PUBLIC:I

    if-ne p1, v3, :cond_4

    invoke-virtual {v1, p3, p4}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->resolvePublic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_4
    sget v3, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->SYSTEM:I

    if-ne p1, v3, :cond_5

    invoke-virtual {v1, p4}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->resolveSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_5
    sget v3, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->URI:I

    if-ne p1, v3, :cond_6

    invoke-virtual {v1, p4}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->resolveURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_6
    :goto_3
    if-eqz v2, :cond_7

    monitor-exit p0

    return-object v2

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_8
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public resolveSystem(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolveSystem("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "urn:publicid:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/sun/org/apache/xml/internal/resolver/helpers/PublicId;->decodeURN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->resolvePublic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->resolveLocalSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    sget v1, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->SYSTEM:I

    invoke-virtual {p0, v1, v0, v0, p1}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->resolveSubordinateCatalogs(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public resolveURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolveURI("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "urn:publicid:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/sun/org/apache/xml/internal/resolver/helpers/PublicId;->decodeURN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->resolvePublic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->resolveLocalURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    sget v1, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->URI:I

    invoke-virtual {p0, v1, v0, v0, p1}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->resolveSubordinateCatalogs(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setCatalogManager(Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    return-void
.end method

.method public setupReaders()V
    .locals 4

    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/SAXParserFactory;->setValidating(Z)V

    new-instance v1, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;

    invoke-direct {v1, v0}, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;-><init>(Ljavax/xml/parsers/SAXParserFactory;)V

    const-string v0, "XMLCatalog"

    const-string v2, "com.sun.org.apache.xml.internal.resolver.readers.XCatalogReader"

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0, v2}, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->setCatalogParser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "catalog"

    const-string v2, "com.sun.org.apache.xml.internal.resolver.readers.OASISXMLCatalogReader"

    const-string v3, "urn:oasis:names:tc:entity:xmlns:xml:catalog"

    invoke-virtual {v1, v3, v0, v2}, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->setCatalogParser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/xml"

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->addReader(Ljava/lang/String;Lcom/sun/org/apache/xml/internal/resolver/readers/CatalogReader;)V

    new-instance v0, Lcom/sun/org/apache/xml/internal/resolver/readers/TR9401CatalogReader;

    invoke-direct {v0}, Lcom/sun/org/apache/xml/internal/resolver/readers/TR9401CatalogReader;-><init>()V

    const-string v1, "text/plain"

    invoke-virtual {p0, v1, v0}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->addReader(Ljava/lang/String;Lcom/sun/org/apache/xml/internal/resolver/readers/CatalogReader;)V

    return-void
.end method

.method public unknownEntry(Ljava/util/Vector;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const/4 v0, 0x2

    const-string v1, "Unrecognized token parsing catalog"

    invoke-virtual {p0, v0, v1, p1}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
