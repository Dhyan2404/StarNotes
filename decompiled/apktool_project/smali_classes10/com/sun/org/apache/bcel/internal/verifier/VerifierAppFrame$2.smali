.class Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/awt/event/ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jbInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame$2;->this$0:Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame$2;->this$0:Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->newFileMenuItem_actionPerformed(Ljava/awt/event/ActionEvent;)V

    return-void
.end method
