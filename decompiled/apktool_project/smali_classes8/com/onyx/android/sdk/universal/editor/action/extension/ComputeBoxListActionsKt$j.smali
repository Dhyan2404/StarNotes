.class public final Lcom/onyx/android/sdk/universal/editor/action/extension/ComputeBoxListActionsKt$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/extension/ComputeBoxListActionsKt;->getIntersectsAndVisibleBoxList(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComputeBoxListActions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ComputeBoxListActions.kt\ncom/onyx/android/sdk/universal/editor/action/extension/ComputeBoxListActionsKt$getIntersectsAndVisibleBoxList$4\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,173:1\n1655#2,8:174\n*S KotlinDebug\n*F\n+ 1 ComputeBoxListActions.kt\ncom/onyx/android/sdk/universal/editor/action/extension/ComputeBoxListActionsKt$getIntersectsAndVisibleBoxList$4\n*L\n145#1:174,8\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nComputeBoxListActions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ComputeBoxListActions.kt\ncom/onyx/android/sdk/universal/editor/action/extension/ComputeBoxListActionsKt$getIntersectsAndVisibleBoxList$4\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,173:1\n1655#2,8:174\n*S KotlinDebug\n*F\n+ 1 ComputeBoxListActions.kt\ncom/onyx/android/sdk/universal/editor/action/extension/ComputeBoxListActionsKt$getIntersectsAndVisibleBoxList$4\n*L\n145#1:174,8\n*E\n"
    }
.end annotation


# static fields
.field public static final e:Lcom/onyx/android/sdk/universal/editor/action/extension/ComputeBoxListActionsKt$j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/universal/editor/action/extension/ComputeBoxListActionsKt$j<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/extension/ComputeBoxListActionsKt$j;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/ComputeBoxListActionsKt$j;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/action/extension/ComputeBoxListActionsKt$j;->e:Lcom/onyx/android/sdk/universal/editor/action/extension/ComputeBoxListActionsKt$j;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/extension/ComputeBoxListActionsKt$j;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
