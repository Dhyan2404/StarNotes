.class public final synthetic Lcom/sunia/HTREnginev2/yuj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/yuj;->e:Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;

    iput p2, p0, Lcom/sunia/HTREnginev2/yuj;->f:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/yuj;->e:Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;

    iget p0, p0, Lcom/sunia/HTREnginev2/yuj;->f:I

    invoke-static {v0, p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->d(Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;ILandroid/view/View;)V

    return-void
.end method
