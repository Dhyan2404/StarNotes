.class public final synthetic Lcom/sunia/HTREnginev2/a6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic a:Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyHuaweiViewModel;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyHuaweiViewModel;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/a6;->a:Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyHuaweiViewModel;

    iput-boolean p2, p0, Lcom/sunia/HTREnginev2/a6;->b:Z

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/a6;->a:Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyHuaweiViewModel;

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/a6;->b:Z

    check-cast p1, Landroidx/activity/result/ActivityResult;

    invoke-static {v0, p0, p1}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyHuaweiViewModel;->d(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyHuaweiViewModel;ZLandroidx/activity/result/ActivityResult;)V

    return-void
.end method
