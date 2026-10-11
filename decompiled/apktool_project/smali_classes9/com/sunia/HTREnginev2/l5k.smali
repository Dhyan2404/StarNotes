.class public final synthetic Lcom/sunia/HTREnginev2/l5k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/data/message/model/NotificationModel;

.field public final synthetic f:Lcom/onyx/galaxy/note/databinding/LayoutSidebarNotificationBinding;

.field public final synthetic g:Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/data/message/model/NotificationModel;Lcom/onyx/galaxy/note/databinding/LayoutSidebarNotificationBinding;Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/l5k;->e:Lcom/onyx/android/sdk/data/message/model/NotificationModel;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/l5k;->f:Lcom/onyx/galaxy/note/databinding/LayoutSidebarNotificationBinding;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/l5k;->g:Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/l5k;->e:Lcom/onyx/android/sdk/data/message/model/NotificationModel;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/l5k;->f:Lcom/onyx/galaxy/note/databinding/LayoutSidebarNotificationBinding;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/l5k;->g:Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;

    invoke-static {v0, v1, p0, p1}, Lcom/onyx/galaxy/note/message/handler/NotificationHandler;->a(Lcom/onyx/android/sdk/data/message/model/NotificationModel;Lcom/onyx/galaxy/note/databinding/LayoutSidebarNotificationBinding;Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;Landroid/view/View;)V

    return-void
.end method
