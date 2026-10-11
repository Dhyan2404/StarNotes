.class public final synthetic Lcom/sunia/HTREnginev2/m5k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/databinding/LayoutSidebarNotificationBinding;

.field public final synthetic f:F


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/databinding/LayoutSidebarNotificationBinding;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/m5k;->e:Lcom/onyx/galaxy/note/databinding/LayoutSidebarNotificationBinding;

    iput p2, p0, Lcom/sunia/HTREnginev2/m5k;->f:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/m5k;->e:Lcom/onyx/galaxy/note/databinding/LayoutSidebarNotificationBinding;

    iget p0, p0, Lcom/sunia/HTREnginev2/m5k;->f:F

    invoke-static {v0, p0}, Lcom/onyx/galaxy/note/message/handler/NotificationHandler;->c(Lcom/onyx/galaxy/note/databinding/LayoutSidebarNotificationBinding;F)V

    return-void
.end method
