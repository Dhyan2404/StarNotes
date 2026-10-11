.class public Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;
.super Lorg/apache/xmlbeans/BindingConfig;
.source "SourceFile"


# instance fields
.field private final _classpath:[Ljava/io/File;

.field private final _interfaceExtensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final _javaFiles:[Ljava/io/File;

.field private final _packageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final _packageMapByUriPrefix:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _parser:Lorg/apache/xmlbeans/impl/config/Parser;

.field private final _prePostExtensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final _prefixMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final _prefixMapByUriPrefix:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final _qnameAttMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final _qnameDocTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final _qnameElemMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final _qnameTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final _suffixMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final _suffixMapByUriPrefix:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final _userTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Lorg/apache/xmlbeans/impl/config/UserTypeImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>([Lorg/apache/xmlbeans/impl/xb/xmlconfig/ConfigDocument$Config;[Ljava/io/File;[Ljava/io/File;)V
    .locals 10

    invoke-direct {p0}, Lorg/apache/xmlbeans/BindingConfig;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->_packageMap:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->_prefixMap:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->_suffixMap:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->_packageMapByUriPrefix:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->_prefixMapByUriPrefix:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->_suffixMapByUriPrefix:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->_qnameTypeMap:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->_qnameDocTypeMap:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->_qnameElemMap:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->_qnameAttMap:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->_interfaceExtensions:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->_prePostExtensions:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->_userTypes:Ljava/util/Map;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, [Ljava/io/File;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/io/File;

    goto :goto_0

    :cond_0
    new-array p2, v0, [Ljava/io/File;

    :goto_0
    iput-object p2, p0, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->_javaFiles:[Ljava/io/File;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, [Ljava/io/File;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/io/File;

    goto :goto_1

    :cond_1
    new-array p2, v0, [Ljava/io/File;

    :goto_1
    iput-object p2, p0, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->_classpath:[Ljava/io/File;

    array-length p2, p1

    move p3, v0

    :goto_2
    if-ge p3, p2, :cond_b

    aget-object v1, p1, p3

    invoke-interface {v1}, Lorg/apache/xmlbeans/impl/xb/xmlconfig/ConfigDocument$Config;->getNamespaceArray()[Lorg/apache/xmlbeans/impl/xb/xmlconfig/Nsconfig;

    move-result-object v2

    array-length v3, v2

    move v4, v0

    :goto_3
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    invoke-interface {v5}, Lorg/apache/xmlbeans/impl/xb/xmlconfig/Nsconfig;->getUri()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5}, Lorg/apache/xmlbeans/impl/xb/xmlconfig/Nsconfig;->getPackage()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->_packageMap:Ljava/util/Map;

    invoke-static {v6, v7, v8}, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->recordNamespaceSetting(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v5}, Lorg/apache/xmlbeans/impl/xb/xmlconfig/Nsconfig;->getUri()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5}, Lorg/apache/xmlbeans/impl/xb/xmlconfig/Nsconfig;->getPrefix()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->_prefixMap:Ljava/util/Map;

    invoke-static {v6, v7, v8}, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->recordNamespaceSetting(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v5}, Lorg/apache/xmlbeans/impl/xb/xmlconfig/Nsconfig;->getUri()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5}, Lorg/apache/xmlbeans/impl/xb/xmlconfig/Nsconfig;->getSuffix()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->_suffixMap:Ljava/util/Map;

    invoke-static {v6, v7, v8}, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->recordNamespaceSetting(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v5}, Lorg/apache/xmlbeans/impl/xb/xmlconfig/Nsconfig;->getUriprefix()Ljava/util/List;

    move-result-object v6

    invoke-interface {v5}, Lorg/apache/xmlbeans/impl/xb/xmlconfig/Nsconfig;->getPackage()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->_packageMapByUriPrefix:Ljava/util/Map;

    invoke-static {v6, v7, v8}, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->recordNamespacePrefixSetting(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v5}, Lorg/apache/xmlbeans/impl/xb/xmlconfig/Nsconfig;->getUriprefix()Ljava/util/List;

    move-result-object v6

    invoke-interface {v5}, Lorg/apache/xmlbeans/impl/xb/xmlconfig/Nsconfig;->getPrefix()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->_prefixMapByUriPrefix:Ljava/util/Map;

    invoke-static {v6, v7, v8}, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->recordNamespacePrefixSetting(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v5}, Lorg/apache/xmlbeans/impl/xb/xmlconfig/Nsconfig;->getUriprefix()Ljava/util/List;

    move-result-object v6

    invoke-interface {v5}, Lorg/apache/xmlbeans/impl/xb/xmlconfig/Nsconfig;->getSuffix()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->_suffixMapByUriPrefix:Ljava/util/Map;

    invoke-static {v6, v5, v7}, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->recordNamespacePrefixSetting(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_2
    invoke-interface {v1}, Lorg/apache/xmlbeans/impl/xb/xmlconfig/ConfigDocument$Config;->getQnameArray()[Lorg/apache/xmlbeans/impl/xb/xmlconfig/Qnameconfig;

    move-result-object v2

    array-length v3, v2

    move v4, v0

    :goto_4
    if-ge v4, v3, :cond_8

    aget-object v5, v2, v4

    invoke-interface {v5}, Lorg/apache/xmlbeans/impl/xb/xmlconfig/Qnameconfig;->xgetTarget()Lorg/apache/xmlbeans/impl/xb/xmlconfig/Qnametargetlist;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/xmlbeans/impl/xb/xmlconfig/Qnametargetlist;->xgetListValue()Ljava/util/List;

    move-result-object v6

    invoke-interface {v5}, Lorg/apache/xmlbeans/impl/xb/xmlconfig/Qnameconfig;->getName()Ljavax/xml/namespace/QName;

    move-result-object v7

    invoke-interface {v5}, Lorg/apache/xmlbeans/impl/xb/xmlconfig/Qnameconfig;->getJavaname()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/xmlbeans/impl/xb/xmlconfig/Qnametargetenum;

    invoke-interface {v8}, Lorg/apache/xmlbeans/impl/xb/xmlconfig/Qnametargetenum;->getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_6

    const/4 v9, 0x2

    if-eq v8, v9, :cond_5

    const/4 v9, 0x3

    if-eq v8, v9, :cond_4

    const/4 v9, 0x4

    if-eq v8, v9, :cond_3

    goto :goto_5

    :cond_3
    iget-object v8, p0, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->_qnameAttMap:Ljava/util/Map;

    invoke-interface {v8, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_4
    iget-object v8, p0, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->_qnameElemMap:Ljava/util/Map;

    invoke-interface {v8, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_5
    iget-object v8, p0, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->_qnameDocTypeMap:Ljava/util/Map;

    invoke-interface {v8, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_6
    iget-object v8, p0, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->_qnameTypeMap:Ljava/util/Map;

    invoke-interface {v8, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_8
    invoke-interface {v1}, Lorg/apache/xmlbeans/impl/xb/xmlconfig/ConfigDocument$Config;->getExtensionArray()[Lorg/apache/xmlbeans/impl/xb/xmlconfig/Extensionconfig;

    move-result-object v2

    array-length v3, v2

    move v4, v0

    :goto_6
    if-ge v4, v3, :cond_9

    aget-object v5, v2, v4

    invoke-direct {p0, v5}, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->recordExtensionSetting(Lorg/apache/xmlbeans/impl/xb/xmlconfig/Extensionconfig;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_9
    invoke-interface {v1}, Lorg/apache/xmlbeans/impl/xb/xmlconfig/ConfigDocument$Config;->getUsertypeArray()[Lorg/apache/xmlbeans/impl/xb/xmlconfig/Usertypeconfig;

    move-result-object v1

    array-length v2, v1

    move v3, v0

    :goto_7
    if-ge v3, v2, :cond_a

    aget-object v4, v1, v3

    invoke-direct {p0, v4}, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->recordUserTypeSetting(Lorg/apache/xmlbeans/impl/xb/xmlconfig/Usertypeconfig;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_a
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_2

    :cond_b
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->secondPhaseValidation()V

    return-void
.end method

.method public static synthetic a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->lambda$recordNamespaceSetting$0(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/String;Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->lambda$getInterfaceExtensions$2(Ljava/lang/String;Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(I)[Lorg/apache/xmlbeans/InterfaceExtension;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->lambda$getInterfaceExtensions$3(I)[Lorg/apache/xmlbeans/InterfaceExtension;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ljava/lang/String;Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->lambda$getPrePostExtension$4(Ljava/lang/String;Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->lambda$recordNamespacePrefixSetting$1(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static error(Ljava/lang/String;Lorg/apache/xmlbeans/XmlObject;)V
    .locals 2

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;ILorg/apache/xmlbeans/XmlObject;)V

    return-void
.end method

.method public static forConfigDocuments([Lorg/apache/xmlbeans/impl/xb/xmlconfig/ConfigDocument$Config;[Ljava/io/File;[Ljava/io/File;)Lorg/apache/xmlbeans/BindingConfig;
    .locals 1

    new-instance v0, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;-><init>([Lorg/apache/xmlbeans/impl/xb/xmlconfig/ConfigDocument$Config;[Ljava/io/File;[Ljava/io/File;)V

    return-object v0
.end method

.method private static synthetic lambda$getInterfaceExtensions$2(Ljava/lang/String;Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl;)Z
    .locals 0

    invoke-virtual {p1, p0}, Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl;->contains(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getInterfaceExtensions$3(I)[Lorg/apache/xmlbeans/InterfaceExtension;
    .locals 0

    new-array p0, p0, [Lorg/apache/xmlbeans/InterfaceExtension;

    return-object p0
.end method

.method private static synthetic lambda$getPrePostExtension$4(Ljava/lang/String;Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;)Z
    .locals 0

    invoke-virtual {p1, p0}, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;->contains(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$recordNamespacePrefixSetting$1(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-void
.end method

.method private static synthetic lambda$recordNamespaceSetting$0(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "##local"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, ""

    :cond_0
    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-void
.end method

.method private lookup(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p3, :cond_0

    const-string p3, ""

    :cond_0
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    if-eqz p2, :cond_2

    invoke-direct {p0, p2, p3}, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->lookupByUriPrefix(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    return-object p0

    :cond_2
    const-string p0, "##any"

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private lookupByUriPrefix(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 p0, 0x0

    if-nez p2, :cond_0

    return-object p0

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v1, p0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1

    check-cast v2, Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :cond_4
    return-object p0
.end method

.method private parserInstance()Lorg/apache/xmlbeans/impl/config/Parser;
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->_parser:Lorg/apache/xmlbeans/impl/config/Parser;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/xmlbeans/impl/config/Parser;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->_javaFiles:[Ljava/io/File;

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->_classpath:[Ljava/io/File;

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/config/Parser;-><init>([Ljava/io/File;[Ljava/io/File;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->_parser:Lorg/apache/xmlbeans/impl/config/Parser;

    :cond_0
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->_parser:Lorg/apache/xmlbeans/impl/config/Parser;

    return-object p0
.end method

.method private recordExtensionSetting(Lorg/apache/xmlbeans/impl/xb/xmlconfig/Extensionconfig;)V
    .locals 6

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/xb/xmlconfig/Extensionconfig;->getFor()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "*"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/apache/xmlbeans/impl/config/NameSet;->EVERYTHING:Lorg/apache/xmlbeans/impl/config/NameSet;

    goto :goto_1

    :cond_0
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_2

    new-instance v1, Lorg/apache/xmlbeans/impl/config/NameSetBuilder;

    invoke-direct {v1}, Lorg/apache/xmlbeans/impl/config/NameSetBuilder;-><init>()V

    move-object v2, v0

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/apache/xmlbeans/impl/config/NameSetBuilder;->add(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/config/NameSetBuilder;->toNameSet()Lorg/apache/xmlbeans/impl/config/NameSet;

    move-result-object v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid value of attribute \'for\' : \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\'."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->error(Ljava/lang/String;Lorg/apache/xmlbeans/XmlObject;)V

    :cond_3
    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/xb/xmlconfig/Extensionconfig;->getInterfaceArray()[Lorg/apache/xmlbeans/impl/xb/xmlconfig/Extensionconfig$Interface;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/xb/xmlconfig/Extensionconfig;->getPrePostSet()Lorg/apache/xmlbeans/impl/xb/xmlconfig/Extensionconfig$PrePostSet;

    move-result-object p1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->parserInstance()Lorg/apache/xmlbeans/impl/config/Parser;

    move-result-object v2

    array-length v3, v0

    if-gtz v3, :cond_4

    if-eqz p1, :cond_6

    :cond_4
    array-length v3, v0

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_5

    aget-object v5, v0, v4

    invoke-static {v2, v1, v5}, Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl;->newInstance(Lorg/apache/xmlbeans/impl/config/Parser;Lorg/apache/xmlbeans/impl/config/NameSet;Lorg/apache/xmlbeans/impl/xb/xmlconfig/Extensionconfig$Interface;)Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->addInterfaceExtension(Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    invoke-static {v2, v1, p1}, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;->newInstance(Lorg/apache/xmlbeans/impl/config/Parser;Lorg/apache/xmlbeans/impl/config/NameSet;Lorg/apache/xmlbeans/impl/xb/xmlconfig/Extensionconfig$PrePostSet;)Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->addPrePostExtension(Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;)V

    :cond_6
    return-void
.end method

.method private static recordNamespacePrefixSetting(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/sunia/HTREnginev2/mr;

    invoke-direct {v0, p2, p1}, Lcom/sunia/HTREnginev2/mr;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static recordNamespaceSetting(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p0, :cond_1

    const-string p0, ""

    invoke-interface {p2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "##any"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_3

    check-cast p0, Ljava/util/List;

    new-instance v0, Lcom/sunia/HTREnginev2/kr;

    invoke-direct {v0, p2, p1}, Lcom/sunia/HTREnginev2/kr;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private recordUserTypeSetting(Lorg/apache/xmlbeans/impl/xb/xmlconfig/Usertypeconfig;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->parserInstance()Lorg/apache/xmlbeans/impl/config/Parser;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/xmlbeans/impl/config/UserTypeImpl;->newInstance(Lorg/apache/xmlbeans/impl/config/Parser;Lorg/apache/xmlbeans/impl/xb/xmlconfig/Usertypeconfig;)Lorg/apache/xmlbeans/impl/config/UserTypeImpl;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->_userTypes:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/config/UserTypeImpl;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static warning(Ljava/lang/String;Lorg/apache/xmlbeans/XmlObject;)V
    .locals 2

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;ILorg/apache/xmlbeans/XmlObject;)V

    return-void
.end method


# virtual methods
.method public addInterfaceExtension(Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->_interfaceExtensions:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addPrePostExtension(Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->_prePostExtensions:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getInterfaceExtensions()[Lorg/apache/xmlbeans/InterfaceExtension;
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->_interfaceExtensions:Ljava/util/List;

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/xmlbeans/InterfaceExtension;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/xmlbeans/InterfaceExtension;

    return-object p0
.end method

.method public getInterfaceExtensions(Ljava/lang/String;)[Lorg/apache/xmlbeans/InterfaceExtension;
    .locals 1

    .line 2
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->_interfaceExtensions:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/ir;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/ir;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sunia/HTREnginev2/jr;

    invoke-direct {p1}, Lcom/sunia/HTREnginev2/jr;-><init>()V

    .line 4
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/xmlbeans/InterfaceExtension;

    return-object p0
.end method

.method public getPrePostExtension(Ljava/lang/String;)Lorg/apache/xmlbeans/PrePostExtension;
    .locals 1

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->_prePostExtensions:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/lr;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/lr;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/PrePostExtension;

    return-object p0
.end method

.method public getPrePostExtensions()[Lorg/apache/xmlbeans/PrePostExtension;
    .locals 1

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->_prePostExtensions:Ljava/util/List;

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/xmlbeans/PrePostExtension;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/xmlbeans/PrePostExtension;

    return-object p0
.end method

.method public getUserTypes()[Lorg/apache/xmlbeans/UserType;
    .locals 1

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->_userTypes:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/xmlbeans/UserType;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/xmlbeans/UserType;

    return-object p0
.end method

.method public lookupJavanameForQName(Ljavax/xml/namespace/QName;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->_qnameTypeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->_qnameDocTypeMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public lookupJavanameForQName(Ljavax/xml/namespace/QName;I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->_qnameAttMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 4
    :cond_1
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->_qnameElemMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 5
    :cond_2
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->_qnameDocTypeMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 6
    :cond_3
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->_qnameTypeMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public lookupPackageForNamespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->_packageMap:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->_packageMapByUriPrefix:Ljava/util/Map;

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->lookup(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public lookupPrefixForNamespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->_prefixMap:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->_prefixMapByUriPrefix:Ljava/util/Map;

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->lookup(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public lookupSuffixForNamespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->_suffixMap:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->_suffixMapByUriPrefix:Ljava/util/Map;

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->lookup(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public lookupUserTypeForQName(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/UserType;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->_userTypes:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/UserType;

    :goto_0
    return-object p0
.end method

.method public secondPhaseValidation()V
    .locals 8

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->_interfaceExtensions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl;->getMethods()[Lorg/apache/xmlbeans/InterfaceExtension$MethodSignature;

    move-result-object v2

    check-cast v2, [Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl$MethodSignatureImpl;

    array-length v5, v2

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v6, v2, v4

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl$MethodSignatureImpl;

    invoke-virtual {v6}, Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl$MethodSignatureImpl;->getReturnType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl$MethodSignatureImpl;->getReturnType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Colliding methods \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl$MethodSignatureImpl;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' in interfaces "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl$MethodSignatureImpl;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl$MethodSignatureImpl;->getInterfaceName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->error(Ljava/lang/String;Lorg/apache/xmlbeans/XmlObject;)V

    :cond_1
    return-void

    :cond_2
    invoke-interface {v0, v6, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->_prePostExtensions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge v4, v0, :cond_6

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->_prePostExtensions:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;

    :goto_2
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->_prePostExtensions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->_prePostExtensions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;

    invoke-virtual {v0, v2}, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;->hasNameSetIntersection(Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;)Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The applicable domain for handler \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;->getHandlerNameForJavaSource()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\' intersects with the one for \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;->getHandlerNameForJavaSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'."

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->error(Ljava/lang/String;Lorg/apache/xmlbeans/XmlObject;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method
