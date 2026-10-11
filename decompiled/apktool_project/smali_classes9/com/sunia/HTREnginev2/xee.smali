.class public final synthetic Lcom/sunia/HTREnginev2/xee;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Lcom/onyx/galaxy/note/editor/view/fragment/CounterSettingHomeFragment;


# direct methods
.method public synthetic constructor <init>(ILcom/onyx/galaxy/note/editor/view/fragment/CounterSettingHomeFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sunia/HTREnginev2/xee;->e:I

    iput-object p2, p0, Lcom/sunia/HTREnginev2/xee;->f:Lcom/onyx/galaxy/note/editor/view/fragment/CounterSettingHomeFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sunia/HTREnginev2/xee;->e:I

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xee;->f:Lcom/onyx/galaxy/note/editor/view/fragment/CounterSettingHomeFragment;

    invoke-static {v0, p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CounterSettingHomeFragment;->m0(ILcom/onyx/galaxy/note/editor/view/fragment/CounterSettingHomeFragment;)V

    return-void
.end method
