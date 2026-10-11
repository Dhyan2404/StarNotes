.class public Lorg/apache/poi/latex/Latex;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LATEX_TYPE:Ljava/lang/String; = "image/latex"


# instance fields
.field public content:Ljava/lang/String;

.field public fontSize:F

.field public foreground:Ljava/awt/Color;

.field public insets:Ljava/awt/Insets;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;F)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/apache/poi/latex/Latex;->content:Ljava/lang/String;

    .line 4
    iput p2, p0, Lorg/apache/poi/latex/Latex;->fontSize:F

    .line 5
    invoke-static {}, Lorg/apache/poi/latex/Latex;->defaultInsets()Ljava/awt/Insets;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/latex/Latex;->insets:Ljava/awt/Insets;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/awt/Insets;F)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lorg/apache/poi/latex/Latex;->content:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lorg/apache/poi/latex/Latex;->insets:Ljava/awt/Insets;

    .line 9
    iput p3, p0, Lorg/apache/poi/latex/Latex;->fontSize:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/awt/Insets;FLjava/awt/Color;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lorg/apache/poi/latex/Latex;->content:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lorg/apache/poi/latex/Latex;->insets:Ljava/awt/Insets;

    .line 13
    iput p3, p0, Lorg/apache/poi/latex/Latex;->fontSize:F

    .line 14
    iput-object p4, p0, Lorg/apache/poi/latex/Latex;->foreground:Ljava/awt/Color;

    return-void
.end method

.method public static defaultInsets()Ljava/awt/Insets;
    .locals 3

    new-instance v0, Ljava/awt/Insets;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1, v2}, Ljava/awt/Insets;-><init>(IIII)V

    return-object v0
.end method
