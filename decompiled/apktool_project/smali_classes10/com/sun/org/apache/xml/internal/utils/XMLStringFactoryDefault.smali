.class public Lcom/sun/org/apache/xml/internal/utils/XMLStringFactoryDefault;
.super Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;
.source "SourceFile"


# static fields
.field private static final EMPTY_STR:Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sun/org/apache/xml/internal/utils/XMLStringFactoryDefault;->EMPTY_STR:Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public emptystr()Lcom/sun/org/apache/xml/internal/utils/XMLString;
    .locals 0

    sget-object p0, Lcom/sun/org/apache/xml/internal/utils/XMLStringFactoryDefault;->EMPTY_STR:Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;

    return-object p0
.end method

.method public newstr(Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;II)Lcom/sun/org/apache/xml/internal/utils/XMLString;
    .locals 0

    .line 2
    new-instance p0, Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;

    invoke-virtual {p1, p2, p3}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public newstr(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/utils/XMLString;
    .locals 0

    .line 1
    new-instance p0, Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public newstr([CII)Lcom/sun/org/apache/xml/internal/utils/XMLString;
    .locals 1

    .line 3
    new-instance p0, Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;-><init>(Ljava/lang/String;)V

    return-object p0
.end method
