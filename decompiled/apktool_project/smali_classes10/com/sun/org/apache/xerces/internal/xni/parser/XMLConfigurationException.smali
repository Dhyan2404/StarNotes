.class public Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;
.super Lcom/sun/org/apache/xerces/internal/xni/XNIException;
.source "SourceFile"


# static fields
.field public static final NOT_RECOGNIZED:S = 0x0s

.field public static final NOT_SUPPORTED:S = 0x1s

.field static final serialVersionUID:J = -0x4b759f6a6c09bcc4L


# instance fields
.field protected fIdentifier:Ljava/lang/String;

.field protected fType:S


# direct methods
.method public constructor <init>(SLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/sun/org/apache/xerces/internal/xni/XNIException;-><init>(Ljava/lang/String;)V

    .line 2
    iput-short p1, p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;->fType:S

    .line 3
    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;->fIdentifier:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(SLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0, p3}, Lcom/sun/org/apache/xerces/internal/xni/XNIException;-><init>(Ljava/lang/String;)V

    .line 5
    iput-short p1, p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;->fType:S

    .line 6
    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;->fIdentifier:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;->fIdentifier:Ljava/lang/String;

    return-object p0
.end method

.method public getType()S
    .locals 0

    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;->fType:S

    return p0
.end method
