.class public Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/blankj/utilcode/util/PermissionUtils$OnExplainListener$ShouldRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;->onCreated(Lcom/blankj/utilcode/util/UtilsTransActivity;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/blankj/utilcode/util/UtilsTransActivity;

.field public final synthetic b:Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;


# direct methods
.method public constructor <init>(Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;Lcom/blankj/utilcode/util/UtilsTransActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl$b;->b:Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;

    iput-object p2, p0, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl$b;->a:Lcom/blankj/utilcode/util/UtilsTransActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public start(Z)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl$b;->a:Lcom/blankj/utilcode/util/UtilsTransActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl$b;->b:Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;

    iget-object p0, p0, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl$b;->a:Lcom/blankj/utilcode/util/UtilsTransActivity;

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;->access$700(Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;Lcom/blankj/utilcode/util/UtilsTransActivity;)V

    :goto_0
    return-void
.end method
