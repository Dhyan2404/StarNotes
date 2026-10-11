.class public Lcom/sun/org/apache/xalan/internal/xsltc/dom/CollatorFactoryBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xalan/internal/xsltc/CollatorFactory;


# static fields
.field public static final DEFAULT_COLLATOR:Ljava/text/Collator;

.field public static final DEFAULT_LOCALE:Ljava/util/Locale;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/CollatorFactoryBase;->DEFAULT_LOCALE:Ljava/util/Locale;

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/CollatorFactoryBase;->DEFAULT_COLLATOR:Ljava/text/Collator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCollator(Ljava/lang/String;Ljava/lang/String;)Ljava/text/Collator;
    .locals 0

    .line 1
    new-instance p0, Ljava/util/Locale;

    invoke-direct {p0, p1, p2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object p0

    return-object p0
.end method

.method public getCollator(Ljava/util/Locale;)Ljava/text/Collator;
    .locals 0

    .line 2
    sget-object p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/CollatorFactoryBase;->DEFAULT_LOCALE:Ljava/util/Locale;

    if-ne p1, p0, :cond_0

    .line 3
    sget-object p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/CollatorFactoryBase;->DEFAULT_COLLATOR:Ljava/text/Collator;

    return-object p0

    .line 4
    :cond_0
    invoke-static {p1}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object p0

    return-object p0
.end method
