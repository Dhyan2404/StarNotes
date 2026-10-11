.class public final Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer;->j(Lcom/onyx/android/sdk/base/extension/IntList;Z)V
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
    value = "SMAP\nShapeParamsContainer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeParamsContainer.kt\ncom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer$updateColorSetStatus$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,208:1\n1726#2,3:209\n*S KotlinDebug\n*F\n+ 1 ShapeParamsContainer.kt\ncom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer$updateColorSetStatus$1\n*L\n97#1:209,3\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nShapeParamsContainer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeParamsContainer.kt\ncom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer$updateColorSetStatus$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,208:1\n1726#2,3:209\n*S KotlinDebug\n*F\n+ 1 ShapeParamsContainer.kt\ncom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer$updateColorSetStatus$1\n*L\n97#1:209,3\n*E\n"
    }
.end annotation


# static fields
.field public static final e:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer$d<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer$d;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer$d;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer$d;->e:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer$d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Ljava/lang/Boolean;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p0, p1

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNonBlank(Ljava/util/Collection;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    check-cast p1, Ljava/lang/Iterable;

    instance-of p0, p1, Ljava/util/Collection;

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    move-object p0, p1

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    move p0, v1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;->getPreset()Z

    move-result p1

    xor-int/2addr p1, v1

    if-nez p1, :cond_2

    move p0, v0

    :goto_0
    if-eqz p0, :cond_3

    move v0, v1

    :cond_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer$d;->a(Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
