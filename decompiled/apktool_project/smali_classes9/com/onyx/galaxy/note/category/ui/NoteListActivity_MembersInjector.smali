.class public final Lcom/onyx/galaxy/note/category/ui/NoteListActivity_MembersInjector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation build Ldagger/internal/DaggerGenerated;
.end annotation

.annotation build Ldagger/internal/QualifierMetadata;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/onyx/galaxy/note/category/ui/NoteListActivity;",
        ">;"
    }
.end annotation


# instance fields
.field public final e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/onyx/galaxy/note/update/IAppUpdateDetect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/onyx/galaxy/note/update/IAppUpdateDetect;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListActivity_MembersInjector;->e:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/onyx/galaxy/note/update/IAppUpdateDetect;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/onyx/galaxy/note/category/ui/NoteListActivity;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/NoteListActivity_MembersInjector;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity_MembersInjector;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectAppUpdateDetect(Lcom/onyx/galaxy/note/category/ui/NoteListActivity;Lcom/onyx/galaxy/note/update/IAppUpdateDetect;)V
    .locals 0
    .annotation build Ldagger/internal/InjectedFieldSignature;
        value = "com.onyx.galaxy.note.category.ui.NoteListActivity.appUpdateDetect"
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->appUpdateDetect:Lcom/onyx/galaxy/note/update/IAppUpdateDetect;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/onyx/galaxy/note/category/ui/NoteListActivity;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListActivity_MembersInjector;->e:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/update/IAppUpdateDetect;

    invoke-static {p1, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity_MembersInjector;->injectAppUpdateDetect(Lcom/onyx/galaxy/note/category/ui/NoteListActivity;Lcom/onyx/galaxy/note/update/IAppUpdateDetect;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity_MembersInjector;->injectMembers(Lcom/onyx/galaxy/note/category/ui/NoteListActivity;)V

    return-void
.end method
