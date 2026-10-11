.class final Lcom/onyx/android/sdk/note/common/document/page/NotePageSave$deleteShapeFromDB$modelGroup$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/note/common/document/page/NotePageSave;->deleteShapeFromDB(Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;",
        "Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;",
        "it",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/note/common/document/page/NotePageSave$deleteShapeFromDB$modelGroup$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/note/common/document/page/NotePageSave$deleteShapeFromDB$modelGroup$2;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/document/page/NotePageSave$deleteShapeFromDB$modelGroup$2;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/note/common/document/page/NotePageSave$deleteShapeFromDB$modelGroup$2;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/page/NotePageSave$deleteShapeFromDB$modelGroup$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;)Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/document/page/NotePageSave$deleteShapeFromDB$modelGroup$2;->invoke(Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;)Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;

    move-result-object p0

    return-object p0
.end method
