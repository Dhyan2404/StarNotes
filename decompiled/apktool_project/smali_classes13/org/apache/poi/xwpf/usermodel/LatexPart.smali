.class public Lorg/apache/poi/xwpf/usermodel/LatexPart;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xwpf/usermodel/IRunPart;


# instance fields
.field private fontSize:F

.field private latex:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/LatexPart;->latex:Ljava/lang/String;

    iput p2, p0, Lorg/apache/poi/xwpf/usermodel/LatexPart;->fontSize:F

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public getFontSize()F
    .locals 0

    iget p0, p0, Lorg/apache/poi/xwpf/usermodel/LatexPart;->fontSize:F

    return p0
.end method

.method public getLatex()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/LatexPart;->latex:Ljava/lang/String;

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/LatexPart;->latex:Ljava/lang/String;

    return-object p0
.end method
