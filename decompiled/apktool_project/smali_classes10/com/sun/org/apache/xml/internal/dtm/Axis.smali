.class public final Lcom/sun/org/apache/xml/internal/dtm/Axis;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALL:I = 0x10

.field public static final ALLFROMNODE:I = 0xe

.field public static final ANCESTOR:I = 0x0

.field public static final ANCESTORORSELF:I = 0x1

.field public static final ATTRIBUTE:I = 0x2

.field public static final CHILD:I = 0x3

.field public static final DESCENDANT:I = 0x4

.field public static final DESCENDANTORSELF:I = 0x5

.field public static final DESCENDANTSFROMROOT:I = 0x11

.field public static final DESCENDANTSORSELFFROMROOT:I = 0x12

.field public static final FILTEREDLIST:I = 0x14

.field public static final FOLLOWING:I = 0x6

.field public static final FOLLOWINGSIBLING:I = 0x7

.field public static final NAMESPACE:I = 0x9

.field public static final NAMESPACEDECLS:I = 0x8

.field public static final PARENT:I = 0xa

.field public static final PRECEDING:I = 0xb

.field public static final PRECEDINGANDANCESTOR:I = 0xf

.field public static final PRECEDINGSIBLING:I = 0xc

.field public static final ROOT:I = 0x13

.field public static final SELF:I = 0xd

.field private static final isReverse:[Z

.field private static final names:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 22

    const/16 v0, 0xe

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/org/apache/xml/internal/dtm/Axis;->isReverse:[Z

    const-string v1, "ancestor"

    const-string v2, "ancestor-or-self"

    const-string v3, "attribute"

    const-string v4, "child"

    const-string v5, "descendant"

    const-string v6, "descendant-or-self"

    const-string v7, "following"

    const-string v8, "following-sibling"

    const-string v9, "namespace-decls"

    const-string v10, "namespace"

    const-string v11, "parent"

    const-string v12, "preceding"

    const-string v13, "preceding-sibling"

    const-string v14, "self"

    const-string v15, "all-from-node"

    const-string v16, "preceding-and-ancestor"

    const-string v17, "all"

    const-string v18, "descendants-from-root"

    const-string v19, "descendants-or-self-from-root"

    const-string v20, "root"

    const-string v21, "filtered-list"

    filled-new-array/range {v1 .. v21}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/dtm/Axis;->names:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNames(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sun/org/apache/xml/internal/dtm/Axis;->names:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static getNamesLength()I
    .locals 1

    sget-object v0, Lcom/sun/org/apache/xml/internal/dtm/Axis;->names:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public static isReverse(I)Z
    .locals 1

    sget-object v0, Lcom/sun/org/apache/xml/internal/dtm/Axis;->isReverse:[Z

    aget-boolean p0, v0, p0

    return p0
.end method
