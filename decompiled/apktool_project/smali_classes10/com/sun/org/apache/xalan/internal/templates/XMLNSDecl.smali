.class public Lcom/sun/org/apache/xalan/internal/templates/XMLNSDecl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = 0x5d1f8d55334acce9L


# instance fields
.field private m_isExcluded:Z

.field private m_prefix:Ljava/lang/String;

.field private m_uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/XMLNSDecl;->m_prefix:Ljava/lang/String;

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/templates/XMLNSDecl;->m_uri:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/sun/org/apache/xalan/internal/templates/XMLNSDecl;->m_isExcluded:Z

    return-void
.end method


# virtual methods
.method public getIsExcluded()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/templates/XMLNSDecl;->m_isExcluded:Z

    return p0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/XMLNSDecl;->m_prefix:Ljava/lang/String;

    return-object p0
.end method

.method public getURI()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/XMLNSDecl;->m_uri:Ljava/lang/String;

    return-object p0
.end method
