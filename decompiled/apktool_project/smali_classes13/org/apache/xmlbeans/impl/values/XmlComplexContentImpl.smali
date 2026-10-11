.class public Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;
.super Lorg/apache/xmlbeans/impl/values/XmlObjectBase;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final _schemaType:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/SchemaType;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;-><init>()V

    check-cast p1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->_schemaType:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->initComplexType(ZZ)V

    return-void
.end method

.method public static synthetic a([Lorg/apache/xmlbeans/SimpleValue;Lorg/apache/xmlbeans/impl/values/XmlObjectBase;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->lambda$arraySetterHelper$1([Lorg/apache/xmlbeans/SimpleValue;Lorg/apache/xmlbeans/impl/values/XmlObjectBase;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic b([FLorg/apache/xmlbeans/impl/values/XmlObjectBase;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->lambda$arraySetterHelper$3([FLorg/apache/xmlbeans/impl/values/XmlObjectBase;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic c([FLorg/apache/xmlbeans/impl/values/XmlObjectBase;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->lambda$arraySetterHelper$10([FLorg/apache/xmlbeans/impl/values/XmlObjectBase;Ljava/lang/Integer;)V

    return-void
.end method

.method private commonSetterHelper(Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;ILjava/util/function/BiConsumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/xml/namespace/QName;",
            "Lorg/apache/xmlbeans/QNameSet;",
            "I",
            "Ljava/util/function/BiConsumer<",
            "Lorg/apache/xmlbeans/impl/values/XmlObjectBase;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    if-nez p2, :cond_0

    .line 3
    invoke-interface {p0, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Ljavax/xml/namespace/QName;)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/xmlbeans/QNameSet;)I

    move-result v0

    :goto_0
    if-le v0, p3, :cond_2

    if-nez p2, :cond_1

    add-int/lit8 v1, v0, -0x1

    .line 4
    invoke-interface {p0, p1, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Ljavax/xml/namespace/QName;I)V

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v0, -0x1

    .line 5
    invoke-interface {p0, p2, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Lorg/apache/xmlbeans/QNameSet;I)V

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-ge v1, p3, :cond_5

    if-lt v1, v0, :cond_3

    .line 6
    invoke-interface {p0, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    goto :goto_3

    :cond_3
    if-nez p2, :cond_4

    .line 7
    invoke-interface {p0, p1, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Ljavax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    goto :goto_3

    .line 8
    :cond_4
    invoke-interface {p0, p2, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/xmlbeans/QNameSet;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    .line 9
    :goto_3
    check-cast v2, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p4, v2, v3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method private commonSetterHelper(Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;[Ljava/lang/Object;Ljava/util/function/BiConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/xml/namespace/QName;",
            "Lorg/apache/xmlbeans/QNameSet;",
            "[TT;",
            "Ljava/util/function/BiConsumer<",
            "Lorg/apache/xmlbeans/impl/values/XmlObjectBase;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    .line 1
    :cond_0
    array-length p3, p3

    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->commonSetterHelper(Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;ILjava/util/function/BiConsumer;)V

    return-void
.end method

.method private commonSetterHelper2(Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;[Ljava/lang/Object;Ljava/util/function/BiConsumer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/xml/namespace/QName;",
            "Lorg/apache/xmlbeans/QNameSet;",
            "[TT;",
            "Ljava/util/function/BiConsumer<",
            "Lorg/apache/xmlbeans/impl/values/XmlObjectBase;",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p3

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    if-nez p2, :cond_1

    invoke-interface {p0, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Ljavax/xml/namespace/QName;)I

    move-result v2

    goto :goto_1

    :cond_1
    invoke-interface {p0, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/xmlbeans/QNameSet;)I

    move-result v2

    :goto_1
    if-le v2, v1, :cond_3

    if-nez p2, :cond_2

    add-int/lit8 v3, v2, -0x1

    invoke-interface {p0, p1, v3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Ljavax/xml/namespace/QName;I)V

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v2, -0x1

    invoke-interface {p0, p2, v3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Lorg/apache/xmlbeans/QNameSet;I)V

    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_3
    :goto_3
    if-ge v0, v1, :cond_6

    if-lt v0, v2, :cond_4

    invoke-interface {p0, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    goto :goto_4

    :cond_4
    if-nez p2, :cond_5

    invoke-interface {p0, p1, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Ljavax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    goto :goto_4

    :cond_5
    invoke-interface {p0, p2, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/xmlbeans/QNameSet;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    :goto_4
    check-cast v3, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-object v4, p3, v0

    invoke-interface {p4, v3, v4}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method public static synthetic d([ZLorg/apache/xmlbeans/impl/values/XmlObjectBase;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->lambda$arraySetterHelper$2([ZLorg/apache/xmlbeans/impl/values/XmlObjectBase;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic e([JLorg/apache/xmlbeans/impl/values/XmlObjectBase;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->lambda$arraySetterHelper$15([JLorg/apache/xmlbeans/impl/values/XmlObjectBase;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic f([ILorg/apache/xmlbeans/impl/values/XmlObjectBase;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->lambda$arraySetterHelper$7([ILorg/apache/xmlbeans/impl/values/XmlObjectBase;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic g([SLorg/apache/xmlbeans/impl/values/XmlObjectBase;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->lambda$arraySetterHelper$6([SLorg/apache/xmlbeans/impl/values/XmlObjectBase;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic h([ILorg/apache/xmlbeans/impl/values/XmlObjectBase;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->lambda$arraySetterHelper$14([ILorg/apache/xmlbeans/impl/values/XmlObjectBase;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic i([DLorg/apache/xmlbeans/impl/values/XmlObjectBase;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->lambda$arraySetterHelper$11([DLorg/apache/xmlbeans/impl/values/XmlObjectBase;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic j([DLorg/apache/xmlbeans/impl/values/XmlObjectBase;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->lambda$arraySetterHelper$4([DLorg/apache/xmlbeans/impl/values/XmlObjectBase;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic k([BLorg/apache/xmlbeans/impl/values/XmlObjectBase;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->lambda$arraySetterHelper$5([BLorg/apache/xmlbeans/impl/values/XmlObjectBase;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic l([Lorg/apache/xmlbeans/SimpleValue;Lorg/apache/xmlbeans/impl/values/XmlObjectBase;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->lambda$arraySetterHelper$0([Lorg/apache/xmlbeans/SimpleValue;Lorg/apache/xmlbeans/impl/values/XmlObjectBase;Ljava/lang/Integer;)V

    return-void
.end method

.method private static synthetic lambda$arraySetterHelper$0([Lorg/apache/xmlbeans/SimpleValue;Lorg/apache/xmlbeans/impl/values/XmlObjectBase;Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aput-object p1, p0, p2

    return-void
.end method

.method private static synthetic lambda$arraySetterHelper$1([Lorg/apache/xmlbeans/SimpleValue;Lorg/apache/xmlbeans/impl/values/XmlObjectBase;Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aput-object p1, p0, p2

    return-void
.end method

.method private static synthetic lambda$arraySetterHelper$10([FLorg/apache/xmlbeans/impl/values/XmlObjectBase;Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aget p0, p0, p2

    invoke-virtual {p1, p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setFloatValue(F)V

    return-void
.end method

.method private static synthetic lambda$arraySetterHelper$11([DLorg/apache/xmlbeans/impl/values/XmlObjectBase;Ljava/lang/Integer;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aget-wide v0, p0, p2

    invoke-virtual {p1, v0, v1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setDoubleValue(D)V

    return-void
.end method

.method private static synthetic lambda$arraySetterHelper$12([BLorg/apache/xmlbeans/impl/values/XmlObjectBase;Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aget-byte p0, p0, p2

    invoke-virtual {p1, p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setByteValue(B)V

    return-void
.end method

.method private static synthetic lambda$arraySetterHelper$13([SLorg/apache/xmlbeans/impl/values/XmlObjectBase;Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aget-short p0, p0, p2

    invoke-virtual {p1, p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setShortValue(S)V

    return-void
.end method

.method private static synthetic lambda$arraySetterHelper$14([ILorg/apache/xmlbeans/impl/values/XmlObjectBase;Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aget p0, p0, p2

    invoke-virtual {p1, p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setIntValue(I)V

    return-void
.end method

.method private static synthetic lambda$arraySetterHelper$15([JLorg/apache/xmlbeans/impl/values/XmlObjectBase;Ljava/lang/Integer;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aget-wide v0, p0, p2

    invoke-virtual {p1, v0, v1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setLongValue(J)V

    return-void
.end method

.method private static synthetic lambda$arraySetterHelper$2([ZLorg/apache/xmlbeans/impl/values/XmlObjectBase;Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aget-boolean p0, p0, p2

    invoke-virtual {p1, p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setBooleanValue(Z)V

    return-void
.end method

.method private static synthetic lambda$arraySetterHelper$3([FLorg/apache/xmlbeans/impl/values/XmlObjectBase;Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aget p0, p0, p2

    invoke-virtual {p1, p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setFloatValue(F)V

    return-void
.end method

.method private static synthetic lambda$arraySetterHelper$4([DLorg/apache/xmlbeans/impl/values/XmlObjectBase;Ljava/lang/Integer;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aget-wide v0, p0, p2

    invoke-virtual {p1, v0, v1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setDoubleValue(D)V

    return-void
.end method

.method private static synthetic lambda$arraySetterHelper$5([BLorg/apache/xmlbeans/impl/values/XmlObjectBase;Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aget-byte p0, p0, p2

    invoke-virtual {p1, p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setByteValue(B)V

    return-void
.end method

.method private static synthetic lambda$arraySetterHelper$6([SLorg/apache/xmlbeans/impl/values/XmlObjectBase;Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aget-short p0, p0, p2

    invoke-virtual {p1, p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setShortValue(S)V

    return-void
.end method

.method private static synthetic lambda$arraySetterHelper$7([ILorg/apache/xmlbeans/impl/values/XmlObjectBase;Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aget p0, p0, p2

    invoke-virtual {p1, p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setIntValue(I)V

    return-void
.end method

.method private static synthetic lambda$arraySetterHelper$8([JLorg/apache/xmlbeans/impl/values/XmlObjectBase;Ljava/lang/Integer;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aget-wide v0, p0, p2

    invoke-virtual {p1, v0, v1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setLongValue(J)V

    return-void
.end method

.method private static synthetic lambda$arraySetterHelper$9([ZLorg/apache/xmlbeans/impl/values/XmlObjectBase;Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aget-boolean p0, p0, p2

    invoke-virtual {p1, p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setBooleanValue(Z)V

    return-void
.end method

.method public static synthetic m([JLorg/apache/xmlbeans/impl/values/XmlObjectBase;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->lambda$arraySetterHelper$8([JLorg/apache/xmlbeans/impl/values/XmlObjectBase;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic n([SLorg/apache/xmlbeans/impl/values/XmlObjectBase;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->lambda$arraySetterHelper$13([SLorg/apache/xmlbeans/impl/values/XmlObjectBase;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic o([ZLorg/apache/xmlbeans/impl/values/XmlObjectBase;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->lambda$arraySetterHelper$9([ZLorg/apache/xmlbeans/impl/values/XmlObjectBase;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic p([BLorg/apache/xmlbeans/impl/values/XmlObjectBase;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->lambda$arraySetterHelper$12([BLorg/apache/xmlbeans/impl/values/XmlObjectBase;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public arraySetterHelper([BLjavax/xml/namespace/QName;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 8
    :cond_0
    array-length v0, p1

    :goto_0
    new-instance v1, Lcom/sunia/HTREnginev2/vvo;

    invoke-direct {v1, p1}, Lcom/sunia/HTREnginev2/vvo;-><init>([B)V

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1, v0, v1}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->commonSetterHelper(Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;ILjava/util/function/BiConsumer;)V

    return-void
.end method

.method public arraySetterHelper([BLjavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 26
    :cond_0
    array-length v0, p1

    :goto_0
    new-instance v1, Lcom/sunia/HTREnginev2/jwo;

    invoke-direct {v1, p1}, Lcom/sunia/HTREnginev2/jwo;-><init>([B)V

    invoke-direct {p0, p2, p3, v0, v1}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->commonSetterHelper(Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;ILjava/util/function/BiConsumer;)V

    return-void
.end method

.method public arraySetterHelper([DLjavax/xml/namespace/QName;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 7
    :cond_0
    array-length v0, p1

    :goto_0
    new-instance v1, Lcom/sunia/HTREnginev2/cwo;

    invoke-direct {v1, p1}, Lcom/sunia/HTREnginev2/cwo;-><init>([D)V

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1, v0, v1}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->commonSetterHelper(Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;ILjava/util/function/BiConsumer;)V

    return-void
.end method

.method public arraySetterHelper([DLjavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 25
    :cond_0
    array-length v0, p1

    :goto_0
    new-instance v1, Lcom/sunia/HTREnginev2/svo;

    invoke-direct {v1, p1}, Lcom/sunia/HTREnginev2/svo;-><init>([D)V

    invoke-direct {p0, p2, p3, v0, v1}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->commonSetterHelper(Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;ILjava/util/function/BiConsumer;)V

    return-void
.end method

.method public arraySetterHelper([FLjavax/xml/namespace/QName;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 6
    :cond_0
    array-length v0, p1

    :goto_0
    new-instance v1, Lcom/sunia/HTREnginev2/jvo;

    invoke-direct {v1, p1}, Lcom/sunia/HTREnginev2/jvo;-><init>([F)V

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1, v0, v1}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->commonSetterHelper(Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;ILjava/util/function/BiConsumer;)V

    return-void
.end method

.method public arraySetterHelper([FLjavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 24
    :cond_0
    array-length v0, p1

    :goto_0
    new-instance v1, Lcom/sunia/HTREnginev2/bwo;

    invoke-direct {v1, p1}, Lcom/sunia/HTREnginev2/bwo;-><init>([F)V

    invoke-direct {p0, p2, p3, v0, v1}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->commonSetterHelper(Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;ILjava/util/function/BiConsumer;)V

    return-void
.end method

.method public arraySetterHelper([ILjavax/xml/namespace/QName;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 10
    :cond_0
    array-length v0, p1

    :goto_0
    new-instance v1, Lcom/sunia/HTREnginev2/gwo;

    invoke-direct {v1, p1}, Lcom/sunia/HTREnginev2/gwo;-><init>([I)V

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1, v0, v1}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->commonSetterHelper(Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;ILjava/util/function/BiConsumer;)V

    return-void
.end method

.method public arraySetterHelper([ILjavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 28
    :cond_0
    array-length v0, p1

    :goto_0
    new-instance v1, Lcom/sunia/HTREnginev2/uvo;

    invoke-direct {v1, p1}, Lcom/sunia/HTREnginev2/uvo;-><init>([I)V

    invoke-direct {p0, p2, p3, v0, v1}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->commonSetterHelper(Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;ILjava/util/function/BiConsumer;)V

    return-void
.end method

.method public arraySetterHelper([JLjavax/xml/namespace/QName;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 11
    :cond_0
    array-length v0, p1

    :goto_0
    new-instance v1, Lcom/sunia/HTREnginev2/hwo;

    invoke-direct {v1, p1}, Lcom/sunia/HTREnginev2/hwo;-><init>([J)V

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1, v0, v1}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->commonSetterHelper(Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;ILjava/util/function/BiConsumer;)V

    return-void
.end method

.method public arraySetterHelper([JLjavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 29
    :cond_0
    array-length v0, p1

    :goto_0
    new-instance v1, Lcom/sunia/HTREnginev2/iwo;

    invoke-direct {v1, p1}, Lcom/sunia/HTREnginev2/iwo;-><init>([J)V

    invoke-direct {p0, p2, p3, v0, v1}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->commonSetterHelper(Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;ILjava/util/function/BiConsumer;)V

    return-void
.end method

.method public arraySetterHelper([Ljava/lang/String;Ljavax/xml/namespace/QName;)V
    .locals 2

    .line 14
    new-instance v0, Lcom/sunia/HTREnginev2/nvo;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/nvo;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p2, v1, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->commonSetterHelper2(Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;[Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public arraySetterHelper([Ljava/lang/String;Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;)V
    .locals 1

    .line 32
    new-instance v0, Lcom/sunia/HTREnginev2/nvo;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/nvo;-><init>()V

    invoke-direct {p0, p2, p3, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->commonSetterHelper2(Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;[Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public arraySetterHelper([Ljava/math/BigDecimal;Ljavax/xml/namespace/QName;)V
    .locals 2

    .line 12
    new-instance v0, Lcom/sunia/HTREnginev2/yvo;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/yvo;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p2, v1, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->commonSetterHelper2(Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;[Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public arraySetterHelper([Ljava/math/BigDecimal;Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;)V
    .locals 1

    .line 30
    new-instance v0, Lcom/sunia/HTREnginev2/yvo;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/yvo;-><init>()V

    invoke-direct {p0, p2, p3, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->commonSetterHelper2(Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;[Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public arraySetterHelper([Ljava/math/BigInteger;Ljavax/xml/namespace/QName;)V
    .locals 2

    .line 13
    new-instance v0, Lcom/sunia/HTREnginev2/lvo;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/lvo;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p2, v1, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->commonSetterHelper2(Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;[Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public arraySetterHelper([Ljava/math/BigInteger;Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;)V
    .locals 1

    .line 31
    new-instance v0, Lcom/sunia/HTREnginev2/lvo;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/lvo;-><init>()V

    invoke-direct {p0, p2, p3, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->commonSetterHelper2(Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;[Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public arraySetterHelper([Ljava/util/Calendar;Ljavax/xml/namespace/QName;)V
    .locals 2

    .line 18
    new-instance v0, Lcom/sunia/HTREnginev2/awo;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/awo;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p2, v1, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->commonSetterHelper2(Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;[Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public arraySetterHelper([Ljava/util/Calendar;Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;)V
    .locals 1

    .line 36
    new-instance v0, Lcom/sunia/HTREnginev2/awo;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/awo;-><init>()V

    invoke-direct {p0, p2, p3, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->commonSetterHelper2(Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;[Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public arraySetterHelper([Ljava/util/Date;Ljavax/xml/namespace/QName;)V
    .locals 2

    .line 19
    new-instance v0, Lcom/sunia/HTREnginev2/xvo;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/xvo;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p2, v1, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->commonSetterHelper2(Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;[Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public arraySetterHelper([Ljava/util/Date;Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;)V
    .locals 1

    .line 37
    new-instance v0, Lcom/sunia/HTREnginev2/xvo;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/xvo;-><init>()V

    invoke-direct {p0, p2, p3, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->commonSetterHelper2(Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;[Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public arraySetterHelper([Ljava/util/List;Ljavax/xml/namespace/QName;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List<",
            "*>;",
            "Ljavax/xml/namespace/QName;",
            ")V"
        }
    .end annotation

    .line 22
    new-instance v0, Lcom/sunia/HTREnginev2/dwo;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/dwo;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p2, v1, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->commonSetterHelper2(Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;[Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public arraySetterHelper([Ljava/util/List;Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List<",
            "*>;",
            "Ljavax/xml/namespace/QName;",
            "Lorg/apache/xmlbeans/QNameSet;",
            ")V"
        }
    .end annotation

    .line 40
    new-instance v0, Lcom/sunia/HTREnginev2/dwo;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/dwo;-><init>()V

    invoke-direct {p0, p2, p3, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->commonSetterHelper2(Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;[Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public arraySetterHelper([Ljavax/xml/namespace/QName;Ljavax/xml/namespace/QName;)V
    .locals 2

    .line 20
    new-instance v0, Lcom/sunia/HTREnginev2/rvo;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/rvo;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p2, v1, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->commonSetterHelper2(Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;[Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public arraySetterHelper([Ljavax/xml/namespace/QName;Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;)V
    .locals 1

    .line 38
    new-instance v0, Lcom/sunia/HTREnginev2/rvo;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/rvo;-><init>()V

    invoke-direct {p0, p2, p3, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->commonSetterHelper2(Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;[Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public arraySetterHelper([Lorg/apache/xmlbeans/GDate;Ljavax/xml/namespace/QName;)V
    .locals 2

    .line 16
    new-instance v0, Lcom/sunia/HTREnginev2/mvo;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/mvo;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p2, v1, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->commonSetterHelper2(Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;[Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public arraySetterHelper([Lorg/apache/xmlbeans/GDate;Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;)V
    .locals 1

    .line 34
    new-instance v0, Lcom/sunia/HTREnginev2/mvo;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/mvo;-><init>()V

    invoke-direct {p0, p2, p3, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->commonSetterHelper2(Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;[Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public arraySetterHelper([Lorg/apache/xmlbeans/GDuration;Ljavax/xml/namespace/QName;)V
    .locals 2

    .line 17
    new-instance v0, Lcom/sunia/HTREnginev2/kwo;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/kwo;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p2, v1, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->commonSetterHelper2(Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;[Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public arraySetterHelper([Lorg/apache/xmlbeans/GDuration;Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;)V
    .locals 1

    .line 35
    new-instance v0, Lcom/sunia/HTREnginev2/kwo;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/kwo;-><init>()V

    invoke-direct {p0, p2, p3, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->commonSetterHelper2(Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;[Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public arraySetterHelper([Lorg/apache/xmlbeans/StringEnumAbstractBase;Ljavax/xml/namespace/QName;)V
    .locals 2

    .line 21
    new-instance v0, Lcom/sunia/HTREnginev2/fwo;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/fwo;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p2, v1, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->commonSetterHelper2(Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;[Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public arraySetterHelper([Lorg/apache/xmlbeans/StringEnumAbstractBase;Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;)V
    .locals 1

    .line 39
    new-instance v0, Lcom/sunia/HTREnginev2/fwo;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/fwo;-><init>()V

    invoke-direct {p0, p2, p3, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->commonSetterHelper2(Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;[Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public arraySetterHelper([Lorg/apache/xmlbeans/XmlObject;Ljavax/xml/namespace/QName;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->arraySetterHelper([Lorg/apache/xmlbeans/XmlObject;Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;)V

    return-void
.end method

.method public arraySetterHelper([Lorg/apache/xmlbeans/XmlObject;Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;)V
    .locals 7

    .line 42
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_17

    .line 43
    array-length v2, p1

    if-nez v2, :cond_0

    goto/16 :goto_13

    :cond_0
    if-nez p3, :cond_1

    .line 44
    invoke-interface {v0, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Ljavax/xml/namespace/QName;)I

    move-result v2

    goto :goto_0

    :cond_1
    invoke-interface {v0, p3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/xmlbeans/QNameSet;)I

    move-result v2

    :goto_0
    move v3, v1

    .line 45
    :goto_1
    array-length v4, p1

    if-ge v3, v4, :cond_5

    .line 46
    aget-object v4, p1, v3

    invoke-interface {v4}, Lorg/apache/xmlbeans/XmlObject;->isImmutable()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    .line 47
    :cond_2
    aget-object v4, p1, v3

    invoke-interface {v4}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v4

    .line 48
    :try_start_0
    invoke-interface {v4}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v5, p0, :cond_3

    .line 49
    invoke-interface {v4}, Lorg/apache/xmlbeans/XmlCursor;->close()V

    goto :goto_4

    :cond_3
    invoke-interface {v4}, Lorg/apache/xmlbeans/XmlCursor;->close()V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 50
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz v4, :cond_4

    .line 51
    :try_start_2
    invoke-interface {v4}, Lorg/apache/xmlbeans/XmlCursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    throw p1

    .line 52
    :cond_5
    :goto_4
    array-length v4, p1

    if-ge v3, v4, :cond_10

    if-nez p3, :cond_6

    .line 53
    invoke-interface {v0, p2, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Ljavax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v4

    goto :goto_5

    :cond_6
    invoke-interface {v0, p3, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/xmlbeans/QNameSet;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v4

    .line 54
    :goto_5
    aget-object v5, p1, v3

    if-ne v4, v5, :cond_10

    :goto_6
    if-ge v1, v3, :cond_8

    if-nez p3, :cond_7

    .line 55
    invoke-interface {v0, p2, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->insert_element_user(Ljavax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    goto :goto_7

    :cond_7
    invoke-interface {v0, p3, p2, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->insert_element_user(Lorg/apache/xmlbeans/QNameSet;Ljavax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    .line 56
    :goto_7
    check-cast v2, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-object v4, p1, v1

    invoke-virtual {v2, v4}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_8
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    move v2, v1

    move v1, v3

    .line 57
    :goto_8
    array-length v3, p1

    if-ge v1, v3, :cond_f

    .line 58
    aget-object v3, p1, v1

    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlObject;->isImmutable()Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x0

    goto :goto_9

    :cond_9
    aget-object v3, p1, v1

    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v3

    :goto_9
    if-eqz v3, :cond_b

    .line 59
    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v4

    if-ne v4, p0, :cond_b

    .line 60
    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlCursor;->close()V

    if-nez p3, :cond_a

    .line 61
    invoke-interface {v0, p2, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Ljavax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    goto :goto_a

    :cond_a
    invoke-interface {v0, p3, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/xmlbeans/QNameSet;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    .line 62
    :goto_a
    aget-object v4, p1, v1

    if-eq v3, v4, :cond_e

    goto :goto_c

    :cond_b
    if-eqz v3, :cond_c

    .line 63
    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlCursor;->close()V

    :cond_c
    if-nez p3, :cond_d

    .line 64
    invoke-interface {v0, p2, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->insert_element_user(Ljavax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    goto :goto_b

    :cond_d
    invoke-interface {v0, p3, p2, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->insert_element_user(Lorg/apache/xmlbeans/QNameSet;Ljavax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    .line 65
    :goto_b
    check-cast v3, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-object v4, p1, v1

    invoke-virtual {v3, v4}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    :cond_e
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 66
    :cond_f
    :goto_c
    invoke-interface {v0, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Ljavax/xml/namespace/QName;)I

    move-result p0

    move v3, v1

    goto :goto_d

    :cond_10
    move p0, v2

    move v2, v1

    :goto_d
    move v4, v3

    .line 67
    :goto_e
    array-length v5, p1

    if-ge v4, v5, :cond_11

    .line 68
    invoke-interface {v0, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v5

    .line 69
    check-cast v5, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-object v6, p1, v4

    invoke-virtual {v5, v6}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_11
    :goto_f
    sub-int v4, v3, v1

    add-int/2addr v4, v2

    if-le p0, v4, :cond_13

    if-nez p3, :cond_12

    add-int/lit8 v4, p0, -0x1

    .line 70
    invoke-interface {v0, p2, v4}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Ljavax/xml/namespace/QName;I)V

    goto :goto_10

    :cond_12
    add-int/lit8 v4, p0, -0x1

    .line 71
    invoke-interface {v0, p3, v4}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Lorg/apache/xmlbeans/QNameSet;I)V

    :goto_10
    add-int/lit8 p0, p0, -0x1

    goto :goto_f

    :cond_13
    :goto_11
    if-ge v1, v3, :cond_16

    if-lt v2, p0, :cond_14

    .line 72
    invoke-interface {v0, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v4

    goto :goto_12

    :cond_14
    if-nez p3, :cond_15

    .line 73
    invoke-interface {v0, p2, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Ljavax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v4

    goto :goto_12

    .line 74
    :cond_15
    invoke-interface {v0, p3, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/xmlbeans/QNameSet;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v4

    .line 75
    :goto_12
    check-cast v4, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-object v5, p1, v1

    invoke-virtual {v4, v5}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_16
    return-void

    :cond_17
    :goto_13
    if-nez p3, :cond_18

    .line 76
    invoke-interface {v0, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Ljavax/xml/namespace/QName;)I

    move-result p0

    goto :goto_14

    :cond_18
    invoke-interface {v0, p3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/xmlbeans/QNameSet;)I

    move-result p0

    :goto_14
    if-lez p0, :cond_1a

    if-nez p3, :cond_19

    .line 77
    invoke-interface {v0, p2, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Ljavax/xml/namespace/QName;I)V

    goto :goto_15

    .line 78
    :cond_19
    invoke-interface {v0, p3, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Lorg/apache/xmlbeans/QNameSet;I)V

    :goto_15
    add-int/lit8 p0, p0, -0x1

    goto :goto_14

    :cond_1a
    return-void
.end method

.method public arraySetterHelper([SLjavax/xml/namespace/QName;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 9
    :cond_0
    array-length v0, p1

    :goto_0
    new-instance v1, Lcom/sunia/HTREnginev2/tvo;

    invoke-direct {v1, p1}, Lcom/sunia/HTREnginev2/tvo;-><init>([S)V

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1, v0, v1}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->commonSetterHelper(Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;ILjava/util/function/BiConsumer;)V

    return-void
.end method

.method public arraySetterHelper([SLjavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 27
    :cond_0
    array-length v0, p1

    :goto_0
    new-instance v1, Lcom/sunia/HTREnginev2/wvo;

    invoke-direct {v1, p1}, Lcom/sunia/HTREnginev2/wvo;-><init>([S)V

    invoke-direct {p0, p2, p3, v0, v1}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->commonSetterHelper(Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;ILjava/util/function/BiConsumer;)V

    return-void
.end method

.method public arraySetterHelper([ZLjavax/xml/namespace/QName;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 5
    :cond_0
    array-length v0, p1

    :goto_0
    new-instance v1, Lcom/sunia/HTREnginev2/ewo;

    invoke-direct {v1, p1}, Lcom/sunia/HTREnginev2/ewo;-><init>([Z)V

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1, v0, v1}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->commonSetterHelper(Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;ILjava/util/function/BiConsumer;)V

    return-void
.end method

.method public arraySetterHelper([ZLjavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 23
    :cond_0
    array-length v0, p1

    :goto_0
    new-instance v1, Lcom/sunia/HTREnginev2/qvo;

    invoke-direct {v1, p1}, Lcom/sunia/HTREnginev2/qvo;-><init>([Z)V

    invoke-direct {p0, p2, p3, v0, v1}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->commonSetterHelper(Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;ILjava/util/function/BiConsumer;)V

    return-void
.end method

.method public arraySetterHelper([[BLjavax/xml/namespace/QName;)V
    .locals 2

    .line 15
    new-instance v0, Lcom/sunia/HTREnginev2/kvo;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/kvo;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p2, v1, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->commonSetterHelper2(Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;[Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public arraySetterHelper([[BLjavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;)V
    .locals 1

    .line 33
    new-instance v0, Lcom/sunia/HTREnginev2/kvo;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/kvo;-><init>()V

    invoke-direct {p0, p2, p3, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->commonSetterHelper2(Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;[Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public arraySetterHelper(ILjavax/xml/namespace/QName;)[Lorg/apache/xmlbeans/SimpleValue;
    .locals 2

    .line 1
    new-array p1, p1, [Lorg/apache/xmlbeans/SimpleValue;

    .line 2
    new-instance v0, Lcom/sunia/HTREnginev2/ovo;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/ovo;-><init>([Lorg/apache/xmlbeans/SimpleValue;)V

    const/4 v1, 0x0

    invoke-direct {p0, p2, v1, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->commonSetterHelper(Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;[Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    return-object p1
.end method

.method public arraySetterHelper(ILjavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;)[Lorg/apache/xmlbeans/SimpleValue;
    .locals 1

    .line 3
    new-array p1, p1, [Lorg/apache/xmlbeans/SimpleValue;

    .line 4
    new-instance v0, Lcom/sunia/HTREnginev2/zvo;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/zvo;-><init>([Lorg/apache/xmlbeans/SimpleValue;)V

    invoke-direct {p0, p2, p3, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->commonSetterHelper(Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;[Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    return-object p1
.end method

.method public compute_text(Lorg/apache/xmlbeans/impl/values/NamespaceManager;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public equal_to(Lorg/apache/xmlbeans/XmlObject;)Z
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->_schemaType:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlObject;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public get_default_attribute_text(Ljavax/xml/namespace/QName;)Ljava/lang/String;
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_default_attribute_text(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public get_default_element_text(Ljavax/xml/namespace/QName;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/apache/xmlbeans/SchemaType;->getElementProperty(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaProperty;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaProperty;->getDefaultText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public get_elementflags(Ljavax/xml/namespace/QName;)I
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/apache/xmlbeans/SchemaType;->getElementProperty(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaProperty;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    :cond_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaProperty;->hasDefault()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaProperty;->hasFixed()I

    move-result v0

    if-eq v0, v1, :cond_5

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaProperty;->hasNillable()I

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_3

    :cond_1
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaProperty;->hasDefault()I

    move-result v0

    if-nez v0, :cond_2

    move v0, p1

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    :goto_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaProperty;->hasFixed()I

    move-result v2

    if-nez v2, :cond_3

    move v2, p1

    goto :goto_1

    :cond_3
    const/4 v2, 0x4

    :goto_1
    or-int/2addr v0, v2

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaProperty;->hasNillable()I

    move-result p0

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    move p1, v1

    :goto_2
    or-int p0, v0, p1

    return p0

    :cond_5
    :goto_3
    const/4 p0, -0x1

    return p0
.end method

.method public is_child_element_order_sensitive()Z
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->isOrderSensitive()Z

    move-result p0

    return p0
.end method

.method public new_visitor()Lorg/apache/xmlbeans/impl/values/TypeStoreVisitor;
    .locals 1

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->_schemaType:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getContentModel()Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;-><init>(Lorg/apache/xmlbeans/SchemaParticle;)V

    return-object v0
.end method

.method public schemaType()Lorg/apache/xmlbeans/SchemaType;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->_schemaType:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    return-object p0
.end method

.method public final set_String(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->_schemaType:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getContentType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->_schemaType:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->isNoType()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Type does not allow for textual content: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->_schemaType:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_String(Ljava/lang/String;)V

    return-void
.end method

.method public set_nil()V
    .locals 0

    return-void
.end method

.method public set_text(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public unionArraySetterHelper([Ljava/lang/Object;Ljavax/xml/namespace/QName;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/sunia/HTREnginev2/pvo;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/pvo;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p2, v1, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->commonSetterHelper2(Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;[Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public unionArraySetterHelper([Ljava/lang/Object;Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/sunia/HTREnginev2/pvo;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/pvo;-><init>()V

    invoke-direct {p0, p2, p3, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->commonSetterHelper2(Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;[Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public update_from_complex_content()V
    .locals 0

    return-void
.end method

.method public value_hash_code()I
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Complex types cannot be used as hash keys"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
