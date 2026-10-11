.class public final Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent$Companion;",
        "",
        "()V",
        "createFrom",
        "Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent;",
        "noteModel",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "updateTab",
        "",
        "openDocArgs",
        "Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
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
    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent$Companion;-><init>()V

    return-void
.end method

.method public static synthetic createFrom$default(Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent$Companion;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;ZILjava/lang/Object;)Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent$Companion;->createFrom(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Z)Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic createFrom$default(Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent$Companion;Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;ZILjava/lang/Object;)Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent$Companion;->createFrom(Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;Z)Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final createFrom(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Z)Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "noteModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->Companion:Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs$Companion;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs$Companion;->createFrom(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent$Companion;->createFrom(Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;Z)Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent;

    move-result-object p0

    return-object p0
.end method

.method public final createFrom(Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;Z)Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent;
    .locals 8
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "openDocArgs"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance p0, Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->getDocumentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->getPageId()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v0, p0

    move v3, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v7}, Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method
