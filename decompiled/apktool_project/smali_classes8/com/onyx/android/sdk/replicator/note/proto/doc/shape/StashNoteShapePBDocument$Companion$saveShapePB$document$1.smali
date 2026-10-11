.class public final Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/StashNoteShapePBDocument$Companion$saveShapePB$document$1;
.super Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/StashNoteShapePBDocument;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/StashNoteShapePBDocument$Companion;->saveShapePB(Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProtoList;)Lkotlin/Pair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/onyx/android/sdk/replicator/note/proto/doc/shape/StashNoteShapePBDocument$Companion$saveShapePB$document$1",
        "Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/StashNoteShapePBDocument;",
        "dataZipFilePath",
        "",
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


# instance fields
.field public final synthetic d:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic e:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p2, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/StashNoteShapePBDocument$Companion$saveShapePB$document$1;->d:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/StashNoteShapePBDocument$Companion$saveShapePB$document$1;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/StashNoteShapePBDocument;-><init>(Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;)V

    return-void
.end method


# virtual methods
.method public dataZipFilePath()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/StashNoteShapePBDocument$Companion$saveShapePB$document$1;->d:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-super {p0}, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument;->dataZipFilePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/StashNoteShapePBDocument$Companion$saveShapePB$document$1;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/StashNoteShapePBDocument;->tempDataZipFilePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/StashNoteShapePBDocument$Companion$saveShapePB$document$1;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
