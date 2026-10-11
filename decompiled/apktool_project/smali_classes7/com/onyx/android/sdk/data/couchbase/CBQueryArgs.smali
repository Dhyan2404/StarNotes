.class public final Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCBQueryArgs.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CBQueryArgs.kt\ncom/onyx/android/sdk/data/couchbase/CBQueryArgs\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n*L\n1#1,139:1\n37#2,2:140\n37#2,2:142\n37#2,2:144\n37#2,2:150\n37#2,2:152\n11065#3:146\n11400#3,3:147\n26#4:154\n26#4:155\n*S KotlinDebug\n*F\n+ 1 CBQueryArgs.kt\ncom/onyx/android/sdk/data/couchbase/CBQueryArgs\n*L\n34#1:140,2\n39#1:142,2\n44#1:144,2\n100#1:150,2\n108#1:152,2\n100#1:146\n100#1:147,3\n133#1:154\n134#1:155\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008!\u0018\u0000 Q2\u00020\u0001:\u0001QB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010;\u001a\u00020\u00002\u0008\u0010<\u001a\u0004\u0018\u00010\u000bJ\u0006\u0010=\u001a\u00020\u0000J\u0008\u0010>\u001a\u00020\u0000H\u0016J\u0006\u0010?\u001a\u00020\u000bJ\u0006\u0010@\u001a\u00020\u000bJ\u000e\u0010A\u001a\u00020\u00002\u0006\u0010B\u001a\u00020\"J\u0006\u0010C\u001a\u00020\u0004J\u001f\u0010D\u001a\u00020\u00002\u0012\u0010E\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\"0\n\"\u00020\"\u00a2\u0006\u0002\u0010FJ\u0006\u0010G\u001a\u00020\u000bJ\u0006\u0010H\u001a\u00020\u0000J\u0006\u0010I\u001a\u00020\u0000J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0004J\u000e\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0012J\u0006\u0010J\u001a\u00020\u0000J\u000e\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u0012J\u0010\u0010%\u001a\u00020\u00002\u0008\u0010!\u001a\u0004\u0018\u00010\"J\u001f\u0010K\u001a\u00020\u00002\u0012\u0010\t\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u000b0\n\"\u00020\u000b\u00a2\u0006\u0002\u0010LJ\u001f\u0010M\u001a\u00020\u00002\u0012\u0010\u001a\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u001b0\n\"\u00020\u001b\u00a2\u0006\u0002\u0010NJ\u001f\u0010O\u001a\u00020\u00002\u0012\u0010\'\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020(0\n\"\u00020(\u00a2\u0006\u0002\u0010PJ\u0010\u00109\u001a\u00020\u00002\u0008\u00106\u001a\u0004\u0018\u00010\u000bR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R$\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0010\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0011\u001a\u00020\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u0017\u001a\u00020\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0014\"\u0004\u0008\u0019\u0010\u0016R$\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u001b\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010 \u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u001c\u0010!\u001a\u0004\u0018\u00010\"X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R\"\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020(0\nX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010-\u001a\u0004\u0008)\u0010*\"\u0004\u0008+\u0010,R:\u0010.\u001a\"\u0012\u0004\u0012\u00020\"\u0012\u0006\u0012\u0004\u0018\u0001000/j\u0010\u0012\u0004\u0012\u00020\"\u0012\u0006\u0012\u0004\u0018\u000100`1X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00082\u00103\"\u0004\u00084\u00105R\u001c\u00106\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00087\u00108\"\u0004\u00089\u0010:\u00a8\u0006R"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;",
        "",
        "()V",
        "distinct",
        "",
        "getDistinct",
        "()Z",
        "setDistinct",
        "(Z)V",
        "groupBy",
        "",
        "Lcom/couchbase/lite/Expression;",
        "getGroupBy",
        "()[Lcom/couchbase/lite/Expression;",
        "setGroupBy",
        "([Lcom/couchbase/lite/Expression;)V",
        "[Lcom/couchbase/lite/Expression;",
        "limit",
        "",
        "getLimit",
        "()I",
        "setLimit",
        "(I)V",
        "offset",
        "getOffset",
        "setOffset",
        "ordering",
        "Lcom/couchbase/lite/Ordering;",
        "getOrdering",
        "()[Lcom/couchbase/lite/Ordering;",
        "setOrdering",
        "([Lcom/couchbase/lite/Ordering;)V",
        "[Lcom/couchbase/lite/Ordering;",
        "parentId",
        "",
        "getParentId",
        "()Ljava/lang/String;",
        "setParentId",
        "(Ljava/lang/String;)V",
        "selectResults",
        "Lcom/couchbase/lite/SelectResult;",
        "getSelectResults",
        "()[Lcom/couchbase/lite/SelectResult;",
        "setSelectResults",
        "([Lcom/couchbase/lite/SelectResult;)V",
        "[Lcom/couchbase/lite/SelectResult;",
        "updateValues",
        "Ljava/util/HashMap;",
        "",
        "Lkotlin/collections/HashMap;",
        "getUpdateValues",
        "()Ljava/util/HashMap;",
        "setUpdateValues",
        "(Ljava/util/HashMap;)V",
        "whereEx",
        "getWhereEx",
        "()Lcom/couchbase/lite/Expression;",
        "setWhereEx",
        "(Lcom/couchbase/lite/Expression;)V",
        "andWith",
        "expression",
        "basicPropertiesOnly",
        "clone",
        "getLimitExpression",
        "getOffsetExpression",
        "idEqualTo",
        "uniqueId",
        "isUnlimited",
        "properties",
        "fields",
        "([Ljava/lang/String;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;",
        "requireExpression",
        "selectAll",
        "setDefaultLimit",
        "setMaxLimit",
        "setVarargGroupBy",
        "([Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;",
        "setVarargOrdering",
        "([Lcom/couchbase/lite/Ordering;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;",
        "setVarargSelectResults",
        "([Lcom/couchbase/lite/SelectResult;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;",
        "Companion",
        "sdk-data_release"
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
        "SMAP\nCBQueryArgs.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CBQueryArgs.kt\ncom/onyx/android/sdk/data/couchbase/CBQueryArgs\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n*L\n1#1,139:1\n37#2,2:140\n37#2,2:142\n37#2,2:144\n37#2,2:150\n37#2,2:152\n11065#3:146\n11400#3,3:147\n26#4:154\n26#4:155\n*S KotlinDebug\n*F\n+ 1 CBQueryArgs.kt\ncom/onyx/android/sdk/data/couchbase/CBQueryArgs\n*L\n34#1:140,2\n39#1:142,2\n44#1:144,2\n100#1:150,2\n108#1:152,2\n100#1:146\n100#1:147,3\n133#1:154\n134#1:155\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DEFAULT_LIMIT:I = 0x7fffffff


# instance fields
.field private distinct:Z

.field private groupBy:[Lcom/couchbase/lite/Expression;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private limit:I

.field private offset:I

.field private ordering:[Lcom/couchbase/lite/Ordering;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private parentId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private selectResults:[Lcom/couchbase/lite/SelectResult;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private updateValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private whereEx:Lcom/couchbase/lite/Expression;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->Companion:Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/couchbase/lite/SelectResult;

    invoke-static {}, Lcom/couchbase/lite/SelectResult;->all()Lcom/couchbase/lite/SelectResult$From;

    move-result-object v1

    const-string v2, "all(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->selectResults:[Lcom/couchbase/lite/SelectResult;

    const v0, 0x7fffffff

    iput v0, p0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->limit:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->updateValues:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;
    .locals 1
    .param p1    # Lcom/couchbase/lite/Expression;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->whereEx:Lcom/couchbase/lite/Expression;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->setWhereEx(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/couchbase/lite/Expression;->and(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->setWhereEx(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    :cond_1
    :goto_0
    return-object p0
.end method

.method public final basicPropertiesOnly()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "uniqueId"

    const-string v1, "status"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->properties([Ljava/lang/String;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p0

    return-object p0
.end method

.method public clone()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->selectResults:[Lcom/couchbase/lite/SelectResult;

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/couchbase/lite/SelectResult;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->setVarargSelectResults([Lcom/couchbase/lite/SelectResult;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v0

    .line 4
    iget v1, p0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->limit:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->setLimit(I)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->groupBy:[Lcom/couchbase/lite/Expression;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-array v1, v2, [Lcom/couchbase/lite/Expression;

    :cond_0
    array-length v3, v1

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/couchbase/lite/Expression;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->setVarargGroupBy([Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->ordering:[Lcom/couchbase/lite/Ordering;

    if-nez v1, :cond_1

    new-array v1, v2, [Lcom/couchbase/lite/Ordering;

    :cond_1
    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/couchbase/lite/Ordering;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->setVarargOrdering([Lcom/couchbase/lite/Ordering;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v0

    .line 7
    iget v1, p0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->offset:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->setOffset(I)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v0

    .line 8
    iget-boolean v1, p0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->distinct:Z

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->setDistinct(Z)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v0

    .line 9
    iget-object p0, p0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->whereEx:Lcom/couchbase/lite/Expression;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->setWhereEx(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->clone()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p0

    return-object p0
.end method

.method public final getDistinct()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->distinct:Z

    return p0
.end method

.method public final getGroupBy()[Lcom/couchbase/lite/Expression;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->groupBy:[Lcom/couchbase/lite/Expression;

    return-object p0
.end method

.method public final getLimit()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->limit:I

    return p0
.end method

.method public final getLimitExpression()Lcom/couchbase/lite/Expression;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget p0, p0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->limit:I

    invoke-static {p0}, Lcom/couchbase/lite/Expression;->intValue(I)Lcom/couchbase/lite/Expression;

    move-result-object p0

    const-string v0, "intValue(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getOffset()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->offset:I

    return p0
.end method

.method public final getOffsetExpression()Lcom/couchbase/lite/Expression;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget p0, p0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->offset:I

    invoke-static {p0}, Lcom/couchbase/lite/Expression;->intValue(I)Lcom/couchbase/lite/Expression;

    move-result-object p0

    const-string v0, "intValue(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getOrdering()[Lcom/couchbase/lite/Ordering;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->ordering:[Lcom/couchbase/lite/Ordering;

    return-object p0
.end method

.method public final getParentId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->parentId:Ljava/lang/String;

    return-object p0
.end method

.method public final getSelectResults()[Lcom/couchbase/lite/SelectResult;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->selectResults:[Lcom/couchbase/lite/SelectResult;

    return-object p0
.end method

.method public final getUpdateValues()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->updateValues:Ljava/util/HashMap;

    return-object p0
.end method

.method public final getWhereEx()Lcom/couchbase/lite/Expression;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->whereEx:Lcom/couchbase/lite/Expression;

    return-object p0
.end method

.method public final idEqualTo(Ljava/lang/String;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "uniqueId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    invoke-virtual {v1, v0, p1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    return-object p0
.end method

.method public final isUnlimited()Z
    .locals 1

    iget p0, p0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->limit:I

    const v0, 0x7fffffff

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final varargs properties([Ljava/lang/String;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;
    .locals 5
    .param p1    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "fields"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    invoke-static {v4}, Lcom/couchbase/lite/SelectResult;->property(Ljava/lang/String;)Lcom/couchbase/lite/SelectResult$As;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-array p1, v2, [Lcom/couchbase/lite/SelectResult;

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/couchbase/lite/SelectResult;

    iput-object p1, p0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->selectResults:[Lcom/couchbase/lite/SelectResult;

    return-object p0
.end method

.method public final requireExpression()Lcom/couchbase/lite/Expression;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->whereEx:Lcom/couchbase/lite/Expression;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    invoke-static {p0}, Lcom/couchbase/lite/Expression;->booleanValue(Z)Lcom/couchbase/lite/Expression;

    move-result-object p0

    const-string v0, "booleanValue(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public final selectAll()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/couchbase/lite/Expression;->booleanValue(Z)Lcom/couchbase/lite/Expression;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->whereEx:Lcom/couchbase/lite/Expression;

    return-object p0
.end method

.method public final setDefaultLimit()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->setLimit(I)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p0

    return-object p0
.end method

.method public final setDistinct(Z)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput-boolean p1, p0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->distinct:Z

    return-object p0
.end method

.method public final setDistinct(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->distinct:Z

    return-void
.end method

.method public final setGroupBy([Lcom/couchbase/lite/Expression;)V
    .locals 0
    .param p1    # [Lcom/couchbase/lite/Expression;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->groupBy:[Lcom/couchbase/lite/Expression;

    return-void
.end method

.method public final setLimit(I)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput p1, p0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->limit:I

    return-object p0
.end method

.method public final setLimit(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->limit:I

    return-void
.end method

.method public final setMaxLimit()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->setLimit(I)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p0

    return-object p0
.end method

.method public final setOffset(I)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->offset:I

    return-object p0
.end method

.method public final setOffset(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->offset:I

    return-void
.end method

.method public final setOrdering([Lcom/couchbase/lite/Ordering;)V
    .locals 0
    .param p1    # [Lcom/couchbase/lite/Ordering;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->ordering:[Lcom/couchbase/lite/Ordering;

    return-void
.end method

.method public final setParentId(Ljava/lang/String;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->parentId:Ljava/lang/String;

    return-object p0
.end method

.method public final setParentId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->parentId:Ljava/lang/String;

    return-void
.end method

.method public final setSelectResults([Lcom/couchbase/lite/SelectResult;)V
    .locals 1
    .param p1    # [Lcom/couchbase/lite/SelectResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->selectResults:[Lcom/couchbase/lite/SelectResult;

    return-void
.end method

.method public final setUpdateValues(Ljava/util/HashMap;)V
    .locals 1
    .param p1    # Ljava/util/HashMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->updateValues:Ljava/util/HashMap;

    return-void
.end method

.method public final varargs setVarargGroupBy([Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;
    .locals 1
    .param p1    # [Lcom/couchbase/lite/Expression;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "groupBy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/couchbase/lite/Expression;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/couchbase/lite/Expression;

    iput-object p1, p0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->groupBy:[Lcom/couchbase/lite/Expression;

    return-object p0
.end method

.method public final varargs setVarargOrdering([Lcom/couchbase/lite/Ordering;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;
    .locals 1
    .param p1    # [Lcom/couchbase/lite/Ordering;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "ordering"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/couchbase/lite/Ordering;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/couchbase/lite/Ordering;

    iput-object p1, p0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->ordering:[Lcom/couchbase/lite/Ordering;

    return-object p0
.end method

.method public final varargs setVarargSelectResults([Lcom/couchbase/lite/SelectResult;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;
    .locals 1
    .param p1    # [Lcom/couchbase/lite/SelectResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "selectResults"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/couchbase/lite/SelectResult;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/couchbase/lite/SelectResult;

    iput-object p1, p0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->selectResults:[Lcom/couchbase/lite/SelectResult;

    return-object p0
.end method

.method public final setWhereEx(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;
    .locals 0
    .param p1    # Lcom/couchbase/lite/Expression;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->whereEx:Lcom/couchbase/lite/Expression;

    return-object p0
.end method

.method public final setWhereEx(Lcom/couchbase/lite/Expression;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/Expression;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->whereEx:Lcom/couchbase/lite/Expression;

    return-void
.end method
