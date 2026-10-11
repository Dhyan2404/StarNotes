.class public final synthetic Lcom/sunia/HTREnginev2/xif;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/toolbar/DriveTokenExpiredTipContainer;

.field public final synthetic f:Landroid/content/Context;

.field public final synthetic g:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/toolbar/DriveTokenExpiredTipContainer;Landroid/content/Context;Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/xif;->e:Lcom/onyx/galaxy/note/editor/view/toolbar/DriveTokenExpiredTipContainer;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/xif;->f:Landroid/content/Context;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/xif;->g:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/xif;->e:Lcom/onyx/galaxy/note/editor/view/toolbar/DriveTokenExpiredTipContainer;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/xif;->f:Landroid/content/Context;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xif;->g:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    invoke-static {v0, v1, p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/DriveTokenExpiredTipContainer;->a(Lcom/onyx/galaxy/note/editor/view/toolbar/DriveTokenExpiredTipContainer;Landroid/content/Context;Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Landroid/view/View;)V

    return-void
.end method
