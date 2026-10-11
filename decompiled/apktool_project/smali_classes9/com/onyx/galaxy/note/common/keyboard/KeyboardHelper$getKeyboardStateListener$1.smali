.class public final Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper$getKeyboardStateListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/common/keyboard/KeyboardStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;->e()Lcom/onyx/galaxy/note/common/keyboard/KeyboardStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/onyx/galaxy/note/common/keyboard/KeyboardHelper$getKeyboardStateListener$1",
        "Lcom/onyx/galaxy/note/common/keyboard/KeyboardStateListener;",
        "onKeyboardClose",
        "",
        "onKeyboardOpen",
        "keyboardHeight",
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
.field public final synthetic e:Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper$getKeyboardStateListener$1;->e:Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyboardClose()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper$getKeyboardStateListener$1;->e:Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;

    invoke-static {p0}, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;->access$getListener$p(Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;)Lcom/onyx/galaxy/note/common/keyboard/KeyboardStateListener;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/onyx/galaxy/note/common/keyboard/KeyboardStateListener;->onKeyboardClose()V

    :cond_0
    return-void
.end method

.method public onKeyboardOpen(I)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper$getKeyboardStateListener$1;->e:Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;

    invoke-static {v0, p1}, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;->access$setKeyboardHeight$p(Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;I)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper$getKeyboardStateListener$1;->e:Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;

    invoke-static {p0}, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;->access$getListener$p(Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;)Lcom/onyx/galaxy/note/common/keyboard/KeyboardStateListener;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/onyx/galaxy/note/common/keyboard/KeyboardStateListener;->onKeyboardOpen(I)V

    :cond_0
    return-void
.end method
