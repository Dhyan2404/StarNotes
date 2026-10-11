.class public Lcom/sun/org/apache/xalan/internal/res/XSLMessages;
.super Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;
.source "SourceFile"


# static fields
.field private static XSLTBundle:Ljava/util/ListResourceBundle; = null

.field private static final XSLT_ERROR_RESOURCES:Ljava/lang/String; = "com.sun.org.apache.xalan.internal.res.XSLTErrorResources"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;-><init>()V

    return-void
.end method

.method public static final createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->XSLTBundle:Ljava/util/ListResourceBundle;

    if-nez v0, :cond_0

    const-string v0, "com.sun.org.apache.xalan.internal.res.XSLTErrorResources"

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/res/XMLMessages;->loadResourceBundle(Ljava/lang/String;)Ljava/util/ListResourceBundle;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->XSLTBundle:Ljava/util/ListResourceBundle;

    :cond_0
    sget-object v0, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->XSLTBundle:Ljava/util/ListResourceBundle;

    if-eqz v0, :cond_1

    invoke-static {v0, p0, p1}, Lcom/sun/org/apache/xml/internal/res/XMLMessages;->createMsg(Ljava/util/ListResourceBundle;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "Could not load any resource bundles."

    return-object p0
.end method

.method public static final createWarning(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->XSLTBundle:Ljava/util/ListResourceBundle;

    if-nez v0, :cond_0

    const-string v0, "com.sun.org.apache.xalan.internal.res.XSLTErrorResources"

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/res/XMLMessages;->loadResourceBundle(Ljava/lang/String;)Ljava/util/ListResourceBundle;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->XSLTBundle:Ljava/util/ListResourceBundle;

    :cond_0
    sget-object v0, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->XSLTBundle:Ljava/util/ListResourceBundle;

    if-eqz v0, :cond_1

    invoke-static {v0, p0, p1}, Lcom/sun/org/apache/xml/internal/res/XMLMessages;->createMsg(Ljava/util/ListResourceBundle;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "Could not load any resource bundles."

    return-object p0
.end method
