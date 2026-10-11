.class public Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final T_ANY:I = 0x3

.field static final T_ELEMENT:I = 0x1

.field static final T_PCDATA:I = 0x2


# instance fields
.field private m_attributes:[Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

.field private m_classObject:Ljava/lang/Class;

.field private m_elementProcessor:Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;

.field private m_elements:[Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

.field private m_has_required:Z

.field m_isOrdered:Z

.field private m_lastOrder:I

.field private m_multiAllowed:Z

.field private m_name:Ljava/lang/String;

.field private m_nameAlias:Ljava/lang/String;

.field private m_namespace:Ljava/lang/String;

.field private m_order:I

.field private m_required:Z

.field m_requiredFound:Ljava/util/Hashtable;

.field private m_type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_type:I

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_has_required:Z

    .line 4
    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_required:Z

    .line 5
    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_isOrdered:Z

    const/4 v1, -0x1

    .line 6
    iput v1, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_order:I

    .line 7
    iput v1, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_lastOrder:I

    .line 8
    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_multiAllowed:Z

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;[Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;Ljava/lang/Class;)V
    .locals 11

    move-object v0, p0

    move-object v8, p1

    move-object v9, p2

    move-object v10, p4

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    .line 10
    iput v1, v0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_type:I

    const/4 v2, 0x0

    .line 11
    iput-boolean v2, v0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_has_required:Z

    .line 12
    iput-boolean v2, v0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_required:Z

    .line 13
    iput-boolean v2, v0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_isOrdered:Z

    const/4 v2, -0x1

    .line 14
    iput v2, v0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_order:I

    .line 15
    iput v2, v0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_lastOrder:I

    .line 16
    iput-boolean v1, v0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_multiAllowed:Z

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    .line 17
    invoke-virtual/range {v0 .. v7}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->build(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;[Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;Ljava/lang/Class;)V

    if-eqz v9, :cond_1

    const-string v0, "http://www.w3.org/1999/XSL/Transform"

    .line 18
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http://xml.apache.org/xalan"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http://xml.apache.org/xslt"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19
    :cond_0
    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/QName;

    move-object v1, p3

    invoke-direct {v0, p2, p3}, Lcom/sun/org/apache/xml/internal/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;->addAvailableElement(Lcom/sun/org/apache/xml/internal/utils/QName;)V

    if-eqz v10, :cond_1

    .line 20
    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/QName;

    invoke-direct {v0, p2, p4}, Lcom/sun/org/apache/xml/internal/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;->addAvailableElement(Lcom/sun/org/apache/xml/internal/utils/QName;)V

    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;[Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V
    .locals 0

    .line 44
    invoke-direct/range {p0 .. p8}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;-><init>(Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;[Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;Ljava/lang/Class;)V

    .line 45
    iput p9, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_order:I

    .line 46
    iput-boolean p10, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_multiAllowed:Z

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;[Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;Ljava/lang/Class;Z)V
    .locals 11

    move-object v0, p0

    move-object v8, p1

    move-object v9, p2

    move-object v10, p4

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    .line 22
    iput v1, v0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_type:I

    const/4 v2, 0x0

    .line 23
    iput-boolean v2, v0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_required:Z

    .line 24
    iput-boolean v2, v0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_isOrdered:Z

    const/4 v2, -0x1

    .line 25
    iput v2, v0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_order:I

    .line 26
    iput v2, v0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_lastOrder:I

    .line 27
    iput-boolean v1, v0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_multiAllowed:Z

    move/from16 v1, p9

    .line 28
    iput-boolean v1, v0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_has_required:Z

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    .line 29
    invoke-virtual/range {v0 .. v7}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->build(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;[Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;Ljava/lang/Class;)V

    if-eqz v9, :cond_1

    const-string v0, "http://www.w3.org/1999/XSL/Transform"

    .line 30
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http://xml.apache.org/xalan"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http://xml.apache.org/xslt"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    :cond_0
    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/QName;

    move-object v1, p3

    invoke-direct {v0, p2, p3}, Lcom/sun/org/apache/xml/internal/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;->addAvailableElement(Lcom/sun/org/apache/xml/internal/utils/QName;)V

    if-eqz v10, :cond_1

    .line 32
    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/QName;

    invoke-direct {v0, p2, p4}, Lcom/sun/org/apache/xml/internal/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;->addAvailableElement(Lcom/sun/org/apache/xml/internal/utils/QName;)V

    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;[Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;Ljava/lang/Class;ZIZ)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p10

    move/from16 v10, p11

    .line 42
    invoke-direct/range {v0 .. v10}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;-><init>(Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;[Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    move/from16 v1, p9

    .line 43
    iput-boolean v1, v0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_isOrdered:Z

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;[Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;Ljava/lang/Class;ZZ)V
    .locals 0

    .line 33
    invoke-direct/range {p0 .. p9}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;-><init>(Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;[Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;Ljava/lang/Class;Z)V

    .line 34
    iput-boolean p10, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_required:Z

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;[Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;Ljava/lang/Class;ZZIZ)V
    .locals 0

    .line 35
    invoke-direct/range {p0 .. p10}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;-><init>(Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;[Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;Ljava/lang/Class;ZZ)V

    .line 36
    iput p11, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_order:I

    .line 37
    iput-boolean p12, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_multiAllowed:Z

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;[Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;Ljava/lang/Class;ZZZIZ)V
    .locals 0

    .line 38
    invoke-direct/range {p0 .. p10}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;-><init>(Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;[Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;Ljava/lang/Class;ZZ)V

    .line 39
    iput p12, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_order:I

    .line 40
    iput-boolean p13, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_multiAllowed:Z

    .line 41
    iput-boolean p11, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_isOrdered:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;I)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_has_required:Z

    .line 49
    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_required:Z

    .line 50
    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_isOrdered:Z

    const/4 v0, -0x1

    .line 51
    iput v0, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_order:I

    .line 52
    iput v0, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_lastOrder:I

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_multiAllowed:Z

    .line 54
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_classObject:Ljava/lang/Class;

    .line 55
    iput p3, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_type:I

    .line 56
    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->setElementProcessor(Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;)V

    return-void
.end method

.method private QNameEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_namespace:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->equalsMayBeNullOrZeroLen(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_name:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->equalsMayBeNullOrZeroLen(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_nameAlias:Ljava/lang/String;

    invoke-static {p0, p2}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->equalsMayBeNullOrZeroLen(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static equalsMayBeNull(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-eq p1, p0, :cond_1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static equalsMayBeNullOrZeroLen(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    if-nez p1, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    :goto_1
    if-eq v1, v2, :cond_2

    goto :goto_2

    :cond_2
    if-nez v1, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_2
    return v0
.end method


# virtual methods
.method public build(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;[Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_namespace:Ljava/lang/String;

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_name:Ljava/lang/String;

    iput-object p3, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_nameAlias:Ljava/lang/String;

    iput-object p4, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_elements:[Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    iput-object p5, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_attributes:[Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    invoke-virtual {p0, p6}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->setElementProcessor(Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;)V

    iput-object p7, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_classObject:Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->hasRequired()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_elements:[Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    if-eqz p1, :cond_2

    array-length p1, p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_2

    iget-object p3, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_elements:[Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    aget-object p3, p3, p2

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->getRequired()Z

    move-result p4

    if-eqz p4, :cond_1

    iget-object p4, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_requiredFound:Ljava/util/Hashtable;

    if-nez p4, :cond_0

    new-instance p4, Ljava/util/Hashtable;

    invoke-direct {p4}, Ljava/util/Hashtable;-><init>()V

    iput-object p4, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_requiredFound:Ljava/util/Hashtable;

    :cond_0
    iget-object p4, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_requiredFound:Ljava/util/Hashtable;

    invoke-virtual {p3}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->getName()Ljava/lang/String;

    move-result-object p5

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string p7, "xsl:"

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p5, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getAttributeDef(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;
    .locals 8

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->getAttributes()[Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    aget-object v3, p0, v2

    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->getNamespace()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {p1, v4}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->equalsMayBeNullOrZeroLen(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    if-eqz v4, :cond_1

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    :cond_0
    return-object v3

    :cond_1
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez v4, :cond_2

    move-object v1, v3

    goto :goto_1

    :cond_2
    invoke-static {p1, v4}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->equalsMayBeNullOrZeroLen(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    return-object v3

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-nez v1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_5

    const-string p0, "http://www.w3.org/1999/XSL/Transform"

    invoke-static {p1, p0}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->equalsMayBeNullOrZeroLen(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_5

    sget-object p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->m_foreignAttr:Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    return-object p0

    :cond_5
    return-object v1
.end method

.method public getAttributes()[Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_attributes:[Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    return-object p0
.end method

.method public getClassObject()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_classObject:Ljava/lang/Class;

    return-object p0
.end method

.method public getElementProcessor()Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_elementProcessor:Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;

    return-object p0
.end method

.method public getElements()[Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_elements:[Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    return-object p0
.end method

.method public getLastOrder()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_lastOrder:I

    return p0
.end method

.method public getMultiAllowed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_multiAllowed:Z

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_name:Ljava/lang/String;

    return-object p0
.end method

.method public getNameAlias()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_nameAlias:Ljava/lang/String;

    return-object p0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_namespace:Ljava/lang/String;

    return-object p0
.end method

.method public getOrder()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_order:I

    return p0
.end method

.method public getProcessorFor(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;
    .locals 10

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_elements:[Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    array-length v0, v0

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object v5, v1

    move v6, v2

    :goto_0
    if-ge v4, v0, :cond_4

    iget-object v7, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_elements:[Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    aget-object v7, v7, v4

    iget-object v8, v7, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_name:Ljava/lang/String;

    const-string v9, "*"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "http://www.w3.org/1999/XSL/Transform"

    invoke-static {p1, v8}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->equalsMayBeNullOrZeroLen(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v5, v7, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_elementProcessor:Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;

    invoke-virtual {v7}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->getOrder()I

    move-result v3

    invoke-virtual {v7}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->getMultiAllowed()Z

    move-result v6

    goto :goto_1

    :cond_1
    invoke-direct {v7, p1, p2}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->QNameEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v7}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->getRequired()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v7}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->setRequiredFound(Ljava/lang/String;Z)V

    :cond_2
    invoke-virtual {v7}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->getOrder()I

    move-result v3

    invoke-virtual {v7}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->getMultiAllowed()Z

    move-result v6

    iget-object v5, v7, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_elementProcessor:Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;

    goto :goto_2

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    if-eqz v5, :cond_7

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->isOrdered()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->getLastOrder()I

    move-result p1

    if-le v3, p1, :cond_5

    invoke-virtual {p0, v3}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->setLastOrder(I)V

    goto :goto_3

    :cond_5
    if-ne v3, p1, :cond_6

    if-nez v6, :cond_6

    return-object v1

    :cond_6
    if-ge v3, p1, :cond_7

    if-lez v3, :cond_7

    return-object v1

    :cond_7
    :goto_3
    return-object v5
.end method

.method public getProcessorForUnknown(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;
    .locals 5

    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_elements:[Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    array-length p2, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_elements:[Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    aget-object v2, v2, v1

    iget-object v3, v2, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_name:Ljava/lang/String;

    const-string v4, "unknown"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    iget-object p0, v2, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_elementProcessor:Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;

    return-object p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getRequired()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_required:Z

    return p0
.end method

.method public getRequiredElem()Ljava/lang/String;
    .locals 3

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_requiredFound:Ljava/util/Hashtable;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object p0

    const-string v0, ""

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getRequiredFound()Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_requiredFound:Ljava/util/Hashtable;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_type:I

    return p0
.end method

.method public hasRequired()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_has_required:Z

    return p0
.end method

.method public isOrdered()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_isOrdered:Z

    return p0
.end method

.method public setElementProcessor(Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_elementProcessor:Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;->setElemDef(Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;)V

    :cond_0
    return-void
.end method

.method public setElements([Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_elements:[Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    return-void
.end method

.method public setLastOrder(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_lastOrder:I

    return-void
.end method

.method public setRequiredFound(Ljava/lang/String;Z)V
    .locals 0

    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_requiredFound:Ljava/util/Hashtable;

    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_requiredFound:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->m_type:I

    return-void
.end method
