.class public final Lcom/onyx/android/sdk/universal/editor/action/export/ExportToImageFileAction$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/export/ExportToImageFileAction;->export(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/export/ExportToImageFileAction;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

.field public final synthetic g:Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/export/ExportToImageFileAction;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToImageFileAction$m;->e:Lcom/onyx/android/sdk/universal/editor/action/export/ExportToImageFileAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToImageFileAction$m;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToImageFileAction$m;->g:Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToImageFileAction$m;->e:Lcom/onyx/android/sdk/universal/editor/action/export/ExportToImageFileAction;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToImageFileAction$m;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToImageFileAction$m;->g:Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;

    invoke-static {p1, v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToImageFileAction;->access$onExportPageFinished(Lcom/onyx/android/sdk/universal/editor/action/export/ExportToImageFileAction;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;)V

    return-void
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToImageFileAction$m;->a(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
