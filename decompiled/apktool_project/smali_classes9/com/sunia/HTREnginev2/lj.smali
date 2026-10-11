.class public final synthetic Lcom/sunia/HTREnginev2/lj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/common/view/AutoFitViewPagerHeightCallback;

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/common/view/AutoFitViewPagerHeightCallback;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/lj;->e:Lcom/onyx/galaxy/note/common/view/AutoFitViewPagerHeightCallback;

    iput p2, p0, Lcom/sunia/HTREnginev2/lj;->f:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/lj;->e:Lcom/onyx/galaxy/note/common/view/AutoFitViewPagerHeightCallback;

    iget p0, p0, Lcom/sunia/HTREnginev2/lj;->f:I

    invoke-static {v0, p0}, Lcom/onyx/galaxy/note/common/view/AutoFitViewPagerHeightCallback;->a(Lcom/onyx/galaxy/note/common/view/AutoFitViewPagerHeightCallback;I)V

    return-void
.end method
