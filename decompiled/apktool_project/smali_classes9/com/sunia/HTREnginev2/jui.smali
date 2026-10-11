.class public final synthetic Lcom/sunia/HTREnginev2/jui;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/common/keyboard/KeyboardHookPopup;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/common/keyboard/KeyboardHookPopup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/jui;->e:Lcom/onyx/galaxy/note/common/keyboard/KeyboardHookPopup;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/jui;->e:Lcom/onyx/galaxy/note/common/keyboard/KeyboardHookPopup;

    invoke-static {p0}, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHookPopup;->a(Lcom/onyx/galaxy/note/common/keyboard/KeyboardHookPopup;)V

    return-void
.end method
