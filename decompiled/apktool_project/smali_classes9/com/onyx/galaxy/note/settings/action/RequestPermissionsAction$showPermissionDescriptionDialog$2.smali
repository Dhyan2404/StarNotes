.class final Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction$showPermissionDescriptionDialog$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;->A(Lio/reactivex/rxjava3/subjects/PublishSubject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
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


# instance fields
.field final synthetic $publishSubject:Lio/reactivex/rxjava3/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/PublishSubject<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $requestDesc:Ljava/lang/String;

.field final synthetic this$0:Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;Lio/reactivex/rxjava3/subjects/PublishSubject;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;",
            "Lio/reactivex/rxjava3/subjects/PublishSubject<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction$showPermissionDescriptionDialog$2;->this$0:Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;

    iput-object p2, p0, Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction$showPermissionDescriptionDialog$2;->$publishSubject:Lio/reactivex/rxjava3/subjects/PublishSubject;

    iput-object p3, p0, Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction$showPermissionDescriptionDialog$2;->$requestDesc:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction$showPermissionDescriptionDialog$2;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction$showPermissionDescriptionDialog$2;->this$0:Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;

    iget-object v1, p0, Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction$showPermissionDescriptionDialog$2;->$publishSubject:Lio/reactivex/rxjava3/subjects/PublishSubject;

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction$showPermissionDescriptionDialog$2;->$requestDesc:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;->access$permissionRequest(Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;Lio/reactivex/rxjava3/subjects/PublishSubject;Ljava/lang/String;)V

    return-void
.end method
