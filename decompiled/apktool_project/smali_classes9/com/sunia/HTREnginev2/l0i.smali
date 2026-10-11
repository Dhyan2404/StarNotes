.class public final synthetic Lcom/sunia/HTREnginev2/l0i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic a:Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;

.field public final synthetic b:Landroidx/activity/ComponentActivity;

.field public final synthetic c:Landroidx/fragment/app/Fragment;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;Landroidx/activity/ComponentActivity;Landroidx/fragment/app/Fragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/l0i;->a:Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/l0i;->b:Landroidx/activity/ComponentActivity;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/l0i;->c:Landroidx/fragment/app/Fragment;

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/l0i;->a:Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/l0i;->b:Landroidx/activity/ComponentActivity;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/l0i;->c:Landroidx/fragment/app/Fragment;

    check-cast p1, Landroidx/activity/result/ActivityResult;

    invoke-static {v0, v1, p0, p1}, Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;->d(Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;Landroidx/activity/ComponentActivity;Landroidx/fragment/app/Fragment;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method
