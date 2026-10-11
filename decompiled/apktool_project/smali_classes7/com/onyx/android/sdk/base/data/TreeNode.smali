.class public final Lcom/onyx/android/sdk/base/data/TreeNode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/base/data/TreeNode$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTreeNode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TreeNode.kt\ncom/onyx/android/sdk/base/data/TreeNode\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,352:1\n1855#2,2:353\n1855#2,2:355\n766#2:357\n857#2,2:358\n1855#2,2:360\n1855#2,2:362\n1855#2,2:364\n1855#2,2:366\n1855#2,2:368\n*S KotlinDebug\n*F\n+ 1 TreeNode.kt\ncom/onyx/android/sdk/base/data/TreeNode\n*L\n164#1:353,2\n190#1:355,2\n202#1:357\n202#1:358,2\n217#1:360,2\n259#1:362,2\n297#1:364,2\n339#1:366,2\n348#1:368,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u000f\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u000b\n\u0002\u0010!\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008)\u0018\u0000 a*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u0002:\u0001aB\'\u0008\u0016\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0007\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0008J$\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u001fJ\u001c\u0010 \u001a\u00020\u000f2\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\"\u001a\u00020\u001fJ\u0014\u0010#\u001a\u00020\u000f2\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0000J\u0006\u0010%\u001a\u00020&J%\u0010\'\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u0007\u001a\u00028\u00002\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010(J%\u0010)\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u0007\u001a\u00028\u00002\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010(J\u001a\u0010*\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0000J\u000c\u0010+\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0000J\u000e\u0010,\u001a\u00020\u000f2\u0006\u0010-\u001a\u00020\u001fJ\u0010\u0010.\u001a\u00020\u000f2\u0008\u0008\u0002\u0010/\u001a\u00020\u001fJ\u0006\u0010\u000e\u001a\u00020&J\u0006\u00100\u001a\u00020&J\u0012\u00101\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u000002J\u0012\u00103\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u000004J\u001a\u00103\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0000042\u0006\u00105\u001a\u00020\u0006J2\u00106\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00002\"\u00107\u001a\u001e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0000\u0012\u0004\u0012\u00020\u000f08j\u0008\u0012\u0004\u0012\u00028\u0000`9J\u0018\u00106\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00002\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006JB\u0010:\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00002\u000c\u0010;\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\"\u00107\u001a\u001e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0000\u0012\u0004\u0012\u00020\u000f08j\u0008\u0012\u0004\u0012\u00028\u0000`9H\u0002Jf\u0010<\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0000022\"\u00107\u001a\u001e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0000\u0012\u0004\u0012\u00020\u000f08j\u0008\u0012\u0004\u0012\u00028\u0000`92$\u0008\u0002\u0010=\u001a\u001e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0000\u0012\u0004\u0012\u00020\u000f08j\u0008\u0012\u0004\u0012\u00028\u0000`92\u0008\u0008\u0002\u00105\u001a\u00020\u0006J8\u0010>\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0000022$\u0008\u0002\u00107\u001a\u001e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0000\u0012\u0004\u0012\u00020\u000f08j\u0008\u0012\u0004\u0012\u00028\u0000`9J\u0006\u0010?\u001a\u00020\u001fJ\u0014\u0010@\u001a\u00020\u001f2\u000c\u0010A\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0000J\u000c\u0010B\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0000J\u000e\u0010C\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000604J\u0012\u0010D\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u000002J\u0006\u0010E\u001a\u00020\u000fJ\u0006\u0010F\u001a\u00020\u000fJ\u0014\u0010G\u001a\u00020\u000f2\u000c\u0010H\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0000J\u0006\u0010I\u001a\u00020\u000fJ\u0006\u0010J\u001a\u00020\u000fJ\u0014\u0010K\u001a\u00020\u000f2\u000c\u0010H\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0000J\u0006\u0010L\u001a\u00020\u000fJ\u0006\u0010M\u001a\u00020\u001fJ\u0006\u0010N\u001a\u00020\u001fJ$\u0010O\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u001fJ\u001a\u0010P\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0000J\u000c\u0010Q\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0000J2\u0010R\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00002\"\u00107\u001a\u001e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0000\u0012\u0004\u0012\u00020\u000f08j\u0008\u0012\u0004\u0012\u00028\u0000`9J*\u0010S\u001a\u00020&2\"\u00107\u001a\u001e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0000\u0012\u0004\u0012\u00020\u000f08j\u0008\u0012\u0004\u0012\u00028\u0000`9J$\u0010T\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u001fJ\u0008\u0010U\u001a\u00020\u0006H\u0016J\u0006\u0010V\u001a\u00020&J\u0019\u0010W\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u000002H\u0000\u00a2\u0006\u0002\u0008XJ0\u0010Y\u001a\u00020&2\u0012\u0010Z\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0000022\u0012\u0010[\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u000002H\u0002J\u0019\u0010\\\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u000002H\u0000\u00a2\u0006\u0002\u0008]J\u001c\u0010^\u001a\u00020&2\u0012\u0010[\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u000002H\u0002J!\u0010_\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0000022\u0006\u00105\u001a\u00020\u0006H\u0000\u00a2\u0006\u0002\u0008`R\u001c\u0010\u0007\u001a\u00028\u0000X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\r\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0006X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0015\"\u0004\u0008\u0018\u0010\u0019R\u0017\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\u00a8\u0006b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/base/data/TreeNode;",
        "T",
        "",
        "tree",
        "Lcom/onyx/android/sdk/base/data/NewTree;",
        "id",
        "",
        "data",
        "(Lcom/onyx/android/sdk/base/data/NewTree;Ljava/lang/String;Ljava/lang/Object;)V",
        "getData",
        "()Ljava/lang/Object;",
        "setData",
        "(Ljava/lang/Object;)V",
        "Ljava/lang/Object;",
        "expand",
        "",
        "getExpand",
        "()Z",
        "setExpand",
        "(Z)V",
        "getId",
        "()Ljava/lang/String;",
        "parentId",
        "getParentId$sdk_base_release",
        "setParentId$sdk_base_release",
        "(Ljava/lang/String;)V",
        "getTree",
        "()Lcom/onyx/android/sdk/base/data/NewTree;",
        "addChild",
        "child",
        "index",
        "",
        "canAdopt",
        "targetBranchNode",
        "maxLimit",
        "canReparent",
        "newParent",
        "collapse",
        "",
        "createChild",
        "(Ljava/lang/Object;Ljava/lang/String;)Lcom/onyx/android/sdk/base/data/TreeNode;",
        "createNode",
        "detachChild",
        "detachFromParent",
        "exceedMaxLevel",
        "maxLevel",
        "exceedMiniLevel",
        "minLevel",
        "expandChildren",
        "findChildren",
        "",
        "findChildrenNodes",
        "",
        "strategy",
        "findNode",
        "predication",
        "Lkotlin/Function1;",
        "Lcom/onyx/android/sdk/base/data/TreeNodePredication;",
        "findNodeInternal",
        "parentNode",
        "findNodes",
        "breakCondition",
        "flatten",
        "getChildCount",
        "getMaxDepth",
        "branchNode",
        "getParent",
        "getParentIds",
        "getPathNoteTreeNodes",
        "hasChild",
        "hasParent",
        "isParent",
        "node",
        "isParentAllExpand",
        "isRootNode",
        "isSibling",
        "isTop",
        "levelToLeaf",
        "levelToRoot",
        "parent",
        "removeChild",
        "removeFromParent",
        "removeNode",
        "removeNodes",
        "reparent",
        "toString",
        "toggleExpand",
        "traverseByBreadth",
        "traverseByBreadth$sdk_base_release",
        "traverseByBreadthInternal",
        "levelNodes",
        "list",
        "traverseByDepth",
        "traverseByDepth$sdk_base_release",
        "traverseByDepthInternal",
        "traverseByStrategy",
        "traverseByStrategy$sdk_base_release",
        "Companion",
        "sdk-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTreeNode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TreeNode.kt\ncom/onyx/android/sdk/base/data/TreeNode\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,352:1\n1855#2,2:353\n1855#2,2:355\n766#2:357\n857#2,2:358\n1855#2,2:360\n1855#2,2:362\n1855#2,2:364\n1855#2,2:366\n1855#2,2:368\n*S KotlinDebug\n*F\n+ 1 TreeNode.kt\ncom/onyx/android/sdk/base/data/TreeNode\n*L\n164#1:353,2\n190#1:355,2\n202#1:357\n202#1:358,2\n217#1:360,2\n259#1:362,2\n297#1:364,2\n339#1:366,2\n348#1:368,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/base/data/TreeNode$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MINI_LEVEL:I = 0x2

.field public static final ROOT_LEVEL:I = 0x1


# instance fields
.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private expand:Z

.field private final id:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private parentId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final tree:Lcom/onyx/android/sdk/base/data/NewTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/base/data/NewTree<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/base/data/TreeNode$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/base/data/TreeNode$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/base/data/TreeNode;->Companion:Lcom/onyx/android/sdk/base/data/TreeNode$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/base/data/NewTree;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/NewTree;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/NewTree<",
            "TT;>;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    const-string v0, "tree"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/android/sdk/base/data/TreeNode;->parentId:Ljava/lang/String;

    iput-object p1, p0, Lcom/onyx/android/sdk/base/data/TreeNode;->tree:Lcom/onyx/android/sdk/base/data/NewTree;

    iput-object p2, p0, Lcom/onyx/android/sdk/base/data/TreeNode;->id:Ljava/lang/String;

    iput-object p3, p0, Lcom/onyx/android/sdk/base/data/TreeNode;->data:Ljava/lang/Object;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/base/data/NewTree;->addNode$sdk_base_release(Lcom/onyx/android/sdk/base/data/TreeNode;)V

    return-void
.end method

.method public static synthetic addChild$default(Lcom/onyx/android/sdk/base/data/TreeNode;Lcom/onyx/android/sdk/base/data/TreeNode;IILjava/lang/Object;)Lcom/onyx/android/sdk/base/data/TreeNode;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, -0x1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/base/data/TreeNode;->addChild(Lcom/onyx/android/sdk/base/data/TreeNode;I)Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic createChild$default(Lcom/onyx/android/sdk/base/data/TreeNode;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)Lcom/onyx/android/sdk/base/data/TreeNode;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/base/data/TreeNode;->createChild(Ljava/lang/Object;Ljava/lang/String;)Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic createNode$default(Lcom/onyx/android/sdk/base/data/TreeNode;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)Lcom/onyx/android/sdk/base/data/TreeNode;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/base/data/TreeNode;->createNode(Ljava/lang/Object;Ljava/lang/String;)Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic exceedMiniLevel$default(Lcom/onyx/android/sdk/base/data/TreeNode;IILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/data/TreeNode;->exceedMiniLevel(I)Z

    move-result p0

    return p0
.end method

.method private final findNodeInternal(Lcom/onyx/android/sdk/base/data/TreeNode;Lkotlin/jvm/functions/Function1;)Lcom/onyx/android/sdk/base/data/TreeNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "TT;>;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "TT;>;"
        }
    .end annotation

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TreeNode;->findChildren()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-direct {p0, v0, p2}, Lcom/onyx/android/sdk/base/data/TreeNode;->findNodeInternal(Lcom/onyx/android/sdk/base/data/TreeNode;Lkotlin/jvm/functions/Function1;)Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic findNodes$default(Lcom/onyx/android/sdk/base/data/TreeNode;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    sget-object p2, Lcom/onyx/android/sdk/base/data/TreeNode$findNodes$1;->INSTANCE:Lcom/onyx/android/sdk/base/data/TreeNode$findNodes$1;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const-string p3, "BFS"

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/base/data/TreeNode;->findNodes(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic flatten$default(Lcom/onyx/android/sdk/base/data/TreeNode;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, Lcom/onyx/android/sdk/base/data/TreeNode$flatten$1;->INSTANCE:Lcom/onyx/android/sdk/base/data/TreeNode$flatten$1;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/data/TreeNode;->flatten(Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic parent$default(Lcom/onyx/android/sdk/base/data/TreeNode;Lcom/onyx/android/sdk/base/data/TreeNode;IILjava/lang/Object;)Lcom/onyx/android/sdk/base/data/TreeNode;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, -0x1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/base/data/TreeNode;->parent(Lcom/onyx/android/sdk/base/data/TreeNode;I)Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic reparent$default(Lcom/onyx/android/sdk/base/data/TreeNode;Lcom/onyx/android/sdk/base/data/TreeNode;IILjava/lang/Object;)Lcom/onyx/android/sdk/base/data/TreeNode;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, -0x1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/base/data/TreeNode;->reparent(Lcom/onyx/android/sdk/base/data/TreeNode;I)Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object p0

    return-object p0
.end method

.method private final traverseByBreadthInternal(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "TT;>;>;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "TT;>;>;)V"
        }
    .end annotation

    :goto_0
    move-object p0, p1

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    invoke-interface {p2, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TreeNode;->findChildren()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_0
    move-object p1, p0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final traverseByDepthInternal(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "TT;>;>;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TreeNode;->findChildren()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final addChild(Lcom/onyx/android/sdk/base/data/TreeNode;I)Lcom/onyx/android/sdk/base/data/TreeNode;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/base/data/TreeNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "TT;>;I)",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/base/data/TreeNode;->id:Ljava/lang/String;

    iput-object v0, p1, Lcom/onyx/android/sdk/base/data/TreeNode;->parentId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TreeNode;->findChildren()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1, p2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isOutOfRange(Ljava/util/Collection;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_0
    return-object p0
.end method

.method public final canAdopt(Lcom/onyx/android/sdk/base/data/TreeNode;I)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TreeNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "TT;>;I)Z"
        }
    .end annotation

    const-string v0, "targetBranchNode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p0}, Lcom/onyx/android/sdk/base/data/TreeNode;->getMaxDepth(Lcom/onyx/android/sdk/base/data/TreeNode;)I

    move-result p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TreeNode;->levelToRoot()I

    move-result p1

    add-int/2addr p0, p1

    if-gt p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final canReparent(Lcom/onyx/android/sdk/base/data/TreeNode;)Z
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/base/data/TreeNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "TT;>;)Z"
        }
    .end annotation

    const-string v0, "newParent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lcom/onyx/android/sdk/base/data/TreeNode;->flatten$default(Lcom/onyx/android/sdk/base/data/TreeNode;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v2, Lcom/onyx/android/sdk/base/data/TreeNode$canReparent$1;

    invoke-direct {v2, p1}, Lcom/onyx/android/sdk/base/data/TreeNode$canReparent$1;-><init>(Lcom/onyx/android/sdk/base/data/TreeNode;)V

    invoke-static {v0, v2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->contains(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/base/data/TreeNode;->tree:Lcom/onyx/android/sdk/base/data/NewTree;

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/base/data/NewTree;->exceedMaxDepth$sdk_base_release(Lcom/onyx/android/sdk/base/data/TreeNode;Lcom/onyx/android/sdk/base/data/TreeNode;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v2

    :cond_1
    return v1
.end method

.method public final collapse()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onyx/android/sdk/base/data/TreeNode;->expand:Z

    return-void
.end method

.method public final createChild(Ljava/lang/Object;Ljava/lang/String;)Lcom/onyx/android/sdk/base/data/TreeNode;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/base/data/TreeNode;->createNode(Ljava/lang/Object;Ljava/lang/String;)Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object p1

    const/4 p2, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, p2, v0}, Lcom/onyx/android/sdk/base/data/TreeNode;->addChild$default(Lcom/onyx/android/sdk/base/data/TreeNode;Lcom/onyx/android/sdk/base/data/TreeNode;IILjava/lang/Object;)Lcom/onyx/android/sdk/base/data/TreeNode;

    return-object p1
.end method

.method public final createNode(Ljava/lang/Object;Ljava/lang/String;)Lcom/onyx/android/sdk/base/data/TreeNode;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/base/data/TreeNode;->tree:Lcom/onyx/android/sdk/base/data/NewTree;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/base/data/NewTree;->createNode(Ljava/lang/Object;Ljava/lang/String;)Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object p0

    return-object p0
.end method

.method public final detachChild(Lcom/onyx/android/sdk/base/data/TreeNode;)Lcom/onyx/android/sdk/base/data/TreeNode;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TreeNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "TT;>;)",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TreeNode;->findChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-string v0, ""

    iput-object v0, p1, Lcom/onyx/android/sdk/base/data/TreeNode;->parentId:Ljava/lang/String;

    return-object p0
.end method

.method public final detachFromParent()Lcom/onyx/android/sdk/base/data/TreeNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TreeNode;->hasParent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TreeNode;->getParent()Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/data/TreeNode;->detachChild(Lcom/onyx/android/sdk/base/data/TreeNode;)Lcom/onyx/android/sdk/base/data/TreeNode;

    :cond_0
    return-object p0
.end method

.method public final exceedMaxLevel(I)Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TreeNode;->levelToRoot()I

    move-result p0

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final exceedMiniLevel(I)Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TreeNode;->levelToRoot()I

    move-result p0

    if-gt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final expand()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/android/sdk/base/data/TreeNode;->expand:Z

    return-void
.end method

.method public final expandChildren()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TreeNode;->findChildrenNodes()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TreeNode;->hasChild()Z

    move-result v1

    iput-boolean v1, v0, Lcom/onyx/android/sdk/base/data/TreeNode;->expand:Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final findChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "TT;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/base/data/TreeNode;->tree:Lcom/onyx/android/sdk/base/data/NewTree;

    iget-object p0, p0, Lcom/onyx/android/sdk/base/data/TreeNode;->id:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/data/NewTree;->findChildNodes$sdk_base_release(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final findChildrenNodes()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "TT;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v1, Lcom/onyx/android/sdk/base/data/TreeNode$findChildrenNodes$1;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/base/data/TreeNode$findChildrenNodes$1;-><init>(Lcom/onyx/android/sdk/base/data/TreeNode;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/data/TreeNode;->findNodes$default(Lcom/onyx/android/sdk/base/data/TreeNode;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final findChildrenNodes(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "TT;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "strategy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v2, Lcom/onyx/android/sdk/base/data/TreeNode$findChildrenNodes$2;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/base/data/TreeNode$findChildrenNodes$2;-><init>(Lcom/onyx/android/sdk/base/data/TreeNode;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/data/TreeNode;->findNodes$default(Lcom/onyx/android/sdk/base/data/TreeNode;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final findNode(Ljava/lang/String;)Lcom/onyx/android/sdk/base/data/TreeNode;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    new-instance v0, Lcom/onyx/android/sdk/base/data/TreeNode$findNode$1;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/base/data/TreeNode$findNode$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/data/TreeNode;->findNode(Lkotlin/jvm/functions/Function1;)Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object p0

    return-object p0
.end method

.method public final findNode(Lkotlin/jvm/functions/Function1;)Lcom/onyx/android/sdk/base/data/TreeNode;
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "TT;>;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "predication"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p0, p1}, Lcom/onyx/android/sdk/base/data/TreeNode;->findNodeInternal(Lcom/onyx/android/sdk/base/data/TreeNode;Lkotlin/jvm/functions/Function1;)Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object p0

    return-object p0
.end method

.method public final findNodes(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "TT;>;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "TT;>;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "TT;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "predication"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "breakCondition"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "strategy"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/onyx/android/sdk/base/data/TreeNode;->traverseByStrategy$sdk_base_release(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final flatten(Lkotlin/jvm/functions/Function1;)Ljava/util/List;
    .locals 7
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "TT;>;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "TT;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "predication"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const-string v4, "DFS"

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/data/TreeNode;->findNodes$default(Lcom/onyx/android/sdk/base/data/TreeNode;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getChildCount()I
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TreeNode;->findChildren()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final getData()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/base/data/TreeNode;->data:Ljava/lang/Object;

    return-object p0
.end method

.method public final getExpand()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/base/data/TreeNode;->expand:Z

    return p0
.end method

.method public final getId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/base/data/TreeNode;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final getMaxDepth(Lcom/onyx/android/sdk/base/data/TreeNode;)I
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/base/data/TreeNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "TT;>;)I"
        }
    .end annotation

    const-string v0, "branchNode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TreeNode;->findChildren()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/base/data/TreeNode;->getMaxDepth(Lcom/onyx/android/sdk/base/data/TreeNode;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final getParent()Lcom/onyx/android/sdk/base/data/TreeNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/base/data/TreeNode;->tree:Lcom/onyx/android/sdk/base/data/NewTree;

    iget-object p0, p0, Lcom/onyx/android/sdk/base/data/TreeNode;->parentId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/data/NewTree;->findNode(Ljava/lang/String;)Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->requireNonNull$default(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/data/TreeNode;

    return-object p0
.end method

.method public final getParentId$sdk_base_release()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/base/data/TreeNode;->parentId:Ljava/lang/String;

    return-object p0
.end method

.method public final getParentIds()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TreeNode;->hasParent()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/onyx/android/sdk/base/data/TreeNode;->parentId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TreeNode;->getParent()Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final getPathNoteTreeNodes()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "TT;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TreeNode;->isRootNode()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TreeNode;->getParent()Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TreeNode;->isRootNode()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TreeNode;->getParent()Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/onyx/android/sdk/base/data/TreeNode$getPathNoteTreeNodes$1;

    invoke-direct {v3, p0}, Lcom/onyx/android/sdk/base/data/TreeNode$getPathNoteTreeNodes$1;-><init>(Lcom/onyx/android/sdk/base/data/TreeNode;)V

    const/4 v4, 0x0

    const-string v5, "DFS"

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/base/data/TreeNode;->findNodes$default(Lcom/onyx/android/sdk/base/data/TreeNode;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public final getTree()Lcom/onyx/android/sdk/base/data/NewTree;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onyx/android/sdk/base/data/NewTree<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/base/data/TreeNode;->tree:Lcom/onyx/android/sdk/base/data/NewTree;

    return-object p0
.end method

.method public final hasChild()Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TreeNode;->findChildren()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final hasParent()Z
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/base/data/TreeNode;->tree:Lcom/onyx/android/sdk/base/data/NewTree;

    iget-object p0, p0, Lcom/onyx/android/sdk/base/data/TreeNode;->parentId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/data/NewTree;->findNode(Ljava/lang/String;)Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isParent(Lcom/onyx/android/sdk/base/data/TreeNode;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TreeNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "TT;>;)Z"
        }
    .end annotation

    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/base/data/TreeNode;->parentId:Ljava/lang/String;

    iget-object p1, p1, Lcom/onyx/android/sdk/base/data/TreeNode;->id:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isParentAllExpand()Z
    .locals 1

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TreeNode;->hasParent()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TreeNode;->getParent()Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object p0

    iget-boolean v0, p0, Lcom/onyx/android/sdk/base/data/TreeNode;->expand:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final isRootNode()Z
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/base/data/TreeNode;->tree:Lcom/onyx/android/sdk/base/data/NewTree;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/NewTree;->getRoot()Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isSibling(Lcom/onyx/android/sdk/base/data/TreeNode;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TreeNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "TT;>;)Z"
        }
    .end annotation

    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/base/data/TreeNode;->parentId:Ljava/lang/String;

    iget-object p1, p1, Lcom/onyx/android/sdk/base/data/TreeNode;->parentId:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isTop()Z
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TreeNode;->levelToRoot()I

    move-result p0

    const/4 v0, 0x2

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final levelToLeaf()I
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TreeNode;->findChildren()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TreeNode;->levelToLeaf()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final levelToRoot()I
    .locals 2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TreeNode;->hasParent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TreeNode;->getParent()Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object p0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final parent(Lcom/onyx/android/sdk/base/data/TreeNode;I)Lcom/onyx/android/sdk/base/data/TreeNode;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TreeNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "TT;>;I)",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "newParent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0, p2}, Lcom/onyx/android/sdk/base/data/TreeNode;->addChild(Lcom/onyx/android/sdk/base/data/TreeNode;I)Lcom/onyx/android/sdk/base/data/TreeNode;

    iget-object p1, p1, Lcom/onyx/android/sdk/base/data/TreeNode;->id:Ljava/lang/String;

    iput-object p1, p0, Lcom/onyx/android/sdk/base/data/TreeNode;->parentId:Ljava/lang/String;

    return-object p0
.end method

.method public final removeChild(Lcom/onyx/android/sdk/base/data/TreeNode;)Lcom/onyx/android/sdk/base/data/TreeNode;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TreeNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "TT;>;)",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/data/TreeNode;->detachChild(Lcom/onyx/android/sdk/base/data/TreeNode;)Lcom/onyx/android/sdk/base/data/TreeNode;

    iget-object v0, p0, Lcom/onyx/android/sdk/base/data/TreeNode;->tree:Lcom/onyx/android/sdk/base/data/NewTree;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/data/NewTree;->deleteNode$sdk_base_release(Lcom/onyx/android/sdk/base/data/TreeNode;)V

    return-object p0
.end method

.method public final removeFromParent()Lcom/onyx/android/sdk/base/data/TreeNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TreeNode;->hasParent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TreeNode;->getParent()Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/data/TreeNode;->removeChild(Lcom/onyx/android/sdk/base/data/TreeNode;)Lcom/onyx/android/sdk/base/data/TreeNode;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/base/data/TreeNode;->tree:Lcom/onyx/android/sdk/base/data/NewTree;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/data/NewTree;->deleteNode$sdk_base_release(Lcom/onyx/android/sdk/base/data/TreeNode;)V

    :goto_0
    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/android/sdk/base/data/TreeNode;->parentId:Ljava/lang/String;

    return-object p0
.end method

.method public final removeNode(Lkotlin/jvm/functions/Function1;)Lcom/onyx/android/sdk/base/data/TreeNode;
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "TT;>;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "predication"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/data/TreeNode;->findNode(Lkotlin/jvm/functions/Function1;)Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TreeNode;->removeFromParent()Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final removeNodes(Lkotlin/jvm/functions/Function1;)V
    .locals 7
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "TT;>;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "predication"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/data/TreeNode;->findNodes$default(Lcom/onyx/android/sdk/base/data/TreeNode;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/TreeNode;

    iget-object v1, p0, Lcom/onyx/android/sdk/base/data/TreeNode;->tree:Lcom/onyx/android/sdk/base/data/NewTree;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/base/data/NewTree;->deleteNode$sdk_base_release(Lcom/onyx/android/sdk/base/data/TreeNode;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final reparent(Lcom/onyx/android/sdk/base/data/TreeNode;I)Lcom/onyx/android/sdk/base/data/TreeNode;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TreeNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "TT;>;I)",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "newParent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/data/TreeNode;->canReparent(Lcom/onyx/android/sdk/base/data/TreeNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TreeNode;->detachFromParent()Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {p1, p0, p2}, Lcom/onyx/android/sdk/base/data/TreeNode;->addChild(Lcom/onyx/android/sdk/base/data/TreeNode;I)Lcom/onyx/android/sdk/base/data/TreeNode;

    iget-object p1, p1, Lcom/onyx/android/sdk/base/data/TreeNode;->id:Ljava/lang/String;

    iput-object p1, p0, Lcom/onyx/android/sdk/base/data/TreeNode;->parentId:Ljava/lang/String;

    return-object p0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/base/common/error/OnyxException;->Companion:Lcom/onyx/android/sdk/base/common/error/OnyxException$Companion;

    const-string p1, "Cannot Reparent"

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/common/error/OnyxException$Companion;->of(Ljava/lang/String;)Lcom/onyx/android/sdk/base/common/error/OnyxException;

    move-result-object p0

    throw p0
.end method

.method public final setData(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/base/data/TreeNode;->data:Ljava/lang/Object;

    return-void
.end method

.method public final setExpand(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/base/data/TreeNode;->expand:Z

    return-void
.end method

.method public final setParentId$sdk_base_release(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/base/data/TreeNode;->parentId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/base/data/TreeNode;->data:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final toggleExpand()V
    .locals 1

    iget-boolean v0, p0, Lcom/onyx/android/sdk/base/data/TreeNode;->expand:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/android/sdk/base/data/TreeNode;->expand:Z

    return-void
.end method

.method public final traverseByBreadth$sdk_base_release()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "TT;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    filled-new-array {p0}, [Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/onyx/android/sdk/base/data/TreeNode;->traverseByBreadthInternal(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public final traverseByDepth$sdk_base_release()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "TT;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0}, Lcom/onyx/android/sdk/base/data/TreeNode;->traverseByDepthInternal(Ljava/util/List;)V

    return-object v0
.end method

.method public final traverseByStrategy$sdk_base_release(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "TT;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "strategy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "BFS"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TreeNode;->traverseByBreadth$sdk_base_release()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string v0, "DFS"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TreeNode;->traverseByDepth$sdk_base_release()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TreeNode;->traverseByBreadth$sdk_base_release()Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method
