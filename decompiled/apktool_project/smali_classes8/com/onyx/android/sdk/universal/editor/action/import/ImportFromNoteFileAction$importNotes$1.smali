.class final Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$importNotes$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;->X(Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/zip/ZipEntry;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Ljava/util/zip/ZipEntry;",
        "invoke",
        "(Ljava/util/zip/ZipEntry;)Ljava/lang/Boolean;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $extraInfoName:Ljava/lang/String;

.field final synthetic $isMultiNoteFiles:Lkotlin/jvm/internal/Ref$BooleanRef;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$importNotes$1;->$isMultiNoteFiles:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$importNotes$1;->$extraInfoName:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/util/zip/ZipEntry;)Ljava/lang/Boolean;
    .locals 5
    .param p1    # Ljava/util/zip/ZipEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v0

    const-string v1, "getName(...)"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$importNotes$1;->$isMultiNoteFiles:Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v3, "userData"

    invoke-static {p1, v3, v2, v0, v1}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 4
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$importNotes$1;->$isMultiNoteFiles:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$importNotes$1;->$extraInfoName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "note"

    invoke-static {p1, v1, v2}, Lkotlin/text/StringsKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    iput-boolean v2, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 6
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$importNotes$1;->$isMultiNoteFiles:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean p0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/zip/ZipEntry;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$importNotes$1;->invoke(Ljava/util/zip/ZipEntry;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
