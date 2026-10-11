.class public Lcom/sun/org/apache/xerces/internal/impl/xs/XSMessageFormatter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/util/MessageFormatter;


# static fields
.field public static final SCHEMA_DOMAIN:Ljava/lang/String; = "http://www.w3.org/TR/xml-schema-1"


# instance fields
.field private fLocale:Ljava/util/Locale;

.field private fResourceBundle:Ljava/util/ResourceBundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSMessageFormatter;->fLocale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSMessageFormatter;->fResourceBundle:Ljava/util/ResourceBundle;

    return-void
.end method


# virtual methods
.method public formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSMessageFormatter;->fResourceBundle:Ljava/util/ResourceBundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSMessageFormatter;->fLocale:Ljava/util/Locale;

    if-eq p1, v0, :cond_2

    :cond_0
    const-string v0, "com.sun.org.apache.xerces.internal.impl.msg.XMLSchemaMessages"

    if-eqz p1, :cond_1

    invoke-static {v0, p1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSMessageFormatter;->fResourceBundle:Ljava/util/ResourceBundle;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSMessageFormatter;->fLocale:Ljava/util/Locale;

    :cond_1
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSMessageFormatter;->fResourceBundle:Ljava/util/ResourceBundle;

    if-nez p1, :cond_2

    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSMessageFormatter;->fResourceBundle:Ljava/util/ResourceBundle;

    :cond_2
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSMessageFormatter;->fResourceBundle:Ljava/util/ResourceBundle;

    invoke-virtual {p1, p2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_3

    :try_start_0
    invoke-static {p1, p3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSMessageFormatter;->fResourceBundle:Ljava/util/ResourceBundle;

    const-string p3, "FormatFailed"

    invoke-virtual {p1, p3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSMessageFormatter;->fResourceBundle:Ljava/util/ResourceBundle;

    invoke-virtual {p1, p2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_3
    :goto_0
    if-eqz p1, :cond_4

    return-object p1

    :cond_4
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSMessageFormatter;->fResourceBundle:Ljava/util/ResourceBundle;

    const-string p1, "BadMessageKey"

    invoke-virtual {p0, p1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/util/MissingResourceException;

    const-string p3, "com.sun.org.apache.xerces.internal.impl.msg.SchemaMessages"

    invoke-direct {p1, p0, p3, p2}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method
