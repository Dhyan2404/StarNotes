.class public Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;
    }
.end annotation


# static fields
.field public static final DYNAMIC:I = 0x4

.field public static final INSTANCE_ONLY:I = 0x2

.field private static final SCOREBASE:I = 0x1

.field public static final STATIC_AND_INSTANCE:I = 0x3

.field public static final STATIC_ONLY:I = 0x1

.field private static final m_booleanConversions:[Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

.field private static final m_conversions:[[Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

.field private static final m_javaObjConversions:[Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

.field private static final m_nodesetConversions:[Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

.field private static final m_numberConversions:[Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

.field private static final m_rtfConversions:[Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

.field private static final m_stringConversions:[Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;


# direct methods
.method public static constructor <clinit>()V
    .locals 19

    const/16 v0, 0x8

    new-array v1, v0, [Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

    new-instance v2, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/16 v4, 0xb

    invoke-direct {v2, v3, v4}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;-><init>(Ljava/lang/Class;I)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/16 v6, 0xc

    invoke-direct {v2, v5, v6}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;-><init>(Ljava/lang/Class;I)V

    const/4 v7, 0x1

    aput-object v2, v1, v7

    new-instance v2, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/16 v9, 0xd

    invoke-direct {v2, v8, v9}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;-><init>(Ljava/lang/Class;I)V

    const/4 v10, 0x2

    aput-object v2, v1, v10

    new-instance v2, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v12, 0xe

    invoke-direct {v2, v11, v12}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;-><init>(Ljava/lang/Class;I)V

    const/4 v12, 0x3

    aput-object v2, v1, v12

    new-instance v2, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

    sget-object v13, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/16 v14, 0xf

    invoke-direct {v2, v13, v14}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;-><init>(Ljava/lang/Class;I)V

    const/4 v13, 0x4

    aput-object v2, v1, v13

    new-instance v2, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

    sget-object v14, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const/16 v15, 0x10

    invoke-direct {v2, v14, v15}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;-><init>(Ljava/lang/Class;I)V

    const/4 v14, 0x5

    aput-object v2, v1, v14

    new-instance v2, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

    sget-object v15, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/16 v6, 0x11

    invoke-direct {v2, v15, v6}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;-><init>(Ljava/lang/Class;I)V

    const/4 v6, 0x6

    aput-object v2, v1, v6

    new-instance v2, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

    const/16 v15, 0x12

    const-class v9, Ljava/lang/String;

    invoke-direct {v2, v9, v15}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;-><init>(Ljava/lang/Class;I)V

    const/4 v15, 0x7

    aput-object v2, v1, v15

    sput-object v1, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver;->m_javaObjConversions:[Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

    new-array v2, v13, [Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

    new-instance v0, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

    sget-object v15, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v15, v3}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;-><init>(Ljava/lang/Class;I)V

    aput-object v0, v2, v3

    new-instance v0, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

    const-class v6, Ljava/lang/Boolean;

    invoke-direct {v0, v6, v7}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;-><init>(Ljava/lang/Class;I)V

    aput-object v0, v2, v7

    new-instance v0, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

    const-class v6, Ljava/lang/Object;

    invoke-direct {v0, v6, v10}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;-><init>(Ljava/lang/Class;I)V

    aput-object v0, v2, v10

    new-instance v0, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

    invoke-direct {v0, v9, v12}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;-><init>(Ljava/lang/Class;I)V

    aput-object v0, v2, v12

    sput-object v2, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver;->m_booleanConversions:[Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

    new-array v0, v4, [Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

    new-instance v4, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

    sget-object v14, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-direct {v4, v14, v3}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;-><init>(Ljava/lang/Class;I)V

    aput-object v4, v0, v3

    new-instance v4, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

    const-class v14, Ljava/lang/Double;

    invoke-direct {v4, v14, v7}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;-><init>(Ljava/lang/Class;I)V

    aput-object v4, v0, v7

    new-instance v4, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

    invoke-direct {v4, v5, v12}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;-><init>(Ljava/lang/Class;I)V

    aput-object v4, v0, v10

    new-instance v4, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

    invoke-direct {v4, v8, v13}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;-><init>(Ljava/lang/Class;I)V

    aput-object v4, v0, v12

    new-instance v4, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

    const/4 v14, 0x5

    invoke-direct {v4, v11, v14}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;-><init>(Ljava/lang/Class;I)V

    aput-object v4, v0, v13

    new-instance v4, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

    sget-object v13, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/4 v12, 0x6

    invoke-direct {v4, v13, v12}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;-><init>(Ljava/lang/Class;I)V

    aput-object v4, v0, v14

    new-instance v4, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

    sget-object v13, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const/4 v14, 0x7

    invoke-direct {v4, v13, v14}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;-><init>(Ljava/lang/Class;I)V

    aput-object v4, v0, v12

    new-instance v4, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

    sget-object v12, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/16 v13, 0x8

    invoke-direct {v4, v12, v13}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;-><init>(Ljava/lang/Class;I)V

    aput-object v4, v0, v14

    new-instance v4, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

    const/16 v12, 0x9

    invoke-direct {v4, v15, v12}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;-><init>(Ljava/lang/Class;I)V

    aput-object v4, v0, v13

    new-instance v4, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

    const/16 v13, 0xa

    invoke-direct {v4, v9, v13}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;-><init>(Ljava/lang/Class;I)V

    aput-object v4, v0, v12

    new-instance v4, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

    const/16 v14, 0xb

    invoke-direct {v4, v6, v14}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;-><init>(Ljava/lang/Class;I)V

    aput-object v4, v0, v13

    sput-object v0, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver;->m_numberConversions:[Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

    new-array v4, v13, [Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

    new-instance v14, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

    invoke-direct {v14, v9, v3}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;-><init>(Ljava/lang/Class;I)V

    aput-object v14, v4, v3

    new-instance v14, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

    invoke-direct {v14, v6, v7}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;-><init>(Ljava/lang/Class;I)V

    aput-object v14, v4, v7

    new-instance v14, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

    sget-object v13, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v14, v13, v10}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;-><init>(Ljava/lang/Class;I)V

    aput-object v14, v4, v10

    new-instance v13, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

    sget-object v14, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x3

    invoke-direct {v13, v14, v10}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;-><init>(Ljava/lang/Class;I)V

    aput-object v13, v4, v10

    new-instance v13, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

    invoke-direct {v13, v5, v10}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;-><init>(Ljava/lang/Class;I)V

    const/4 v14, 0x4

    aput-object v13, v4, v14

    new-instance v13, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

    invoke-direct {v13, v8, v10}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;-><init>(Ljava/lang/Class;I)V

    const/4 v14, 0x5

    aput-object v13, v4, v14

    new-instance v13, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

    invoke-direct {v13, v11, v10}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;-><init>(Ljava/lang/Class;I)V

    const/4 v14, 0x6

    aput-object v13, v4, v14

    new-instance v13, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

    sget-object v14, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-direct {v13, v14, v10}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;-><init>(Ljava/lang/Class;I)V

    const/4 v14, 0x7

    aput-object v13, v4, v14

    new-instance v13, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

    sget-object v14, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {v13, v14, v10}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;-><init>(Ljava/lang/Class;I)V

    const/16 v10, 0x8

    aput-object v13, v4, v10

    new-instance v10, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

    const/4 v13, 0x4

    invoke-direct {v10, v15, v13}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;-><init>(Ljava/lang/Class;I)V

    aput-object v10, v4, v12

    sput-object v4, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver;->m_stringConversions:[Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

    const/16 v10, 0xd

    new-array v13, v10, [Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

    new-instance v10, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

    const-class v14, Lorg/w3c/dom/traversal/NodeIterator;

    invoke-direct {v10, v14, v3}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;-><init>(Ljava/lang/Class;I)V

    aput-object v10, v13, v3

    new-instance v10, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

    const-class v3, Lorg/w3c/dom/NodeList;

    invoke-direct {v10, v3, v7}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;-><init>(Ljava/lang/Class;I)V

    aput-object v10, v13, v7

    new-instance v10, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

    const-class v7, Lorg/w3c/dom/Node;

    const/4 v12, 0x2

    invoke-direct {v10, v7, v12}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;-><init>(Ljava/lang/Class;I)V

    aput-object v10, v13, v12

    new-instance v10, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

    const/4 v12, 0x3

    invoke-direct {v10, v9, v12}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;-><init>(Ljava/lang/Class;I)V

    aput-object v10, v13, v12

    new-instance v10, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

    const/4 v12, 0x5

    invoke-direct {v10, v6, v12}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;-><init>(Ljava/lang/Class;I)V

    const/16 v16, 0x4

    aput-object v10, v13, v16

    new-instance v10, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

    move-object/from16 v17, v4

    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    move-object/from16 v18, v0

    const/4 v0, 0x6

    invoke-direct {v10, v4, v0}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;-><init>(Ljava/lang/Class;I)V

    aput-object v10, v13, v12

    new-instance v4, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v12, 0x7

    invoke-direct {v4, v10, v12}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;-><init>(Ljava/lang/Class;I)V

    aput-object v4, v13, v0

    new-instance v0, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

    invoke-direct {v0, v5, v12}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;-><init>(Ljava/lang/Class;I)V

    aput-object v0, v13, v12

    new-instance v0, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

    invoke-direct {v0, v8, v12}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;-><init>(Ljava/lang/Class;I)V

    const/16 v4, 0x8

    aput-object v0, v13, v4

    new-instance v0, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

    invoke-direct {v0, v11, v12}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;-><init>(Ljava/lang/Class;I)V

    const/16 v4, 0x9

    aput-object v0, v13, v4

    new-instance v0, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v4, v12}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;-><init>(Ljava/lang/Class;I)V

    const/16 v4, 0xa

    aput-object v0, v13, v4

    new-instance v0, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v4, v12}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;-><init>(Ljava/lang/Class;I)V

    const/16 v4, 0xb

    aput-object v0, v13, v4

    new-instance v0, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

    const/16 v4, 0x8

    invoke-direct {v0, v15, v4}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;-><init>(Ljava/lang/Class;I)V

    const/16 v4, 0xc

    aput-object v0, v13, v4

    sput-object v13, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver;->m_rtfConversions:[Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

    const/16 v0, 0xd

    new-array v0, v0, [Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

    new-instance v4, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

    const/4 v10, 0x0

    invoke-direct {v4, v14, v10}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;-><init>(Ljava/lang/Class;I)V

    aput-object v4, v0, v10

    new-instance v4, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

    const/4 v10, 0x1

    invoke-direct {v4, v3, v10}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;-><init>(Ljava/lang/Class;I)V

    aput-object v4, v0, v10

    new-instance v3, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

    const/4 v4, 0x2

    invoke-direct {v3, v7, v4}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;-><init>(Ljava/lang/Class;I)V

    aput-object v3, v0, v4

    new-instance v3, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

    const/4 v4, 0x3

    invoke-direct {v3, v9, v4}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;-><init>(Ljava/lang/Class;I)V

    aput-object v3, v0, v4

    new-instance v3, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

    const/4 v4, 0x5

    invoke-direct {v3, v6, v4}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;-><init>(Ljava/lang/Class;I)V

    const/4 v6, 0x4

    aput-object v3, v0, v6

    new-instance v3, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

    sget-object v6, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x6

    invoke-direct {v3, v6, v7}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;-><init>(Ljava/lang/Class;I)V

    aput-object v3, v0, v4

    new-instance v3, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x7

    invoke-direct {v3, v4, v6}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;-><init>(Ljava/lang/Class;I)V

    aput-object v3, v0, v7

    new-instance v3, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

    invoke-direct {v3, v5, v6}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;-><init>(Ljava/lang/Class;I)V

    aput-object v3, v0, v6

    new-instance v3, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

    invoke-direct {v3, v8, v6}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;-><init>(Ljava/lang/Class;I)V

    const/16 v4, 0x8

    aput-object v3, v0, v4

    new-instance v3, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

    invoke-direct {v3, v11, v6}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;-><init>(Ljava/lang/Class;I)V

    const/16 v4, 0x9

    aput-object v3, v0, v4

    new-instance v3, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-direct {v3, v4, v6}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;-><init>(Ljava/lang/Class;I)V

    const/16 v4, 0xa

    aput-object v3, v0, v4

    new-instance v3, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {v3, v4, v6}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;-><init>(Ljava/lang/Class;I)V

    const/16 v4, 0xb

    aput-object v3, v0, v4

    new-instance v3, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

    const/16 v4, 0x8

    invoke-direct {v3, v15, v4}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;-><init>(Ljava/lang/Class;I)V

    const/16 v4, 0xc

    aput-object v3, v0, v4

    sput-object v0, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver;->m_nodesetConversions:[Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

    const/4 v3, 0x6

    new-array v3, v3, [[Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const/4 v1, 0x2

    aput-object v18, v3, v1

    const/4 v1, 0x3

    aput-object v17, v3, v1

    const/4 v1, 0x4

    aput-object v0, v3, v1

    const/4 v0, 0x5

    aput-object v13, v3, v0

    sput-object v3, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver;->m_conversions:[[Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    instance-of v0, p0, Lcom/sun/org/apache/xpath/internal/objects/XObject;

    const-class v1, Ljava/lang/String;

    if-eqz v0, :cond_1f

    check-cast p0, Lcom/sun/org/apache/xpath/internal/objects/XObject;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->getType()I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1e

    const/4 v4, 0x1

    if-eq v0, v4, :cond_1c

    const/4 v4, 0x2

    if-eq v0, v4, :cond_19

    const/4 v4, 0x3

    const-class v5, Ljava/lang/Object;

    if-eq v0, v4, :cond_13

    const/4 v4, 0x4

    const-class v6, Lorg/w3c/dom/Node;

    const-class v7, Lorg/w3c/dom/NodeList;

    const-class v8, Lorg/w3c/dom/traversal/NodeIterator;

    if-eq v0, v4, :cond_9

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->object()Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_3

    :cond_0
    if-eq p1, v8, :cond_8

    if-ne p1, v5, :cond_1

    goto :goto_0

    :cond_1
    if-ne p1, v7, :cond_2

    check-cast p0, Lcom/sun/org/apache/xpath/internal/objects/XRTreeFrag;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XRTreeFrag;->convertToNodeset()Lorg/w3c/dom/NodeList;

    move-result-object p0

    return-object p0

    :cond_2
    if-ne p1, v6, :cond_3

    check-cast p0, Lcom/sun/org/apache/xpath/internal/objects/XRTreeFrag;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XRTreeFrag;->asNodeIterator()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object p0

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->nextNode()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getFirstChild(I)I

    move-result p1

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    :cond_3
    if-ne p1, v1, :cond_4

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->str()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_5

    new-instance p1, Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->bool()Z

    move-result p0

    invoke-direct {p1, p0}, Ljava/lang/Boolean;-><init>(Z)V

    return-object p1

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->num()D

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver;->convertDoubleToNumber(DLjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_6
    check-cast p0, Lcom/sun/org/apache/xpath/internal/objects/XRTreeFrag;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XRTreeFrag;->asNodeIterator()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object p0

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->nextNode()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getFirstChild(I)I

    move-result v0

    invoke-interface {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_7

    return-object p0

    :cond_7
    return-object v3

    :cond_8
    :goto_0
    check-cast p0, Lcom/sun/org/apache/xpath/internal/objects/XRTreeFrag;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XRTreeFrag;->asNodeIterator()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object p0

    new-instance p1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeIterator;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;)V

    return-object p1

    :cond_9
    if-eq p1, v8, :cond_12

    if-ne p1, v5, :cond_a

    goto :goto_1

    :cond_a
    if-ne p1, v7, :cond_b

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->nodelist()Lorg/w3c/dom/NodeList;

    move-result-object p0

    return-object p0

    :cond_b
    if-ne p1, v6, :cond_d

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->iter()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object p0

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->nextNode()I

    move-result p1

    if-eq p1, v2, :cond_c

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    :cond_c
    return-object v3

    :cond_d
    if-ne p1, v1, :cond_e

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->str()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_e
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_f

    new-instance p1, Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->bool()Z

    move-result p0

    invoke-direct {p1, p0}, Ljava/lang/Boolean;-><init>(Z)V

    return-object p1

    :cond_f
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->num()D

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver;->convertDoubleToNumber(DLjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_10
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->iter()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object p0

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->nextNode()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_11

    return-object p0

    :cond_11
    return-object v3

    :cond_12
    :goto_1
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->nodeset()Lorg/w3c/dom/traversal/NodeIterator;

    move-result-object p0

    return-object p0

    :cond_13
    if-eq p1, v1, :cond_18

    if-ne p1, v5, :cond_14

    goto :goto_2

    :cond_14
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_16

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->str()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_15

    new-instance p1, Ljava/lang/Character;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-direct {p1, p0}, Ljava/lang/Character;-><init>(C)V

    return-object p1

    :cond_15
    return-object v3

    :cond_16
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_17

    new-instance p1, Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->bool()Z

    move-result p0

    invoke-direct {p1, p0}, Ljava/lang/Boolean;-><init>(Z)V

    return-object p1

    :cond_17
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->num()D

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver;->convertDoubleToNumber(DLjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_18
    :goto_2
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->str()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_19
    if-ne p1, v1, :cond_1a

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->str()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1a
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1b

    new-instance p1, Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->bool()Z

    move-result p0

    invoke-direct {p1, p0}, Ljava/lang/Boolean;-><init>(Z)V

    return-object p1

    :cond_1b
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->num()D

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver;->convertDoubleToNumber(DLjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1c
    if-ne p1, v1, :cond_1d

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->str()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1d
    new-instance p1, Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->bool()Z

    move-result p0

    invoke-direct {p1, p0}, Ljava/lang/Boolean;-><init>(Z)V

    return-object p1

    :cond_1e
    return-object v3

    :cond_1f
    :goto_3
    if-eqz p0, :cond_22

    if-ne p1, v1, :cond_20

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_20
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_21

    new-instance v0, Lcom/sun/org/apache/xpath/internal/objects/XString;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xpath/internal/objects/XString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/objects/XString;->num()D

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver;->convertDoubleToNumber(DLjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_21
    const-class v0, Ljava/lang/Class;

    if-ne p1, v0, :cond_22

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    :cond_22
    return-object p0
.end method

.method public static convertDoubleToNumber(DLjava/lang/Class;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_7

    const-class v0, Ljava/lang/Double;

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_1

    new-instance p2, Ljava/lang/Float;

    invoke-direct {p2, p0, p1}, Ljava/lang/Float;-><init>(D)V

    return-object p2

    :cond_1
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_2

    new-instance p2, Ljava/lang/Long;

    double-to-long p0, p0

    invoke-direct {p2, p0, p1}, Ljava/lang/Long;-><init>(J)V

    return-object p2

    :cond_2
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_3

    new-instance p2, Ljava/lang/Integer;

    double-to-int p0, p0

    invoke-direct {p2, p0}, Ljava/lang/Integer;-><init>(I)V

    return-object p2

    :cond_3
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_4

    new-instance p2, Ljava/lang/Short;

    double-to-int p0, p0

    int-to-short p0, p0

    invoke-direct {p2, p0}, Ljava/lang/Short;-><init>(S)V

    return-object p2

    :cond_4
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_5

    new-instance p2, Ljava/lang/Character;

    double-to-int p0, p0

    int-to-char p0, p0

    invoke-direct {p2, p0}, Ljava/lang/Character;-><init>(C)V

    return-object p2

    :cond_5
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_6

    new-instance p2, Ljava/lang/Byte;

    double-to-int p0, p0

    int-to-byte p0, p0

    invoke-direct {p2, p0}, Ljava/lang/Byte;-><init>(B)V

    return-object p2

    :cond_6
    new-instance p2, Ljava/lang/Double;

    invoke-direct {p2, p0, p1}, Ljava/lang/Double;-><init>(D)V

    return-object p2

    :cond_7
    :goto_0
    new-instance p2, Ljava/lang/Double;

    invoke-direct {p2, p0, p1}, Ljava/lang/Double;-><init>(D)V

    return-object p2
.end method

.method public static convertParams([Ljava/lang/Object;[[Ljava/lang/Object;[Ljava/lang/Class;Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const/4 p0, 0x0

    aput-object p0, p1, v0

    goto :goto_2

    :cond_0
    array-length v1, p2

    new-array v2, v1, [Ljava/lang/Object;

    aput-object v2, p1, v0

    const/4 v2, 0x1

    if-lez v1, :cond_1

    const-class v3, Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;

    aget-object v4, p2, v0

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    aget-object v3, p1, v0

    aput-object p3, v3, v0

    move p3, v2

    goto :goto_0

    :cond_1
    move p3, v0

    :goto_0
    if-eqz p0, :cond_2

    array-length v3, p0

    sub-int/2addr v3, v1

    add-int/2addr v3, p3

    :goto_1
    if-ge p3, v1, :cond_2

    aget-object v4, p1, v0

    aget-object v5, p0, v3

    aget-object v6, p2, p3

    invoke-static {v5, v6}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver;->convert(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, p3

    add-int/2addr v3, v2

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method private static errArgs([Ljava/lang/Object;I)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    move v1, p1

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    if-eq v1, p1, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    aget-object v2, p0, v1

    instance-of v3, v2, Lcom/sun/org/apache/xpath/internal/objects/XObject;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/sun/org/apache/xpath/internal/objects/XObject;

    invoke-virtual {v2}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->getTypeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static errString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "For extension "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", could not find "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "static "

    const/4 v1, 0x1

    const-string v2, ")."

    const/4 v3, 0x0

    const-string v4, "([ExpressionContext,] "

    const-string v5, "."

    if-eq p4, v1, :cond_4

    const/4 v6, 0x2

    if-eq p4, v6, :cond_3

    const/4 v6, 0x3

    if-eq p4, v6, :cond_2

    const/4 v6, 0x4

    if-eq p4, v6, :cond_1

    const-string p4, "function"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5, v3}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver;->errArgs([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "(com.sun.org.apache.xalan.internal.extensions.XSLProcessorContext, "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "com.sun.org.apache.xalan.internal.templates.ElemExtensionCall)."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "([ExpressionContext, ]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5, v3}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver;->errArgs([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") nor\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5, v1}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver;->errArgs([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5, v3}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver;->errArgs([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ").\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Checked both static and instance methods."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5, v3}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver;->errArgs([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5, v3}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver;->errArgs([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getConstructor(Ljava/lang/Class;[Ljava/lang/Object;[[Ljava/lang/Object;Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;)Ljava/lang/reflect/Constructor;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/SecurityException;,
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    move-object v5, p1

    invoke-virtual {p0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const/4 v4, 0x0

    move v6, v3

    move v7, v4

    move-object v3, v2

    :goto_0
    if-ge v7, v1, :cond_3

    aget-object v8, v0, v7

    invoke-virtual {v8}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    array-length v10, v9

    array-length v11, v5

    const/4 v12, 0x1

    add-int/2addr v11, v12

    if-ne v10, v11, :cond_0

    aget-object v11, v9, v4

    const-class v13, Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;

    invoke-virtual {v13, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_2

    move v11, v4

    goto :goto_1

    :cond_0
    const/16 v11, 0x3e8

    move v12, v4

    :goto_1
    array-length v13, v5

    sub-int/2addr v10, v12

    if-ne v13, v10, :cond_2

    invoke-static {v9, v12, p1, v11}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver;->scoreMatch([Ljava/lang/Class;I[Ljava/lang/Object;I)I

    move-result v10

    const/4 v11, -0x1

    if-ne v11, v10, :cond_1

    goto :goto_2

    :cond_1
    if-ge v10, v6, :cond_2

    move-object v2, v8

    move-object v3, v9

    move v6, v10

    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {p1, v0, v3, v1}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver;->convertParams([Ljava/lang/Object;[[Ljava/lang/Object;[Ljava/lang/Class;Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;)V

    return-object v2

    :cond_4
    new-instance v6, Ljava/lang/NoSuchMethodException;

    const-string v0, "function"

    const-string v1, "constructor"

    const-string v3, ""

    const/4 v4, 0x0

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver;->errString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public static getElementMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/SecurityException;,
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    const/4 v6, 0x1

    if-ge v4, v1, :cond_1

    aget-object v7, v0, v4

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    array-length v9, v8

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    aget-object v9, v8, v6

    const-class v10, Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionCall;

    invoke-virtual {v9, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_0

    aget-object v8, v8, v3

    const-class v9, Lcom/sun/org/apache/xalan/internal/extensions/XSLProcessorContext;

    invoke-virtual {v8, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_0

    add-int/lit8 v5, v5, 0x1

    if-ne v5, v6, :cond_1

    move-object v2, v7

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_3

    if-gt v5, v6, :cond_2

    return-object v2

    :cond_2
    new-instance p0, Ljavax/xml/transform/TransformerException;

    const-string v0, "ER_MORE_MATCH_ELEMENT"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance v0, Ljava/lang/NoSuchMethodException;

    const-string v1, "element"

    const-string v2, "method"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver;->errString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[[Ljava/lang/Object;Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;I)Ljava/lang/reflect/Method;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/SecurityException;,
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    move-object/from16 v5, p2

    move/from16 v4, p5

    const-string v0, "-"

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver;->replaceDash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v6, 0x0

    const v7, 0x7fffffff

    move v9, v6

    move v8, v7

    move-object v7, v2

    :goto_1
    if-ge v9, v1, :cond_9

    aget-object v10, v0, v9

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v11

    invoke-static {v11}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v11

    const/4 v12, 0x1

    if-eq v4, v12, :cond_3

    const/4 v13, 0x2

    if-eq v4, v13, :cond_2

    const/4 v13, 0x4

    if-eq v4, v13, :cond_1

    goto :goto_2

    :cond_1
    if-nez v11, :cond_4

    move v11, v12

    goto :goto_3

    :cond_2
    if-eqz v11, :cond_4

    goto :goto_6

    :cond_3
    if-nez v11, :cond_4

    goto :goto_6

    :cond_4
    :goto_2
    move v11, v6

    :goto_3
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v13

    array-length v14, v13

    if-eqz v5, :cond_5

    array-length v15, v5

    goto :goto_4

    :cond_5
    move v15, v6

    :goto_4
    sub-int/2addr v15, v11

    add-int/lit8 v11, v15, 0x1

    if-ne v14, v11, :cond_6

    aget-object v11, v13, v6

    const-class v6, Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;

    invoke-virtual {v6, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v6, 0x0

    goto :goto_5

    :cond_6
    const/16 v6, 0x3e8

    const/4 v12, 0x0

    :goto_5
    sub-int/2addr v14, v12

    if-ne v15, v14, :cond_8

    invoke-static {v13, v12, v5, v6}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver;->scoreMatch([Ljava/lang/Class;I[Ljava/lang/Object;I)I

    move-result v6

    const/4 v11, -0x1

    if-ne v11, v6, :cond_7

    goto :goto_6

    :cond_7
    if-ge v6, v8, :cond_8

    move v8, v6

    move-object v2, v10

    move-object v7, v13

    :cond_8
    :goto_6
    add-int/lit8 v9, v9, 0x1

    const/4 v6, 0x0

    goto :goto_1

    :cond_9
    if-eqz v2, :cond_a

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-static {v5, v0, v7, v1}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver;->convertParams([Ljava/lang/Object;[[Ljava/lang/Object;[Ljava/lang/Class;Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;)V

    return-object v2

    :cond_a
    new-instance v6, Ljava/lang/NoSuchMethodException;

    const-string v0, "function"

    const-string v1, "method"

    move-object/from16 v2, p0

    move/from16 v4, p5

    move-object/from16 v5, p2

    invoke-static/range {v0 .. v5}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver;->errString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private static replaceDash(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    if-lez v1, :cond_1

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static scoreMatch([Ljava/lang/Class;I[Ljava/lang/Object;I)I
    .locals 12

    if-eqz p2, :cond_a

    if-nez p0, :cond_0

    goto/16 :goto_6

    :cond_0
    array-length v0, p2

    array-length v1, p0

    sub-int v1, v0, v1

    add-int/2addr v1, p1

    :goto_0
    if-ge v1, v0, :cond_a

    aget-object v2, p2, v1

    instance-of v3, v2, Lcom/sun/org/apache/xpath/internal/objects/XObject;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    move-object v5, v2

    check-cast v5, Lcom/sun/org/apache/xpath/internal/objects/XObject;

    invoke-virtual {v5}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->getType()I

    move-result v5

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    aget-object v6, p0, p1

    const/4 v7, -0x1

    if-ne v5, v7, :cond_4

    invoke-virtual {v6}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    add-int/lit8 p3, p3, 0xa

    goto :goto_5

    :cond_3
    return v7

    :cond_4
    sget-object v8, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver;->m_conversions:[[Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;

    aget-object v8, v8, v5

    array-length v9, v8

    :goto_2
    if-ge v4, v9, :cond_6

    aget-object v10, v8, v4

    iget-object v11, v10, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;->m_class:Ljava/lang/Class;

    invoke-virtual {v6, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_5

    iget v8, v10, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;->m_score:I

    add-int/2addr p3, v8

    goto :goto_3

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    if-ne v4, v9, :cond_9

    if-nez v5, :cond_8

    if-eqz v3, :cond_7

    check-cast v2, Lcom/sun/org/apache/xpath/internal/objects/XObject;

    invoke-virtual {v2}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->object()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_4

    :cond_7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    :goto_4
    invoke-virtual {v6, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_8

    add-int/lit8 p3, p3, 0x0

    goto :goto_5

    :cond_8
    return v7

    :cond_9
    :goto_5
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_a
    :goto_6
    return p3
.end method
