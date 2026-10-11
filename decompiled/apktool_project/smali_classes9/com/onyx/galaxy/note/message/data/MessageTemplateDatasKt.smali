.class public final Lcom/onyx/galaxy/note/message/data/MessageTemplateDatasKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMessageTemplateDatas.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MessageTemplateDatas.kt\ncom/onyx/galaxy/note/message/data/MessageTemplateDatasKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,17:1\n1855#2,2:18\n*S KotlinDebug\n*F\n+ 1 MessageTemplateDatas.kt\ncom/onyx/galaxy/note/message/data/MessageTemplateDatasKt\n*L\n12#1:18,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "convertToLocal",
        "Lcom/onyx/android/sdk/data/common/data/MessageTemplateSet;",
        "Lcom/onyx/galaxy/note/message/data/GetMessageTemplatesResponse;",
        "note_overseasRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nMessageTemplateDatas.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MessageTemplateDatas.kt\ncom/onyx/galaxy/note/message/data/MessageTemplateDatasKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,17:1\n1855#2,2:18\n*S KotlinDebug\n*F\n+ 1 MessageTemplateDatas.kt\ncom/onyx/galaxy/note/message/data/MessageTemplateDatasKt\n*L\n12#1:18,2\n*E\n"
    }
.end annotation


# direct methods
.method public static final convertToLocal(Lcom/onyx/galaxy/note/message/data/GetMessageTemplatesResponse;)Lcom/onyx/android/sdk/data/common/data/MessageTemplateSet;
    .locals 3
    .param p0    # Lcom/onyx/galaxy/note/message/data/GetMessageTemplatesResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/data/common/data/MessageTemplateSet;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/common/data/MessageTemplateSet;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/bean/DataResponse;->getData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_1

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/data/common/data/MessageTemplate;

    const-string v2, "key"

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/common/data/MessageTemplate;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, ""

    :cond_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method
