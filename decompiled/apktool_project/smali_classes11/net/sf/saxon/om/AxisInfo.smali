.class public final Lnet/sf/saxon/om/AxisInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ANCESTOR:I = 0x0

.field public static final ANCESTOR_OR_SELF:I = 0x1

.field public static final ATTRIBUTE:I = 0x2

.field public static final CHILD:I = 0x3

.field public static final DESCENDANT:I = 0x4

.field public static final DESCENDANT_OR_SELF:I = 0x5

.field public static final FOLLOWING:I = 0x6

.field public static final FOLLOWING_SIBLING:I = 0x7

.field public static final NAMESPACE:I = 0x8

.field public static final PARENT:I = 0x9

.field public static final PRECEDING:I = 0xa

.field public static final PRECEDING_OR_ANCESTOR:I = 0xd

.field public static final PRECEDING_SIBLING:I = 0xb

.field public static final SELF:I = 0xc

.field public static final a:I = 0x200

.field public static final axisName:[Ljava/lang/String;

.field public static final b:I = 0x2

.field public static final c:I = 0x4

.field public static final d:I = 0x8

.field public static final e:I = 0x80

.field public static excludeSelfAxis:[I = null

.field public static final f:I = 0x100

.field public static final g:I = 0x2000

.field public static final h:[I

.field public static final i:[I

.field public static inverseAxis:[I

.field public static final isForwards:[Z

.field public static final isPeerAxis:[Z

.field public static final isSubtreeAxis:[Z

.field public static final j:Lnet/sf/saxon/z/IntHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/sf/saxon/z/IntHashMap<",
            "Lnet/sf/saxon/type/UType;",
            ">;"
        }
    .end annotation
.end field

.field public static final principalNodeType:[S

.field public static final principalNodeUType:[Lnet/sf/saxon/type/UType;


# direct methods
.method public static constructor <clinit>()V
    .locals 30

    const/16 v0, 0xe

    new-array v1, v0, [S

    fill-array-data v1, :array_0

    sput-object v1, Lnet/sf/saxon/om/AxisInfo;->principalNodeType:[S

    new-array v1, v0, [Lnet/sf/saxon/type/UType;

    sget-object v2, Lnet/sf/saxon/type/UType;->ELEMENT:Lnet/sf/saxon/type/UType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v5, Lnet/sf/saxon/type/UType;->ATTRIBUTE:Lnet/sf/saxon/type/UType;

    const/4 v6, 0x2

    aput-object v5, v1, v6

    const/4 v7, 0x3

    aput-object v2, v1, v7

    const/4 v8, 0x4

    aput-object v2, v1, v8

    const/4 v9, 0x5

    aput-object v2, v1, v9

    const/4 v10, 0x6

    aput-object v2, v1, v10

    const/4 v11, 0x7

    aput-object v2, v1, v11

    sget-object v12, Lnet/sf/saxon/type/UType;->NAMESPACE:Lnet/sf/saxon/type/UType;

    const/16 v13, 0x8

    aput-object v12, v1, v13

    const/16 v14, 0x9

    aput-object v2, v1, v14

    const/16 v15, 0xa

    aput-object v2, v1, v15

    const/16 v15, 0xb

    aput-object v2, v1, v15

    const/16 v15, 0xc

    aput-object v2, v1, v15

    const/16 v15, 0xd

    aput-object v2, v1, v15

    sput-object v1, Lnet/sf/saxon/om/AxisInfo;->principalNodeUType:[Lnet/sf/saxon/type/UType;

    new-array v1, v0, [Z

    fill-array-data v1, :array_1

    sput-object v1, Lnet/sf/saxon/om/AxisInfo;->isForwards:[Z

    new-array v1, v0, [Z

    fill-array-data v1, :array_2

    sput-object v1, Lnet/sf/saxon/om/AxisInfo;->isPeerAxis:[Z

    new-array v0, v0, [Z

    fill-array-data v0, :array_3

    sput-object v0, Lnet/sf/saxon/om/AxisInfo;->isSubtreeAxis:[Z

    const-string v16, "ancestor"

    const-string v17, "ancestor-or-self"

    const-string v18, "attribute"

    const-string v19, "child"

    const-string v20, "descendant"

    const-string v21, "descendant-or-self"

    const-string v22, "following"

    const-string v23, "following-sibling"

    const-string v24, "namespace"

    const-string v25, "parent"

    const-string v26, "preceding"

    const-string v27, "preceding-sibling"

    const-string v28, "self"

    const-string v29, "preceding-or-ancestor"

    filled-new-array/range {v16 .. v29}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/om/AxisInfo;->axisName:[Ljava/lang/String;

    new-array v0, v15, [I

    fill-array-data v0, :array_4

    sput-object v0, Lnet/sf/saxon/om/AxisInfo;->h:[I

    new-array v0, v15, [I

    fill-array-data v0, :array_5

    sput-object v0, Lnet/sf/saxon/om/AxisInfo;->i:[I

    new-array v0, v15, [I

    fill-array-data v0, :array_6

    sput-object v0, Lnet/sf/saxon/om/AxisInfo;->inverseAxis:[I

    new-array v0, v15, [I

    fill-array-data v0, :array_7

    sput-object v0, Lnet/sf/saxon/om/AxisInfo;->excludeSelfAxis:[I

    new-instance v0, Lnet/sf/saxon/z/IntHashMap;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lnet/sf/saxon/z/IntHashMap;-><init>(I)V

    sput-object v0, Lnet/sf/saxon/om/AxisInfo;->j:Lnet/sf/saxon/z/IntHashMap;

    sget-object v0, Lnet/sf/saxon/type/PrimitiveUType;->DOCUMENT:Lnet/sf/saxon/type/PrimitiveUType;

    sget-object v1, Lnet/sf/saxon/type/UType;->VOID:Lnet/sf/saxon/type/UType;

    invoke-static {v0, v3, v1}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    sget-object v15, Lnet/sf/saxon/type/UType;->DOCUMENT:Lnet/sf/saxon/type/UType;

    invoke-static {v0, v4, v15}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    invoke-static {v0, v6, v1}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    sget-object v6, Lnet/sf/saxon/type/UType;->CHILD_NODE_KINDS:Lnet/sf/saxon/type/UType;

    invoke-static {v0, v7, v6}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    invoke-static {v0, v8, v6}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    invoke-virtual {v15, v6}, Lnet/sf/saxon/type/UType;->union(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object v8

    invoke-static {v0, v9, v8}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    invoke-static {v0, v10, v1}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    invoke-static {v0, v11, v1}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    invoke-static {v0, v13, v1}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    invoke-static {v0, v14, v1}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    const/16 v8, 0xa

    invoke-static {v0, v8, v1}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    const/16 v8, 0xb

    invoke-static {v0, v8, v1}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    const/16 v8, 0xc

    invoke-static {v0, v8, v15}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    sget-object v0, Lnet/sf/saxon/type/PrimitiveUType;->ELEMENT:Lnet/sf/saxon/type/PrimitiveUType;

    sget-object v8, Lnet/sf/saxon/type/UType;->PARENT_NODE_KINDS:Lnet/sf/saxon/type/UType;

    invoke-static {v0, v3, v8}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    invoke-static {v0, v4, v8}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    const/4 v15, 0x2

    invoke-static {v0, v15, v5}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    invoke-static {v0, v7, v6}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    const/4 v15, 0x4

    invoke-static {v0, v15, v6}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    invoke-static {v0, v9, v6}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    invoke-static {v0, v10, v6}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    invoke-static {v0, v11, v6}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    invoke-static {v0, v13, v12}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    invoke-static {v0, v14, v8}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    const/16 v15, 0xa

    invoke-static {v0, v15, v6}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    const/16 v15, 0xb

    invoke-static {v0, v15, v6}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    const/16 v15, 0xc

    invoke-static {v0, v15, v2}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    sget-object v0, Lnet/sf/saxon/type/PrimitiveUType;->ATTRIBUTE:Lnet/sf/saxon/type/PrimitiveUType;

    invoke-static {v0, v3, v8}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    invoke-virtual {v5, v8}, Lnet/sf/saxon/type/UType;->union(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object v15

    invoke-static {v0, v4, v15}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    const/4 v15, 0x2

    invoke-static {v0, v15, v1}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    invoke-static {v0, v7, v1}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    const/4 v15, 0x4

    invoke-static {v0, v15, v1}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    invoke-static {v0, v9, v5}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    invoke-static {v0, v10, v6}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    invoke-static {v0, v11, v1}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    invoke-static {v0, v13, v1}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    invoke-static {v0, v14, v2}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    const/16 v15, 0xa

    invoke-static {v0, v15, v6}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    const/16 v15, 0xb

    invoke-static {v0, v15, v1}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    const/16 v15, 0xc

    invoke-static {v0, v15, v5}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    sget-object v0, Lnet/sf/saxon/type/PrimitiveUType;->TEXT:Lnet/sf/saxon/type/PrimitiveUType;

    invoke-static {v0, v3, v8}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    sget-object v5, Lnet/sf/saxon/type/UType;->TEXT:Lnet/sf/saxon/type/UType;

    invoke-virtual {v5, v8}, Lnet/sf/saxon/type/UType;->union(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object v15

    invoke-static {v0, v4, v15}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    const/4 v15, 0x2

    invoke-static {v0, v15, v1}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    invoke-static {v0, v7, v1}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    const/4 v15, 0x4

    invoke-static {v0, v15, v1}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    invoke-static {v0, v9, v5}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    invoke-static {v0, v10, v6}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    invoke-static {v0, v11, v6}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    invoke-static {v0, v13, v1}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    invoke-static {v0, v14, v8}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    const/16 v15, 0xa

    invoke-static {v0, v15, v6}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    const/16 v15, 0xb

    invoke-static {v0, v15, v6}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    const/16 v15, 0xc

    invoke-static {v0, v15, v5}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    sget-object v0, Lnet/sf/saxon/type/PrimitiveUType;->PI:Lnet/sf/saxon/type/PrimitiveUType;

    invoke-static {v0, v3, v8}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    sget-object v5, Lnet/sf/saxon/type/UType;->PI:Lnet/sf/saxon/type/UType;

    invoke-virtual {v5, v8}, Lnet/sf/saxon/type/UType;->union(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object v15

    invoke-static {v0, v4, v15}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    const/4 v15, 0x2

    invoke-static {v0, v15, v1}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    invoke-static {v0, v7, v1}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    const/4 v15, 0x4

    invoke-static {v0, v15, v1}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    invoke-static {v0, v9, v5}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    invoke-static {v0, v10, v6}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    invoke-static {v0, v11, v6}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    invoke-static {v0, v13, v1}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    invoke-static {v0, v14, v8}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    const/16 v15, 0xa

    invoke-static {v0, v15, v6}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    const/16 v15, 0xb

    invoke-static {v0, v15, v6}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    const/16 v15, 0xc

    invoke-static {v0, v15, v5}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    sget-object v0, Lnet/sf/saxon/type/PrimitiveUType;->COMMENT:Lnet/sf/saxon/type/PrimitiveUType;

    invoke-static {v0, v3, v8}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    sget-object v5, Lnet/sf/saxon/type/UType;->COMMENT:Lnet/sf/saxon/type/UType;

    invoke-virtual {v5, v8}, Lnet/sf/saxon/type/UType;->union(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object v15

    invoke-static {v0, v4, v15}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    const/4 v15, 0x2

    invoke-static {v0, v15, v1}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    invoke-static {v0, v7, v1}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    const/4 v15, 0x4

    invoke-static {v0, v15, v1}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    invoke-static {v0, v9, v5}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    invoke-static {v0, v10, v6}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    invoke-static {v0, v11, v6}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    invoke-static {v0, v13, v1}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    invoke-static {v0, v14, v8}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    const/16 v15, 0xa

    invoke-static {v0, v15, v6}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    const/16 v15, 0xb

    invoke-static {v0, v15, v6}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    const/16 v15, 0xc

    invoke-static {v0, v15, v5}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    sget-object v0, Lnet/sf/saxon/type/PrimitiveUType;->NAMESPACE:Lnet/sf/saxon/type/PrimitiveUType;

    invoke-static {v0, v3, v8}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    invoke-virtual {v12, v8}, Lnet/sf/saxon/type/UType;->union(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object v3

    invoke-static {v0, v4, v3}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    const/4 v3, 0x2

    invoke-static {v0, v3, v1}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    invoke-static {v0, v7, v1}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    const/4 v3, 0x4

    invoke-static {v0, v3, v1}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    invoke-static {v0, v9, v12}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    invoke-static {v0, v10, v6}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    invoke-static {v0, v11, v1}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    invoke-static {v0, v13, v1}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    invoke-static {v0, v14, v2}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    const/16 v2, 0xa

    invoke-static {v0, v2, v6}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    const/16 v2, 0xb

    invoke-static {v0, v2, v1}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    const/16 v1, 0xc

    invoke-static {v0, v1, v12}, Lnet/sf/saxon/om/AxisInfo;->a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V

    return-void

    nop

    :array_0
    .array-data 2
        0x1s
        0x1s
        0x2s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0xds
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data

    nop

    :array_4
    .array-data 4
        0x200
        0x0
        0x238c
        0x218c
        0x218c
        0x0
        0x200
        0x2204
        0x238c
        0x200
        0x200
        0x2204
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x202
        0x238e
        0x4
        0x18a
        0x18a
        0x238e
        0x18a
        0x18a
        0x2000
        0x202
        0x18a
        0x18a
        0x238e
    .end array-data

    :array_6
    .array-data 4
        0x4
        0x5
        0x9
        0x9
        0x0
        0x1
        0xa
        0xb
        0x9
        0x3
        0x6
        0x7
        0xc
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x0
        0x2
        0x3
        0x4
        0x4
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lnet/sf/saxon/type/PrimitiveUType;ILnet/sf/saxon/type/UType;)V
    .locals 1

    sget-object v0, Lnet/sf/saxon/om/AxisInfo;->j:Lnet/sf/saxon/z/IntHashMap;

    invoke-static {p0, p1}, Lnet/sf/saxon/om/AxisInfo;->b(Lnet/sf/saxon/type/PrimitiveUType;I)I

    move-result p0

    invoke-virtual {v0, p0, p2}, Lnet/sf/saxon/z/IntHashMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static b(Lnet/sf/saxon/type/PrimitiveUType;I)I
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/type/PrimitiveUType;->getBit()I

    move-result p0

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, p1

    return p0
.end method

.method public static containsNodeKind(II)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    sget-object v1, Lnet/sf/saxon/om/AxisInfo;->i:[I

    aget p0, v1, p0

    shl-int p1, v0, p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static getAxisNumber(Ljava/lang/String;)I
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xd

    const/16 v3, 0xc

    const/16 v4, 0xb

    const/16 v5, 0xa

    const/16 v6, 0x9

    const/16 v7, 0x8

    const/4 v8, 0x7

    const/4 v9, 0x6

    const/4 v10, 0x5

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "ancestor-or-self"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    move/from16 v16, v2

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "namespace"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :cond_1
    move/from16 v16, v3

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "following"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_0

    :cond_2
    move/from16 v16, v4

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "preceding-or-ancestor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    :cond_3
    move/from16 v16, v5

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "preceding-sibling"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_0

    :cond_4
    move/from16 v16, v6

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "child"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_0

    :cond_5
    move/from16 v16, v7

    goto/16 :goto_0

    :sswitch_6
    const-string v1, "attribute"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_0

    :cond_6
    move/from16 v16, v8

    goto :goto_0

    :sswitch_7
    const-string v1, "self"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    move/from16 v16, v9

    goto :goto_0

    :sswitch_8
    const-string v1, "descendant-or-self"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_0

    :cond_8
    move/from16 v16, v10

    goto :goto_0

    :sswitch_9
    const-string v1, "ancestor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_0

    :cond_9
    move/from16 v16, v11

    goto :goto_0

    :sswitch_a
    const-string v1, "parent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_0

    :cond_a
    move/from16 v16, v12

    goto :goto_0

    :sswitch_b
    const-string v1, "descendant"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_0

    :cond_b
    move/from16 v16, v13

    goto :goto_0

    :sswitch_c
    const-string v1, "preceding"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_0

    :cond_c
    move/from16 v16, v14

    goto :goto_0

    :sswitch_d
    const-string v1, "following-sibling"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_0

    :cond_d
    move/from16 v16, v15

    :goto_0
    packed-switch v16, :pswitch_data_0

    new-instance v1, Lnet/sf/saxon/trans/XPathException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown axis name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    return v14

    :pswitch_1
    return v7

    :pswitch_2
    return v9

    :pswitch_3
    return v2

    :pswitch_4
    return v4

    :pswitch_5
    return v12

    :pswitch_6
    return v13

    :pswitch_7
    return v3

    :pswitch_8
    return v10

    :pswitch_9
    return v15

    :pswitch_a
    return v6

    :pswitch_b
    return v11

    :pswitch_c
    return v5

    :pswitch_d
    return v8

    :sswitch_data_0
    .sparse-switch
        -0x6de2247a -> :sswitch_d
        -0x5245fb3d -> :sswitch_c
        -0x42897303 -> :sswitch_b
        -0x3b54f756 -> :sswitch_a
        -0x3a0b762d -> :sswitch_9
        -0x2c92c3da -> :sswitch_8
        0x35cf4c -> :sswitch_7
        0xc7aa9c -> :sswitch_6
        0x5a3f51c -> :sswitch_5
        0x145c9bb8 -> :sswitch_4
        0x28b5f873 -> :sswitch_3
        0x2da6f291 -> :sswitch_2
        0x4aa3555b -> :sswitch_1
        0x5d6402fc -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static getTargetUType(Lnet/sf/saxon/type/UType;I)Lnet/sf/saxon/type/UType;
    .locals 4

    sget-object v0, Lnet/sf/saxon/type/UType;->VOID:Lnet/sf/saxon/type/UType;

    sget-object v1, Lnet/sf/saxon/type/UType;->ANY_NODE:Lnet/sf/saxon/type/UType;

    invoke-virtual {p0, v1}, Lnet/sf/saxon/type/UType;->intersection(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/type/UType;->decompose()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/type/PrimitiveUType;

    sget-object v2, Lnet/sf/saxon/om/AxisInfo;->j:Lnet/sf/saxon/z/IntHashMap;

    invoke-static {v1, p1}, Lnet/sf/saxon/om/AxisInfo;->b(Lnet/sf/saxon/type/PrimitiveUType;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lnet/sf/saxon/z/IntHashMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/type/UType;

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Lnet/sf/saxon/type/UType;->union(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown transitions for primitive type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lnet/sf/saxon/type/PrimitiveUType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_1
    return-object v0
.end method

.method public static isAlwaysEmpty(II)Z
    .locals 1

    sget-object v0, Lnet/sf/saxon/om/AxisInfo;->h:[I

    aget p0, v0, p0

    const/4 v0, 0x1

    shl-int p1, v0, p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
