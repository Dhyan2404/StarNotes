.class public Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;",
            ">;"
        }
    .end annotation
.end field

.field public final e:[Ljava/util/Map;

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;",
            "Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->a:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->b:Ljava/util/Map;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->c:Ljava/util/Map;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->d:Ljava/util/Map;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/util/Map;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    iput-object v4, p0, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->e:[Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->f:Ljava/util/Map;

    invoke-static {}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->a()[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v5, v1, :cond_0

    aget-object v2, v0, v5

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->add(Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a()[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    const/16 v0, 0x46

    new-array v0, v0, [Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v2, "ACC_PUBLIC"

    const/4 v3, 0x0

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4, v3}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v2, "ACC_PUBLIC"

    const/4 v5, 0x1

    invoke-direct {v1, v2, v5, v4, v3}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    aput-object v1, v0, v5

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v2, "ACC_PUBLIC"

    const/4 v6, 0x2

    invoke-direct {v1, v2, v6, v4, v3}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v2, "ACC_PRIVATE"

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v7, "ACC_PRIVATE"

    invoke-direct {v1, v7, v5, v4, v5}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/4 v7, 0x4

    aput-object v1, v0, v7

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v8, "ACC_PRIVATE"

    invoke-direct {v1, v8, v6, v4, v5}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/4 v8, 0x5

    aput-object v1, v0, v8

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v9, "LineNumberTable"

    const-string v10, "NH[PHH]"

    invoke-direct {v1, v9, v2, v10, v5}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/4 v9, 0x6

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v10, "ACC_PROTECTED"

    invoke-direct {v1, v10, v3, v4, v6}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/4 v10, 0x7

    aput-object v1, v0, v10

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v11, "ACC_PROTECTED"

    invoke-direct {v1, v11, v5, v4, v6}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v11, 0x8

    aput-object v1, v0, v11

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v12, "ACC_PROTECTED"

    invoke-direct {v1, v12, v6, v4, v6}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v12, 0x9

    aput-object v1, v0, v12

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v13, "LocalVariableTable"

    const-string v14, "NH[PHOHRUHRSHH]"

    invoke-direct {v1, v13, v2, v14, v6}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v13, 0xa

    aput-object v1, v0, v13

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v14, "ACC_STATIC"

    invoke-direct {v1, v14, v3, v4, v2}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v14, 0xb

    aput-object v1, v0, v14

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v15, "ACC_STATIC"

    invoke-direct {v1, v15, v5, v4, v2}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v15, 0xc

    aput-object v1, v0, v15

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v15, "ACC_STATIC"

    invoke-direct {v1, v15, v6, v4, v2}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v15, 0xd

    aput-object v1, v0, v15

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v15, "LocalVariableTypeTable"

    const-string v14, "NH[PHOHRUHRSHH]"

    invoke-direct {v1, v15, v2, v14, v2}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v14, "ACC_FINAL"

    invoke-direct {v1, v14, v3, v4, v7}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v14, 0xf

    aput-object v1, v0, v14

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v14, "ACC_FINAL"

    invoke-direct {v1, v14, v5, v4, v7}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v14, 0x10

    aput-object v1, v0, v14

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v14, "ACC_FINAL"

    invoke-direct {v1, v14, v6, v4, v7}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v7, 0x11

    aput-object v1, v0, v7

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v14, "ACC_SYNCHRONIZED"

    invoke-direct {v1, v14, v3, v4, v8}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v14, 0x12

    aput-object v1, v0, v14

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v14, "ACC_SYNCHRONIZED"

    invoke-direct {v1, v14, v5, v4, v8}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v14, 0x13

    aput-object v1, v0, v14

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v15, "ACC_SYNCHRONIZED"

    invoke-direct {v1, v15, v6, v4, v8}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v8, 0x14

    aput-object v1, v0, v8

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v15, "ACC_VOLATILE"

    invoke-direct {v1, v15, v3, v4, v9}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v15, 0x15

    aput-object v1, v0, v15

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v15, "ACC_VOLATILE"

    invoke-direct {v1, v15, v5, v4, v9}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v15, 0x16

    aput-object v1, v0, v15

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v15, "ACC_VOLATILE"

    invoke-direct {v1, v15, v6, v4, v9}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v9, 0x17

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v9, "ACC_TRANSIENT"

    invoke-direct {v1, v9, v3, v4, v10}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v9, 0x18

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v9, "ACC_TRANSIENT"

    invoke-direct {v1, v9, v5, v4, v10}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v9, 0x19

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v9, "ACC_TRANSIENT"

    invoke-direct {v1, v9, v6, v4, v10}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v9, 0x1a

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v9, "ACC_NATIVE"

    invoke-direct {v1, v9, v3, v4, v11}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v9, 0x1b

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v9, "ACC_NATIVE"

    invoke-direct {v1, v9, v5, v4, v11}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v9, 0x1c

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v9, "ACC_NATIVE"

    invoke-direct {v1, v9, v6, v4, v11}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v9, 0x1d

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v9, "ACC_INTERFACE"

    invoke-direct {v1, v9, v3, v4, v12}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v9, 0x1e

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v9, "ACC_INTERFACE"

    invoke-direct {v1, v9, v5, v4, v12}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v9, 0x1f

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v9, "ACC_INTERFACE"

    invoke-direct {v1, v9, v6, v4, v12}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v9, 0x20

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v9, "ACC_ABSTRACT"

    invoke-direct {v1, v9, v3, v4, v13}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v9, 0x21

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v9, "ACC_ABSTRACT"

    invoke-direct {v1, v9, v5, v4, v13}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v9, 0x22

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v9, "ACC_ABSTRACT"

    invoke-direct {v1, v9, v6, v4, v13}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v9, 0x23

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v9, "ACC_STRICT"

    const/16 v10, 0xb

    invoke-direct {v1, v9, v3, v4, v10}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v9, 0x24

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v9, "ACC_STRICT"

    invoke-direct {v1, v9, v5, v4, v10}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v9, 0x25

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v9, "ACC_STRICT"

    invoke-direct {v1, v9, v6, v4, v10}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v9, 0x26

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v9, "ACC_SYNTHETIC"

    const/16 v10, 0xc

    invoke-direct {v1, v9, v3, v4, v10}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v9, 0x27

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v9, "ACC_SYNTHETIC"

    invoke-direct {v1, v9, v5, v4, v10}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v9, 0x28

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v9, "ACC_SYNTHETIC"

    invoke-direct {v1, v9, v6, v4, v10}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v9, 0x29

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v9, "ACC_ANNOTATION"

    const/16 v10, 0xd

    invoke-direct {v1, v9, v3, v4, v10}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v9, 0x2a

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v9, "ACC_ANNOTATION"

    invoke-direct {v1, v9, v5, v4, v10}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v9, 0x2b

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v9, "ACC_ANNOTATION"

    invoke-direct {v1, v9, v6, v4, v10}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v9, 0x2c

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v9, "ACC_ENUM"

    invoke-direct {v1, v9, v3, v4, v2}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v9, 0x2d

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v9, "ACC_ENUM"

    invoke-direct {v1, v9, v5, v4, v2}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v9, 0x2e

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v9, "ACC_ENUM"

    invoke-direct {v1, v9, v6, v4, v2}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v2, "SourceFile"

    const-string v9, "RUNH"

    invoke-direct {v1, v2, v3, v9, v7}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v2, 0x30

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v2, "ConstantValue"

    const-string v9, "KQH"

    invoke-direct {v1, v2, v5, v9, v7}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v2, 0x31

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v2, "Code"

    invoke-direct {v1, v2, v6, v4, v7}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v2, 0x32

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v2, "RCHRDNH"

    const/16 v7, 0x12

    const-string v9, "EnclosingMethod"

    invoke-direct {v1, v9, v3, v2, v7}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v2, 0x33

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v2, "NH[RCH]"

    const-string v9, "Exceptions"

    invoke-direct {v1, v9, v6, v2, v7}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v2, 0x34

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v2, "Signature"

    const-string v7, "RSH"

    invoke-direct {v1, v2, v3, v7, v14}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v2, 0x35

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v2, "Signature"

    const-string v7, "RSH"

    invoke-direct {v1, v2, v5, v7, v14}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v2, 0x36

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v2, "Signature"

    const-string v7, "RSH"

    invoke-direct {v1, v2, v6, v7, v14}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v2, 0x37

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v2, "Deprecated"

    invoke-direct {v1, v2, v3, v4, v8}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v2, 0x38

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v2, "Deprecated"

    invoke-direct {v1, v2, v5, v4, v8}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v2, 0x39

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v2, "Deprecated"

    invoke-direct {v1, v2, v6, v4, v8}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v2, "RuntimeVisibleAnnotations"

    const-string v7, "*"

    const/16 v8, 0x15

    invoke-direct {v1, v2, v3, v7, v8}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v2, "RuntimeVisibleAnnotations"

    invoke-direct {v1, v2, v5, v7, v8}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v2, "RuntimeVisibleAnnotations"

    invoke-direct {v1, v2, v6, v7, v8}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v2, "RuntimeInvisibleAnnotations"

    const/16 v8, 0x16

    invoke-direct {v1, v2, v3, v7, v8}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v2, "RuntimeInvisibleAnnotations"

    invoke-direct {v1, v2, v5, v7, v8}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v2, "RuntimeInvisibleAnnotations"

    invoke-direct {v1, v2, v6, v7, v8}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v2, 0x40

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v2, "InnerClasses"

    const/16 v5, 0x17

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v2, 0x41

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v2, "RuntimeVisibleParameterAnnotations"

    invoke-direct {v1, v2, v6, v7, v5}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v2, 0x42

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v2, "class-file version"

    const/16 v5, 0x18

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v2, 0x43

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v2, "RuntimeInvisibleParameterAnnotations"

    const/16 v3, 0x18

    invoke-direct {v1, v2, v6, v7, v3}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v2, 0x44

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v2, "AnnotationDefault"

    const/16 v3, 0x19

    invoke-direct {v1, v2, v6, v7, v3}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v2, 0x45

    aput-object v1, v0, v2

    return-object v0
.end method


# virtual methods
.method public add(Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->getContext()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->b(I)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->getIndex()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public add(Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->add(Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;)V

    .line 3
    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->f:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b(I)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->e:[Ljava/util/Map;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public checkMap()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->e:[Ljava/util/Map;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    aget-object v3, p0, v2

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    instance-of v4, v3, Ljava/util/List;

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v3, v4

    :cond_0
    check-cast v3, Ljava/util/List;

    move v4, v1

    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    add-int/lit8 v4, v4, 0x1

    move v6, v4

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->getLayout()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->getLayout()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_2

    :cond_2
    new-instance p0, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Same layout/name combination: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->getLayout()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " exists twice for context: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->contextNames:[Ljava/lang/String;

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->getContext()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public getAttributeBands(Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;)Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->f:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;

    return-object p0
.end method

.method public getAttributeLayout(II)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->b(I)Ljava/util/Map;

    move-result-object p0

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    return-object p0
.end method

.method public getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .locals 1

    .line 3
    invoke-virtual {p0, p2}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->b(I)Ljava/util/Map;

    move-result-object p0

    .line 4
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    .line 5
    invoke-virtual {p2}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
