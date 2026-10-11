.class public Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final ERROR:I = 0x1

.field static final FATAL:I = 0x0

.field static final S_FOREIGNATTR_SETTER:Ljava/lang/String; = "setForeignAttr"

.field static final T_AVT:I = 0x3

.field static final T_AVT_QNAME:I = 0x12

.field static final T_CDATA:I = 0x1

.field static final T_CHAR:I = 0x6

.field static final T_ENUM:I = 0xb

.field static final T_ENUM_OR_PQNAME:I = 0x10

.field static final T_EXPR:I = 0x5

.field static final T_NCNAME:I = 0x11

.field static final T_NMTOKEN:I = 0xd

.field static final T_NUMBER:I = 0x7

.field static final T_PATTERN:I = 0x4

.field static final T_PREFIXLIST:I = 0x14

.field static final T_PREFIX_URLLIST:I = 0xf

.field static final T_QNAME:I = 0x9

.field static final T_QNAMES:I = 0xa

.field static final T_QNAMES_RESOLVE_NULL:I = 0x13

.field static final T_SIMPLEPATTERNLIST:I = 0xc

.field static final T_STRINGLIST:I = 0xe

.field static final T_URL:I = 0x2

.field static final T_YESNO:I = 0x8

.field static final WARNING:I = 0x2

.field static final m_foreignAttr:Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;


# instance fields
.field private m_default:Ljava/lang/String;

.field private m_enums:Lcom/sun/org/apache/xml/internal/utils/StringToIntTable;

.field m_errorType:I

.field private m_name:Ljava/lang/String;

.field private m_namespace:Ljava/lang/String;

.field private m_required:Z

.field m_setterString:Ljava/lang/String;

.field private m_supportsAVT:Z

.field private m_type:I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v7, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const-string v1, "*"

    const-string v2, "*"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    sput-object v7, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->m_foreignAttr:Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->m_setterString:Ljava/lang/String;

    .line 11
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->m_namespace:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->m_name:Ljava/lang/String;

    .line 13
    iput p3, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->m_type:I

    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->m_required:Z

    .line 15
    iput-boolean p4, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->m_supportsAVT:Z

    .line 16
    iput p5, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->m_errorType:I

    .line 17
    iput-object p6, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->m_default:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZZI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->m_setterString:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->m_namespace:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->m_name:Ljava/lang/String;

    .line 5
    iput p3, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->m_type:I

    .line 6
    iput-boolean p4, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->m_required:Z

    .line 7
    iput-boolean p5, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->m_supportsAVT:Z

    .line 8
    iput p6, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->m_errorType:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZZILjava/lang/String;ILjava/lang/String;I)V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 19
    iput v0, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->m_errorType:I

    const/4 v1, 0x0

    .line 20
    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->m_setterString:Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->m_namespace:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->m_name:Ljava/lang/String;

    if-eqz p5, :cond_0

    const/16 p1, 0x10

    goto :goto_0

    :cond_0
    const/16 p1, 0xb

    .line 23
    :goto_0
    iput p1, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->m_type:I

    .line 24
    iput-boolean p3, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->m_required:Z

    .line 25
    iput-boolean p4, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->m_supportsAVT:Z

    .line 26
    iput p6, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->m_errorType:I

    .line 27
    new-instance p1, Lcom/sun/org/apache/xml/internal/utils/StringToIntTable;

    invoke-direct {p1, v0}, Lcom/sun/org/apache/xml/internal/utils/StringToIntTable;-><init>(I)V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->m_enums:Lcom/sun/org/apache/xml/internal/utils/StringToIntTable;

    .line 28
    invoke-virtual {p1, p7, p8}, Lcom/sun/org/apache/xml/internal/utils/StringToIntTable;->put(Ljava/lang/String;I)V

    .line 29
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->m_enums:Lcom/sun/org/apache/xml/internal/utils/StringToIntTable;

    invoke-virtual {p0, p9, p10}, Lcom/sun/org/apache/xml/internal/utils/StringToIntTable;->put(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZZILjava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 31
    iput v0, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->m_errorType:I

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->m_setterString:Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->m_namespace:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->m_name:Ljava/lang/String;

    if-eqz p5, :cond_0

    const/16 p1, 0x10

    goto :goto_0

    :cond_0
    const/16 p1, 0xb

    .line 35
    :goto_0
    iput p1, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->m_type:I

    .line 36
    iput-boolean p3, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->m_required:Z

    .line 37
    iput-boolean p4, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->m_supportsAVT:Z

    .line 38
    iput p6, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->m_errorType:I

    .line 39
    new-instance p1, Lcom/sun/org/apache/xml/internal/utils/StringToIntTable;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Lcom/sun/org/apache/xml/internal/utils/StringToIntTable;-><init>(I)V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->m_enums:Lcom/sun/org/apache/xml/internal/utils/StringToIntTable;

    .line 40
    invoke-virtual {p1, p7, p8}, Lcom/sun/org/apache/xml/internal/utils/StringToIntTable;->put(Ljava/lang/String;I)V

    .line 41
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->m_enums:Lcom/sun/org/apache/xml/internal/utils/StringToIntTable;

    invoke-virtual {p1, p9, p10}, Lcom/sun/org/apache/xml/internal/utils/StringToIntTable;->put(Ljava/lang/String;I)V

    .line 42
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->m_enums:Lcom/sun/org/apache/xml/internal/utils/StringToIntTable;

    invoke-virtual {p0, p11, p12}, Lcom/sun/org/apache/xml/internal/utils/StringToIntTable;->put(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZZILjava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 44
    iput v0, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->m_errorType:I

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->m_setterString:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->m_namespace:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->m_name:Ljava/lang/String;

    if-eqz p5, :cond_0

    const/16 p1, 0x10

    goto :goto_0

    :cond_0
    const/16 p1, 0xb

    .line 48
    :goto_0
    iput p1, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->m_type:I

    .line 49
    iput-boolean p3, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->m_required:Z

    .line 50
    iput-boolean p4, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->m_supportsAVT:Z

    .line 51
    iput p6, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->m_errorType:I

    .line 52
    new-instance p1, Lcom/sun/org/apache/xml/internal/utils/StringToIntTable;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Lcom/sun/org/apache/xml/internal/utils/StringToIntTable;-><init>(I)V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->m_enums:Lcom/sun/org/apache/xml/internal/utils/StringToIntTable;

    .line 53
    invoke-virtual {p1, p7, p8}, Lcom/sun/org/apache/xml/internal/utils/StringToIntTable;->put(Ljava/lang/String;I)V

    .line 54
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->m_enums:Lcom/sun/org/apache/xml/internal/utils/StringToIntTable;

    invoke-virtual {p1, p9, p10}, Lcom/sun/org/apache/xml/internal/utils/StringToIntTable;->put(Ljava/lang/String;I)V

    .line 55
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->m_enums:Lcom/sun/org/apache/xml/internal/utils/StringToIntTable;

    invoke-virtual {p1, p11, p12}, Lcom/sun/org/apache/xml/internal/utils/StringToIntTable;->put(Ljava/lang/String;I)V

    .line 56
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->m_enums:Lcom/sun/org/apache/xml/internal/utils/StringToIntTable;

    invoke-virtual {p0, p13, p14}, Lcom/sun/org/apache/xml/internal/utils/StringToIntTable;->put(Ljava/lang/String;I)V

    return-void
.end method

.method private getEnum(Ljava/lang/String;)I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->m_enums:Lcom/sun/org/apache/xml/internal/utils/StringToIntTable;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/StringToIntTable;->get(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private getEnumNames()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->m_enums:Lcom/sun/org/apache/xml/internal/utils/StringToIntTable;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/utils/StringToIntTable;->keys()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getListOfEnums()Ljava/lang/StringBuffer;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->getEnumNames()[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getPrimativeClass(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 0

    instance-of p0, p1, Lcom/sun/org/apache/xpath/internal/XPath;

    if-eqz p0, :cond_0

    const-class p0, Lcom/sun/org/apache/xpath/internal/XPath;

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-class p1, Ljava/lang/Double;

    if-ne p0, p1, :cond_1

    sget-object p0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    :cond_1
    const-class p1, Ljava/lang/Float;

    if-ne p0, p1, :cond_2

    sget-object p0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    goto :goto_0

    :cond_2
    const-class p1, Ljava/lang/Boolean;

    if-ne p0, p1, :cond_3

    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    goto :goto_0

    :cond_3
    const-class p1, Ljava/lang/Byte;

    if-ne p0, p1, :cond_4

    sget-object p0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    goto :goto_0

    :cond_4
    const-class p1, Ljava/lang/Character;

    if-ne p0, p1, :cond_5

    sget-object p0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    goto :goto_0

    :cond_5
    const-class p1, Ljava/lang/Short;

    if-ne p0, p1, :cond_6

    sget-object p0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    goto :goto_0

    :cond_6
    const-class p1, Ljava/lang/Integer;

    if-ne p0, p1, :cond_7

    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    goto :goto_0

    :cond_7
    const-class p1, Ljava/lang/Long;

    if-ne p0, p1, :cond_8

    sget-object p0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    :cond_8
    :goto_0
    return-object p0
.end method

.method private handleError(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->getErrorType()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 p4, 0x2

    if-eq p0, p4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2, p3, p4}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->error(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method private processYESNO(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string p2, "yes"

    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_0

    const-string p4, "no"

    invoke-virtual {p5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_0

    const-string p2, "INVALID_BOOLEAN"

    filled-new-array {p3, p5}, [Ljava/lang/Object;

    move-result-object p3

    const/4 p4, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->handleError(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    return-object p4

    :cond_0
    new-instance p0, Ljava/lang/Boolean;

    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-direct {p0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    return-object p0
.end method


# virtual methods
.method public getDefault()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->m_default:Ljava/lang/String;

    return-object p0
.end method

.method public getErrorType()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->m_errorType:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->m_name:Ljava/lang/String;

    return-object p0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->m_namespace:Ljava/lang/String;

    return-object p0
.end method

.method public getRequired()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->m_required:Z

    return p0
.end method

.method public getSetterMethodName()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->m_setterString:Ljava/lang/String;

    if-nez v0, :cond_6

    sget-object v0, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->m_foreignAttr:Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    if-ne v0, p0, :cond_0

    const-string p0, "setForeignAttr"

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->m_name:Ljava/lang/String;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "addLiteralResultAttribute"

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->m_setterString:Ljava/lang/String;

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "set"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->m_namespace:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v2, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->m_name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->m_name:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-ne v4, v3, :cond_3

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->m_name:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    goto :goto_1

    :cond_3
    if-nez v2, :cond_4

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    :cond_4
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->m_setterString:Ljava/lang/String;

    :cond_6
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->m_setterString:Ljava/lang/String;

    return-object p0
.end method

.method public getSupportsAVT()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->m_supportsAVT:Z

    return p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->m_type:I

    return p0
.end method

.method public processAVT(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Lcom/sun/org/apache/xalan/internal/templates/AVT;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    new-instance p0, Lcom/sun/org/apache/xalan/internal/templates/AVT;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/sun/org/apache/xalan/internal/templates/AVT;-><init>(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public processAVT_QNAME(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    new-instance v7, Lcom/sun/org/apache/xalan/internal/templates/AVT;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/sun/org/apache/xalan/internal/templates/AVT;-><init>(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    invoke-virtual {v7}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->isSimple()Z

    move-result p2

    if-eqz p2, :cond_3

    const/16 p2, 0x3a

    invoke-virtual {p5, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p2
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p4, "INVALID_QNAME"

    const/4 p6, 0x0

    if-ltz p2, :cond_0

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p5, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/utils/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    filled-new-array {p3, p5}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p4, p2, p6}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->handleError(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    return-object p6

    :cond_0
    if-gez p2, :cond_1

    move-object p2, p5

    goto :goto_0

    :cond_1
    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p5, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2}, Lcom/sun/org/apache/xml/internal/utils/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    :cond_2
    filled-new-array {p3, p5}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p4, p2, p6}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->handleError(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V
    :try_end_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p6

    :cond_3
    return-object v7

    :catch_0
    move-exception p0

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public processCDATA(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->getSupportsAVT()Z

    move-result p0

    if-eqz p0, :cond_0

    :try_start_0
    new-instance p0, Lcom/sun/org/apache/xalan/internal/templates/AVT;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/sun/org/apache/xalan/internal/templates/AVT;-><init>(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :cond_0
    return-object p5
.end method

.method public processCHAR(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->getSupportsAVT()Z

    move-result v1

    const-string v11, "INVALID_TCHAR"

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v1, :cond_1

    :try_start_0
    new-instance v14, Lcom/sun/org/apache/xalan/internal/templates/AVT;

    move-object v1, v14

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/sun/org/apache/xalan/internal/templates/AVT;-><init>(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    invoke-virtual {v14}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->isSimple()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v12, :cond_0

    filled-new-array {v9, v10}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v8, v11, v1, v13}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->handleError(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v13

    :cond_0
    return-object v14

    :catch_0
    move-exception v0

    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1

    :cond_1
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v12, :cond_2

    filled-new-array {v9, v10}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v8, v11, v1, v13}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->handleError(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    return-object v13

    :cond_2
    new-instance v0, Ljava/lang/Character;

    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    return-object v0
.end method

.method public processENUM(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->getSupportsAVT()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/sun/org/apache/xalan/internal/templates/AVT;

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/sun/org/apache/xalan/internal/templates/AVT;-><init>(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->isSimple()Z

    move-result p2
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p2, :cond_1

    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :cond_0
    move-object v0, v1

    :cond_1
    invoke-direct {p0, p5}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->getEnum(Ljava/lang/String;)I

    move-result p2

    const/16 p4, -0x2710

    if-ne p2, p4, :cond_2

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->getListOfEnums()Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p3, p5, p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "INVALID_ENUM"

    invoke-direct {p0, p1, p3, p2, v1}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->handleError(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    return-object v1

    :cond_2
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->getSupportsAVT()Z

    move-result p0

    if-eqz p0, :cond_3

    return-object v0

    :cond_3
    new-instance p0, Ljava/lang/Integer;

    invoke-direct {p0, p2}, Ljava/lang/Integer;-><init>(I)V

    return-object p0
.end method

.method public processENUM_OR_PQNAME(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object v1, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p5

    const-string v12, "INVALID_ENUM"

    const-string v13, " <qname-but-not-ncname>"

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->getSupportsAVT()Z

    move-result v0

    const/4 v14, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/sun/org/apache/xalan/internal/templates/AVT;

    move-object v2, v0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/sun/org/apache/xalan/internal/templates/AVT;-><init>(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->isSimple()Z

    move-result v2
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_1

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1

    :cond_0
    move-object v0, v14

    :cond_1
    invoke-direct {p0, v11}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->getEnum(Ljava/lang/String;)I

    move-result v2

    const/16 v3, -0x2710

    if-eq v2, v3, :cond_2

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0

    :cond_2
    :try_start_1
    new-instance v2, Lcom/sun/org/apache/xml/internal/utils/QName;

    const/4 v3, 0x1

    invoke-direct {v2, v11, v9, v3}, Lcom/sun/org/apache/xml/internal/utils/QName;-><init>(Ljava/lang/String;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;Z)V

    if-nez v0, :cond_3

    move-object v0, v2

    :cond_3
    invoke-virtual {v2}, Lcom/sun/org/apache/xml/internal/utils/QName;->getPrefix()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->getListOfEnums()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v10, v2, v4

    aput-object v11, v2, v3

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-direct {p0, v9, v12, v2, v14}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->handleError(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v14

    :cond_4
    :goto_0
    return-object v0

    :catch_1
    move-exception v0

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->getListOfEnums()Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v10, v11, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v9, v12, v2, v0}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->handleError(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    return-object v14

    :catch_2
    move-exception v0

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->getListOfEnums()Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v10, v11, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v9, v12, v2, v0}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->handleError(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    return-object v14
.end method

.method public processEXPR(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1, p5, p6}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->createXPath(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Lcom/sun/org/apache/xpath/internal/XPath;

    move-result-object p0
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public processNCNAME(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object v0, p0

    move-object v8, p1

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->getSupportsAVT()Z

    move-result v1

    const-string v11, "INVALID_NCNAME"

    const/4 v12, 0x0

    if-eqz v1, :cond_1

    :try_start_0
    new-instance v13, Lcom/sun/org/apache/xalan/internal/templates/AVT;

    move-object v1, v13

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/sun/org/apache/xalan/internal/templates/AVT;-><init>(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    invoke-virtual {v13}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->isSimple()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static/range {p5 .. p5}, Lcom/sun/org/apache/xml/internal/utils/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    filled-new-array {v9, v10}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, p1, v11, v1, v12}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->handleError(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v12

    :cond_0
    return-object v13

    :catch_0
    move-exception v0

    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1

    :cond_1
    invoke-static/range {p5 .. p5}, Lcom/sun/org/apache/xml/internal/utils/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    filled-new-array {v9, v10}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, p1, v11, v1, v12}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->handleError(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    return-object v12

    :cond_2
    return-object v10
.end method

.method public processNMTOKEN(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object v0, p0

    move-object v8, p1

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->getSupportsAVT()Z

    move-result v1

    const-string v11, "INVALID_NMTOKEN"

    const/4 v12, 0x0

    if-eqz v1, :cond_1

    :try_start_0
    new-instance v13, Lcom/sun/org/apache/xalan/internal/templates/AVT;

    move-object v1, v13

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/sun/org/apache/xalan/internal/templates/AVT;-><init>(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    invoke-virtual {v13}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->isSimple()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static/range {p5 .. p5}, Lcom/sun/org/apache/xml/internal/utils/XML11Char;->isXML11ValidNmtoken(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    filled-new-array {v9, v10}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, p1, v11, v1, v12}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->handleError(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v12

    :cond_0
    return-object v13

    :catch_0
    move-exception v0

    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1

    :cond_1
    invoke-static/range {p5 .. p5}, Lcom/sun/org/apache/xml/internal/utils/XML11Char;->isXML11ValidNmtoken(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    filled-new-array {v9, v10}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, p1, v11, v1, v12}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->handleError(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    return-object v12

    :cond_2
    return-object v10
.end method

.method public processNUMBER(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object v1, p0

    move-object v9, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p5

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->getSupportsAVT()Z

    move-result v0

    const/4 v12, 0x0

    const-string v13, "INVALID_NUMBER"

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v0, Lcom/sun/org/apache/xalan/internal/templates/AVT;

    move-object v2, v0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/sun/org/apache/xalan/internal/templates/AVT;-><init>(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->isSimple()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static/range {p5 .. p5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    filled-new-array {v10, v11}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, p1, v13, v2, v0}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->handleError(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    return-object v12

    :catch_1
    move-exception v0

    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1

    :cond_1
    :try_start_1
    invoke-static/range {p5 .. p5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    return-object v0

    :catch_2
    move-exception v0

    move-object v2, v0

    filled-new-array {v10, v11}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v13, v0, v2}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->handleError(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    return-object v12
.end method

.method public processPATTERN(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1, p5, p6}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->createMatchPatternXPath(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Lcom/sun/org/apache/xpath/internal/XPath;

    move-result-object p0
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public processPREFIX_LIST(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/utils/StringVector;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance p0, Ljava/util/StringTokenizer;

    const-string p2, " \t\n\r\u000c"

    invoke-direct {p0, p5, p2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p2

    new-instance p3, Lcom/sun/org/apache/xml/internal/utils/StringVector;

    invoke-direct {p3, p2}, Lcom/sun/org/apache/xml/internal/utils/StringVector;-><init>(I)V

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p2, :cond_2

    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "#default"

    invoke-virtual {p5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "ER_CANT_RESOLVE_NSPREFIX"

    filled-new-array {p5}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    invoke-virtual {p3, p5}, Lcom/sun/org/apache/xml/internal/utils/StringVector;->addElement(Ljava/lang/String;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_2
    return-object p3
.end method

.method public processPREFIX_URLLIST(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/utils/StringVector;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance p0, Ljava/util/StringTokenizer;

    const-string p2, " \t\n\r\u000c"

    invoke-direct {p0, p5, p2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p2

    new-instance p3, Lcom/sun/org/apache/xml/internal/utils/StringVector;

    invoke-direct {p3, p2}, Lcom/sun/org/apache/xml/internal/utils/StringVector;-><init>(I)V

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p2, :cond_1

    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3, v0}, Lcom/sun/org/apache/xml/internal/utils/StringVector;->addElement(Ljava/lang/String;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "ER_CANT_RESOLVE_NSPREFIX"

    filled-new-array {p5}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-object p3
.end method

.method public processQNAME(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string p2, "INVALID_QNAME"

    const/4 p4, 0x0

    :try_start_0
    new-instance p6, Lcom/sun/org/apache/xml/internal/utils/QName;

    const/4 v0, 0x1

    invoke-direct {p6, p5, p1, v0}, Lcom/sun/org/apache/xml/internal/utils/QName;-><init>(Ljava/lang/String;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p6

    :catch_0
    move-exception p6

    filled-new-array {p3, p5}, [Ljava/lang/Object;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3, p6}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->handleError(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    return-object p4

    :catch_1
    move-exception p6

    filled-new-array {p3, p5}, [Ljava/lang/Object;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3, p6}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->handleError(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    return-object p4
.end method

.method public processQNAMES(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance p0, Ljava/util/StringTokenizer;

    const-string p2, " \t\n\r\u000c"

    invoke-direct {p0, p5, p2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p2

    new-instance p3, Ljava/util/Vector;

    invoke-direct {p3, p2}, Ljava/util/Vector;-><init>(I)V

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p2, :cond_0

    new-instance p5, Lcom/sun/org/apache/xml/internal/utils/QName;

    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p5, v0, p1}, Lcom/sun/org/apache/xml/internal/utils/QName;-><init>(Ljava/lang/String;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;)V

    invoke-virtual {p3, p5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    return-object p3
.end method

.method public final processQNAMESRNU(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Vector;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance p0, Ljava/util/StringTokenizer;

    const-string p2, " \t\n\r\u000c"

    invoke-direct {p0, p5, p2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p2

    new-instance p3, Ljava/util/Vector;

    invoke-direct {p3, p2}, Ljava/util/Vector;-><init>(I)V

    const-string p4, ""

    invoke-virtual {p1, p4}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const/4 p5, 0x0

    :goto_0
    if-ge p5, p2, :cond_1

    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    new-instance v1, Lcom/sun/org/apache/xml/internal/utils/QName;

    invoke-direct {v1, p4, v0}, Lcom/sun/org/apache/xml/internal/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance v1, Lcom/sun/org/apache/xml/internal/utils/QName;

    invoke-direct {v1, v0, p1}, Lcom/sun/org/apache/xml/internal/utils/QName;-><init>(Ljava/lang/String;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;)V

    invoke-virtual {p3, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_1
    return-object p3
.end method

.method public processSIMPLEPATTERNLIST(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Ljava/util/Vector;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    new-instance p0, Ljava/util/StringTokenizer;

    const-string p2, " \t\n\r\u000c"

    invoke-direct {p0, p5, p2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p2

    new-instance p3, Ljava/util/Vector;

    invoke-direct {p3, p2}, Ljava/util/Vector;-><init>(I)V

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p2, :cond_0

    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5, p6}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->createMatchPatternXPath(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Lcom/sun/org/apache/xpath/internal/XPath;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    return-object p3

    :catch_0
    move-exception p0

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public processSTRINGLIST(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/utils/StringVector;
    .locals 0

    new-instance p0, Ljava/util/StringTokenizer;

    const-string p1, " \t\n\r\u000c"

    invoke-direct {p0, p5, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p1

    new-instance p2, Lcom/sun/org/apache/xml/internal/utils/StringVector;

    invoke-direct {p2, p1}, Lcom/sun/org/apache/xml/internal/utils/StringVector;-><init>(I)V

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_0

    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/sun/org/apache/xml/internal/utils/StringVector;->addElement(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public processURL(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->getSupportsAVT()Z

    move-result p0

    if-eqz p0, :cond_0

    :try_start_0
    new-instance p0, Lcom/sun/org/apache/xalan/internal/templates/AVT;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/sun/org/apache/xalan/internal/templates/AVT;-><init>(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :cond_0
    return-object p5
.end method

.method public processValue(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual/range {p0 .. p5}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->processPREFIX_LIST(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/utils/StringVector;

    move-result-object p0

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual/range {p0 .. p5}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->processQNAMESRNU(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Vector;

    move-result-object p0

    goto :goto_0

    :pswitch_2
    invoke-virtual/range {p0 .. p6}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->processAVT_QNAME(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :pswitch_3
    invoke-virtual/range {p0 .. p6}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->processNCNAME(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :pswitch_4
    invoke-virtual/range {p0 .. p6}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->processENUM_OR_PQNAME(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :pswitch_5
    invoke-virtual/range {p0 .. p5}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->processPREFIX_URLLIST(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/utils/StringVector;

    move-result-object p0

    goto :goto_0

    :pswitch_6
    invoke-virtual/range {p0 .. p5}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->processSTRINGLIST(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/utils/StringVector;

    move-result-object p0

    goto :goto_0

    :pswitch_7
    invoke-virtual/range {p0 .. p6}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->processNMTOKEN(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :pswitch_8
    invoke-virtual/range {p0 .. p6}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->processSIMPLEPATTERNLIST(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Ljava/util/Vector;

    move-result-object p0

    goto :goto_0

    :pswitch_9
    invoke-virtual/range {p0 .. p6}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->processENUM(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :pswitch_a
    invoke-virtual/range {p0 .. p5}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->processQNAMES(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Vector;

    move-result-object p0

    goto :goto_0

    :pswitch_b
    invoke-virtual/range {p0 .. p6}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->processQNAME(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :pswitch_c
    invoke-direct/range {p0 .. p5}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->processYESNO(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :pswitch_d
    invoke-virtual/range {p0 .. p6}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->processNUMBER(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :pswitch_e
    invoke-virtual/range {p0 .. p6}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->processCHAR(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :pswitch_f
    invoke-virtual/range {p0 .. p6}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->processEXPR(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :pswitch_10
    invoke-virtual/range {p0 .. p6}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->processPATTERN(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :pswitch_11
    invoke-virtual/range {p0 .. p6}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->processAVT(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Lcom/sun/org/apache/xalan/internal/templates/AVT;

    move-result-object p0

    goto :goto_0

    :pswitch_12
    invoke-virtual/range {p0 .. p6}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->processURL(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :pswitch_13
    invoke-virtual/range {p0 .. p6}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->processCDATA(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAttrValue(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v0, "ER_FAILED_CALLING_METHOD"

    const-string v1, "setForeignAttr"

    const-string v2, "xmlns"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_4

    const-string v2, "xmlns:"

    invoke-virtual {p4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->getSetterMethodName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-nez p2, :cond_1

    const-string p2, ""

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Class;

    aput-object v5, v6, v4

    aput-object v5, v6, v3

    const/4 v7, 0x2

    aput-object v5, v6, v7

    const/4 v7, 0x3

    aput-object v5, v6, v7

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    filled-new-array {p2, p3, p4, p5}, [Ljava/lang/Object;

    move-result-object p2

    goto :goto_2

    :cond_2
    invoke-virtual/range {p0 .. p6}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->processValue(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_3

    return v4

    :cond_3
    new-array p3, v3, [Ljava/lang/Class;

    invoke-direct {p0, p2}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->getPrimativeClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object p4

    aput-object p4, p3, v4
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p4, v2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    move-object v5, p3

    goto :goto_1

    :catch_0
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    aput-object p4, p3, v4

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p4, v2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    goto :goto_0

    :goto_1
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    :goto_2
    invoke-virtual {v5, p6, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception p2

    const-string p3, "name"

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->getName()Ljava/lang/String;

    move-result-object p4

    filled-new-array {p3, p4}, [Ljava/lang/Object;

    move-result-object p3

    const-string p4, "WG_ILLEGAL_ATTRIBUTE_VALUE"

    invoke-direct {p0, p1, p4, p3, p2}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->handleError(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    return v4

    :catch_2
    move-exception p0

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v0, p2, p0}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->error(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    return v4

    :catch_3
    move-exception p0

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v0, p2, p0}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->error(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    return v4

    :cond_4
    :goto_3
    return v3
.end method

.method public setDefAttrValue(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->getDefault()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->setAttrValue(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Z

    return-void
.end method

.method public setDefault(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->m_default:Ljava/lang/String;

    return-void
.end method
