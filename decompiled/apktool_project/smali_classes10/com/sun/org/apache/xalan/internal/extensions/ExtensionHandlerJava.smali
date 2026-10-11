.class public abstract Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerJava;
.super Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandler;
.source "SourceFile"


# instance fields
.field private m_cachedMethods:Ljava/util/Hashtable;

.field protected m_className:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandler;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerJava;->m_className:Ljava/lang/String;

    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerJava;->m_cachedMethods:Ljava/util/Hashtable;

    iput-object p3, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerJava;->m_className:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFromCache(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerJava;->m_cachedMethods:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public putToCache(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerJava;->m_cachedMethods:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, p4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
