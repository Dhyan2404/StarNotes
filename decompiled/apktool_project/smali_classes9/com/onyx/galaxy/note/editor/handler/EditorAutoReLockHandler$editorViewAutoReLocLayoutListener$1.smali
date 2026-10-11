.class public final Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler$editorViewAutoReLocLayoutListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/editor/view/EditorViewAutoReLocLayout$EditorViewLockLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/view/EditorViewAutoReLocLayout;Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016J\u0010\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler$editorViewAutoReLocLayoutListener$1",
        "Lcom/onyx/galaxy/note/editor/view/EditorViewAutoReLocLayout$EditorViewLockLayoutListener;",
        "forgetNotePassword",
        "",
        "verifyFinger",
        "verifyNotePassword",
        "password",
        "",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler$editorViewAutoReLocLayoutListener$1;->a:Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public forgetNotePassword()V
    .locals 3

    sget-object v0, Lcom/onyx/galaxy/note/utils/NoteLockUtils;->INSTANCE:Lcom/onyx/galaxy/note/utils/NoteLockUtils;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler$editorViewAutoReLocLayoutListener$1;->a:Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler;->access$getContext(Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler;)Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p0, v1, v2, v1}, Lcom/onyx/galaxy/note/utils/NoteLockUtils;->showForgetNotePasswordDialog$default(Lcom/onyx/galaxy/note/utils/NoteLockUtils;Landroid/content/Context;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public verifyFinger()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler$editorViewAutoReLocLayoutListener$1;->a:Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler;->access$verifyFingerImpl(Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler;)V

    return-void
.end method

.method public verifyNotePassword(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "password"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler$editorViewAutoReLocLayoutListener$1;->a:Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler;

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler;->access$verifyNotePasswordImpl(Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler;Ljava/lang/String;)V

    return-void
.end method
