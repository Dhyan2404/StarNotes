.class Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog$1;
.super Ljava/awt/event/WindowAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->_main([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/awt/event/WindowAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public windowClosing(Ljava/awt/event/WindowEvent;)V
    .locals 0

    invoke-static {}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->access$810()I

    invoke-static {}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->access$800()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    :cond_0
    return-void
.end method
