.class Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog$IvjEventHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/awt/event/ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IvjEventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog$IvjEventHandler;->this$0:Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 2

    invoke-virtual {p1}, Ljava/awt/event/ActionEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog$IvjEventHandler;->this$0:Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;

    invoke-static {v1}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->access$000(Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;)Ljavax/swing/JButton;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog$IvjEventHandler;->this$0:Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;

    invoke-static {v0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->access$100(Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;Ljava/awt/event/ActionEvent;)V

    :cond_0
    invoke-virtual {p1}, Ljava/awt/event/ActionEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog$IvjEventHandler;->this$0:Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;

    invoke-static {v1}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->access$200(Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;)Ljavax/swing/JButton;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog$IvjEventHandler;->this$0:Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;

    invoke-static {v0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->access$300(Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;Ljava/awt/event/ActionEvent;)V

    :cond_1
    invoke-virtual {p1}, Ljava/awt/event/ActionEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog$IvjEventHandler;->this$0:Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;

    invoke-static {v1}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->access$400(Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;)Ljavax/swing/JButton;

    move-result-object v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog$IvjEventHandler;->this$0:Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;

    invoke-static {v0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->access$500(Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;Ljava/awt/event/ActionEvent;)V

    :cond_2
    invoke-virtual {p1}, Ljava/awt/event/ActionEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog$IvjEventHandler;->this$0:Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;

    invoke-static {v1}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->access$600(Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;)Ljavax/swing/JButton;

    move-result-object v1

    if-ne v0, v1, :cond_3

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog$IvjEventHandler;->this$0:Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;

    invoke-static {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->access$700(Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;Ljava/awt/event/ActionEvent;)V

    :cond_3
    return-void
.end method
