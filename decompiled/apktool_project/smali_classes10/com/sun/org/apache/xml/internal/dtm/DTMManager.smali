.class public abstract Lcom/sun/org/apache/xml/internal/dtm/DTMManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final IDENT_DTM_DEFAULT:I = -0x10000

.field public static final IDENT_DTM_NODE_BITS:I = 0x10

.field public static final IDENT_MAX_DTMS:I = 0x10000

.field public static final IDENT_NODE_DEFAULT:I = 0xffff

.field private static debug:Z = false

.field private static defaultClassName:Ljava/lang/String; = "com.sun.org.apache.xml.internal.dtm.ref.DTMManagerDefault"

.field private static final defaultPropName:Ljava/lang/String; = "com.sun.org.apache.xml.internal.dtm.DTMManager"


# instance fields
.field public m_incremental:Z

.field public m_source_location:Z

.field protected m_xsf:Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "dtm.debug"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/sun/org/apache/xml/internal/dtm/DTMManager;->debug:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/DTMManager;->m_xsf:Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/dtm/DTMManager;->m_incremental:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/dtm/DTMManager;->m_source_location:Z

    return-void
.end method

.method public static newInstance(Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;)Lcom/sun/org/apache/xml/internal/dtm/DTMManager;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/dtm/DTMConfigurationException;
        }
    .end annotation

    const-string v0, "ER_NO_DEFAULT_IMPL"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "com.sun.org.apache.xml.internal.dtm.DTMManager"

    sget-object v3, Lcom/sun/org/apache/xml/internal/dtm/DTMManager;->defaultClassName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sun/org/apache/xml/internal/dtm/ObjectFactory;->createObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xml/internal/dtm/DTMManager;
    :try_end_0
    .catch Lcom/sun/org/apache/xml/internal/dtm/ObjectFactory$ConfigurationError; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    invoke-virtual {v2, p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMManager;->setXMLStringFactory(Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;)V

    return-object v2

    :cond_0
    new-instance p0, Lcom/sun/org/apache/xml/internal/dtm/DTMConfigurationException;

    invoke-static {v0, v1}, Lcom/sun/org/apache/xml/internal/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTMConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    new-instance v2, Lcom/sun/org/apache/xml/internal/dtm/DTMConfigurationException;

    invoke-static {v0, v1}, Lcom/sun/org/apache/xml/internal/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ObjectFactory$ConfigurationError;->getException()Ljava/lang/Exception;

    move-result-object p0

    invoke-direct {v2, v0, p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public abstract createDTMIterator(I)Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;
.end method

.method public abstract createDTMIterator(ILcom/sun/org/apache/xml/internal/dtm/DTMFilter;Z)Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;
.end method

.method public abstract createDTMIterator(Ljava/lang/Object;I)Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;
.end method

.method public abstract createDTMIterator(Ljava/lang/String;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;)Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;
.end method

.method public abstract createDocumentFragment()Lcom/sun/org/apache/xml/internal/dtm/DTM;
.end method

.method public abstract getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;
.end method

.method public abstract getDTM(Ljavax/xml/transform/Source;ZLcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;ZZ)Lcom/sun/org/apache/xml/internal/dtm/DTM;
.end method

.method public abstract getDTMHandleFromNode(Lorg/w3c/dom/Node;)I
.end method

.method public abstract getDTMIdentity(Lcom/sun/org/apache/xml/internal/dtm/DTM;)I
.end method

.method public getDTMIdentityMask()I
    .locals 0

    const/high16 p0, -0x10000

    return p0
.end method

.method public getIncremental()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xml/internal/dtm/DTMManager;->m_incremental:Z

    return p0
.end method

.method public getNodeIdentityMask()I
    .locals 0

    const p0, 0xffff

    return p0
.end method

.method public getSource_location()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xml/internal/dtm/DTMManager;->m_source_location:Z

    return p0
.end method

.method public getXMLStringFactory()Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/DTMManager;->m_xsf:Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;

    return-object p0
.end method

.method public abstract release(Lcom/sun/org/apache/xml/internal/dtm/DTM;Z)Z
.end method

.method public setIncremental(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xml/internal/dtm/DTMManager;->m_incremental:Z

    return-void
.end method

.method public setSource_location(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xml/internal/dtm/DTMManager;->m_source_location:Z

    return-void
.end method

.method public setXMLStringFactory(Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/DTMManager;->m_xsf:Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;

    return-void
.end method
