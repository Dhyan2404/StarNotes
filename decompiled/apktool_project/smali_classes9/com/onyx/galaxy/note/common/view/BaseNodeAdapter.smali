.class public abstract Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;
.super Lcom/chad/library/adapter4/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter$ExpandNodeItem;,
        Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter$FlatType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "VH:",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">",
        "Lcom/chad/library/adapter4/BaseQuickAdapter<",
        "Lcom/onyx/android/sdk/base/data/Tree<",
        "TT;>;TVH;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaseNodeAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseNodeAdapter.kt\ncom/onyx/galaxy/note/common/view/BaseNodeAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,506:1\n766#2:507\n857#2,2:508\n*S KotlinDebug\n*F\n+ 1 BaseNodeAdapter.kt\ncom/onyx/galaxy/note/common/view/BaseNodeAdapter\n*L\n27#1:507\n27#1:508,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u001e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0008.\u0008&\u0018\u0000*\u0008\u0008\u0000\u0010\u0002*\u00020\u0001*\u0008\u0008\u0001\u0010\u0004*\u00020\u00032\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0004\u0012\u00028\u00010\u0005:\u0002OPB\u0007\u00a2\u0006\u0004\u0008M\u0010NJ\u0010\u0010\t\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u001e\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006H\u0002J\u0010\u0010\u000c\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u001c\u0010\u0010\u001a\u00020\u000f2\u0012\u0010\u000e\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00060\rH\u0002J$\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0008\u001a\u00020\u00072\u0012\u0010\u000e\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00060\rH\u0002J\u0010\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007H\u0002JP\u0010\u0019\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00060\u00182\u0012\u0010\u0013\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00060\r2\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00142\u001c\u0008\u0002\u0010\u0017\u001a\u0016\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u0016H\u0002J\u0016\u0010\u001b\u001a\u00020\u000f2\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006H\u0002J\u0012\u0010\u001d\u001a\u00020\u001c*\u0008\u0012\u0004\u0012\u00028\u00000\u0006H\u0002J\u0012\u0010\u001e\u001a\u00020\u001c*\u0008\u0012\u0004\u0012\u00028\u00000\u0006H\u0002J\u001a\u0010 \u001a\u00020\u000f*\u0008\u0012\u0004\u0012\u00028\u00000\u00062\u0006\u0010\u001f\u001a\u00020\u001cH\u0002J\u001e\u0010\"\u001a\u00020\u000f2\u0006\u0010\u0008\u001a\u00020\u00072\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006H\u0016J\u001e\u0010$\u001a\u00020\u000f2\u0014\u0010\u0013\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0006\u0018\u00010#H\u0016J\u001f\u0010%\u001a\u00020\u000f2\u0006\u0010\u0008\u001a\u00020\u00072\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006H\u0096\u0002J$\u0010\'\u001a\u00020\u000f2\u0006\u0010\u0008\u001a\u00020\u00072\u0012\u0010&\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00060\rH\u0016J\u001c\u0010\'\u001a\u00020\u000f2\u0012\u0010&\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00060\rH\u0016J\u0016\u0010\"\u001a\u00020\u000f2\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006H\u0016J\u0016\u0010(\u001a\u00020\u000f2\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006H\u0016J\u0010\u0010)\u001a\u00020\u000f2\u0006\u0010\u0008\u001a\u00020\u0007H\u0016J\u000e\u0010*\u001a\u00020\u000f2\u0006\u0010\u0008\u001a\u00020\u0007J\u0016\u0010,\u001a\u00020\u001c2\u000c\u0010+\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006H\u0016J\u0016\u0010-\u001a\u00020\u001c2\u000c\u0010+\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006H\u0016J\u001e\u0010.\u001a\u00020\u000f2\u000c\u0010+\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00062\u0006\u0010\u001f\u001a\u00020\u001cH\u0016J\"\u00100\u001a\u00020\u000f2\u000c\u0010/\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00062\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006J*\u00100\u001a\u00020\u000f2\u000c\u0010/\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00062\u0006\u00101\u001a\u00020\u00072\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006J\"\u00103\u001a\u00020\u000f2\u000c\u0010/\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00062\u000c\u00102\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006J(\u00105\u001a\u00020\u000f2\u000c\u0010/\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00062\u0012\u00104\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00060\rJ0\u00109\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0002\u00106\u001a\u00020\u001c2\u0008\u0008\u0002\u00107\u001a\u00020\u001c2\n\u0008\u0002\u00108\u001a\u0004\u0018\u00010\u0001H\u0016J0\u0010:\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0002\u00106\u001a\u00020\u001c2\u0008\u0008\u0002\u00107\u001a\u00020\u001c2\n\u0008\u0002\u00108\u001a\u0004\u0018\u00010\u0001H\u0016J.\u0010;\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0002\u00106\u001a\u00020\u001c2\u0008\u0008\u0002\u00107\u001a\u00020\u001c2\n\u0008\u0002\u00108\u001a\u0004\u0018\u00010\u0001J.\u0010<\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0002\u00106\u001a\u00020\u001c2\u0008\u0008\u0002\u00107\u001a\u00020\u001c2\n\u0008\u0002\u00108\u001a\u0004\u0018\u00010\u0001J.\u0010=\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0002\u00106\u001a\u00020\u001c2\u0008\u0008\u0002\u00107\u001a\u00020\u001c2\n\u0008\u0002\u00108\u001a\u0004\u0018\u00010\u0001JN\u0010B\u001a\u00020\u000f2\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0002\u0010>\u001a\u00020\u001c2\u0008\u0008\u0002\u0010?\u001a\u00020\u001c2\u0008\u0008\u0002\u00106\u001a\u00020\u001c2\u0008\u0008\u0002\u00107\u001a\u00020\u001c2\n\u0008\u0002\u0010@\u001a\u0004\u0018\u00010\u00012\n\u0008\u0002\u0010A\u001a\u0004\u0018\u00010\u0001J\u0014\u0010C\u001a\u00020\u00072\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006J\u000e\u0010C\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007J_\u0010G\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0002\u0010D\u001a\u00020\u001c2\u0008\u0008\u0002\u00106\u001a\u00020\u001c2\u0008\u0008\u0002\u00107\u001a\u00020\u001c2\n\u0008\u0002\u00108\u001a\u0004\u0018\u00010\u00012\u001c\u0008\u0002\u0010\u0017\u001a\u0016\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u0016H\u0000\u00a2\u0006\u0004\u0008E\u0010FJ_\u0010J\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0002\u0010H\u001a\u00020\u001c2\u0008\u0008\u0002\u00106\u001a\u00020\u001c2\u0008\u0008\u0002\u00107\u001a\u00020\u001c2\n\u0008\u0002\u00108\u001a\u0004\u0018\u00010\u00012\u001c\u0008\u0002\u0010\u0017\u001a\u0016\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u0016H\u0000\u00a2\u0006\u0004\u0008I\u0010FR\u0014\u0010L\u001a\u00020\u00078\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010K\u00a8\u0006Q"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;",
        "",
        "T",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "VH",
        "Lcom/chad/library/adapter4/BaseQuickAdapter;",
        "Lcom/onyx/android/sdk/base/data/Tree;",
        "",
        "position",
        "p",
        "parent",
        "m",
        "x",
        "",
        "items",
        "",
        "t",
        "s",
        "w",
        "list",
        "Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter$FlatType;",
        "flatType",
        "Lkotlin/Function1;",
        "dataBlock",
        "",
        "n",
        "node",
        "v",
        "",
        "r",
        "q",
        "expanded",
        "y",
        "data",
        "add",
        "",
        "submitList",
        "set",
        "collection",
        "addAll",
        "remove",
        "removeAt",
        "removeNodeAt",
        "tree",
        "isExpandTreeNode",
        "isTreeItemExpanded",
        "setTreeItemExpand",
        "parentNode",
        "nodeAddData",
        "childIndex",
        "childNode",
        "nodeRemoveData",
        "newData",
        "nodeReplaceChildData",
        "animate",
        "notify",
        "parentPayload",
        "collapse",
        "expand",
        "expandOrCollapse",
        "expandAndChild",
        "collapseAndChild",
        "isExpandedChild",
        "isCollapseChild",
        "expandPayload",
        "collapsePayload",
        "expandAndCollapseOther",
        "findParentNode",
        "isChangeChildCollapse",
        "collapseInternal$note_overseasRelease",
        "(IZZZLjava/lang/Object;Lkotlin/jvm/functions/Function1;)I",
        "collapseInternal",
        "isChangeChildExpand",
        "expandInternal$note_overseasRelease",
        "expandInternal",
        "I",
        "headerLayoutCount",
        "<init>",
        "()V",
        "ExpandNodeItem",
        "FlatType",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBaseNodeAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseNodeAdapter.kt\ncom/onyx/galaxy/note/common/view/BaseNodeAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,506:1\n766#2:507\n857#2,2:508\n*S KotlinDebug\n*F\n+ 1 BaseNodeAdapter.kt\ncom/onyx/galaxy/note/common/view/BaseNodeAdapter\n*L\n27#1:507\n27#1:508,2\n*E\n"
    }
.end annotation


# instance fields
.field public final r:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public static final synthetic access$removeAt$s1378217523(Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->removeAt(I)V

    return-void
.end method

.method public static synthetic collapse$default(Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;IZZLjava/lang/Object;ILjava/lang/Object;)I
    .locals 1

    if-nez p6, :cond_3

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x1

    if-eqz p6, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->collapse(IZZLjava/lang/Object;)I

    move-result p0

    return p0

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: collapse"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic collapseAndChild$default(Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;IZZLjava/lang/Object;ILjava/lang/Object;)I
    .locals 1

    if-nez p6, :cond_3

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x1

    if-eqz p6, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->collapseAndChild(IZZLjava/lang/Object;)I

    move-result p0

    return p0

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: collapseAndChild"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic collapseInternal$note_overseasRelease$default(Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;IZZZLjava/lang/Object;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)I
    .locals 7

    if-nez p8, :cond_5

    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_0

    const/4 p2, 0x0

    :cond_0
    move v2, p2

    and-int/lit8 p2, p7, 0x4

    const/4 p8, 0x1

    if-eqz p2, :cond_1

    move v3, p8

    goto :goto_0

    :cond_1
    move v3, p3

    :goto_0
    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_2

    move v4, p8

    goto :goto_1

    :cond_2
    move v4, p4

    :goto_1
    and-int/lit8 p2, p7, 0x10

    const/4 p3, 0x0

    if-eqz p2, :cond_3

    move-object v5, p3

    goto :goto_2

    :cond_3
    move-object v5, p5

    :goto_2
    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_4

    move-object v6, p3

    goto :goto_3

    :cond_4
    move-object v6, p6

    :goto_3
    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->collapseInternal$note_overseasRelease(IZZZLjava/lang/Object;Lkotlin/jvm/functions/Function1;)I

    move-result p0

    return p0

    :cond_5
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: collapseInternal"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic expand$default(Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;IZZLjava/lang/Object;ILjava/lang/Object;)I
    .locals 1

    if-nez p6, :cond_3

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x1

    if-eqz p6, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->expand(IZZLjava/lang/Object;)I

    move-result p0

    return p0

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: expand"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic expandAndChild$default(Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;IZZLjava/lang/Object;ILjava/lang/Object;)I
    .locals 1

    if-nez p6, :cond_3

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x1

    if-eqz p6, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->expandAndChild(IZZLjava/lang/Object;)I

    move-result p0

    return p0

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: expandAndChild"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic expandAndCollapseOther$default(Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;IZZZZLjava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 7

    if-nez p9, :cond_6

    and-int/lit8 v0, p8, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    and-int/lit8 v1, p8, 0x4

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, p3

    :goto_1
    and-int/lit8 v3, p8, 0x8

    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, p4

    :goto_2
    and-int/lit8 v4, p8, 0x10

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    move v2, p5

    :goto_3
    and-int/lit8 v4, p8, 0x20

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    move-object v4, v5

    goto :goto_4

    :cond_4
    move-object v4, p6

    :goto_4
    and-int/lit8 v6, p8, 0x40

    if-eqz v6, :cond_5

    goto :goto_5

    :cond_5
    move-object v5, p7

    :goto_5
    move-object p2, p0

    move p3, p1

    move p4, v0

    move p5, v1

    move p6, v3

    move p7, v2

    move-object p8, v4

    move-object/from16 p9, v5

    invoke-virtual/range {p2 .. p9}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->expandAndCollapseOther(IZZZZLjava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Super calls with default arguments not supported in this target, function: expandAndCollapseOther"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic expandInternal$note_overseasRelease$default(Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;IZZZLjava/lang/Object;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)I
    .locals 7

    if-nez p8, :cond_5

    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_0

    const/4 p2, 0x0

    :cond_0
    move v2, p2

    and-int/lit8 p2, p7, 0x4

    const/4 p8, 0x1

    if-eqz p2, :cond_1

    move v3, p8

    goto :goto_0

    :cond_1
    move v3, p3

    :goto_0
    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_2

    move v4, p8

    goto :goto_1

    :cond_2
    move v4, p4

    :goto_1
    and-int/lit8 p2, p7, 0x10

    const/4 p3, 0x0

    if-eqz p2, :cond_3

    move-object v5, p3

    goto :goto_2

    :cond_3
    move-object v5, p5

    :goto_2
    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_4

    move-object v6, p3

    goto :goto_3

    :cond_4
    move-object v6, p6

    :goto_3
    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->expandInternal$note_overseasRelease(IZZZLjava/lang/Object;Lkotlin/jvm/functions/Function1;)I

    move-result p0

    return p0

    :cond_5
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: expandInternal"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic expandOrCollapse$default(Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;IZZLjava/lang/Object;ILjava/lang/Object;)I
    .locals 1

    if-nez p6, :cond_3

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x1

    if-eqz p6, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->expandOrCollapse(IZZLjava/lang/Object;)I

    move-result p0

    return p0

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: expandOrCollapse"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic l(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->u(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic o(Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;Ljava/util/Collection;Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter$FlatType;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    sget-object p2, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter$FlatType;->NO_CHANGE:Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter$FlatType;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->n(Ljava/util/Collection;Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter$FlatType;Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: flatData"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final u(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public add(ILcom/onyx/android/sdk/base/data/Tree;)V
    .locals 1
    .param p2    # Lcom/onyx/android/sdk/base/data/Tree;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    filled-new-array {p2}, [Lcom/onyx/android/sdk/base/data/Tree;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->addAll(ILjava/util/Collection;)V

    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/onyx/android/sdk/base/data/Tree;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->add(ILcom/onyx/android/sdk/base/data/Tree;)V

    return-void
.end method

.method public add(Lcom/onyx/android/sdk/base/data/Tree;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/Tree;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    filled-new-array {p1}, [Lcom/onyx/android/sdk/base/data/Tree;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->addAll(Ljava/util/Collection;)V

    return-void
.end method

.method public bridge synthetic add(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/onyx/android/sdk/base/data/Tree;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->add(Lcom/onyx/android/sdk/base/data/Tree;)V

    return-void
.end method

.method public addAll(ILjava/util/Collection;)V
    .locals 7
    .param p2    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "TT;>;>;)V"
        }
    .end annotation

    const-string v0, "collection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p2

    .line 1
    invoke-static/range {v1 .. v6}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->o(Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;Ljava/util/Collection;Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter$FlatType;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 2
    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->s(ILjava/util/Collection;)V

    return-void
.end method

.method public addAll(Ljava/util/Collection;)V
    .locals 7
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "TT;>;>;)V"
        }
    .end annotation

    const-string v0, "collection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 3
    invoke-static/range {v1 .. v6}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->o(Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;Ljava/util/Collection;Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter$FlatType;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, v0, p1}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->s(ILjava/util/Collection;)V

    return-void
.end method

.method public collapse(IZZLjava/lang/Object;)I
    .locals 9
    .param p4    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x20

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v8}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->collapseInternal$note_overseasRelease$default(Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;IZZZLjava/lang/Object;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final collapseAndChild(IZZLjava/lang/Object;)I
    .locals 9
    .param p4    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v2, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x20

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v8}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->collapseInternal$note_overseasRelease$default(Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;IZZZLjava/lang/Object;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final collapseInternal$note_overseasRelease(IZZZLjava/lang/Object;Lkotlin/jvm/functions/Function1;)I
    .locals 3
    .param p5    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZZ",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "TT;>;",
            "Lkotlin/Unit;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/Tree;

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->r(Lcom/onyx/android/sdk/base/data/Tree;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->r:I

    add-int/2addr p1, v1

    invoke-virtual {p0, v0, v2}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->y(Lcom/onyx/android/sdk/base/data/Tree;Z)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/Tree;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, p5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    return v2

    :cond_0
    if-eqz p2, :cond_1

    sget-object p2, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter$FlatType;->COLLAPSE:Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter$FlatType;

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter$FlatType;->NO_CHANGE:Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter$FlatType;

    :goto_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/Tree;->getChildren()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p0, v0, p2, p6}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->n(Ljava/util/Collection;Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter$FlatType;Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p6

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->t(Ljava/util/Collection;)V

    if-eqz p4, :cond_3

    if-eqz p3, :cond_2

    invoke-virtual {p0, p1, p5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_3
    :goto_1
    return p6

    :cond_4
    return v2
.end method

.method public expand(IZZLjava/lang/Object;)I
    .locals 9
    .param p4    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x20

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v8}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->expandInternal$note_overseasRelease$default(Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;IZZZLjava/lang/Object;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final expandAndChild(IZZLjava/lang/Object;)I
    .locals 9
    .param p4    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v2, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x20

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v8}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->expandInternal$note_overseasRelease$default(Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;IZZZLjava/lang/Object;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final expandAndCollapseOther(IZZZZLjava/lang/Object;Ljava/lang/Object;)V
    .locals 14
    .param p6    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v6, 0x0

    const/16 v7, 0x20

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v8}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->expandInternal$note_overseasRelease$default(Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;IZZZLjava/lang/Object;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->findParentNode(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v1, 0x1

    :goto_0
    sub-int v4, p1, v3

    if-lez v4, :cond_3

    move v13, v3

    move v3, p1

    :cond_2
    const/4 v10, 0x0

    const/16 v11, 0x20

    const/4 v12, 0x0

    move-object v4, p0

    move v5, v13

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p7

    invoke-static/range {v4 .. v12}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->collapseInternal$note_overseasRelease$default(Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;IZZZLjava/lang/Object;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)I

    move-result v4

    add-int/lit8 v13, v13, 0x1

    sub-int/2addr v3, v4

    if-lt v13, v3, :cond_2

    goto :goto_1

    :cond_3
    move v3, p1

    :goto_1
    if-ne v1, v2, :cond_4

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/base/data/Tree;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/Tree;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    :goto_2
    add-int/2addr v3, v0

    if-ge v3, v1, :cond_5

    add-int/lit8 v3, v3, 0x1

    move v0, v3

    :goto_3
    if-gt v0, v1, :cond_5

    const/4 v8, 0x0

    const/16 v9, 0x20

    const/4 v10, 0x0

    move-object v2, p0

    move v3, v0

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p7

    invoke-static/range {v2 .. v10}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->collapseInternal$note_overseasRelease$default(Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;IZZZLjava/lang/Object;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    sub-int/2addr v1, v2

    goto :goto_3

    :cond_5
    return-void
.end method

.method public final expandInternal$note_overseasRelease(IZZZLjava/lang/Object;Lkotlin/jvm/functions/Function1;)I
    .locals 5
    .param p5    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZZ",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "TT;>;",
            "Lkotlin/Unit;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/Tree;

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->r(Lcom/onyx/android/sdk/base/data/Tree;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_4

    iget v1, p0, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->r:I

    add-int/2addr v1, p1

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->y(Lcom/onyx/android/sdk/base/data/Tree;Z)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/Tree;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v1, p5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    return v2

    :cond_0
    if-eqz p2, :cond_1

    sget-object p2, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter$FlatType;->EXPAND:Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter$FlatType;

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter$FlatType;->NO_CHANGE:Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter$FlatType;

    :goto_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/Tree;->getChildren()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p0, v0, p2, p6}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->n(Ljava/util/Collection;Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter$FlatType;Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p6

    add-int/2addr p1, v3

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->s(ILjava/util/Collection;)V

    if-eqz p4, :cond_3

    if-eqz p3, :cond_2

    invoke-virtual {p0, v1, p5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_3
    :goto_1
    return p6

    :cond_4
    return v2
.end method

.method public final expandOrCollapse(IZZLjava/lang/Object;)I
    .locals 2
    .param p4    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/Tree;

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->q(Lcom/onyx/android/sdk/base/data/Tree;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->r(Lcom/onyx/android/sdk/base/data/Tree;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->collapse(IZZLjava/lang/Object;)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->expand(IZZLjava/lang/Object;)I

    move-result p0

    :goto_0
    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final findParentNode(I)I
    .locals 3

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/base/data/Tree;

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ge v0, p1, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/base/data/Tree;

    .line 6
    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/Tree;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return p1

    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public final findParentNode(Lcom/onyx/android/sdk/base/data/Tree;)I
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/base/data/Tree;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "TT;>;)I"
        }
    .end annotation

    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/base/data/Tree;

    .line 3
    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/Tree;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public isExpandTreeNode(Lcom/onyx/android/sdk/base/data/Tree;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/base/data/Tree;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "TT;>;)Z"
        }
    .end annotation

    const-string p0, "tree"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Tree;->getItem()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter$ExpandNodeItem;

    return p0
.end method

.method public isTreeItemExpanded(Lcom/onyx/android/sdk/base/data/Tree;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/Tree;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "TT;>;)Z"
        }
    .end annotation

    const-string v0, "tree"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->q(Lcom/onyx/android/sdk/base/data/Tree;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Tree;->getItem()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter$ExpandNodeItem;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter$ExpandNodeItem;->isExpanded()Z

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    move v0, p1

    :cond_0
    return v0
.end method

.method public final m(ILcom/onyx/android/sdk/base/data/Tree;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "TT;>;)I"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    if-nez p1, :cond_0

    add-int/lit8 p2, p2, 0x1

    return p2

    :cond_0
    const/4 v0, 0x0

    move v1, p2

    :goto_0
    if-ge v0, p1, :cond_2

    const/4 v2, -0x1

    if-eq p2, v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->p(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public final n(Ljava/util/Collection;Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter$FlatType;Lkotlin/jvm/functions/Function1;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "TT;>;>;",
            "Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter$FlatType;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "TT;>;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/base/data/Tree;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_1

    invoke-interface {p3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->q(Lcom/onyx/android/sdk/base/data/Tree;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    sget-object v2, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter$FlatType;->EXPAND:Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter$FlatType;

    if-eq p2, v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->r(Lcom/onyx/android/sdk/base/data/Tree;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/Tree;->getChildren()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v3

    if-eqz v5, :cond_3

    invoke-virtual {p0, v4, p2, p3}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->n(Ljava/util/Collection;Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter$FlatType;Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3
    sget-object v4, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter$FlatType;->NO_CHANGE:Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter$FlatType;

    if-eq p2, v4, :cond_0

    if-ne p2, v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p0, v1, v3}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->y(Lcom/onyx/android/sdk/base/data/Tree;Z)V

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/Tree;->getChildren()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v3

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1, p2, p3}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->n(Ljava/util/Collection;Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter$FlatType;Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_6
    return-object v0
.end method

.method public final nodeAddData(Lcom/onyx/android/sdk/base/data/Tree;ILcom/onyx/android/sdk/base/data/Tree;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/base/data/Tree;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/base/data/Tree;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "TT;>;I",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "parentNode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Tree;->getChildren()Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->q(Lcom/onyx/android/sdk/base/data/Tree;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->r(Lcom/onyx/android/sdk/base/data/Tree;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0, p2, p1}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->m(ILcom/onyx/android/sdk/base/data/Tree;)I

    move-result v1

    .line 7
    invoke-static {v0, p2, p3}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAdd(Ljava/util/List;ILjava/lang/Object;)V

    .line 8
    invoke-virtual {p0, v1, p3}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->add(ILcom/onyx/android/sdk/base/data/Tree;)V

    goto :goto_1

    .line 9
    :cond_1
    :goto_0
    invoke-interface {v0, p2, p3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 10
    :goto_1
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->v(Lcom/onyx/android/sdk/base/data/Tree;)V

    return-void
.end method

.method public final nodeAddData(Lcom/onyx/android/sdk/base/data/Tree;Lcom/onyx/android/sdk/base/data/Tree;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/Tree;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/Tree;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "TT;>;",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "parentNode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Tree;->getChildren()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->nodeAddData(Lcom/onyx/android/sdk/base/data/Tree;ILcom/onyx/android/sdk/base/data/Tree;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->v(Lcom/onyx/android/sdk/base/data/Tree;)V

    return-void
.end method

.method public final nodeRemoveData(Lcom/onyx/android/sdk/base/data/Tree;Lcom/onyx/android/sdk/base/data/Tree;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/base/data/Tree;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/Tree;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "TT;>;",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "parentNode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "childNode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Tree;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->q(Lcom/onyx/android/sdk/base/data/Tree;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->r(Lcom/onyx/android/sdk/base/data/Tree;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->remove(Lcom/onyx/android/sdk/base/data/Tree;)V

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->v(Lcom/onyx/android/sdk/base/data/Tree;)V

    return-void
.end method

.method public final nodeReplaceChildData(Lcom/onyx/android/sdk/base/data/Tree;Ljava/util/Collection;)V
    .locals 9
    .param p1    # Lcom/onyx/android/sdk/base/data/Tree;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "TT;>;",
            "Ljava/util/Collection<",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "TT;>;>;)V"
        }
    .end annotation

    const-string v0, "parentNode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Tree;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->q(Lcom/onyx/android/sdk/base/data/Tree;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->r(Lcom/onyx/android/sdk/base/data/Tree;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->w(I)I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p2

    invoke-static/range {v3 .. v8}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->o(Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;Ljava/util/Collection;Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter$FlatType;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p2

    add-int/lit8 v1, v1, 0x1

    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p0, v1, v0}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->s(ILjava/util/Collection;)V

    iget v0, p0, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->r:I

    add-int/2addr v1, v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ne v2, v0, :cond_1

    invoke-virtual {p0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p0, v1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->v(Lcom/onyx/android/sdk/base/data/Tree;)V

    return-void
.end method

.method public final p(I)I
    .locals 5

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/Tree;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/base/data/Tree;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/Tree;->getLevel()I

    move-result v3

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/Tree;->getLevel()I

    move-result v4

    if-gt v3, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v2
.end method

.method public final q(Lcom/onyx/android/sdk/base/data/Tree;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "TT;>;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->isExpandTreeNode(Lcom/onyx/android/sdk/base/data/Tree;)Z

    move-result p0

    return p0
.end method

.method public final r(Lcom/onyx/android/sdk/base/data/Tree;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "TT;>;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->isTreeItemExpanded(Lcom/onyx/android/sdk/base/data/Tree;)Z

    move-result p0

    return p0
.end method

.method public remove(Lcom/onyx/android/sdk/base/data/Tree;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/Tree;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->removeAt(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/base/data/Tree;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->remove(Lcom/onyx/android/sdk/base/data/Tree;)V

    return-void
.end method

.method public removeAt(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->x(I)I

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final removeNodeAt(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/Tree;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/Tree;->getParent()Lcom/onyx/android/sdk/base/data/Tree;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1, v0}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->nodeRemoveData(Lcom/onyx/android/sdk/base/data/Tree;Lcom/onyx/android/sdk/base/data/Tree;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->removeAt(I)V

    :cond_1
    return-void
.end method

.method public final s(ILjava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "TT;>;>;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/chad/library/adapter4/BaseQuickAdapter;->addAll(ILjava/util/Collection;)V

    return-void
.end method

.method public set(ILcom/onyx/android/sdk/base/data/Tree;)V
    .locals 7
    .param p2    # Lcom/onyx/android/sdk/base/data/Tree;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->x(I)I

    move-result v0

    .line 3
    filled-new-array {p2}, [Lcom/onyx/android/sdk/base/data/Tree;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->o(Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;Ljava/util/Collection;Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter$FlatType;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 4
    move-object v1, p2

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {p0, p1, v1}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->s(ILjava/util/Collection;)V

    .line 5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 6
    iget p2, p0, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->r:I

    add-int/2addr p1, p2

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    goto :goto_0

    .line 7
    :cond_0
    iget v1, p0, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->r:I

    add-int/2addr v1, p1

    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 8
    iget v0, p0, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->r:I

    add-int/2addr p1, v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    :goto_0
    return-void
.end method

.method public bridge synthetic set(ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/onyx/android/sdk/base/data/Tree;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->set(ILcom/onyx/android/sdk/base/data/Tree;)V

    return-void
.end method

.method public setTreeItemExpand(Lcom/onyx/android/sdk/base/data/Tree;Z)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/base/data/Tree;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "TT;>;Z)V"
        }
    .end annotation

    const-string p0, "tree"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Tree;->getItem()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter$ExpandNodeItem;

    if-eqz p0, :cond_0

    invoke-interface {p0, p2}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter$ExpandNodeItem;->setExpand(Z)V

    :cond_0
    return-void
.end method

.method public submitList(Ljava/util/List;)V
    .locals 8
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "TT;>;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/Tree;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/onyx/android/sdk/base/data/Tree;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/Tree;->getLevel()I

    move-result v4

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/Tree;->getLevel()I

    move-result v3

    if-ne v4, v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_1

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_4
    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->o(Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;Ljava/util/Collection;Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter$FlatType;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    return-void
.end method

.method public final t(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "TT;>;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter$rawRemoveAll$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter$rawRemoveAll$1;-><init>(Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;)V

    new-instance p0, Lcom/sunia/HTREnginev2/tn;

    invoke-direct {p0, v0}, Lcom/sunia/HTREnginev2/tn;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {p1, p0}, Ljava/util/Iterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final v(Lcom/onyx/android/sdk/base/data/Tree;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "TT;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method

.method public final w(I)I
    .locals 6

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/base/data/Tree;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Tree;->getChildren()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->q(Lcom/onyx/android/sdk/base/data/Tree;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->r(Lcom/onyx/android/sdk/base/data/Tree;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Tree;->getChildren()Ljava/util/List;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->o(Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;Ljava/util/Collection;Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter$FlatType;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->t(Ljava/util/Collection;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Tree;->getChildren()Ljava/util/List;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->o(Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;Ljava/util/Collection;Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter$FlatType;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->t(Ljava/util/Collection;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :cond_2
    :goto_0
    return v1
.end method

.method public final x(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->w(I)I

    move-result v0

    invoke-super {p0, p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->removeAt(I)V

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final y(Lcom/onyx/android/sdk/base/data/Tree;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "TT;>;Z)V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->setTreeItemExpand(Lcom/onyx/android/sdk/base/data/Tree;Z)V

    return-void
.end method
