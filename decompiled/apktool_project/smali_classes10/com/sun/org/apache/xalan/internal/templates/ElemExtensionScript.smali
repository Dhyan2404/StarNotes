.class public Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionScript;
.super Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = -0x6116b52aa7429910L


# instance fields
.field private m_lang:Ljava/lang/String;

.field private m_src:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionScript;->m_lang:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionScript;->m_src:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLang()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionScript;->m_lang:Ljava/lang/String;

    return-object p0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionScript;->m_src:Ljava/lang/String;

    return-object p0
.end method

.method public getXSLToken()I
    .locals 0

    const/16 p0, 0x56

    return p0
.end method

.method public setLang(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionScript;->m_lang:Ljava/lang/String;

    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionScript;->m_src:Ljava/lang/String;

    return-void
.end method
