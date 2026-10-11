.class public final Lcom/onyx/android/sdk/replicator/note/db/model/TitleModelKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u000e\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u001a\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0001\u00a8\u0006\u0005"
    }
    d2 = {
        "getLocalTitle",
        "",
        "",
        "Lcom/onyx/android/sdk/replicator/note/db/model/TitleModel;",
        "defaultTitle",
        "sdk-replicator_overseasRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final getLocalTitle(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/TitleModel;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    move-object p1, v1

    :cond_0
    return-object p1

    :cond_1
    sget-object v0, Lcom/onyx/android/sdk/base/utils/LocaleUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/LocaleUtils;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/LocaleUtils;->getLocalMappingServiceLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/db/model/TitleModel;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/TitleModel;->getLocale()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/TitleModel;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    if-nez p1, :cond_4

    move-object p1, v1

    :cond_4
    return-object p1
.end method
