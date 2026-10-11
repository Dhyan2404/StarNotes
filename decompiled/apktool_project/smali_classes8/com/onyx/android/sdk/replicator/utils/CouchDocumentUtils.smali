.class public final Lcom/onyx/android/sdk/replicator/utils/CouchDocumentUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\tJ\u000e\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\tJ\u000e\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\tJ\u000e\u0010\r\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/utils/CouchDocumentUtils;",
        "",
        "()V",
        "isCommitPoint",
        "",
        "document",
        "Lcom/couchbase/lite/Document;",
        "isNoteDocCommitPoint",
        "isNoteDocEnabled",
        "Lcom/couchbase/lite/MutableDocument;",
        "isNoteDocSyncEnabled",
        "isNoteDocument",
        "isNoteLibrary",
        "isNoteTagDocument",
        "isNoteTreeSyncEnabled",
        "sdk-replicator_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/replicator/utils/CouchDocumentUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/replicator/utils/CouchDocumentUtils;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/utils/CouchDocumentUtils;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/replicator/utils/CouchDocumentUtils;->INSTANCE:Lcom/onyx/android/sdk/replicator/utils/CouchDocumentUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isCommitPoint(Lcom/couchbase/lite/Document;)Z
    .locals 0
    .param p1    # Lcom/couchbase/lite/Document;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "document"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "commitStatus"

    invoke-virtual {p1, p0}, Lcom/couchbase/lite/Document;->contains(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isNoteDocCommitPoint(Lcom/couchbase/lite/Document;)Z
    .locals 1
    .param p1    # Lcom/couchbase/lite/Document;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "document"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/utils/CouchDocumentUtils;->isCommitPoint(Lcom/couchbase/lite/Document;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "commitType"

    invoke-virtual {p1, p0}, Lcom/couchbase/lite/Document;->getInt(Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final isNoteDocEnabled(Lcom/couchbase/lite/MutableDocument;)Z
    .locals 0
    .param p1    # Lcom/couchbase/lite/MutableDocument;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "document"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "status"

    invoke-virtual {p1, p0}, Lcom/couchbase/lite/Document;->getInt(Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final isNoteDocSyncEnabled(Lcom/couchbase/lite/MutableDocument;)Z
    .locals 4
    .param p1    # Lcom/couchbase/lite/MutableDocument;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "document"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notePointSize"

    invoke-virtual {p1, v0}, Lcom/couchbase/lite/Document;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/utils/CouchDocumentUtils;->isNoteDocument(Lcom/couchbase/lite/MutableDocument;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/utils/CouchDocumentUtils;->isNoteDocEnabled(Lcom/couchbase/lite/MutableDocument;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/utils/CouchDocumentUtils;->isNoteTreeSyncEnabled(Lcom/couchbase/lite/Document;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isNoteDocument(Lcom/couchbase/lite/MutableDocument;)Z
    .locals 1
    .param p1    # Lcom/couchbase/lite/MutableDocument;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "document"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "type"

    invoke-virtual {p1, p0}, Lcom/couchbase/lite/Document;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Lcom/couchbase/lite/Document;->getInt(Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final isNoteLibrary(Lcom/couchbase/lite/MutableDocument;)Z
    .locals 1
    .param p1    # Lcom/couchbase/lite/MutableDocument;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "document"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "type"

    invoke-virtual {p1, p0}, Lcom/couchbase/lite/Document;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Lcom/couchbase/lite/Document;->getInt(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isNoteTagDocument(Lcom/couchbase/lite/Document;)Z
    .locals 1
    .param p1    # Lcom/couchbase/lite/Document;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "document"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "modeType"

    invoke-virtual {p1, p0}, Lcom/couchbase/lite/Document;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Lcom/couchbase/lite/Document;->getInt(Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final isNoteTreeSyncEnabled(Lcom/couchbase/lite/Document;)Z
    .locals 2
    .param p1    # Lcom/couchbase/lite/Document;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "document"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "noteSyncStatus"

    invoke-virtual {p1, p0}, Lcom/couchbase/lite/Document;->contains(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1, p0}, Lcom/couchbase/lite/Document;->getInt(Ljava/lang/String;)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method
