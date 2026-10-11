.class public final synthetic Lcom/sunia/HTREnginev2/nnm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/utils/lifecycler/ShareResourceMonitor;

.field public final synthetic f:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/utils/lifecycler/ShareResourceMonitor;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/nnm;->e:Lcom/onyx/galaxy/note/utils/lifecycler/ShareResourceMonitor;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/nnm;->f:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/nnm;->e:Lcom/onyx/galaxy/note/utils/lifecycler/ShareResourceMonitor;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/nnm;->f:Landroid/app/Activity;

    invoke-static {v0, p0}, Lcom/onyx/galaxy/note/utils/lifecycler/ShareResourceMonitor;->b(Lcom/onyx/galaxy/note/utils/lifecycler/ShareResourceMonitor;Landroid/app/Activity;)V

    return-void
.end method
