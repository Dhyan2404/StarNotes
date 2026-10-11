.class public Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;
.super Lcom/sun/org/apache/xml/internal/res/XMLMessages;
.source "SourceFile"


# static fields
.field private static XPATHBundle:Ljava/util/ListResourceBundle; = null

.field private static final XPATH_ERROR_RESOURCES:Ljava/lang/String; = "com.sun.org.apache.xpath.internal.res.XPATHErrorResources"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/res/XMLMessages;-><init>()V

    return-void
.end method

.method public static final createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->XPATHBundle:Ljava/util/ListResourceBundle;

    if-nez v0, :cond_0

    const-string v0, "com.sun.org.apache.xpath.internal.res.XPATHErrorResources"

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/res/XMLMessages;->loadResourceBundle(Ljava/lang/String;)Ljava/util/ListResourceBundle;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->XPATHBundle:Ljava/util/ListResourceBundle;

    :cond_0
    sget-object v0, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->XPATHBundle:Ljava/util/ListResourceBundle;

    if-eqz v0, :cond_1

    invoke-static {v0, p0, p1}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMsg(Ljava/util/ListResourceBundle;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "Could not load any resource bundles."

    return-object p0
.end method

.method public static final createXPATHMsg(Ljava/util/ListResourceBundle;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    const-string p1, "BAD_CODE"

    invoke-virtual {p0, p1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    if-eqz p2, :cond_4

    :try_start_0
    array-length v2, p2

    :goto_2
    if-ge v0, v2, :cond_3

    aget-object v3, p2, v0

    if-nez v3, :cond_2

    const-string v3, ""

    aput-object v3, p2, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    invoke-static {p1, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    const-string p2, "FORMAT_FAILED"

    invoke-virtual {p0, p2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_4
    :goto_3
    if-nez v1, :cond_5

    return-object p1

    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final createXPATHWarning(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->XPATHBundle:Ljava/util/ListResourceBundle;

    if-nez v0, :cond_0

    const-string v0, "com.sun.org.apache.xpath.internal.res.XPATHErrorResources"

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/res/XMLMessages;->loadResourceBundle(Ljava/lang/String;)Ljava/util/ListResourceBundle;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->XPATHBundle:Ljava/util/ListResourceBundle;

    :cond_0
    sget-object v0, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->XPATHBundle:Ljava/util/ListResourceBundle;

    if-eqz v0, :cond_1

    invoke-static {v0, p0, p1}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMsg(Ljava/util/ListResourceBundle;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "Could not load any resource bundles."

    return-object p0
.end method
