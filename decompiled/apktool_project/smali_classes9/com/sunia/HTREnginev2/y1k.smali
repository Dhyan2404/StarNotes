.class public final synthetic Lcom/sunia/HTREnginev2/y1k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;

.field public final synthetic f:Lcom/onyx/android/sdk/data/common/data/GuideInfo;

.field public final synthetic g:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

.field public final synthetic h:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;Lcom/onyx/android/sdk/data/common/data/GuideInfo;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/y1k;->e:Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/y1k;->f:Lcom/onyx/android/sdk/data/common/data/GuideInfo;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/y1k;->g:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    iput-object p4, p0, Lcom/sunia/HTREnginev2/y1k;->h:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/y1k;->e:Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/y1k;->f:Lcom/onyx/android/sdk/data/common/data/GuideInfo;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/y1k;->g:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/y1k;->h:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    invoke-static {v0, v1, v2, p0}, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->n0(Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;Lcom/onyx/android/sdk/data/common/data/GuideInfo;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;)V

    return-void
.end method
