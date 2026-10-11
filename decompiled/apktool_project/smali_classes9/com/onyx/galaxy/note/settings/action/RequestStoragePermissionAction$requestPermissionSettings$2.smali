.class final Lcom/onyx/galaxy/note/settings/action/RequestStoragePermissionAction$requestPermissionSettings$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/settings/action/RequestStoragePermissionAction;->q()V
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
.field final synthetic this$0:Lcom/onyx/galaxy/note/settings/action/RequestStoragePermissionAction;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/settings/action/RequestStoragePermissionAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/action/RequestStoragePermissionAction$requestPermissionSettings$2;->this$0:Lcom/onyx/galaxy/note/settings/action/RequestStoragePermissionAction;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/action/RequestStoragePermissionAction$requestPermissionSettings$2;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 3

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/galaxy/note/settings/action/RequestStoragePermissionAction$requestPermissionSettings$2;->this$0:Lcom/onyx/galaxy/note/settings/action/RequestStoragePermissionAction;

    invoke-static {v2}, Lcom/onyx/galaxy/note/settings/action/RequestStoragePermissionAction;->access$getActivity$p(Lcom/onyx/galaxy/note/settings/action/RequestStoragePermissionAction;)Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 4
    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/action/RequestStoragePermissionAction$requestPermissionSettings$2;->this$0:Lcom/onyx/galaxy/note/settings/action/RequestStoragePermissionAction;

    invoke-static {p0}, Lcom/onyx/galaxy/note/settings/action/RequestStoragePermissionAction;->access$getActivity$p(Lcom/onyx/galaxy/note/settings/action/RequestStoragePermissionAction;)Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/16 v1, 0x7d8

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
