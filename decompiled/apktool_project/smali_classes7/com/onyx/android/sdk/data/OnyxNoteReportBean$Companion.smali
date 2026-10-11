.class public final Lcom/onyx/android/sdk/data/OnyxNoteReportBean$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/data/OnyxNoteReportBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOnyxNoteReportBean.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OnyxNoteReportBean.kt\ncom/onyx/android/sdk/data/OnyxNoteReportBean$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,29:1\n1549#2:30\n1620#2,3:31\n*S KotlinDebug\n*F\n+ 1 OnyxNoteReportBean.kt\ncom/onyx/android/sdk/data/OnyxNoteReportBean$Companion\n*L\n17#1:30\n17#1:31,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/OnyxNoteReportBean$Companion;",
        "",
        "()V",
        "createOnyxNoteReportBean",
        "Lcom/onyx/android/sdk/data/OnyxNoteReportBean;",
        "list",
        "",
        "Lcom/onyx/android/sdk/data/OnyxNoteModel;",
        "sdk-statistics_overseasRelease"
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
        "SMAP\nOnyxNoteReportBean.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OnyxNoteReportBean.kt\ncom/onyx/android/sdk/data/OnyxNoteReportBean$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,29:1\n1549#2:30\n1620#2,3:31\n*S KotlinDebug\n*F\n+ 1 OnyxNoteReportBean.kt\ncom/onyx/android/sdk/data/OnyxNoteReportBean$Companion\n*L\n17#1:30\n17#1:31,3\n*E\n"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/data/OnyxNoteReportBean$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createOnyxNoteReportBean(Ljava/util/List;)Lcom/onyx/android/sdk/data/OnyxNoteReportBean;
    .locals 10
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/OnyxNoteModel;",
            ">;)",
            "Lcom/onyx/android/sdk/data/OnyxNoteReportBean;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "list"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/data/OnyxNoteModel;

    new-instance v9, Lcom/onyx/android/sdk/data/OnyxNoteReportBean$Item;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/OnyxNoteModel;->getNoteId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/OnyxNoteModel;->getSize()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/OnyxNoteModel;->getEventAt()J

    move-result-wide v5

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/OnyxNoteModel;->getUid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/OnyxNoteModel;->getUdid()Ljava/lang/String;

    move-result-object v8

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/onyx/android/sdk/data/OnyxNoteReportBean$Item;-><init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/onyx/android/sdk/data/OnyxNoteReportBean;

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/data/OnyxNoteReportBean;-><init>(Ljava/util/List;)V

    return-object p1
.end method
