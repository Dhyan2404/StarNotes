.class public final Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->G0()V
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
.field public final synthetic e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$a;->e:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;)Lcom/onyx/android/sdk/universal/ui/data/RestoreContext;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/ui/data/RestoreContext;

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->Companion:Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs$Companion;

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$a;->e:Ljava/util/List;

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs$Companion;->create(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/ui/data/RestoreContext;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/ui/data/RestoreContext;->setCloudProvider(Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;)V

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$a;->a(Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;)Lcom/onyx/android/sdk/universal/ui/data/RestoreContext;

    move-result-object p0

    return-object p0
.end method
