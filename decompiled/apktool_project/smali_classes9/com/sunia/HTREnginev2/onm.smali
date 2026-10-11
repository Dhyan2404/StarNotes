.class public final synthetic Lcom/sunia/HTREnginev2/onm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/utils/lifecycler/ShareResourceMonitor;

.field public final synthetic f:Landroid/content/ClipData;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/utils/lifecycler/ShareResourceMonitor;Landroid/content/ClipData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/onm;->e:Lcom/onyx/galaxy/note/utils/lifecycler/ShareResourceMonitor;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/onm;->f:Landroid/content/ClipData;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/onm;->e:Lcom/onyx/galaxy/note/utils/lifecycler/ShareResourceMonitor;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/onm;->f:Landroid/content/ClipData;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p0, p1}, Lcom/onyx/galaxy/note/utils/lifecycler/ShareResourceMonitor;->a(Lcom/onyx/galaxy/note/utils/lifecycler/ShareResourceMonitor;Landroid/content/ClipData;Z)V

    return-void
.end method
