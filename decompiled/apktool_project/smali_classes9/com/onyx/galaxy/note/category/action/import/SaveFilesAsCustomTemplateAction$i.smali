.class public final Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;->u(Lcom/onyx/galaxy/note/category/data/TemplateFileBean;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;

.field public final synthetic f:Lcom/onyx/galaxy/note/category/data/TemplateFileBean;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;Lcom/onyx/galaxy/note/category/data/TemplateFileBean;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$i;->e:Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$i;->f:Lcom/onyx/galaxy/note/category/data/TemplateFileBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/onyx/android/sdk/reader/api/ReaderExportArgs;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$i;->e:Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$i;->f:Lcom/onyx/galaxy/note/category/data/TemplateFileBean;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/data/TemplateFileBean;->getPassword()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;->access$createReaderExportArgs(Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;ILjava/lang/String;)Lcom/onyx/android/sdk/reader/api/ReaderExportArgs;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$i;->a(I)Lcom/onyx/android/sdk/reader/api/ReaderExportArgs;

    move-result-object p0

    return-object p0
.end method
