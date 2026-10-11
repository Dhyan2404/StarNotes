.class public Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;
.super Ljavax/swing/JDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog$IvjEventHandler;
    }
.end annotation


# static fields
.field private static classes_to_verify:I


# instance fields
.field private class_name:Ljava/lang/String;

.field ivjEventHandler:Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog$IvjEventHandler;

.field private ivjFlushButton:Ljavax/swing/JButton;

.field private ivjJDialogContentPane:Ljavax/swing/JPanel;

.field private ivjPass1Button:Ljavax/swing/JButton;

.field private ivjPass1Panel:Ljavax/swing/JPanel;

.field private ivjPass2Button:Ljavax/swing/JButton;

.field private ivjPass2Panel:Ljavax/swing/JPanel;

.field private ivjPass3Button:Ljavax/swing/JButton;

.field private ivjPass3Panel:Ljavax/swing/JPanel;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljavax/swing/JDialog;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjJDialogContentPane:Ljavax/swing/JPanel;

    .line 3
    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass1Panel:Ljavax/swing/JPanel;

    .line 4
    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass2Panel:Ljavax/swing/JPanel;

    .line 5
    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass3Panel:Ljavax/swing/JPanel;

    .line 6
    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass1Button:Ljavax/swing/JButton;

    .line 7
    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass2Button:Ljavax/swing/JButton;

    .line 8
    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass3Button:Ljavax/swing/JButton;

    .line 9
    new-instance v1, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog$IvjEventHandler;

    invoke-direct {v1, p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog$IvjEventHandler;-><init>(Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;)V

    iput-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjEventHandler:Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog$IvjEventHandler;

    const-string v1, "java.lang.Object"

    .line 10
    iput-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->class_name:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjFlushButton:Ljavax/swing/JButton;

    .line 12
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->initialize()V

    return-void
.end method

.method public constructor <init>(Ljava/awt/Dialog;)V
    .locals 1

    .line 13
    invoke-direct {p0, p1}, Ljavax/swing/JDialog;-><init>(Ljava/awt/Dialog;)V

    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjJDialogContentPane:Ljavax/swing/JPanel;

    .line 15
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass1Panel:Ljavax/swing/JPanel;

    .line 16
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass2Panel:Ljavax/swing/JPanel;

    .line 17
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass3Panel:Ljavax/swing/JPanel;

    .line 18
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass1Button:Ljavax/swing/JButton;

    .line 19
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass2Button:Ljavax/swing/JButton;

    .line 20
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass3Button:Ljavax/swing/JButton;

    .line 21
    new-instance v0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog$IvjEventHandler;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog$IvjEventHandler;-><init>(Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;)V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjEventHandler:Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog$IvjEventHandler;

    const-string v0, "java.lang.Object"

    .line 22
    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->class_name:Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjFlushButton:Ljavax/swing/JButton;

    return-void
.end method

.method public constructor <init>(Ljava/awt/Dialog;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Ljavax/swing/JDialog;-><init>(Ljava/awt/Dialog;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjJDialogContentPane:Ljavax/swing/JPanel;

    .line 26
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass1Panel:Ljavax/swing/JPanel;

    .line 27
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass2Panel:Ljavax/swing/JPanel;

    .line 28
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass3Panel:Ljavax/swing/JPanel;

    .line 29
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass1Button:Ljavax/swing/JButton;

    .line 30
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass2Button:Ljavax/swing/JButton;

    .line 31
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass3Button:Ljavax/swing/JButton;

    .line 32
    new-instance p2, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog$IvjEventHandler;

    invoke-direct {p2, p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog$IvjEventHandler;-><init>(Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;)V

    iput-object p2, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjEventHandler:Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog$IvjEventHandler;

    const-string p2, "java.lang.Object"

    .line 33
    iput-object p2, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->class_name:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjFlushButton:Ljavax/swing/JButton;

    return-void
.end method

.method public constructor <init>(Ljava/awt/Dialog;Ljava/lang/String;Z)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Ljavax/swing/JDialog;-><init>(Ljava/awt/Dialog;Ljava/lang/String;Z)V

    const/4 p1, 0x0

    .line 36
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjJDialogContentPane:Ljavax/swing/JPanel;

    .line 37
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass1Panel:Ljavax/swing/JPanel;

    .line 38
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass2Panel:Ljavax/swing/JPanel;

    .line 39
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass3Panel:Ljavax/swing/JPanel;

    .line 40
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass1Button:Ljavax/swing/JButton;

    .line 41
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass2Button:Ljavax/swing/JButton;

    .line 42
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass3Button:Ljavax/swing/JButton;

    .line 43
    new-instance p2, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog$IvjEventHandler;

    invoke-direct {p2, p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog$IvjEventHandler;-><init>(Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;)V

    iput-object p2, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjEventHandler:Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog$IvjEventHandler;

    const-string p2, "java.lang.Object"

    .line 44
    iput-object p2, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->class_name:Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjFlushButton:Ljavax/swing/JButton;

    return-void
.end method

.method public constructor <init>(Ljava/awt/Dialog;Z)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Ljavax/swing/JDialog;-><init>(Ljava/awt/Dialog;Z)V

    const/4 p1, 0x0

    .line 47
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjJDialogContentPane:Ljavax/swing/JPanel;

    .line 48
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass1Panel:Ljavax/swing/JPanel;

    .line 49
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass2Panel:Ljavax/swing/JPanel;

    .line 50
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass3Panel:Ljavax/swing/JPanel;

    .line 51
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass1Button:Ljavax/swing/JButton;

    .line 52
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass2Button:Ljavax/swing/JButton;

    .line 53
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass3Button:Ljavax/swing/JButton;

    .line 54
    new-instance p2, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog$IvjEventHandler;

    invoke-direct {p2, p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog$IvjEventHandler;-><init>(Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;)V

    iput-object p2, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjEventHandler:Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog$IvjEventHandler;

    const-string p2, "java.lang.Object"

    .line 55
    iput-object p2, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->class_name:Ljava/lang/String;

    .line 56
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjFlushButton:Ljavax/swing/JButton;

    return-void
.end method

.method public constructor <init>(Ljava/awt/Frame;)V
    .locals 1

    .line 57
    invoke-direct {p0, p1}, Ljavax/swing/JDialog;-><init>(Ljava/awt/Frame;)V

    const/4 p1, 0x0

    .line 58
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjJDialogContentPane:Ljavax/swing/JPanel;

    .line 59
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass1Panel:Ljavax/swing/JPanel;

    .line 60
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass2Panel:Ljavax/swing/JPanel;

    .line 61
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass3Panel:Ljavax/swing/JPanel;

    .line 62
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass1Button:Ljavax/swing/JButton;

    .line 63
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass2Button:Ljavax/swing/JButton;

    .line 64
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass3Button:Ljavax/swing/JButton;

    .line 65
    new-instance v0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog$IvjEventHandler;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog$IvjEventHandler;-><init>(Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;)V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjEventHandler:Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog$IvjEventHandler;

    const-string v0, "java.lang.Object"

    .line 66
    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->class_name:Ljava/lang/String;

    .line 67
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjFlushButton:Ljavax/swing/JButton;

    return-void
.end method

.method public constructor <init>(Ljava/awt/Frame;Ljava/lang/String;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Ljavax/swing/JDialog;-><init>(Ljava/awt/Frame;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 69
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjJDialogContentPane:Ljavax/swing/JPanel;

    .line 70
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass1Panel:Ljavax/swing/JPanel;

    .line 71
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass2Panel:Ljavax/swing/JPanel;

    .line 72
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass3Panel:Ljavax/swing/JPanel;

    .line 73
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass1Button:Ljavax/swing/JButton;

    .line 74
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass2Button:Ljavax/swing/JButton;

    .line 75
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass3Button:Ljavax/swing/JButton;

    .line 76
    new-instance p2, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog$IvjEventHandler;

    invoke-direct {p2, p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog$IvjEventHandler;-><init>(Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;)V

    iput-object p2, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjEventHandler:Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog$IvjEventHandler;

    const-string p2, "java.lang.Object"

    .line 77
    iput-object p2, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->class_name:Ljava/lang/String;

    .line 78
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjFlushButton:Ljavax/swing/JButton;

    return-void
.end method

.method public constructor <init>(Ljava/awt/Frame;Ljava/lang/String;Z)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2, p3}, Ljavax/swing/JDialog;-><init>(Ljava/awt/Frame;Ljava/lang/String;Z)V

    const/4 p1, 0x0

    .line 80
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjJDialogContentPane:Ljavax/swing/JPanel;

    .line 81
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass1Panel:Ljavax/swing/JPanel;

    .line 82
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass2Panel:Ljavax/swing/JPanel;

    .line 83
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass3Panel:Ljavax/swing/JPanel;

    .line 84
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass1Button:Ljavax/swing/JButton;

    .line 85
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass2Button:Ljavax/swing/JButton;

    .line 86
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass3Button:Ljavax/swing/JButton;

    .line 87
    new-instance p2, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog$IvjEventHandler;

    invoke-direct {p2, p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog$IvjEventHandler;-><init>(Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;)V

    iput-object p2, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjEventHandler:Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog$IvjEventHandler;

    const-string p2, "java.lang.Object"

    .line 88
    iput-object p2, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->class_name:Ljava/lang/String;

    .line 89
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjFlushButton:Ljavax/swing/JButton;

    return-void
.end method

.method public constructor <init>(Ljava/awt/Frame;Z)V
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2}, Ljavax/swing/JDialog;-><init>(Ljava/awt/Frame;Z)V

    const/4 p1, 0x0

    .line 91
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjJDialogContentPane:Ljavax/swing/JPanel;

    .line 92
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass1Panel:Ljavax/swing/JPanel;

    .line 93
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass2Panel:Ljavax/swing/JPanel;

    .line 94
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass3Panel:Ljavax/swing/JPanel;

    .line 95
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass1Button:Ljavax/swing/JButton;

    .line 96
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass2Button:Ljavax/swing/JButton;

    .line 97
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass3Button:Ljavax/swing/JButton;

    .line 98
    new-instance p2, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog$IvjEventHandler;

    invoke-direct {p2, p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog$IvjEventHandler;-><init>(Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;)V

    iput-object p2, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjEventHandler:Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog$IvjEventHandler;

    const-string p2, "java.lang.Object"

    .line 99
    iput-object p2, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->class_name:Ljava/lang/String;

    .line 100
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjFlushButton:Ljavax/swing/JButton;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 101
    invoke-direct {p0}, Ljavax/swing/JDialog;-><init>()V

    const/4 v0, 0x0

    .line 102
    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjJDialogContentPane:Ljavax/swing/JPanel;

    .line 103
    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass1Panel:Ljavax/swing/JPanel;

    .line 104
    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass2Panel:Ljavax/swing/JPanel;

    .line 105
    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass3Panel:Ljavax/swing/JPanel;

    .line 106
    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass1Button:Ljavax/swing/JButton;

    .line 107
    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass2Button:Ljavax/swing/JButton;

    .line 108
    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass3Button:Ljavax/swing/JButton;

    .line 109
    new-instance v1, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog$IvjEventHandler;

    invoke-direct {v1, p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog$IvjEventHandler;-><init>(Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;)V

    iput-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjEventHandler:Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog$IvjEventHandler;

    const-string v1, "java.lang.Object"

    .line 110
    iput-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->class_name:Ljava/lang/String;

    .line 111
    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjFlushButton:Ljavax/swing/JButton;

    const-string v0, ".class"

    .line 112
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    .line 113
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/16 v0, 0x2f

    const/16 v1, 0x2e

    .line 114
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 115
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->class_name:Ljava/lang/String;

    .line 116
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->initialize()V

    return-void
.end method

.method public static _main([Ljava/lang/String;)V
    .locals 4

    array-length v0, p0

    sput v0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->classes_to_verify:I

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    :try_start_0
    new-instance v1, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;

    aget-object v2, p0, v0

    invoke-direct {v1, v2}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->setModal(Z)V

    new-instance v3, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog$1;

    invoke-direct {v3}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog$1;-><init>()V

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->addWindowListener(Ljava/awt/event/WindowListener;)V

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->setVisible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Exception occurred in _main() of javax.swing.JDialog"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic access$000(Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;)Ljavax/swing/JButton;
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->getPass1Button()Ljavax/swing/JButton;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;Ljava/awt/event/ActionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->connEtoC1(Ljava/awt/event/ActionEvent;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;)Ljavax/swing/JButton;
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->getPass2Button()Ljavax/swing/JButton;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300(Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;Ljava/awt/event/ActionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->connEtoC2(Ljava/awt/event/ActionEvent;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;)Ljavax/swing/JButton;
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->getPass3Button()Ljavax/swing/JButton;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$500(Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;Ljava/awt/event/ActionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->connEtoC3(Ljava/awt/event/ActionEvent;)V

    return-void
.end method

.method public static synthetic access$600(Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;)Ljavax/swing/JButton;
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->getFlushButton()Ljavax/swing/JButton;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$700(Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;Ljava/awt/event/ActionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->connEtoC4(Ljava/awt/event/ActionEvent;)V

    return-void
.end method

.method public static synthetic access$800()I
    .locals 1

    sget v0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->classes_to_verify:I

    return v0
.end method

.method public static synthetic access$810()I
    .locals 2

    sget v0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->classes_to_verify:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->classes_to_verify:I

    return v0
.end method

.method private connEtoC1(Ljava/awt/event/ActionEvent;)V
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->pass1Button_ActionPerformed(Ljava/awt/event/ActionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->handleException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private connEtoC2(Ljava/awt/event/ActionEvent;)V
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->pass2Button_ActionPerformed(Ljava/awt/event/ActionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->handleException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private connEtoC3(Ljava/awt/event/ActionEvent;)V
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->pass4Button_ActionPerformed(Ljava/awt/event/ActionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->handleException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private connEtoC4(Ljava/awt/event/ActionEvent;)V
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->flushButton_ActionPerformed(Ljava/awt/event/ActionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->handleException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private getFlushButton()Ljavax/swing/JButton;
    .locals 6

    const-string v0, "FlushButton"

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjFlushButton:Ljavax/swing/JButton;

    if-nez v1, :cond_0

    :try_start_0
    new-instance v1, Ljavax/swing/JButton;

    invoke-direct {v1}, Ljavax/swing/JButton;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjFlushButton:Ljavax/swing/JButton;

    invoke-virtual {v1, v0}, Ljavax/swing/JButton;->setName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjFlushButton:Ljavax/swing/JButton;

    const-string v2, "Flush: Forget old verification results"

    invoke-virtual {v1, v2}, Ljavax/swing/JButton;->setText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjFlushButton:Ljavax/swing/JButton;

    sget-object v2, Ljava/awt/SystemColor;->controlHighlight:Ljava/awt/SystemColor;

    invoke-virtual {v1, v2}, Ljavax/swing/JButton;->setBackground(Ljava/awt/Color;)V

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjFlushButton:Ljavax/swing/JButton;

    const/16 v2, 0x12c

    const/16 v3, 0x1e

    const/16 v4, 0x3c

    const/16 v5, 0xd7

    invoke-virtual {v1, v4, v5, v2, v3}, Ljavax/swing/JButton;->setBounds(IIII)V

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjFlushButton:Ljavax/swing/JButton;

    sget-object v2, Ljava/awt/Color;->red:Ljava/awt/Color;

    invoke-virtual {v1, v2}, Ljavax/swing/JButton;->setForeground(Ljava/awt/Color;)V

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjFlushButton:Ljavax/swing/JButton;

    invoke-virtual {v1, v0}, Ljavax/swing/JButton;->setActionCommand(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->handleException(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjFlushButton:Ljavax/swing/JButton;

    return-object p0
.end method

.method private getJDialogContentPane()Ljavax/swing/JPanel;
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjJDialogContentPane:Ljavax/swing/JPanel;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjJDialogContentPane:Ljavax/swing/JPanel;

    const-string v1, "JDialogContentPane"

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjJDialogContentPane:Ljavax/swing/JPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->getJDialogContentPane()Ljavax/swing/JPanel;

    move-result-object v0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->getPass1Panel()Ljavax/swing/JPanel;

    move-result-object v1

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->getPass1Panel()Ljavax/swing/JPanel;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/swing/JPanel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->getJDialogContentPane()Ljavax/swing/JPanel;

    move-result-object v0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->getPass3Panel()Ljavax/swing/JPanel;

    move-result-object v1

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->getPass3Panel()Ljavax/swing/JPanel;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/swing/JPanel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->getJDialogContentPane()Ljavax/swing/JPanel;

    move-result-object v0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->getPass2Panel()Ljavax/swing/JPanel;

    move-result-object v1

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->getPass2Panel()Ljavax/swing/JPanel;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/swing/JPanel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->getJDialogContentPane()Ljavax/swing/JPanel;

    move-result-object v0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->getPass1Button()Ljavax/swing/JButton;

    move-result-object v1

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->getPass1Button()Ljavax/swing/JButton;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/swing/JButton;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->getJDialogContentPane()Ljavax/swing/JPanel;

    move-result-object v0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->getPass2Button()Ljavax/swing/JButton;

    move-result-object v1

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->getPass2Button()Ljavax/swing/JButton;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/swing/JButton;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->getJDialogContentPane()Ljavax/swing/JPanel;

    move-result-object v0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->getPass3Button()Ljavax/swing/JButton;

    move-result-object v1

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->getPass3Button()Ljavax/swing/JButton;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/swing/JButton;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->getJDialogContentPane()Ljavax/swing/JPanel;

    move-result-object v0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->getFlushButton()Ljavax/swing/JButton;

    move-result-object v1

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->getFlushButton()Ljavax/swing/JButton;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/swing/JButton;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->handleException(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjJDialogContentPane:Ljavax/swing/JPanel;

    return-object p0
.end method

.method private getPass1Button()Ljavax/swing/JButton;
    .locals 5

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass1Button:Ljavax/swing/JButton;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Ljavax/swing/JButton;

    invoke-direct {v0}, Ljavax/swing/JButton;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass1Button:Ljavax/swing/JButton;

    const-string v1, "Pass1Button"

    invoke-virtual {v0, v1}, Ljavax/swing/JButton;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass1Button:Ljavax/swing/JButton;

    const-string v1, "Pass1: Verify binary layout of .class file"

    invoke-virtual {v0, v1}, Ljavax/swing/JButton;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass1Button:Ljavax/swing/JButton;

    sget-object v1, Ljava/awt/SystemColor;->controlHighlight:Ljava/awt/SystemColor;

    invoke-virtual {v0, v1}, Ljavax/swing/JButton;->setBackground(Ljava/awt/Color;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass1Button:Ljavax/swing/JButton;

    const/16 v1, 0x12c

    const/16 v2, 0x1e

    const/16 v3, 0x64

    const/16 v4, 0x28

    invoke-virtual {v0, v3, v4, v1, v2}, Ljavax/swing/JButton;->setBounds(IIII)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass1Button:Ljavax/swing/JButton;

    const-string v1, "Button1"

    invoke-virtual {v0, v1}, Ljavax/swing/JButton;->setActionCommand(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->handleException(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass1Button:Ljavax/swing/JButton;

    return-object p0
.end method

.method private getPass1Panel()Ljavax/swing/JPanel;
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass1Panel:Ljavax/swing/JPanel;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass1Panel:Ljavax/swing/JPanel;

    const-string v1, "Pass1Panel"

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass1Panel:Ljavax/swing/JPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass1Panel:Ljavax/swing/JPanel;

    sget-object v1, Ljava/awt/SystemColor;->controlShadow:Ljava/awt/SystemColor;

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setBackground(Ljava/awt/Color;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass1Panel:Ljavax/swing/JPanel;

    const/16 v1, 0x32

    const/16 v2, 0x1e

    invoke-virtual {v0, v2, v2, v1, v1}, Ljavax/swing/JPanel;->setBounds(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->handleException(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass1Panel:Ljavax/swing/JPanel;

    return-object p0
.end method

.method private getPass2Button()Ljavax/swing/JButton;
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass2Button:Ljavax/swing/JButton;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Ljavax/swing/JButton;

    invoke-direct {v0}, Ljavax/swing/JButton;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass2Button:Ljavax/swing/JButton;

    const-string v1, "Pass2Button"

    invoke-virtual {v0, v1}, Ljavax/swing/JButton;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass2Button:Ljavax/swing/JButton;

    const-string v1, "Pass 2: Verify static .class file constraints"

    invoke-virtual {v0, v1}, Ljavax/swing/JButton;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass2Button:Ljavax/swing/JButton;

    sget-object v1, Ljava/awt/SystemColor;->controlHighlight:Ljava/awt/SystemColor;

    invoke-virtual {v0, v1}, Ljavax/swing/JButton;->setBackground(Ljava/awt/Color;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass2Button:Ljavax/swing/JButton;

    const/16 v1, 0x12c

    const/16 v2, 0x1e

    const/16 v3, 0x64

    invoke-virtual {v0, v3, v3, v1, v2}, Ljavax/swing/JButton;->setBounds(IIII)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass2Button:Ljavax/swing/JButton;

    const-string v1, "Button2"

    invoke-virtual {v0, v1}, Ljavax/swing/JButton;->setActionCommand(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->handleException(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass2Button:Ljavax/swing/JButton;

    return-object p0
.end method

.method private getPass2Panel()Ljavax/swing/JPanel;
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass2Panel:Ljavax/swing/JPanel;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass2Panel:Ljavax/swing/JPanel;

    const-string v1, "Pass2Panel"

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass2Panel:Ljavax/swing/JPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass2Panel:Ljavax/swing/JPanel;

    sget-object v1, Ljava/awt/SystemColor;->controlShadow:Ljava/awt/SystemColor;

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setBackground(Ljava/awt/Color;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass2Panel:Ljavax/swing/JPanel;

    const/16 v1, 0x1e

    const/16 v2, 0x5a

    const/16 v3, 0x32

    invoke-virtual {v0, v1, v2, v3, v3}, Ljavax/swing/JPanel;->setBounds(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->handleException(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass2Panel:Ljavax/swing/JPanel;

    return-object p0
.end method

.method private getPass3Button()Ljavax/swing/JButton;
    .locals 5

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass3Button:Ljavax/swing/JButton;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Ljavax/swing/JButton;

    invoke-direct {v0}, Ljavax/swing/JButton;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass3Button:Ljavax/swing/JButton;

    const-string v1, "Pass3Button"

    invoke-virtual {v0, v1}, Ljavax/swing/JButton;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass3Button:Ljavax/swing/JButton;

    const-string v1, "Passes 3a+3b: Verify code arrays"

    invoke-virtual {v0, v1}, Ljavax/swing/JButton;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass3Button:Ljavax/swing/JButton;

    sget-object v1, Ljava/awt/SystemColor;->controlHighlight:Ljava/awt/SystemColor;

    invoke-virtual {v0, v1}, Ljavax/swing/JButton;->setBackground(Ljava/awt/Color;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass3Button:Ljavax/swing/JButton;

    const/16 v1, 0x12c

    const/16 v2, 0x1e

    const/16 v3, 0x64

    const/16 v4, 0xa0

    invoke-virtual {v0, v3, v4, v1, v2}, Ljavax/swing/JButton;->setBounds(IIII)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass3Button:Ljavax/swing/JButton;

    const-string v1, "Button2"

    invoke-virtual {v0, v1}, Ljavax/swing/JButton;->setActionCommand(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->handleException(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass3Button:Ljavax/swing/JButton;

    return-object p0
.end method

.method private getPass3Panel()Ljavax/swing/JPanel;
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass3Panel:Ljavax/swing/JPanel;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass3Panel:Ljavax/swing/JPanel;

    const-string v1, "Pass3Panel"

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass3Panel:Ljavax/swing/JPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass3Panel:Ljavax/swing/JPanel;

    sget-object v1, Ljava/awt/SystemColor;->controlShadow:Ljava/awt/SystemColor;

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setBackground(Ljava/awt/Color;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass3Panel:Ljavax/swing/JPanel;

    const/16 v1, 0x1e

    const/16 v2, 0x96

    const/16 v3, 0x32

    invoke-virtual {v0, v1, v2, v3, v3}, Ljavax/swing/JPanel;->setBounds(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->handleException(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjPass3Panel:Ljavax/swing/JPanel;

    return-object p0
.end method

.method private handleException(Ljava/lang/Throwable;)V
    .locals 1

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "--------- UNCAUGHT EXCEPTION ---------"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    return-void
.end method

.method private initConnections()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->getPass1Button()Ljavax/swing/JButton;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjEventHandler:Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog$IvjEventHandler;

    invoke-virtual {v0, v1}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->getPass2Button()Ljavax/swing/JButton;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjEventHandler:Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog$IvjEventHandler;

    invoke-virtual {v0, v1}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->getPass3Button()Ljavax/swing/JButton;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjEventHandler:Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog$IvjEventHandler;

    invoke-virtual {v0, v1}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->getFlushButton()Ljavax/swing/JButton;

    move-result-object v0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->ivjEventHandler:Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog$IvjEventHandler;

    invoke-virtual {v0, p0}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    return-void
.end method

.method private initialize()V
    .locals 2

    :try_start_0
    const-string v0, "VerifyDialog"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->setName(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->setDefaultCloseOperation(I)V

    const/16 v0, 0x1ae

    const/16 v1, 0x118

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->setSize(II)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->setVisible(Z)V

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->setModal(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->setResizable(Z)V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->getJDialogContentPane()Ljavax/swing/JPanel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->setContentPane(Ljava/awt/Container;)V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->initConnections()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->handleException(Ljava/lang/Throwable;)V

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->class_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' verification - JustIce / BCEL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->setTitle(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public flushButton_ActionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 1

    iget-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->class_name:Ljava/lang/String;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/VerifierFactory;->getVerifier(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/verifier/Verifier;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->flush()V

    iget-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->class_name:Ljava/lang/String;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/Repository;->removeClass(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->getPass1Panel()Ljavax/swing/JPanel;

    move-result-object p1

    sget-object v0, Ljava/awt/Color;->gray:Ljava/awt/Color;

    invoke-virtual {p1, v0}, Ljavax/swing/JPanel;->setBackground(Ljava/awt/Color;)V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->getPass1Panel()Ljavax/swing/JPanel;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/swing/JPanel;->repaint()V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->getPass2Panel()Ljavax/swing/JPanel;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljavax/swing/JPanel;->setBackground(Ljava/awt/Color;)V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->getPass2Panel()Ljavax/swing/JPanel;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/swing/JPanel;->repaint()V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->getPass3Panel()Ljavax/swing/JPanel;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljavax/swing/JPanel;->setBackground(Ljava/awt/Color;)V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->getPass3Panel()Ljavax/swing/JPanel;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/swing/JPanel;->repaint()V

    return-void
.end method

.method public pass1Button_ActionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 2

    iget-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->class_name:Ljava/lang/String;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/VerifierFactory;->getVerifier(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/verifier/Verifier;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->doPass1()Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->getPass1Panel()Ljavax/swing/JPanel;

    move-result-object v0

    sget-object v1, Ljava/awt/Color;->green:Ljava/awt/Color;

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setBackground(Ljava/awt/Color;)V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->getPass1Panel()Ljavax/swing/JPanel;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/swing/JPanel;->repaint()V

    :cond_0
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;->getStatus()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->getPass1Panel()Ljavax/swing/JPanel;

    move-result-object p1

    sget-object v0, Ljava/awt/Color;->red:Ljava/awt/Color;

    invoke-virtual {p1, v0}, Ljavax/swing/JPanel;->setBackground(Ljava/awt/Color;)V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->getPass1Panel()Ljavax/swing/JPanel;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/swing/JPanel;->repaint()V

    :cond_1
    return-void
.end method

.method public pass2Button_ActionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->pass1Button_ActionPerformed(Ljava/awt/event/ActionEvent;)V

    iget-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->class_name:Ljava/lang/String;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/VerifierFactory;->getVerifier(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/verifier/Verifier;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->doPass2()Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->getPass2Panel()Ljavax/swing/JPanel;

    move-result-object v0

    sget-object v1, Ljava/awt/Color;->green:Ljava/awt/Color;

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setBackground(Ljava/awt/Color;)V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->getPass2Panel()Ljavax/swing/JPanel;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/swing/JPanel;->repaint()V

    :cond_0
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;->getStatus()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->getPass2Panel()Ljavax/swing/JPanel;

    move-result-object v0

    sget-object v1, Ljava/awt/Color;->yellow:Ljava/awt/Color;

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setBackground(Ljava/awt/Color;)V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->getPass2Panel()Ljavax/swing/JPanel;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/swing/JPanel;->repaint()V

    :cond_1
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;->getStatus()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->getPass2Panel()Ljavax/swing/JPanel;

    move-result-object p1

    sget-object v0, Ljava/awt/Color;->red:Ljava/awt/Color;

    invoke-virtual {p1, v0}, Ljavax/swing/JPanel;->setBackground(Ljava/awt/Color;)V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->getPass2Panel()Ljavax/swing/JPanel;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/swing/JPanel;->repaint()V

    :cond_2
    return-void
.end method

.method public pass4Button_ActionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->pass2Button_ActionPerformed(Ljava/awt/event/ActionEvent;)V

    sget-object p1, Ljava/awt/Color;->green:Ljava/awt/Color;

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->class_name:Ljava/lang/String;

    invoke-static {v0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifierFactory;->getVerifier(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/verifier/Verifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->doPass2()Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;->getStatus()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->class_name:Ljava/lang/String;

    invoke-static {v1}, Lcom/sun/org/apache/bcel/internal/Repository;->lookupClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getMethods()[Lcom/sun/org/apache/bcel/internal/classfile/Method;

    move-result-object v1

    array-length v1, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->doPass3b(I)Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;->getStatus()I

    move-result v4

    if-eq v4, v2, :cond_0

    sget-object p1, Ljava/awt/Color;->red:Ljava/awt/Color;

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-object p1, Ljava/awt/Color;->yellow:Ljava/awt/Color;

    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->getPass3Panel()Ljavax/swing/JPanel;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/swing/JPanel;->setBackground(Ljava/awt/Color;)V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifyDialog;->getPass3Panel()Ljavax/swing/JPanel;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/swing/JPanel;->repaint()V

    return-void
.end method
