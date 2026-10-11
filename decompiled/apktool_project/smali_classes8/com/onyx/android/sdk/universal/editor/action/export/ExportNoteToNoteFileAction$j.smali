.class public final Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;->R(Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;Ljava/io/File;Ljava/io/File;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$j;->e:Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$j;->e:Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->getPackedFileSet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$j;->a(Ljava/lang/String;)V

    return-void
.end method
