.class Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/swing/event/ListSelectionListener;


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

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame$3;->this$0:Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public valueChanged(Ljavax/swing/event/ListSelectionEvent;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame$3;->this$0:Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->pass3aJList_valueChanged(Ljavax/swing/event/ListSelectionEvent;)V

    return-void
.end method
