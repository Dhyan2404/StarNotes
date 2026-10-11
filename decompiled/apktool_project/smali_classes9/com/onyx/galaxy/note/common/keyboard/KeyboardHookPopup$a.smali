.class public final Lcom/onyx/galaxy/note/common/keyboard/KeyboardHookPopup$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/common/keyboard/KeyboardHookPopup;->c(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/common/keyboard/KeyboardHookPopup;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/common/keyboard/KeyboardHookPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHookPopup$a;->e:Lcom/onyx/galaxy/note/common/keyboard/KeyboardHookPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHookPopup$a;->e:Lcom/onyx/galaxy/note/common/keyboard/KeyboardHookPopup;

    invoke-static {p0}, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHookPopup;->access$globalLayoutChanged(Lcom/onyx/galaxy/note/common/keyboard/KeyboardHookPopup;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHookPopup$a;->a(Z)V

    return-void
.end method
