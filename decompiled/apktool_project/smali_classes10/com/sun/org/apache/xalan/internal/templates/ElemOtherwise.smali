.class public Lcom/sun/org/apache/xalan/internal/templates/ElemOtherwise;
.super Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = 0x19de0fb3dda62b13L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;-><init>()V

    return-void
.end method


# virtual methods
.method public getNodeName()Ljava/lang/String;
    .locals 0

    const-string p0, "otherwise"

    return-object p0
.end method

.method public getXSLToken()I
    .locals 0

    const/16 p0, 0x27

    return p0
.end method
