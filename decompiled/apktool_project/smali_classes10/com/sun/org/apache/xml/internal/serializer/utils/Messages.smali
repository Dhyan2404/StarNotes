.class public final Lcom/sun/org/apache/xml/internal/serializer/utils/Messages;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final m_locale:Ljava/util/Locale;

.field private m_resourceBundle:Ljava/util/ListResourceBundle;

.field private m_resourceBundleName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/utils/Messages;->m_locale:Ljava/util/Locale;

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/utils/Messages;->m_resourceBundleName:Ljava/lang/String;

    return-void
.end method

.method private final createMsg(Ljava/util/ListResourceBundle;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 7

    const-string v0, ""

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p2, v0

    move-object p1, v1

    :goto_0
    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_1

    :try_start_0
    const-string p1, "BAD_MSGKEY"

    new-array p3, v2, [Ljava/lang/Object;

    aput-object p2, p3, v4

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/utils/Messages;->m_resourceBundleName:Ljava/lang/String;

    aput-object p0, p3, v3

    invoke-static {p1, p3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_4

    :cond_1
    if-eqz p3, :cond_4

    :try_start_1
    array-length v1, p3

    move v5, v4

    :goto_1
    if-ge v5, v1, :cond_3

    aget-object v6, p3, v5

    if-nez v6, :cond_2

    aput-object v0, p3, v5

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    invoke-static {p1, p3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    :try_start_2
    const-string p3, "BAD_MSGFORMAT"

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v4

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/utils/Messages;->m_resourceBundleName:Ljava/lang/String;

    aput-object v1, v0, v3

    invoke-static {p3, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The format of message \'"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' in message class \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/utils/Messages;->m_resourceBundleName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' failed."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_2
    move-object v1, p0

    goto :goto_4

    :cond_4
    move-object v1, p1

    :goto_3
    move v3, v4

    :catch_2
    :goto_4
    if-nez v3, :cond_5

    return-object v1

    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getLocale()Ljava/util/Locale;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/utils/Messages;->m_locale:Ljava/util/Locale;

    return-object p0
.end method

.method private getResourceBundle()Ljava/util/ListResourceBundle;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/utils/Messages;->m_resourceBundle:Ljava/util/ListResourceBundle;

    return-object p0
.end method

.method private static getResourceSuffix(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    const-string v2, "TW"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private loadResourceBundle(Ljava/lang/String;)Ljava/util/ListResourceBundle;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/utils/Messages;->m_resourceBundleName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/serializer/utils/Messages;->getLocale()Ljava/util/Locale;

    move-result-object p1

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/utils/Messages;->m_resourceBundleName:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object p1

    check-cast p1, Ljava/util/ListResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :try_start_1
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/utils/Messages;->m_resourceBundleName:Ljava/lang/String;

    new-instance v0, Ljava/util/Locale;

    const-string v1, "en"

    const-string v2, "US"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object p1

    check-cast p1, Ljava/util/ListResourceBundle;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/utils/Messages;->m_resourceBundle:Ljava/util/ListResourceBundle;

    return-object p1

    :catch_1
    new-instance p1, Ljava/util/MissingResourceException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not load any resource bundles."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/utils/Messages;->m_resourceBundleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/utils/Messages;->m_resourceBundleName:Ljava/lang/String;

    const-string v1, ""

    invoke-direct {p1, v0, p0, v1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/utils/Messages;->m_resourceBundle:Ljava/util/ListResourceBundle;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/utils/Messages;->m_resourceBundleName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xml/internal/serializer/utils/Messages;->loadResourceBundle(Ljava/lang/String;)Ljava/util/ListResourceBundle;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/utils/Messages;->m_resourceBundle:Ljava/util/ListResourceBundle;

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/utils/Messages;->m_resourceBundle:Ljava/util/ListResourceBundle;

    if-eqz v0, :cond_1

    invoke-direct {p0, v0, p1, p2}, Lcom/sun/org/apache/xml/internal/serializer/utils/Messages;->createMsg(Ljava/util/ListResourceBundle;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Could not load the resource bundles: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/utils/Messages;->m_resourceBundleName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
