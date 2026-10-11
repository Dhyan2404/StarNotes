.class public abstract Lcom/sun/org/apache/xerces/internal/impl/dv/DTDDVFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_FACTORY_CLASS:Ljava/lang/String; = "com.sun.org.apache.xerces.internal.impl.dv.dtd.DTDDVFactoryImpl"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final declared-synchronized getInstance()Lcom/sun/org/apache/xerces/internal/impl/dv/DTDDVFactory;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/impl/dv/DVFactoryException;
        }
    .end annotation

    const-class v0, Lcom/sun/org/apache/xerces/internal/impl/dv/DTDDVFactory;

    monitor-enter v0

    :try_start_0
    const-string v1, "com.sun.org.apache.xerces.internal.impl.dv.dtd.DTDDVFactoryImpl"

    .line 1
    invoke-static {v1}, Lcom/sun/org/apache/xerces/internal/impl/dv/DTDDVFactory;->getInstance(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/dv/DTDDVFactory;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static final declared-synchronized getInstance(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/dv/DTDDVFactory;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/impl/dv/DVFactoryException;
        }
    .end annotation

    const-class v0, Lcom/sun/org/apache/xerces/internal/impl/dv/DTDDVFactory;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/sun/org/apache/xerces/internal/impl/dv/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/dv/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xerces/internal/impl/dv/DTDDVFactory;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 3
    :catch_0
    :try_start_1
    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/dv/DVFactoryException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DTD factory class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " does not extend from DTDDVFactory."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/DVFactoryException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public abstract getBuiltInDV(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeValidator;
.end method

.method public abstract getBuiltInTypes()Ljava/util/Hashtable;
.end method
