.class public Lcom/onyx/galaxy/note/usercenter/ui/Hilt_UserCenterActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/contextaware/OnContextAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/usercenter/ui/Hilt_UserCenterActivity;->E()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/onyx/galaxy/note/usercenter/ui/Hilt_UserCenterActivity;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/usercenter/ui/Hilt_UserCenterActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/usercenter/ui/Hilt_UserCenterActivity$a;->a:Lcom/onyx/galaxy/note/usercenter/ui/Hilt_UserCenterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContextAvailable(Landroid/content/Context;)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/Hilt_UserCenterActivity$a;->a:Lcom/onyx/galaxy/note/usercenter/ui/Hilt_UserCenterActivity;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/Hilt_UserCenterActivity;->inject()V

    return-void
.end method
