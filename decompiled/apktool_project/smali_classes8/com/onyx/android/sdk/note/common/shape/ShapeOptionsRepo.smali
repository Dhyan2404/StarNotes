.class public final Lcom/onyx/android/sdk/note/common/shape/ShapeOptionsRepo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShapeOptionsRepo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeOptionsRepo.kt\ncom/onyx/android/sdk/note/common/shape/ShapeOptionsRepo\n+ 2 OptionsRepo.kt\ncom/onyx/android/sdk/base/utils/OptionsRepo\n*L\n1#1,26:1\n12#2,4:27\n12#2,4:31\n*S KotlinDebug\n*F\n+ 1 ShapeOptionsRepo.kt\ncom/onyx/android/sdk/note/common/shape/ShapeOptionsRepo\n*L\n10#1:27,4\n18#1:31,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\u0004\u0018\u00010\u0004*\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t*\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u001a\u0010\n\u001a\u00020\u000b*\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u0004J\u001a\u0010\r\u001a\u00020\u000b*\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\t\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/shape/ShapeOptionsRepo;",
        "",
        "()V",
        "getShapeLineStyle",
        "Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;",
        "Lcom/onyx/android/sdk/base/utils/OptionsRepo;",
        "key",
        "",
        "getShapeResource",
        "Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;",
        "setShapeLineStyle",
        "",
        "style",
        "setShapeResource",
        "resource",
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
        "SMAP\nShapeOptionsRepo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeOptionsRepo.kt\ncom/onyx/android/sdk/note/common/shape/ShapeOptionsRepo\n+ 2 OptionsRepo.kt\ncom/onyx/android/sdk/base/utils/OptionsRepo\n*L\n1#1,26:1\n12#2,4:27\n12#2,4:31\n*S KotlinDebug\n*F\n+ 1 ShapeOptionsRepo.kt\ncom/onyx/android/sdk/note/common/shape/ShapeOptionsRepo\n*L\n10#1:27,4\n18#1:31,4\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeOptionsRepo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/note/common/shape/ShapeOptionsRepo;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptionsRepo;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeOptionsRepo;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeOptionsRepo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getShapeLineStyle(Lcom/onyx/android/sdk/base/utils/OptionsRepo;Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/base/utils/OptionsRepo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "key"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/utils/OptionsRepo;->getRepo()Ljava/util/HashMap;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/utils/OptionsRepo;->getRepo()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    instance-of p0, p0, Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/utils/OptionsRepo;->getRepo()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public final getShapeResource(Lcom/onyx/android/sdk/base/utils/OptionsRepo;Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/base/utils/OptionsRepo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "key"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/utils/OptionsRepo;->getRepo()Ljava/util/HashMap;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/utils/OptionsRepo;->getRepo()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    instance-of p0, p0, Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/utils/OptionsRepo;->getRepo()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public final setShapeLineStyle(Lcom/onyx/android/sdk/base/utils/OptionsRepo;Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/base/utils/OptionsRepo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "key"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "style"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Lcom/onyx/android/sdk/base/utils/OptionsRepo;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final setShapeResource(Lcom/onyx/android/sdk/base/utils/OptionsRepo;Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/base/utils/OptionsRepo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "key"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "resource"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Lcom/onyx/android/sdk/base/utils/OptionsRepo;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
