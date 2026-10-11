.class public final Lcom/onyx/android/sdk/replicator/note/proto/pb/ExtraInfoPBData;
.super Lcom/onyx/android/sdk/replicator/note/proto/pb/BasePBData;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J \u0010\r\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000bH\u0002J(\u0010\u0012\u001a\u0004\u0018\u00010\t2\u0006\u0010\u000e\u001a\u00020\u00072\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f2\u0006\u0010\u000c\u001a\u00020\u000bH\u0002R\"\u0010\u0019\u001a\u00020\u00138\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/proto/pb/ExtraInfoPBData;",
        "Lcom/onyx/android/sdk/replicator/note/proto/pb/BasePBData;",
        "Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;",
        "pbDataContext",
        "",
        "exportToNote",
        "copyPBDataToDB",
        "Lcom/onyx/android/sdk/replicator/note/proto/doc/ExtraInfoPBDocument;",
        "infoPBDocument",
        "Lcom/onyx/android/sdk/replicator/note/proto/data/ExtraInfoBean;",
        "infoBean",
        "",
        "documentId",
        "b",
        "pbDocument",
        "",
        "Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;",
        "argsList",
        "a",
        "",
        "I",
        "getType",
        "()I",
        "setType",
        "(I)V",
        "type",
        "<init>",
        "()V",
        "sdk-replicator_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/proto/pb/BasePBData;-><init>()V

    const/4 v0, 0x6

    iput v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/ExtraInfoPBData;->a:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/replicator/note/proto/doc/ExtraInfoPBDocument;Ljava/util/List;Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/data/ExtraInfoBean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/proto/doc/ExtraInfoPBDocument;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/onyx/android/sdk/replicator/note/proto/data/ExtraInfoBean;"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;

    invoke-virtual {p0, p3}, Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;->setDocumentId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;->setArgs(Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;)Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;->load()Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;->getData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/ExtraInfoProto$ExtraInfo;

    if-eqz p0, :cond_1

    sget-object p1, Lcom/onyx/android/sdk/replicator/note/proto/doc/ExtraInfoPBDocument;->Companion:Lcom/onyx/android/sdk/replicator/note/proto/doc/ExtraInfoPBDocument$Companion;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/replicator/note/proto/doc/ExtraInfoPBDocument$Companion;->fromProto(Lcom/onyx/android/sdk/replicator/note/proto/ExtraInfoProto$ExtraInfo;)Lcom/onyx/android/sdk/replicator/note/proto/data/ExtraInfoBean;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final b(Lcom/onyx/android/sdk/replicator/note/proto/doc/ExtraInfoPBDocument;Lcom/onyx/android/sdk/replicator/note/proto/data/ExtraInfoBean;Ljava/lang/String;)V
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/ExtraInfoPBDocument;->Companion:Lcom/onyx/android/sdk/replicator/note/proto/doc/ExtraInfoPBDocument$Companion;

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/replicator/note/proto/doc/ExtraInfoPBDocument$Companion;->toProto(Lcom/onyx/android/sdk/replicator/note/proto/data/ExtraInfoBean;)Lcom/onyx/android/sdk/replicator/note/proto/ExtraInfoProto$ExtraInfo;

    move-result-object p0

    new-instance p2, Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;

    invoke-direct {p2}, Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;-><init>()V

    invoke-virtual {p2, p3}, Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;->setDocumentId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;

    move-result-object p2

    const-string p3, "extra"

    invoke-virtual {p2, p3}, Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;->setRevisionId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;->setArgs(Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;)Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;->setData(Ljava/lang/Object;)Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;->save()Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;

    return-void
.end method

.method public copyPBDataToDB(Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;)V
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pbDataContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;->getCopyNoteArgs()Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/replicator/note/proto/doc/ExtraInfoPBDocument;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/proto/doc/ExtraInfoPBDocument;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->getSrcDirFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;->setPbDirPath(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;

    sget-object v1, Lcom/onyx/android/sdk/replicator/note/proto/doc/PBDocumentUtils;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/doc/PBDocumentUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->getSrcDocId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/replicator/note/proto/doc/ExtraInfoPBDocument;->getPBFileDirPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/proto/doc/PBDocumentUtils;->loadDocPBArgsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->getSrcDocId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/onyx/android/sdk/replicator/note/proto/pb/ExtraInfoPBData;->a(Lcom/onyx/android/sdk/replicator/note/proto/doc/ExtraInfoPBDocument;Ljava/util/List;Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/data/ExtraInfoBean;

    move-result-object p0

    if-nez p0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->setExtraInfoBean(Lcom/onyx/android/sdk/replicator/note/proto/data/ExtraInfoBean;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/replicator/note/proto/pb/ExtraInfoPBData;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copyPBDataToDB documentId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->getSrcDocId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", extraInfo:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {v0, v1, p0, p1}, Lcom/onyx/android/sdk/base/utils/Debug;->i(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public exportToNote(Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;)V
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pbDataContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;->getExportNoteArgs()Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->getInfoBean()Lcom/onyx/android/sdk/replicator/note/proto/data/ExtraInfoBean;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    new-instance v2, Lcom/onyx/android/sdk/replicator/note/proto/doc/ExtraInfoPBDocument;

    invoke-direct {v2}, Lcom/onyx/android/sdk/replicator/note/proto/doc/ExtraInfoPBDocument;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->getExportDirPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;->setPbDirPath(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;->getDocumentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v1, v0}, Lcom/onyx/android/sdk/replicator/note/proto/pb/ExtraInfoPBData;->b(Lcom/onyx/android/sdk/replicator/note/proto/doc/ExtraInfoPBDocument;Lcom/onyx/android/sdk/replicator/note/proto/data/ExtraInfoBean;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v0, Lcom/onyx/android/sdk/replicator/note/proto/pb/ExtraInfoPBData;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exportToNote documentId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;->getDocumentId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", save extraInfo to pb:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, p1, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->i(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/ExtraInfoPBData;->a:I

    return p0
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/ExtraInfoPBData;->a:I

    return-void
.end method
