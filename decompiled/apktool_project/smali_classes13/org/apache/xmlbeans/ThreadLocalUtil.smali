.class public Lorg/apache/xmlbeans/ThreadLocalUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearAllThreadLocals()V
    .locals 1

    invoke-static {}, Lorg/apache/xmlbeans/XmlBeans;->clearThreadLocals()V

    invoke-static {}, Lorg/apache/xmlbeans/XmlFactoryHook$ThreadContext;->clearThreadLocals()V

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->clearThreadLocals()V

    invoke-static {}, Lorg/apache/xmlbeans/impl/store/CharUtil;->clearThreadLocals()V

    invoke-static {}, Lorg/apache/xmlbeans/impl/store/Locale;->clearThreadLocals()V

    invoke-static {}, Lorg/apache/xmlbeans/impl/values/NamespaceContext;->clearThreadLocals()V

    invoke-static {}, Lorg/apache/xmlbeans/impl/common/SystemCache;->get()Lorg/apache/xmlbeans/impl/common/SystemCache;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/common/SystemCache;->clearThreadLocals()V

    return-void
.end method
