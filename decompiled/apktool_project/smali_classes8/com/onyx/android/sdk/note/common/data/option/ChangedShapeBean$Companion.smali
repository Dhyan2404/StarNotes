.class public final Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChangedShapeBean.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChangedShapeBean.kt\ncom/onyx/android/sdk/note/common/data/option/ChangedShapeBean$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,191:1\n1855#2,2:192\n*S KotlinDebug\n*F\n+ 1 ChangedShapeBean.kt\ncom/onyx/android/sdk/note/common/data/option/ChangedShapeBean$Companion\n*L\n187#1:192,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u0004*\u0008\u0012\u0004\u0012\u00020\u00060\u0005J\u0010\u0010\u0007\u001a\u00020\u0004*\u0008\u0012\u0004\u0012\u00020\u00060\u0005J\u0010\u0010\u0008\u001a\u00020\u0004*\u0008\u0012\u0004\u0012\u00020\u00040\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean$Companion;",
        "",
        "()V",
        "addRemovedShapesToChangedShapeBean",
        "Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "addShapesToChangedShapeBean",
        "merge",
        "",
        "sdk-note_overseasRelease"
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
        "SMAP\nChangedShapeBean.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChangedShapeBean.kt\ncom/onyx/android/sdk/note/common/data/option/ChangedShapeBean$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,191:1\n1855#2,2:192\n*S KotlinDebug\n*F\n+ 1 ChangedShapeBean.kt\ncom/onyx/android/sdk/note/common/data/option/ChangedShapeBean$Companion\n*L\n187#1:192,2\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final addRemovedShapesToChangedShapeBean(Ljava/util/Collection;)Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;
    .locals 0
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)",
            "Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;-><init>()V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;->setRemoveShapeList(Ljava/util/List;)Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

    move-result-object p0

    return-object p0
.end method

.method public final addShapesToChangedShapeBean(Ljava/util/Collection;)Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;
    .locals 0
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)",
            "Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;-><init>()V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;->setAddShapeList(Ljava/util/List;)Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

    move-result-object p0

    return-object p0
.end method

.method public final merge(Ljava/util/List;)Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;",
            ">;)",
            "Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;-><init>()V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;->merge(Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;)V

    goto :goto_0

    :cond_0
    return-object p0
.end method
